<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/login', 'Auth\LoginController@showLoginForm');

Auth::routes();

Route::get('users', 'UserController@index')->name('users.index');
Route::delete('users/{user}', 'UserController@destroy')->name('users.destroy');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/data', 'DataController@index')->name('data');
Route::get('/office', 'OfficeController@index')->name('office');

Route::resource('products', 'ProductController')->middleware('auth');

Route::resource('clients', 'ClientController')->middleware('auth');

Route::resource('sales', 'SaleController')
    ->except(['update', 'edit'])
    ->middleware('auth');

Route::resource('categories', 'CategoryController')
    ->except(['update', 'edit', 'show'])
    ->middleware('auth');

Route::get('/reports/sales', 'SaleController@export')->name('reports.sales')
    ->middleware('auth');
