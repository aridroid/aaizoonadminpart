@extends('layouts.app')
@section('side_nav')
<div class="sidenav">
<a href="{{ url('/pat_list') }}">Patient List</a>
  <a href="{{ url('/doc_list') }}">Doctor List</a>
  <a href="{{ url('/gnm_list') }}">GNM list</a>
</div>
@endsection
@section('content')
<div class="container">
        <div class="row justify-content-center">
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
    </div>
@endsection