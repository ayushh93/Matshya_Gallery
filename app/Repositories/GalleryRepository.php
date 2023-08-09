<?php

namespace App\Repositories;

use App\Models\Admin\Gallery;
use Illuminate\Support\Facades\Cache;
use App\Contracts\GalleryRepositoryInterface;
use App\Http\Requests\GalleryRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;


class GalleryRepository implements GalleryRepositoryInterface
{
    // Gallery Index
    public function indexGallery()
    {
        $galleries = config('adminetic.caching', true)
            ? (Cache::has('galleries') ? Cache::get('galleries') : Cache::rememberForever('galleries', function () {
                return Gallery::latest()->get();
            }))
            : Gallery::latest()->get();
        return compact('galleries');
    }

    // Gallery Create
    public function createGallery()
    {
        //
    }

    // Gallery Store
    public function storeGallery(GalleryRequest $request)
    {
        $gallery = Gallery::create($request->validated());
        $this->uploadImage($gallery);
    }

    // // Gallery Show
    // public function showGallery(Gallery $gallery)
    // {
    //     return compact('gallery');
    // }

    // // Gallery Edit
    // public function editGallery(Gallery $gallery)
    // {
    //     return compact('gallery');
    // }

    // // Gallery Update
    // public function updateGallery(GalleryRequest $request, Gallery $gallery)
    // {
    //     $gallery->update($request->validated());
    // }

    // Gallery Destroy
    public function destroyGallery(Gallery $gallery)
    {
        $gallery->delete();
        Storage::delete('public/' . $gallery->image); 
    }
    // Image Upload
    protected function uploadImage(Gallery $gallery)
    {
        if (request()->has('image')) {          
            $gallery->update([
                'image' => request()->image->store('website/gallery', 'public'),
            ]);
            $img = Img::make(request()->file('image')->getRealPath());
            $img->save(public_path('storage/' . $gallery->getRawOriginal('image')));
        }
    }
}
