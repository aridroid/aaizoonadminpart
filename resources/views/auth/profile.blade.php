@extends('layouts.app')
@section('side_nav')
<!-- <div class="sidenav">
<a href="{{ url('/pat_list') }}">Patient List</a>
  <a href="{{ url('/doc_list') }}">Doctor List</a>
  <a href="{{ url('/gnm_list') }}">GNM list</a>
</div> -->
<div class="sidebar-heading">Admin Panel</div>
        <div class="list-group list-group-flush">
            <a href="{{ url('/pat_list') }}" class="list-group-item list-group-item-action bg-light">Patient List</a>
            <a href="{{ url('/doc_list') }}" class="list-group-item list-group-item-action bg-light">Doctor List</a>
            <a href="{{ url('/gnm_list') }}" class="list-group-item list-group-item-action bg-light">GNM list</a>
            <a href="{{ url('/video') }}" class="list-group-item list-group-item-action bg-light">Upload Link</a>            
            
            <a href="{{ url('/showvideo') }}" class="list-group-item list-group-item-action bg-light">Show Link</a>
            <a href="{{ url('/uploadbanner') }}" class="list-group-item list-group-item-action bg-light">Upload Banner</a>
            <a href="{{ url('/showbanner') }}" class="list-group-item list-group-item-action bg-light">Show Banner</a>
            <!-- <a href="#" class="list-group-item list-group-item-action bg-light">Events</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Status</a> -->
        </div>
        </div>
@endsection
@section('content')
<!-- <div class="container"> -->
        <div class="row justify-content-center" style="margin-top:20px;">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Welcome</div>

                    <div class="card-body">
                         Hi welcome admin
                         @if (Auth::check())
                         {{ Auth::user()->name }}
                         @endif
                         
                    </div>

                    
                </div>
            </div>
        </div>
    <!-- </div> -->
@endsection