@extends('layouts.app')

@section('content')
    <div class="card">
        <div class="card-header">
            <h3>Tags</h3>
        </div>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <th>
                        Tag Name
                    </th>
                    <th>
                        Editing
                    </th>
                    <th>
                        Deleting
                    </th>
                </thead>
                <tbody>
                    @if ($tags->count() > 0)
                        @foreach ($tags as $tag)
                            <tr>
                                <td>
                                    {{ $tag->tag }}
                                </td>
                                <td>
                                    <a href="{{route('tag.edit' , ['id' => $tag->id])}}" class="btn btn-info btn-sm">Edit</a>
                                </td>
                                <td>
                                    <a href="{{route('tag.delete' , ['id' => $tag->id])}}" class="btn btn-sm btn-danger">&#10006;</a>
                                </td>
                            </tr>
                        @endforeach
                    @else
                    <tr>
                        <th colspan='5' class="text-center">No Tags Yet</th>
                    </tr>  
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@endsection