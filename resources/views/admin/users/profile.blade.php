@extends('layouts.app')

@section('content')
@include('inc.errors')
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Edit Your Profile 
            </div>

            <div class="card-body">
               <form action="{{route('user.profile.update')}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name" class="float-left">User Nmae</label>
                        <input type="text" value="{{$user->name}}" name="name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name" class="float-left">Email</label>
                        <input type="email" value="{{$user->email}}" name="email" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="name" class="float-left">New Password</label>
                        <input type="password" name="password" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="name" class="float-left">Upload New Avatar</label>
                        <input type="file" name="avatar" class="form-control-file">
                    </div>

                    <div class="form-group">
                        <label for="name" class="float-left">Facebook Profile</label>
                        <input type="text" value="{{$user->profile->facebook}}" name="facebook" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="name" class="float-left">Youtube Profile</label>
                        <input type="text" value="{{$user->profile->youtube}}" name="youtube" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="name" class="float-left">About You</label>
                        <textarea name="about" id="" cols="6" rows="6" class="form-control">{{$user->profile->about}}</textarea>
                    </div>
                
                    <div class="form-group text-center">
                        <button class="btn btn-success" type="submit">Update Profile</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection