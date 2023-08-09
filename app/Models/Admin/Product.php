<?php

namespace App\Models\Admin;

use Illuminate\Support\Facades\Cache;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Product extends Model implements HasMedia
{
    use LogsActivity;
    use InteractsWithMedia;

    protected $guarded = [];

    // Forget cache on updating or saving and deleting
    public static function boot()
    {
        parent::boot();

        static::saving(function () {
            self::cacheKey();
        });

        static::deleting(function () {
            self::cacheKey();
        });
    }

    // Cache Keys
    private static function cacheKey()
    {
        Cache::has('products') ? Cache::forget('products') : '';
    }

    // Logs
    protected static $logName = 'product';

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults();
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    // public function registerMediaCollections(): void
    // {
    //     $this->addMediaCollection('product_gallery')
    //         ->acceptsMimeTypes(['image/jpeg', 'image/png'])
    //         ->maxNumberOfFiles(5);
    // }

}
