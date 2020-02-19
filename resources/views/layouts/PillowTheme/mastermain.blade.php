<!DOCTYPE html>
<html lang="fa">
 <head>
   @include('layouts.PillowTheme.partials.head')
 </head>
 <body  dir="rtl" >
<div class="wrapper-wide">
@include('layouts.PillowTheme.partials.header')
@yield('content')
@include('layouts.PillowTheme.partials.footer')
@include('layouts.PillowTheme.partials.footer-scripts')
</div>
 </body>
</html>
