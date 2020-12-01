@extends('layouts.app')

@section('content')

    @if (count($errors)> 0)
        <ul class="list-group">
            @foreach ($errors->all() as $error)
                <li class="list-group-item">
                    {{$error }}
                </li>
            @endforeach
        </ul>        
    @endif
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Edit Post: {{$post->title}} 
            </div>

            <div class="card-body">
               <form action="{{route('post.update', ['id' => $post->id])}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="title" class="float-left">Title</label>
                        <input type="text" id="title" name="title" class="form-control" value="{{$post->title}}">
                        {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}

                    </div>
                    <div class="form-group">
                        <label for="featured" class="float-left">Featured image</label>
                        <input type="file" name="featured" class="form-control-file">
                    </div>
                    <div class="form-group">
                        <label for="category">Select a Category</label>
                        <select name="category_id" id="category" class="form-control">
                            @foreach($categories as $category) 
                                <option value="{{$category->id}}"
                                    @if ($post->category_id == $category->id)
                                        selected
                                    @endif    
                                >{{$category->name}}</option>
                             @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="tags">Select Tag</label>
                        @foreach ($tags as $tag)
                            <div class="form-check">
                                <input class="form-check-input" name="tags[]" type="checkbox" value="{{$tag->id}}" id="defaultCheck1"
                                    @foreach ($post->tags as $t)
                                        @if ($tag->id == $t->id)
                                           checked 
                                        @endif    
                                    @endforeach
                                >
                                    <label class="form-check-label" for="defaultCheck1">
                                        {{$tag->tag}}
                                    </label>
                            </div> 
                        @endforeach
                    </div>
                    <div class="form-group">
                        <label for="content" class="float-left">Content</label>
                        <textarea name="content" id="content" cols="30" rows="5" class="form-control">{{$post->content}}
                        </textarea>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-success">Update Post</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection


