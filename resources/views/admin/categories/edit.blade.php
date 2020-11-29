@extends('layouts.app')

@section('content')
@include('inc.errors')
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Update category: {{$category->name}}  
            </div>

            <div class="card-body">
               <form action="{{route('category.update' , ['id' => $category->id])}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name" class="float-left">Name</label>
                        <input type="text" name="name" value="{{$category->name}}" class="form-control">
                    </div>
                
                    <div class="form-group text-center">
                        <button class="btn btn-success" type="submit">Update Category</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection