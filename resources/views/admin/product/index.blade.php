@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
<x-adminetic-index-page name="product" route="product">
    <x-slot name="content">
        {{-- ================================Card================================ --}}
        <table class="table table-striped table-bordered datatable">
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $product)                
                <tr>
                    <td>{{$loop->index + 1}}</td>
                    <td>
                         @if (isset($product->image))
                        <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}"
                            class="img-fluid" width="100px">
                    @else
                        <img src="{{ getImagePlaceholder() }}" alt="{{ $product->name }}" class="img-fluid">
                    @endif
                </td>
                    <td>{{$product->name}}</td>
                    <td>{{$product->category->title}}</td>
                    <td>
                        @if ($product->is_active)
                        <span class="badge badge-{{ $product->is_popular ? 'success' : 'danger' }}">
                            {{ $product->is_popular ? 'Popular' : 'Not Popular' }}
                        </span>
                        <br>
                        <span class="badge badge-{{ $product->is_best_selling ? 'success' : 'danger' }}">
                            {{ $product->is_best_selling ? 'Best Selling' : 'Not Best Selling' }}
                        </span>
                        <span class="badge badge-{{ $product->is_new_arrival ? 'success' : 'danger' }}">
                            {{ $product->is_new_arrival ? 'New Arrival' : 'Not New Arrival' }}
                        </span>
                        @else
                        <span class="badge badge-{{ $product->is_active ? 'success' : 'danger' }}">
                            {{ $product->is_active ? 'Active' : 'Inactive' }}
                        </span>
                        @endif                       
                    </td>
                    <td>
                        <x-adminetic-action :model="$product" route="product" />
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>SN</th>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
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
@include('admin.layouts.modules.product.scripts')
@endsection