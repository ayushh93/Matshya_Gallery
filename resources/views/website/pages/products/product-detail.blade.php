@extends('website.layouts.app2')

@section('title')
    Product
@endsection
@section('content')
<!--DETAILS-->
<section class="detail-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12">
                <div class="row">
                    <div class="col-lg-2 col-md-2 mt--40">
                        <div class="slider-nav py-2">
                            <div><img src="{{asset('storage/'.$product->image)}}" alt="one" class="img-fluid"></div>
                           
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10">
                        <div class="slider-for my-3">
                            <div><img src="{{asset('storage/'.$product->image)}}"
                                    data-zoom-image="{{asset('storage/'.$product->image)}}" id="example-1" alt="one"
                                    class="img-fluid"></div>                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-md-12">
                <h1 class="my-3">{{$product->name}}</h1>
                <h3><del>Rs.{{$product->mrp}}</del></h3>
                <h4 class="mb-3">Rs.{{$product->sp}}</h4>
                <div class="mb-3 product-description">
                    <h4 class="title">Product Description:</h4>
                    <p>
                        {!!$product->description!!}
                    </p>                    
                </div>
            </div>
        </div>
    </div>


</section>
@endsection

