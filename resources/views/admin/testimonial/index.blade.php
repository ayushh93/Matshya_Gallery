@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="testimonial" route="testimonial">
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
                @foreach ($testimonials as $testimonial)
                <tr>
                    <td>{{$loop->index + 1}}</td>
                    <td>{{$testimonial->name}}</td>
                    <td>
                        @if (isset($testimonial->image))
                        <img src="{{ asset('storage/' . $testimonial->image) }}" alt="{{ $testimonial->name }}"
                            class="img-fluid" width="100px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $testimonial->name }}" class="img-fluid">
                    @endif</td>
                    <td>
                        <x-adminetic-action :model="$testimonial" route="testimonial" />
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
@include('admin.layouts.modules.testimonial.scripts')
@endsection