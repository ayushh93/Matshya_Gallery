@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
    <x-adminetic-show-page name="blog" route="blog" :model="$blog">
        <x-slot name="content">
            <div class="row">
                <div class="col-lg-9">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                            <h4>{{ $blog->title ?? 'Blog Title' }}</h4>
                            <p><strong>Author:</strong> {{ $blog->author }}</p>
                            <p><strong>Date:</strong> {{ \Carbon\Carbon::parse($blog->date)->format('F j, Y') }}</p>
                        </div>
                    </div>
                    <div class="card shadow-lg mt-3">
                        <div class="card-body p-3">
                            {!! $blog->description ?? 'No description available' !!}
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                            @isset($blog->image)
                                <img src="{{ asset('storage/' . $blog->image) }}" alt="{{ $blog->title ?? 'Blog' }}" class="img-fluid" width="200px">
                            @endisset
                        </div>
                    </div>
                    <div class="card shadow-lg mt-3">
                        <div class="card-header">
                            <h4 class="card-name">SEO</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <p><strong>SEO Title:</strong> {{ $blog->meta_name ?? 'No SEO Title' }}</p>
                                <hr>
                                <p><strong>Meta Description:</strong></p>
                                {!! $blog->meta_description ?? 'No meta description' !!}
                                <hr>
                                <p><strong>Meta Keywords:</strong></p>
                                {!! $blog->meta_keywords ?? 'No meta keywords' !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </x-slot>
            
    </x-admin.show-page>

@endsection

@section('custom_js')
    @include('admin.layouts.modules.blog.scripts')
@endsection
