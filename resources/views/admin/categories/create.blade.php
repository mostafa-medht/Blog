@extends('layouts.app')

@section('content')
@include('inc.errors')
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Create a new category 
            </div>

            <div class="card-body">
               <form action="{{route('category.store')}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name" class="float-left">Name</label>
                        <input type="text" name="name" class="form-control">
                    </div>
                
                    <div class="form-group text-center">
                        <button class="btn btn-success" type="submit">Store Category</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection