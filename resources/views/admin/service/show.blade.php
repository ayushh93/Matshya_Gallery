@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
    <x-adminetic-show-page name="service" route="service" :model="$service">
        <x-slot name="content">
            <div class="row">
                <div class="col-lg-3">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                                @isset($service->image)                                   
                                        <img src="{{ asset('storage/' . $service->image) }}" alt="{{ $service->name }}" class="img-fluid" width="200px">                                    
                                @endisset                               
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    @isset($service->excerpt)
                        <div class="card shadow-lg">
                            <div class="card-body p-3">
                                <b>{{$service->title}}</b>
                                <hr>
                                {!! $service->excerpt !!}
                            </div>
                        </div>
                    @endisset                   
                </div>
            </div>
        </x-slot>
    </x-admin.show-page>

@endsection

@section('custom_js')
    @include('admin.layouts.modules.service.scripts')
@endsection
