<?php

namespace App\Repositories;

use App\Models\Admin\Service;
use Illuminate\Support\Facades\Cache;
use App\Contracts\ServiceRepositoryInterface;
use App\Http\Requests\ServiceRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image as Img;


class ServiceRepository implements ServiceRepositoryInterface
{
    // Service Index
    public function indexService()
    {
        $services = config('adminetic.caching', true)
            ? (Cache::has('services') ? Cache::get('services') : Cache::rememberForever('services', function () {
                return Service::latest()->get();
            }))
            : Service::latest()->get();
        return compact('services');
    }

    // Service Create
    public function createService()
    {
        //
        
    }

    // Service Store
    public function storeService(ServiceRequest $request)
    {
        $service = Service::create($request->validated());
        $this->uploadImage($service);

    }

    // Service Show
    public function showService(Service $service)
    {
        return compact('service');
    }

    // Service Edit
    public function editService(Service $service)
    {
        return compact('service');
    }

    // Service Update
    public function updateService(ServiceRequest $request, Service $service)
    {
        // Delete the previously saved image (if applicable).
        if (request()->has('image') && !empty($service->image)) {
            Storage::delete('public/' . $service->image);
            }
        $service->update($request->validated());
        $this->uploadImage($service);
    }

    // Service Destroy
    public function destroyService(Service $service)
    {
        if (!empty($service->image)) {
        Storage::delete('public/' . $service->image);
        }
        $service->delete();
    }
     // Image Upload
     protected function uploadImage(Service $service)
     {
         if (request()->has('image')) {          
             $service->update([
                 'image' => request()->image->store('website/service', 'public'),
             ]);
             $img = Img::make(request()->file('image')->getRealPath());
             $img->save(public_path('storage/' . $service->getRawOriginal('image')));
         }
     }
}
