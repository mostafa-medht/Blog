@extends('layouts.app')

@section('content')
    <div class="card-deck">
        <div class="card text-center mb-4">
            <div class="card-header text-white bg-primary">PUBLISHED POSTS</div>
            <div class="card-body bg-light text-dark">
              <h2 class="card-title">{{$posts_count}}</h2>
              {{-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> --}}
            </div>
        </div>
        <div class="card text-center mb-3">
            <div class="card-header text-white bg-dark">CATEGORIES</div>
            <div class="card-body bg-light text-dark">
              <h2 class="card-title">{{$categories_count}}</h2>
              {{-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> --}}
            </div>
        </div>
        <div class="card text-center mb-3">
            <div class="card-header text-white bg-success">USERS</div>
            <div class="card-body bg-light text-dark">
              <h2 class="card-title">{{$users_count}}</h2>
              {{-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> --}}
            </div>
        </div>
        <div class="card text-center mb-3">
            <div class="card-header text-white bg-danger">TRASHED POSTS</div>
            <div class="card-body bg-light text-dark">
              <h2 class="card-title">{{$trashed_count}}</h2>
              {{-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> --}}
            </div>
        </div>
    </div>
@endsection
