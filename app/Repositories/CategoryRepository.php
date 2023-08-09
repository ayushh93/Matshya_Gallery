<?php

namespace App\Repositories;

use App\Models\Admin\Category;
use Illuminate\Support\Facades\Cache;
use App\Contracts\CategoryRepositoryInterface;
use App\Http\Requests\CategoryRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;

class CategoryRepository implements CategoryRepositoryInterface
{
    // Category Index
    public function indexCategory()
    {
        $categories = config('adminetic.caching', true)
            ? (Cache::has('categories') ? Cache::get('categories') : Cache::rememberForever('categories', function () {
                return Category::latest()->get();
            }))
            : Category::latest()->get();
        return compact('categories');
    }

    // Category Create
    public function createCategory()
    {
        //
    }

    // Category Store
    public function storeCategory(CategoryRequest $request)
    {
        $category = Category::create($request->validated());
        $this->uploadImage($category);

    }

    // Category Show
    public function showCategory(Category $category)
    {
        return compact('category');
    }

    // Category Edit
    public function editCategory(Category $category)
    {
        return compact('category');
    }

    // Category Update
    public function updateCategory(CategoryRequest $request, Category $category)
    {
        // Delete the previously saved image (if applicable).
        if (request()->has('image') && !empty($category->image)) {
            Storage::delete('public/' . $category->image);
            }
        $category->update($request->validated());
        $this->uploadImage($category);
    }

    // Category Destroy
    public function destroyCategory(Category $category)
    {
        //Delete the associated image from the storage (if applicable).
        if (!empty($category->image)) {
            Storage::delete('public/' . $category->image); 
            }
        $category->delete();
    }
    // Image Upload
    protected function uploadImage(Category $category)
    {
        if (request()->has('image')) {          
            $category->update([
                'image' => request()->image->store('website/category', 'public'),
            ]);
            $img = Img::make(request()->file('image')->getRealPath());
            $img->save(public_path('storage/' . $category->getRawOriginal('image')));
        }
    }
}
