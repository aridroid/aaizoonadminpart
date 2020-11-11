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
            <!-- <a href="#" class="list-group-item list-group-item-action bg-light">Events</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Status</a> -->
        </div>
        </div>
@endsection
@section('content')


<form action="" method="post" enctype="multipart/form-data">

<label>URL:</label>
<textarea class="form-control" id="editor" name="editor" style="marigin-top:5px;"></textarea>

<label>Description:</label>
<textarea class="form-control" id="desc" name="desc" style="marigin-top:5px;"></textarea>

<label>Title:</label>
<textarea class="form-control" id="title" name="title" style="marigin-top:5px;"></textarea>
<br/>

<button type="submit" name="submit" class="btn btn-success"><span class="fa fa-save"></span></button>
</form>


<script src="{{ asset('ckeditor/ckeditor.js')  }}" type="text/javascript"></script>
<script>
CKEDITOR.replace( 'editor' );

CKEDITOR.replace( 'desc' );

CKEDITOR.replace( 'title' );
</script>
@endsection