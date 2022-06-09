@extends('layouts.app') @section('content') 
<div class="content-header mt-5">
  <div class="container text-center lead">
    <h1 x-text="cs" class="m-0 text-dark">Customer</h1>
    <p x-text="cdmb"></p>
    <a class="btn btn-dark btn-lg" x-text="ncsa" href="{{ route('clients.create') }}"> New Customer </a> @if(session('updated')) <div class="row">
      <div class="col-12">
        <div class="alert alert-success"> Success Update Customer</div>
      </div>
    </div> @endif @if(session('deleted')) <div class="row">
      <div class="col-12">
        <div class="alert alert-success"> Customer Deleted</div>
      </div>
    </div> @endif
  </div>
</div>
<div class="content">
  <div class="container-fluid">
    <div class="row"> @foreach($clients as $client) <div class="col-sm-12 col-md-3 text-center p-3 p-md-5">
        <div class="card text-center">
          <div class="card-body bg-dark text-white rounded">
            <svg class="bi bi-people-fill" width="4em" height="4em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z" />
            </svg>
            <hr class="bg-white">
            <h5 class="card-title">{{ $client->name }}</h5>
            <hr class="bg-white">
            <a class="btn btn-warning btn-block" href="{{ route('clients.edit', $client) }}"> Edit </a>
            <br />
            <form action="{{ route('clients.destroy', $client) }}" method="POST"> @csrf @method('DELETE') <input onclick="return confirm('Yakin menghapus customer ?? ' + 'Hapus?');" type="submit" value="Delete" class="btn btn-danger btn-block">
            </form>
            <br />
          </div>
        </div>
      </div> @endforeach </div>
  </div>
</div> 
@endsection