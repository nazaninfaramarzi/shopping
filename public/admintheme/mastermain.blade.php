<!DOCTYPE html>
<html lang="fa">
 <head>
   @include('layouts.PersianAdmin.partials.head')
 </head>
 <body  dir="rtl" >
<div class="wrapper-wide">
@include('layouts.PersianAdmin.partials.header')
@yield('content')
@include('layouts.PersianAdmin.partials.footer')
@include('layouts.PersianAdmin.partials.footer-scripts')
</div>
 </body>
</html>
