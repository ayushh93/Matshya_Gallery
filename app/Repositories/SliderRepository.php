<?php

namespace App\Repositories;

use App\Models\Admin\Slider;
use Illuminate\Support\Facades\Cache;
use App\Contracts\SliderRepositoryInterface;
use App\Http\Requests\SliderRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;

class SliderRepository implements SliderRepositoryInterface
{
    // Slider Index
    public function indexSlider()
    {
        $sliders = config('adminetic.caching', true)
            ? (Cache::has('sliders') ? Cache::get('sliders') : Cache::rememberForever('sliders', function () {
                return Slider::latest()->get();
            }))
            : Slider::latest()->get();
            // Website Caches
        if (!Cache::has('sliders')) {
            Cache::rememberForever('sliders', function () {
                return Slider::latest()->get();
            });
        }
        return compact('sliders');
    }

    // Slider Create
    public function createSlider()
    {
        //
    }

    // Slider Store
    public function storeSlider(SliderRequest $request)
    {
        $slider = Slider::create($request->validated());
        $this->uploadImage($slider);
    }

    // Slider Show
    public function showSlider(Slider $slider)
    {
        return compact('slider');
    }

    // Slider Edit
    public function editSlider(Slider $slider)
    {
        return compact('slider');
    }

    // Slider Update
    public function updateSlider(SliderRequest $request, Slider $slider)
    {
        // Delete the previously saved image (if applicable).
        if (request()->has('image') && !empty($slider->image)) {
        Storage::delete('public/' . $slider->image);
        }
        $slider->update($request->validated());
        $this->uploadImage($slider);
    }

    // Slider Destroy
    public function destroySlider(Slider $slider)
    {
        //Delete the associated image from the storage (if applicable).
        if (!empty($slider->image)) {
        Storage::delete('public/' . $slider->image); 
        }
        $slider->delete();
        
    }
     // Image Upload
     protected function uploadImage(Slider $slider)
     {
         if (request()->has('image')) {          
             $slider->update([
                 'image' => request()->image->store('website/slider', 'public'),
             ]);
             $img = Img::make(request()->file('image')->getRealPath());
             $img->save(public_path('storage/' . $slider->getRawOriginal('image')));
         }
     }
}
