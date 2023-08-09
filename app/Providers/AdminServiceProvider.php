<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;

class AdminServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        /* Repository Interface Binding */
        $this->repos();
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // Registering Blade Directives
        Paginator::useBootstrap();
    }

    // Repository Interface Binding
    protected function repos()
    {
        // $this->app->bind(AnnouncementRepositoryInterface::class, AnnouncementRepository::class);
    $this->app->bind(\App\Contracts\SliderRepositoryInterface::class, \App\Repositories\SliderRepository::class);
$this->app->bind(\App\Contracts\ServiceRepositoryInterface::class, \App\Repositories\ServiceRepository::class);
$this->app->bind(\App\Contracts\CategoryRepositoryInterface::class, \App\Repositories\CategoryRepository::class);
$this->app->bind(\App\Contracts\ProductRepositoryInterface::class, \App\Repositories\ProductRepository::class);
$this->app->bind(\App\Contracts\GalleryRepositoryInterface::class, \App\Repositories\GalleryRepository::class);
$this->app->bind(\App\Contracts\BlogRepositoryInterface::class, \App\Repositories\BlogRepository::class);
$this->app->bind(\App\Contracts\FaqRepositoryInterface::class, \App\Repositories\FaqRepository::class);
$this->app->bind(\App\Contracts\TestimonialRepositoryInterface::class, \App\Repositories\TestimonialRepository::class);
}
}
