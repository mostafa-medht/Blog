@extends('layouts.app')

@section('content')
@include('inc.errors')
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Create a new Tag 
            </div>

            <div class="card-body">
               <form action="{{route('tag.store')}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name" class="float-left">Tag</label>
                        <input type="text" name="tag" class="form-control">
                    </div>
                
                    <div class="form-group text-center">
                        <button class="btn btn-success" type="submit">Store Tag</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection