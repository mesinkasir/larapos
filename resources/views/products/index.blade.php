@extends('layouts.app') @section('content') <div class="content-header mt-5">
  <div class="container lead text-center">
    <h1 x-text="pd" class="m-0 text-dark text-center">Produck</h1>
    <p x-text="dbps">Data Produk</p>
    <a class="btn btn-dark btn-lg" x-text="cnpdt" href="{{ route('products.create') }}"> Create New Product </a>
  </div>
</div>
<div class="content">
  <div class="container-fluid lead text-center"> {{ $products->links() }}
    <div class="row"> @foreach($products as $product) <div class="col-sm-12 col-md-3 lead text-center text-white p-3 p-md-5">
        <div class="card">
          <div class="card-body bg-dark">
            <svg class="bi bi-box" width="4em" height="4em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5 8 5.961 14.154 3.5 8.186 1.113zM15 4.239l-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z" />
            </svg>
            <hr class="bg-white">
            <h5 class="card-title">{{ $product->name }}</h5>
            <p class="card-text"> {{ $product->get_extract }}</p>
            <hr class="bg-white">
            <a class="btn btn-warning btn-block" href="{{ route('products.edit', $product) }}"> Edit </a>
            <br />
            <form action="{{ route('products.destroy', $product) }}" method="POST"> @csrf @method('DELETE') <input onclick="return confirm('Delete Product ?? ' + '');" type="submit" value="Delete" class="btn btn-danger btn-block">
            </form>
          </div>
        </div>
      </div> @endforeach </div> {{ $products->links() }}
  </div> @endsection