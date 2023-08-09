<?php

namespace App\Repositories;

use App\Models\Admin\Testimonial;
use Illuminate\Support\Facades\Cache;
use App\Contracts\TestimonialRepositoryInterface;
use App\Http\Requests\TestimonialRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;


class TestimonialRepository implements TestimonialRepositoryInterface
{
    // Testimonial Index
    public function indexTestimonial()
    {
        $testimonials = config('adminetic.caching', true)
            ? (Cache::has('testimonials') ? Cache::get('testimonials') : Cache::rememberForever('testimonials', function () {
                return Testimonial::latest()->get();
            }))
            : Testimonial::latest()->get();
        return compact('testimonials');
    }

    // Testimonial Create
    public function createTestimonial()
    {
        //
    }

    // Testimonial Store
    public function storeTestimonial(TestimonialRequest $request)
    {
        $testimonial = Testimonial::create($request->validated());
        $this->uploadImage($testimonial);
    }

    // Testimonial Show
    public function showTestimonial(Testimonial $testimonial)
    {
        return compact('testimonial');
    }

    // Testimonial Edit
    public function editTestimonial(Testimonial $testimonial)
    {
        return compact('testimonial');
    }

    // Testimonial Update
    public function updateTestimonial(TestimonialRequest $request, Testimonial $testimonial)
    {
        // Delete the previously saved image (if applicable).
        if (request()->has('image') && !empty($testimonial->image)) {
            Storage::delete('public/' . $testimonial->image);
            }
        $testimonial->update($request->validated());
        $this->uploadImage($testimonial);

    }

    // Testimonial Destroy
    public function destroyTestimonial(Testimonial $testimonial)
    {
        if (!empty($testimonial->image)) {
            Storage::delete('public/' . $testimonial->image);
            }
        $testimonial->delete();
    }
    // Image Upload
    protected function uploadImage(Testimonial $testimonial)
    {
        if (request()->has('image')) {          
            $testimonial->update([
                'image' => request()->image->store('website/testimonial', 'public'),
            ]);
            $img = Img::make(request()->file('image')->getRealPath());
            $img->resize(200, null, function ($constraint) {
                $constraint->aspectRatio();
                $constraint->upsize();
            });
            $img->save(public_path('storage/' . $testimonial->getRawOriginal('image')));
        }
    }
}
