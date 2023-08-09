<?php

namespace App\Contracts;

use App\Models\Admin\Gallery;
use App\Http\Requests\GalleryRequest;

interface GalleryRepositoryInterface
{
    public function indexGallery();

    public function createGallery();

    public function storeGallery(GalleryRequest $request);

    // public function showGallery(Gallery $Gallery);

    // public function editGallery(Gallery $Gallery);

    // public function updateGallery(GalleryRequest $request, Gallery $Gallery);

    public function destroyGallery(Gallery $Gallery);
}
