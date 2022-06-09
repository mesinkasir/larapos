@extends('layouts.app') @section('content') <div class="content-header mt-5">
  <div class="container-fluid lead text-center">
    <h1 class="m-0 text-center" x-text="ct"></h1>
    <p x-text="ctndb"></p>
    <a class="btn btn-dark btn-lg" href="{{ route('categories.create') }}" x-text="cnct"></a> @if(isset($_SESSION['deleted'])) <div class="row">
      <div class="alert alert-success"> Success update data</div>
    </div> @endif
  </div>
</div>
<div class="content lead text-center">
  <div class="container-fluid"> {{ $categories->links() }}
    <div class="row"> @foreach($categories as $category) <div class="col-sm-12 col-md-3 p-3 p-md-5 text-white">
        <div class="card">
          <div class="card-body bg-dark rounded">
            <svg class="bi bi-bag" width="4em" height="4em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z" />
              <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z" />
            </svg>
            <hr class="bg-white">
            <h5 class="card-title">{{ $category->name }}</h5>
            <hr class="bg-white">
            <form action="{{ route('categories.destroy', $category) }}" method="POST"> @csrf @method('DELETE') <input onclick="return confirm('Are you sure to delete ' + ' ' + '');" type="submit" value="Delete" class="btn btn-danger btn-block">
            </form>
          </div>
        </div>
      </div> @endforeach {{ $categories->links() }}
    </div>
  </div> @endsection