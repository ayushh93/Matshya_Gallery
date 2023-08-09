<!doctype html>
<html lang="en">

<head>
    {{-- Meta --}}
    @include('website.layouts.components.meta')
    {{-- Scripts --}}
    @include('website.layouts.assets.links')
    @yield('css')
</head>

<body>
{{-- Header --}}
@include('website.layouts.components.header')
{{--Breadcrum--}}
@include('website.layouts.components.breadcrum')

{{-- Content --}}
@yield('content')
{{-- End Content --}}

{{-- Footer --}}
@include('website.layouts.components.footer')

{{-- Scripts --}}
@include('website.layouts.assets.scripts')
</body>

</html>