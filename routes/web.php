<?php

use App\Http\Controllers\Website\WebsiteController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::admineticAuth();

Route::resource('admin/slider',\App\Http\Controllers\Admin\SliderController::class);
Route::resource('admin/service',\App\Http\Controllers\Admin\ServiceController::class);
Route::resource('admin/category',\App\Http\Controllers\Admin\CategoryController::class);
Route::resource('admin/product',\App\Http\Controllers\Admin\ProductController::class);
Route::resource('admin/gallery',\App\Http\Controllers\Admin\GalleryController::class);
Route::resource('admin/blog',\App\Http\Controllers\Admin\BlogController::class);
Route::resource('admin/faq',\App\Http\Controllers\Admin\FaqController::class);
Route::resource('admin/testimonial',\App\Http\Controllers\Admin\TestimonialController::class);

//Website routes
Route::get('/', [WebsiteController::class,'index'])->name('index');
Route::get('/about-us', [WebsiteController::class,'about'])->name('about');
Route::get('/gallery', [WebsiteController::class,'gallery'])->name('gallery');
Route::get('/blogs', [WebsiteController::class,'blogs'])->name('blogs');
Route::get('/faqs', [WebsiteController::class,'faqs'])->name('faqs');
Route::get('/blogs/{id}', [WebsiteController::class,'blogDetail'])->name('blogDetail');
Route::get('/category/{id}', [WebsiteController::class,'categories'])->name('categories');
Route::get('/product/{id}', [WebsiteController::class,'productDetail'])->name('productDetail');
Route::view('/contact-us','website.pages.contact_us.contact-us')->name('contact');
Route::view('/payment-details','website.pages.payment.payment-details')->name('payment');
Route::view('/return-policy','website.pages.policies.return-policies')->name('returnPolicy');
Route::view('/shipping-policies','website.pages.policies.shipping-policies')->name('shippingPolicy');
Route::view('/terms-and-conditions','website.pages.policies.terms-and-conditions')->name('terms');