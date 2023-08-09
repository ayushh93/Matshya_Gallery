@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-edit-page name="product" route="product" :model="$product">
    <x-slot name="content">
        {{-- ================================Form================================ --}}
        @include('admin.layouts.modules.product.form')
        {{-- =================================================================== --}}
    </x-slot>
</x-admin.edit-page>
@endsection

@section('custom_js')
@include('admin.layouts.modules.product.scripts')
@endsection