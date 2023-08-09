@extends('website.layouts.app2')

@section('title')
    {{strtoupper($category->title)}}
@endsection

@section('content')
<!--CONTENT-->
<section class="section-padding best-sellings">
    <div class="container">
        <div class="row">
            @foreach($category->Products as $product)
            @if($product->is_active) 
            <div class="col-lg-3 col-md-4">
                <div class="best-selling-items">
                    <a href="{{route('productDetail',$product->id)}}">
                        <img src="{{asset('storage/'.$product->image)}}" alt="{{$product->name}}">
                    </a>
                    <h5 class="text-center my-2 best-selling-name">
                        <a href="{{route('productDetail',$product->id)}}">{{$product->name}}</a>
                    </h5>
                </div>
            </div>
            @endif
            @endforeach
        </div>
    </div>
</section>
@endsection

