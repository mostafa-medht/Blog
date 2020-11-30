@extends('layouts.app')

@section('content')
@include('inc.errors')
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Edit Tag: {{$tag->name}}  
            </div>

            <div class="card-body">
               <form action="{{route('tag.update' , ['id' => $tag->id])}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name" class="float-left">Name</label>
                        <input type="text" name="tag" value="{{$tag->tag}}" class="form-control">
                    </div>
                
                    <div class="form-group text-center">
                        <button class="btn btn-success" type="submit">Update Tag</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection