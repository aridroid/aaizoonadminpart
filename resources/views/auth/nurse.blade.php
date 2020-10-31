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
<th scope="col">Address</th>
<th scope="col">Nurse Fee</th>
<th scope="col">Action</th>
<th scope="col">Is_deleted</th>
</tr>
</thead>
<tbody>

@foreach($nurses as $nurse)
<tr>
<td>{{ $nurse->address }}</td>
<td>{{  $nurse->aaya_fee }}</td>
<td>
<form method="post" action= "{{ route('nurse.destroy',$nurse->id) }}">
{{csrf_field()}}
{{method_field('delete')}}
<input type="submit" value="Delete" class="btn btn-warning">
</form>
</td>
<td>
@if($nurse->is_deleted == '1')
<p class="lead">Yes</p>
@else($nurse->is_deleted == '0')
<p class="lead">No</p>
@endif
</td>
</tr>
@endforeach
</tbody>
</table>
<div class="d-flex justify-content-center">

{!! $nurses->links() !!}
@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif
</div>   
    </div>
@endsection