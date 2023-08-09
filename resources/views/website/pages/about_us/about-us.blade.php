@extends('website.layouts.app2')

@section('title')
    ABOUT US
@endsection
@section('content')
<!--ABOUT US-->
<section class="section-padding about-us">
    <div class="container">
        <div class="about-us-wrapper">
            <h2 class="text-white about-us-heading">{{setting('about_title')}}</h2>
                <p>{!!setting('about_body')!!}</p>
        </div>
    </div>
</section>
<!--SERVICES-->
<section class="section-padding services">
    <div class="container">
        <div class="main-title text-center">
            <h4 class="text-light">Our Services</h4>
        </div>
        <div class="row">
            @foreach ($services as $service)
            <div class="col-lg-3 col-md-6">
                <div class="service-wrapper">
                    <div class="service-icon text-center">
                        <img src="{{asset('storage/'.$service->image)}}" alt="Service Icon" class="img-fluid">
                    </div>
                    <h5 class="text-white text-center service-heading">{{$service->title}}</h5>
                    <p>{!! $service->excerpt !!}</p>
                </div>
            </div>
            @endforeach
            
        </div>
    </div>
</section>
@endsection

