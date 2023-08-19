@extends('website.layouts.app2')

@section('title')
    Search Products
@endsection

@section('content')
<!--CONTENT-->
<section class="section-padding search-single">
    <div class="container">
        <div class="detail-section mb-4">
            <h1 style="font-size: 2rem">
            @isset($results)
                {{$title}}
            @endisset</h1>
        </div>
        <div class="row">
            @foreach ($results as $result)
            <div class="col-lg-3 col-md-4">
                <div class="best-selling-items">
                    <a href="{{route('productDetail',$result->id)}}">
                        <img src="{{asset('storage/'.$result->image)}}" alt="{{$result->name}}">
                    </a>
                    <h5 class="text-center my-2 best-selling-name">
                        <a href="{{route('productDetail',$result->id)}}">{{$result->name}}</a>
                    </h5>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
        <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a href="#" class="active">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
        </div>
    </div>
@endsection

