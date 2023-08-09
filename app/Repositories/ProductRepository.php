<?php

namespace App\Repositories;

use App\Models\Admin\Product;
use Illuminate\Support\Facades\Cache;
use App\Contracts\ProductRepositoryInterface;
use App\Http\Requests\ProductRequest;
use App\Models\Admin\Category;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;


class ProductRepository implements ProductRepositoryInterface
{
    // Product Index
    public function indexProduct()
    {
        $products = config('adminetic.caching', true)
            ? (Cache::has('products') ? Cache::get('products') : Cache::rememberForever('products', function () {
                return Product::latest()->get();
            }))
            : Product::latest()->get();
        return compact('products');
    }

    // Product Create
    public function createProduct()
    {
        $categories = Cache::get('categories',Category::latest()->get());
        return compact('categories');
    }

    // Product Store
    public function storeProduct(ProductRequest $request)
    {
        $product = Product::create($request->validated());
        $this->uploadImage($product);

        if ($request->hasFile('gallery')) {
            foreach ($request->file('gallery') as $image) {
                $product->addMedia($image)->toMediaCollection('product_gallery');
            }
        }
    }

    // Product Show
    public function showProduct(Product $product)
    {
        return compact('product');
    }

    // Product Edit
    public function editProduct(Product $product)
    {
        $categories = config('adminetic.caching', true)
            ? (Cache::has('categories') ? Cache::get('categories') : Cache::rememberForever('categories', function () {
                return Category::latest()->get();
            }))
            : Category::latest()->get();
        return compact('product','categories');
    }

    // Product Update
    public function updateProduct(ProductRequest $request, Product $product)
    {
         // Delete the previously saved image (if applicable).
         if (request()->has('image') && !empty($product->image)) {
            Storage::delete('public/' . $product->image);
            }
        $product->update($request->validated());
        $this->uploadImage($product);
         
       
    }

    // Product Destroy
    public function destroyProduct(Product $product)
    {
        //Delete the associated image from the storage (if applicable).
        if (!empty($product->image)) {
            Storage::delete('public/' . $product->image); 
            }
        $product->clearMediaCollection('gallery');
        $product->delete();
    }
     // Image Upload
     protected function uploadImage(Product $product)
     {
         if (request()->has('image')) {          
             $product->update([
                 'image' => request()->image->store('website/product', 'public'),
             ]);
             $img = Img::make(request()->file('image')->getRealPath());
             $img->save(public_path('storage/' . $product->getRawOriginal('image')));
         }
     }
}
