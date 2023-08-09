@extends('website.layouts.app2')

@section('title')
    Blogs
@endsection
@section('content')
<!--BLOG DETAILS-->
<section class="blog-details-page section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9">
                <div class="blog-details-left">
                    <div class="blog-title text-left">
                        <h4>{{$blog->title}}</h4>
                    </div>
                    <div class="blog-main-image">
                        <img src="{{asset('storage/'.$blog->image)}}" alt="{{$blog->title}}" class="img-fluid">
                    </div>
                    <div class="sharethis-inline-share-buttons my-3"></div>
                    <div class="blog-writer">
                        <div class="d-flex align-items-center mr-4">
                            <div class="blog-writer-image">
                                <img src="{{asset('website/assets/images/avatar.jpg')}}" alt="Writer">
                            </div>
                            <p>{{$blog->author}}</p>
                        </div>
                        <div class="blog-date d-flex align-items-center">
                            <i class="fa-solid fa-calendar-days mr-2"></i>
                            <p>{{ \Carbon\Carbon::parse($blog->date)->format('F j, Y') }}</p>
                        </div>
                    </div>
                    <div class="addthis_inline_share_toolbox_vnvs"></div>
                    <div class="blog-details-text">
                        <p>{!!$blog->description!!}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3">
                <div class="blog-details-right">                   
                    <div class="archive-wrapper">
                        <div class="archive">
                            <h5>Latest blogs</h5>
                        </div>
                        <div class="archive-list">
                            <ul>
                                @foreach ($blogs as $item)
                                @if($blog->id != $item->id)
                                <li><a href="{{route('blogDetail',$item->id)}}">{{$item->title}}</a></li>     
                                @endif                               
                                @endforeach                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

