<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Admin\Blog;
use App\Models\Admin\Category;
use App\Models\Admin\Faq;
use App\Models\Admin\Gallery;
use App\Models\Admin\Product;
use App\Models\Admin\Service;
use App\Models\Admin\Slider;
use App\Models\Admin\Testimonial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class WebsiteController extends Controller
{
    public function index()
    {
        $sliders = Cache::get('sliders', Slider::all());
        $activeSliders = $sliders->where('is_active',1);
        $categories = Cache::get('categories', Category::all());
        $activeCategories = $categories->where('is_active',1);
        $products = Product::latest()->get();
        $activeproducts = $products->where('is_active',1);
        $bestSellingProducts = $activeproducts->where('is_best_selling',1);
        $newProducts = $activeproducts->where('is_new_arrival',1);
        $services = Cache::get('services',Service::latest()->get());
        $galleries = Cache::get('galleries',Gallery::latest()->get());
        $blogs= Cache::get('blogs',Blog::latest()->get());
        $testimonials = Cache::get('testimonials', Testimonial::latest()->get());
        return view('website.pages.home.index',compact('activeSliders','activeCategories','bestSellingProducts','newProducts','services','galleries','blogs','testimonials'));
    }
    public function about()
    {
        $services = Cache::get('services',Service::latest()->get());
        return view ('website.pages.about_us.about-us',compact('services'));

    }
    public function gallery()
    {
        $galleries = Cache::get('galleries',Gallery::latest()->get());
        return view ('website.pages.gallery.gallery',compact('galleries'));

    }
    public function blogs()
    {
        $blogs = Cache::get('blogs',Blog::latest()->get());
        return view ('website.pages.blogs.blogs',compact('blogs'));
    }
    public function categories($id)
    {
        $category = Category::where('id',$id)->first();
        return view('website.pages.categories.categories',compact('category'));
    }
    public function productDetail($id)
    {
        $product = Product::where('id',$id)->first();
        return view('website.pages.products.product-detail',compact('product'));
    }
    public function blogDetail($id)
    {
        $blog = Blog::where('id',$id)->first();
        $blogs = Cache::get('blogs',Blog::latest()->get())->take(4);
        return view('website.pages.blogs.blog-detail',compact('blog','blogs'));
    }
    public function faqs()
    {
        $faqs = Cache::get('faqs', Faq::latest()->get());
        return view('website.pages.faq.faq',compact('faqs'));
    }
    
}
