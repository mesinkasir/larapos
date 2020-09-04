<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Client;
use App\Http\Requests\SaleRequest;
use App\Product;
use App\Sale;
use App\Exports\SalesExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Response;

class SaleController extends Controller
{
    /*
     * Display a listing of the resource.
     */
    public function index()
    {
        $sales = Sale::latest()->paginate();
        return view('sales.index', compact('sales'));
    }

    /*
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //Get the clients information
        $clients = Client::orderBy('rfc', 'DESC')->get();
        //Get the products information
        $products = Product::orderBy('name', 'DESC')->get();
        //Total of sales today
        $totalSalesPerDay = 0;
        $salesToday = Sale::select('total')->where('created', date('Y-m-d'))
            ->get();

        foreach ($salesToday as $sale) {
            $totalSalesPerDay += $sale->total;
        }

        return view(
            'sales.create',
            compact('clients', 'products', 'totalSalesPerDay')
        );
    }

    /*
     * Store a newly created resource in storage.
     */
    public function store(SaleRequest $request)
    {
        $sale = Sale::create(
            [
                'total'   => $request->input('total'),
                'rfc'     => $request->input('rfc'),
                'id'      => $request->input('id'),
                'created' => date('Y-m-d')
            ]
        );

        if (isset($sale)) {
            $productsArray = (array)json_decode($request->input('products'));
            $completed = [];
            //Get the products sales
            foreach ($productsArray as $index) {
                $cart = new Cart();
                $cart->sale_id = $sale->sale_id;
                $cart->product_id = $index->id;
                $cart->amount = $index->amount;
                $cart->created = date('Y-m-d');
                $cart->save();
                $completed[] = $cart;
            }

            if (count($productsArray) === count($completed)) {
                return new Response($completed, 201);
            }
        }
        return new Response('Cart was not filled', 500);
    }

    /*
     * Display the specified resource.
     */
    public function show(Sale $sale)
    {
        //Cart information
        $carts = Cart::where('sale_id', $sale->sale_id)->get();

        return view('sales.single', compact('sale', 'carts'));
    }

    /*
     * Returns a response with the file provided by SalesExport
     * */
    public function export()
    {
        if (Sale::all()->count() > 0) {
            return Excel::download(new SalesExport(), 'sales.xlsx');
        }
        return back();
    }

    /*
     * Remove the specified resource from storage.
     */
    public function destroy(Sale $sale)
    {
        try {
            $sale->delete();
        } catch (\Exception $e) {
            return back()->with('error', 'Error');
        }
        return back()->with('deleted', true);
    }
}
