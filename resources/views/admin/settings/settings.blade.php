@extends('layouts.app').

@section('content')
@include('inc.errors')
    <br>
    {{-- <div class="text-center"> --}}
        <div class="card card-default">
            <div class="card-header">
                Edit Blog Setting
            </div>

            <div class="card-body">
               <form action="{{route('settings.update')}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name" class="float-left">Site name</label>
                        <input type="text" name="site_name" value="{{$settings->site_name}}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name" class="float-left">Address</label>
                        <input type="text" name="address" value="{{$settings->address}}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name" class="float-left">Contact Phone</label>
                        <input type="text" name="contact_number" value="{{$settings->contact_number}}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name" class="float-left">Contact Email</label>
                        <input type="text" name="contact_email" value="{{$settings->contact_email}}" class="form-control">
                    </div>
                
                    <div class="form-group text-center">
                        <button class="btn btn-success" type="submit">Update Site Sittengs</button>
                    </div>
                </form>  
            </div>
        </div>
    {{-- </div> --}}
@endsection