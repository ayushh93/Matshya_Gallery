@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="slider" route="slider">
    <x-slot name="content">
        {{-- ================================Card================================ --}}
        <table class="table table-striped table-bordered datatable">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Title</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($sliders as $slider)
                <tr>
                    <td>{{$loop-> index + 1}}</td>
                    <td>{{$slider->title}}</td>
                    <td>
                        @if (isset($slider->image))
                        <img src="{{ asset('storage/' . $slider->image) }}" alt="{{ $slider->title }}"
                            class="img-fluid" width="200px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $slider->title }}" class="img-fluid">
                    @endif
                    </td>
                    <td><span
                        class="badge badge-{{ $slider->is_active ? 'success' : 'danger' }}">{{ $slider->is_active ? 'Active' : 'Inactive' }}</td>
                    <td>
                        <x-adminetic-action :model="$slider" route="slider" />
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
@include('admin.layouts.modules.slider.scripts')
@endsection