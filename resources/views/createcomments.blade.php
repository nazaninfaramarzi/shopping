@extends('layouts.PillowTheme.mastermain')

@section('content')
<div class="container">
<h3> ثبت نظرات</h3>
<form class="row contact_form" action="commentsitem.store" mathod="POST" >
@csrf
متن نظر: <input type="text" name='commenttext'><br><br>
فایل: <input type="file" name='pathimagefile'><br><br>
<input type="submit" name='submit' value="ثبت">
</form>

 </div>
 @endsection
