@extends('layouts.app') @section('content') <div class="content-header">
  <div class="mt-5 container text-center lead">
    <h1 class="m-0 text-dark" x-text="us">User</h1>
    <p x-text="usdb">User Databased Management</p>
    <a class="btn btn-dark btn-lg"  x-text="nus" href="{{ route('register') }}"> Create new user </a>
    <br />
    <br />
  </div>
</div>
<div class="content">
  <div class="container-fluid text-center text-white">
    <div class="row"> @foreach($users as $user) <div class="col-sm-12 col-md-3 p-3 p-md-5">
        <div class="card">
          <div class="card-body bg-dark rounded">
            <svg class="bi bi-person-circle" width="4em" height="4em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z" />
              <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
              <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z" />
            </svg>
            <hr class="bg-white">
            <h5 class="card-title">{{ $user->name }}</h5>
            <hr class="bg-white">
            <form action="{{ route('users.destroy', $user->id) }}" method="POST"> @csrf @method('DELETE') <input onclick="return confirm('Hapus USer ? ' + 'elemento?');" type="submit" value="Delete" class="btn btn-danger">
            </form>
          </div>
        </div>
      </div> @endforeach </div>
  </div>
</div> @endsection