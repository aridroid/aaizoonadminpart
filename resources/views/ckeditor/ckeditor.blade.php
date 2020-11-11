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
            <a href="{{ url('/ckeditor') }}" class="list-group-item list-group-item-action bg-light">Upload Link</a>
            <!-- <a href="#" class="list-group-item list-group-item-action bg-light">Events</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Status</a> -->
        </div>
        </div>
@endsection
@section('content')

<textarea class="form-control" id="summary-ckeditor" name="summary-ckeditor"></textarea>
<script src="{{ asset('ckeditor/ckeditor.js')  }}"></script>
<script>
CKEDITOR.replace( 'summary-ckeditor' );
</script>
@endsection