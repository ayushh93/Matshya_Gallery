@extends(request()->header('layout') ??  request()->header('layout') ?? 'adminetic::admin.layouts.app')

@section('content')
    <x-adminetic-show-page name="product" route="product" :model="$product">
        <x-slot name="content">
            <div class="row">
                <div class="col-lg-8">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                            <h3 class="card-title">{{ $product->name }}</h3>
                            <hr>
                            <div class="row">
                                <div class="col-lg-12">
                                    <p><strong>Category:</strong> {{ $product->category->title ?? 'N/A' }}</p>
                                
                                    <p><strong>Market price:</strong> ${{ $product->mrp ?? 'N/A' }}</p>
                               
                                    <p><strong>Selling price:</strong> ${{ $product->sp ?? 'N/A' }}</p>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <strong>Status:</strong>
                                @if ($product->is_active)
                                    <span class="badge bg-success">Active</span>
                                @else
                                    <span class="badge bg-danger">Inactive</span>
                                @endif
        
                                @if ($product->is_best_selling)
                                    <span class="badge bg-success">Best Selling</span>
                                @endif
        
                                @if ($product->is_popular)
                                    <span class="badge bg-success">Popular</span>
                                @endif
        
                                @if ($product->is_new_arrival)
                                    <span class="badge bg-success">New Arrival</span>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                            @isset($product->image)
                                <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" class="img-fluid" width="100%">
                            @endisset
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow-lg">
                        <div class="card-body p-3">
                            <h5>Description</h5>
                            <hr>
                            <p>{!! $product->description ?? 'N/A' !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </x-slot>
              
    </x-admin.show-page>

@endsection

@section('custom_js')
    @include('admin.layouts.modules.product.scripts')
@endsection
