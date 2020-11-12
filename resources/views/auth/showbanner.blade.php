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
@if($banners->isEmpty())

<button type="button" class="btn btn-outline-secondary btn-lg btn-block">
<p class="lead">No banners uploaded</p>
</button>

@else
@foreach($banners as $banner)

@php
    $filename = pathinfo($banner->image,PATHINFO_FILENAME);
    $extension = pathinfo($banner->image,PATHINFO_EXTENSION);
    $full_path = 'image/' . $filename . '.' . $extension;
    @endphp
<div class="card" style="width: 40rem; margin-top:20px;">
  <a href="{{ url('images/'.$filename.'.'.$extension) }}"><img class="card-img-top" src="{{ asset('images/'.$filename.'.'.$extension) }}" alt="Card image cap"></a>
  <div class="card-body">
    <h5 class="card-title">{{ $banner->title }}</h5>
    {!!  $banner->des	!!}
  </div>
</div>
@endforeach

<div class="d-flex justify-content-center">

{!! $banners->links() !!}


</div> 
@endif

@endsection