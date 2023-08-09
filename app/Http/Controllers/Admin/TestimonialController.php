<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin\Testimonial;
use Illuminate\Http\Request;
use App\Http\Requests\TestimonialRequest;
use App\Http\Controllers\Controller;
use App\Contracts\TestimonialRepositoryInterface;

class TestimonialController extends Controller
{
    protected $testimonialRepositoryInterface;

    public function __construct(TestimonialRepositoryInterface $testimonialRepositoryInterface)
    {
        $this->testimonialRepositoryInterface = $testimonialRepositoryInterface;
        $this->authorizeResource(Testimonial::class, 'testimonial');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.testimonial.index', $this->testimonialRepositoryInterface->indexTestimonial());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.testimonial.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\TestimonialRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TestimonialRequest $request)
    {
        $this->testimonialRepositoryInterface->storeTestimonial($request);
        return redirect(adminRedirectRoute('testimonial'))->withSuccess('Testimonial Created Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Admin\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function show(Testimonial $testimonial)
    {
        return view('admin.testimonial.show', $this->testimonialRepositoryInterface->showTestimonial($testimonial));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Admin\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function edit(Testimonial $testimonial)
    {
        return view('admin.testimonial.edit', $this->testimonialRepositoryInterface->editTestimonial($testimonial));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\TestimonialRequest  $request
     * @param  \App\Models\Admin\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function update(TestimonialRequest $request, Testimonial $testimonial)
    {
        $this->testimonialRepositoryInterface->updateTestimonial($request, $testimonial);
        return redirect(adminRedirectRoute('testimonial'))->withInfo('Testimonial Updated Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Admin\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function destroy(Testimonial $testimonial)
    {
        $this->testimonialRepositoryInterface->destroyTestimonial($testimonial);
        return redirect(adminRedirectRoute('testimonial'))->withFail('Testimonial Deleted Successfully.');
    }
}
