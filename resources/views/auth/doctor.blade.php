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
<table class="table table-bordered mb-5" style="margin-left:100px;">
<thead>
<tr class="table-success">
<th scope="col">Specialist</th>
<th scope="col">Qualification</th>
<th scope="col">Doctor Fee</th>
<th scope="col">Action</th>
<th scope="col">Is_deleted</th>
</tr>
</thead>
<tbody>

@foreach($doctors as $doctor)
<tr>
<td>{{ $doctor->specialist_in }}</td>
<td>{{  $doctor->qualification }}</td>
<td>{{  $doctor->doctor_fee }}</td>
<td>
<form method="post" action= "{{ route('doctor.destroy',$doctor->id) }}">
{{csrf_field()}}
{{method_field('delete')}}
<input type="submit" value="Delete" class="btn btn-warning">
</form>
</td>
<td>
@if($doctor->is_deleted == '1')
<p class="lead">Yes</p>
@else($doctor->is_deleted == '0')
<p class="lead">No</p>
@endif
</td>
</tr>
@endforeach
</tbody>
</table>
<div class="d-flex justify-content-center">

{!! $doctors->links() !!}

@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif
</div>   
    </div>

    <div class="container" style="margin-top:30px;margin-left:70px;overflow-x:scroll;overflow-y:scroll;">
    <div class="row">
    <div class="col-md-2">
     <a href="{{ url('/doctor_verify') }}">View Certificate</a>
    </div>
    <div class="col-md-4">
    <table>
    <tbody>
    @if(!empty($path))
    @foreach($path as $paths)
    <!-- <td><a href="" target="_blank">
    <img src="$paths" alt="oops..." style="width:30px;height:30px;">
    </a> -->
    <!-- </td> -->
     @php
    echo $paths;
    @endphp
    @endforeach -->
    @else
    <td>No image</td>
    @endif
    </tbody>
    </table>
    </div>
    </div>
    </div>
@endsection