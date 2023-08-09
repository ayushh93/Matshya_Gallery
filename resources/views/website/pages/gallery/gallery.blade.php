@extends('website.layouts.app2')

@section('title')
    GALLERY
@endsection
@section('content')
<!--GALLERY-->
<div class="main section-padding gallery">
    <div class="container-fluid">
        <div class="main_content">
            @foreach($galleries as $gallery)
            <div class="picture_wrapper">
                <a href="{{asset('storage/'.$gallery->image)}}" data-fancybox="gallery"
                    data-caption="{{$gallery->title ?? "Gallery"}}">
                    <img src="{{asset('storage/'.$gallery->image)}}"
                        alt="Image Gallery">
                </a>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endsection