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


<form action="{{ route('video.save') }}" method="post" enctype="multipart/form-data">
@csrf


<label>Title:</label>
<textarea class="form-control" id="title" name="title" style="marigin-top:5px;"></textarea>
<br/>

<label>Youtube video link:</label>
<textarea class="form-control" id="editor" name="editor" style="marigin-top:5px;"></textarea>

<label>Description:</label>
<textarea class="form-control" id="desc" name="desc" style="marigin-top:5px;"></textarea>



<button type="submit" name="submit" class="btn btn-success" style="margin-top:3px;"><span class="fa fa-save"></span></button>
</form>

@if(session()->has('message'))
    <div class="alert alert-success margin-top:20px;">
        {{ session()->get('message') }}
    </div>
@endif




<script src="{{ asset('ckeditor/ckeditor.js')  }}" type="text/javascript"></script>
<script>

CKEDITOR.replace( 'desc' );
</script>
@endsection