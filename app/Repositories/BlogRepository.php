<?php

namespace App\Repositories;

use App\Models\Admin\Blog;
use Illuminate\Support\Facades\Cache;
use App\Contracts\BlogRepositoryInterface;
use App\Http\Requests\BlogRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;


class BlogRepository implements BlogRepositoryInterface
{
    // Blog Index
    public function indexBlog()
    {
        $blogs = config('adminetic.caching', true)
            ? (Cache::has('blogs') ? Cache::get('blogs') : Cache::rememberForever('blogs', function () {
                return Blog::latest()->get();
            }))
            : Blog::latest()->get();
        return compact('blogs');
    }

    // Blog Create
    public function createBlog()
    {
        //
    }

    // Blog Store
    public function storeBlog(BlogRequest $request)
    {
        $blog = Blog::create($request->validated());
        $this->uploadImage($blog);
    }

    // Blog Show
    public function showBlog(Blog $blog)
    {
        return compact('blog');
    }

    // Blog Edit
    public function editBlog(Blog $blog)
    {
        return compact('blog');
    }

    // Blog Update
    public function updateBlog(BlogRequest $request, Blog $blog)
    {
        // Delete the previously saved image (if applicable).
        if (request()->has('image') && !empty($blog->image)) {
            Storage::delete('public/' . $blog->image);
        }
        $blog->update($request->validated());
        $this->uploadImage($blog);
    }

    // Blog Destroy
    public function destroyBlog(Blog $blog)
    {
        $blog->delete();
        //Delete the associated image from the storage (if applicable).
        if (!empty($blog->image)) {
            Storage::delete('public/' . $blog->image);
        }
    }
    // Image Upload
    protected function uploadImage(Blog $blog)
    {
        if (request()->has('image')) {
            $blog->update([
                'image' => request()->image->store('website/blog', 'public'),
            ]);
            $img = Img::make(request()->file('image')->getRealPath());
            $img->save(public_path('storage/' . $blog->getRawOriginal('image')));
        }
    }
}
