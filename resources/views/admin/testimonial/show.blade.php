@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
    <x-adminetic-show-page name="testimonial" route="testimonial" :model="$testimonial">
        <x-slot name="content">
            <div class="row">
                <div class="col-lg-3">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                                @isset($testimonial->image)                                   
                                        <img src="{{ asset('storage/' . $testimonial->image) }}" alt="{{ $testimonial->name }}" class="img-fluid" width="200px">                                    
                                @endisset                               
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    @isset($testimonial->excerpt)
                        <div class="card shadow-lg">
                            <div class="card-body p-3">
                                <b>{{$testimonial->name}}</b>
                                <hr>
                                {!! $testimonial->excerpt !!}
                            </div>
                        </div>
                    @endisset                   
                </div>
            </div>
        </x-slot>
    </x-admin.show-page>

@endsection

@section('custom_js')
    @include('admin.layouts.modules.testimonial.scripts')
@endsection
