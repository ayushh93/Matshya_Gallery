@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
    <x-adminetic-show-page name="faq" route="faq" :model="$faq">
        <x-slot name="content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow-lg">
                        <div class="card-body">
                            <h5>{{ $faq->question }}</h5>
                            <br>
                               -> {{$faq->answer}}                           
                        </div>
                    </div>
                </div>
            </div>
        </x-slot>
        
    </x-admin.show-page>

@endsection

@section('custom_js')
    @include('admin.layouts.modules.faq.scripts')
@endsection
