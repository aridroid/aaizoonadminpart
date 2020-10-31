@extends('layouts.app')
@section('side_nav')
<div class="sidenav">
<a href="{{ url('/pat_list') }}">Patient List</a>
  <a href="{{ url('/doc_list') }}">Doctor List</a>
  <a href="{{ url('/gnm_list') }}">GNM list</a>
</div>
@endsection
@section('content')
<div class="container" style="overflow:auto;">
<table class="table table-bordered mb-5" style="margin-left:100px;">
<thead>
<tr class="table-success">
<th scope="col">Appointment ID</th>
<th scope="col">User ID</th>
<th scope="col">Patient Name</th>
<th scope="col">Action</th>
<th scope="col">Is_deleted</th>
</tr>
</thead>
<tbody>

@foreach($patients as $patient)
<tr>
<td>{{ $patient->appt_id }}</td>
<td>{{  $patient->user_id }}</td>
<td>{{  $patient->booking_full_name }}</td>
<td>

<form method="post" action= "{{ route('patient.destroy',$patient->user_id)}}">
{{csrf_field()}}
{{method_field('delete')}}
<input type="submit" value="Delete" class="btn btn-warning">
</form>
</td>
<td>
@if($patient->is_deleted == '1')
<p class="lead">Yes</p>
@else($patient->is_deleted == '0')
<p class="lead">No</p>
@endif
</td>
</tr>
@endforeach
</tbody>
</table>
<div class="d-flex justify-content-center">

{!! $patients->links() !!}
@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif
</div>   
    </div>
@endsection