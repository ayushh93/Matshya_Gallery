@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="gallery" route="gallery">
    <x-slot name="content">
        {{-- ================================Card================================ --}}
        <table class="table table-striped table-bordered datatable">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Image</th>
                    <th>Title</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($galleries as $gallery)
                <tr>
                    <td>{{$loop-> index + 1}}</td>
                    <td>
                        @if (isset($gallery->image))
                        <img src="{{ asset('storage/' . $gallery->image) }}" alt="{{ $gallery->title }}"
                            class="img-fluid" width="300px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $gallery->title }}" class="img-fluid">
                    @endif
                    </td>
                    <td>{{$gallery->title ?? " "}}</td>
                    <td>
                        <x-adminetic-action :model="$gallery" route="gallery" />
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>SN</th>
                    <th>Image</th>
                    <th>Title</th>
                    <th>Actions</th>
                </tr>
            </tfoot>
        </table>
        {{-- =================================================================== --}}
    </x-slot>
</x-adminetic-index-page>
@endsection

@section('custom_js')
@include('admin.layouts.modules.gallery.scripts')
@endsection