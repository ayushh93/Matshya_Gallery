@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="category" route="category">
    <x-slot name="content">
        {{-- ================================Card================================ --}}
        <table class="table table-striped table-bordered datatable">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Title</th>
                    <th>Image</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $category)
                <tr>
                    <td>{{$loop-> index + 1}}</td>
                    <td>{{$category->title}}</td>
                    <td>
                        @if (isset($category->image))
                        <img src="{{ asset('storage/' . $category->image) }}" alt="{{ $category->title }}"
                            class="img-fluid" width="200px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $category->title }}" class="img-fluid">
                    @endif
                    </td>
                    <td><span
                        class="badge badge-{{ $category->is_active ? 'success' : 'danger' }}">{{ $category->is_active ? 'Active' : 'Inactive' }}</span></td>
                    <td>
                        <x-adminetic-action :model="$category" route="category" />
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>SN</th>
                    <th>Title</th>
                    <th>Image</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </tfoot>
        </table>
        {{-- =================================================================== --}}
    </x-slot>
</x-adminetic-index-page>
@endsection

@section('custom_js')
@include('admin.layouts.modules.category.scripts')
@endsection