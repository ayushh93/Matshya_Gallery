@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="service" route="service">
    <x-slot name="content">
        {{-- ================================Card================================ --}}
        <table class="table table-striped table-bordered datatable">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Title</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($services as $service)
                <tr>
                    <td>{{$loop->index + 1}}</td>
                    <td>{{$service->title}}</td>
                    <td>
                        @if (isset($service->image))
                        <img src="{{ asset('storage/' . $service->image) }}" alt="{{ $service->title }}"
                            class="img-fluid" width="100px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $service->title }}" class="img-fluid">
                    @endif</td>
                    <td>
                        <x-adminetic-action :model="$service" route="service" />
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>SN</th>
                    <th>Title</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </tfoot>
        </table>
        {{-- =================================================================== --}}
    </x-slot>
</x-adminetic-index-page>
@endsection

@section('custom_js')
@include('admin.layouts.modules.service.scripts')
@endsection