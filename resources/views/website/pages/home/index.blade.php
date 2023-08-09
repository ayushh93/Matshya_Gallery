@extends('website.layouts.app')

@section('content')
    <!--SLIDERS-->
    @include('website.layouts.pages.home.slider')
<!--POPULAR-->
@include('website.layouts.pages.home.popular')
<!--ABOUT US-->
@include('website.layouts.pages.home.aboutus')
<!--BEST SELLINGS-->
@include('website.layouts.pages.home.bestselling')
<!--SERVICES-->
@include('website.layouts.pages.home.services')
<!--NEW ARRIVALS-->
@include('website.layouts.pages.home.newarrivals')
<!--COUNTERS-->
@include('website.layouts.pages.home.counters')
<!--BLOG-->
@include('website.layouts.pages.home.blogs')
<!--GALLERY-->
@include('website.layouts.pages.home.gallery')
<!--TESTIMONIALS-->
@include('website.layouts.pages.home.testimonials')
@endsection