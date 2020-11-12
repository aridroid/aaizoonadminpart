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
@if($videos->isEmpty())

<button type="button" class="btn btn-outline-secondary btn-lg btn-block">
<p class="lead">No videos uploaded</p>
</button>

@else
@foreach($videos as $video)
<div class="card" style="width: 40rem; margin-top:20px;">
  <div class="card-body">
    <h5 class="card-title"> {{ $video->title }}</h5>
    {!! $video->description	!!}
    <a href="{{ $video->url }}" target="_blank" class="card-link">Go to channel</a>
    <!-- <a href="#" class="card-link">Another link</a> -->
  </div>
</div>
@endforeach
@endif

@endsection