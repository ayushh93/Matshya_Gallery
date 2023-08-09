@extends('website.layouts.app2')

@section('title')
    Blogs
@endsection
@section('content')
<!--BLOG-->
<div class="section-padding blogs">
    <div class="container">
        <div class="row">
            @foreach($blogs as $blog)
            <div class="col-lg-6 col-md-6">
                <div class="wrapper-blogs">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="blog-post">
                                <h6>{{$blog->date}}</h6>
                                <h2 class="h5"><a href="{{route('blogDetail',$blog->id)}}">{{$blog->title}}</a></h2>
                                <p>{!!Str::limit($blog->description,100)!!}</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-post">
                                <div class="blog-image">
                                    <a href="{{route('blogDetail',$blog->id)}}">
                                        <img src="{{asset('storage/'.$blog->image)}}" alt="{{$blog->title}}" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endsection

