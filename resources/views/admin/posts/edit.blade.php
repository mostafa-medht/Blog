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
                        <br>
                        <br>
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


@section('styles')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> --}}

@endsection

@section('Scripts')
    {{-- <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script> --}}
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    {{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> --}}

    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script>
        $('#content').summernote({
          placeholder: 'Hello Bootstrap 4',
          tabsize: 2,
          height: 100
        });
      </script>
@endsection