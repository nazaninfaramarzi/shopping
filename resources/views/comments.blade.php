@extends('layouts.PillowTheme.mastermain')

@section('content')

@if(Session::has('msg'))
<div class="alert alert-className">
    {{session('msg')}}
</div>
@endif 
<table class="table">
<thead>
<tr>
<th scope="col"></th>
<th scope="col"></th>
<th scope="col"></th>
<th scope="col"></th>
<th scope="col"></th>
</tr>
</thead>
@foreach ($comments as item)
<tr>
<th scope="row">{{ $item->id}}</th>
<td>{{$item->commenttext}}</td>
<td>{{$item->user->name}}</td>
<td>{{$item->created_at}}</td>
<td><img height="100" src="{{$item->fileimage}}"></td>
@endforeach 
</tbody>
</table>
@endsection