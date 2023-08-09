@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="blog" route="blog">
    <x-slot name="content">
        {{-- ================================Card================================ --}}
        <table class="table table-striped table-bordered datatable">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Image</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($blogs as $blog)
                <tr>
                    <td>{{$loop -> index + 1}}</td>
                    <td>
                        @if (isset($blog->image))
                        <img src="{{ asset('storage/' . $blog->image) }}" alt="{{ $blog->title }}"
                            class="img-fluid" width="200px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $blog->title }}" class="img-fluid">
                    @endif
                    </td>
                    <td>{{$blog->title}}</td>
                    <td>{{ \Carbon\Carbon::parse($blog->date)->format('F j, Y') }}</td>
                    <td>
                        <x-adminetic-action :model="$blog" route="blog" />
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>Image</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
            </tfoot>
        </table>
        {{-- =================================================================== --}}
    </x-slot>
</x-adminetic-index-page>
@endsection

@section('custom_js')
@include('admin.layouts.modules.blog.scripts')
@endsection