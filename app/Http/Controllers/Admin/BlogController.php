<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin\Blog;
use Illuminate\Http\Request;
use App\Http\Requests\BlogRequest;
use App\Http\Controllers\Controller;
use App\Contracts\BlogRepositoryInterface;

class BlogController extends Controller
{
    protected $blogRepositoryInterface;

    public function __construct(BlogRepositoryInterface $blogRepositoryInterface)
    {
        $this->blogRepositoryInterface = $blogRepositoryInterface;
        $this->authorizeResource(Blog::class, 'blog');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.blog.index', $this->blogRepositoryInterface->indexBlog());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.blog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\BlogRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BlogRequest $request)
    {
        $this->blogRepositoryInterface->storeBlog($request);
        return redirect(adminRedirectRoute('blog'))->withSuccess('Blog Created Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Admin\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function show(Blog $blog)
    {
        return view('admin.blog.show', $this->blogRepositoryInterface->showBlog($blog));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Admin\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Blog $blog)
    {
        return view('admin.blog.edit', $this->blogRepositoryInterface->editBlog($blog));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\BlogRequest  $request
     * @param  \App\Models\Admin\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function update(BlogRequest $request, Blog $blog)
    {
        $this->blogRepositoryInterface->updateBlog($request, $blog);
        return redirect(adminRedirectRoute('blog'))->withInfo('Blog Updated Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Admin\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blog $blog)
    {
        $this->blogRepositoryInterface->destroyBlog($blog);
        return redirect(adminRedirectRoute('blog'))->withFail('Blog Deleted Successfully.');
    }
}
