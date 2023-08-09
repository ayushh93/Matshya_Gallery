<?php

namespace App\Contracts;

use App\Models\Admin\Blog;
use App\Http\Requests\BlogRequest;

interface BlogRepositoryInterface
{
    public function indexBlog();

    public function createBlog();

    public function storeBlog(BlogRequest $request);

    public function showBlog(Blog $Blog);

    public function editBlog(Blog $Blog);

    public function updateBlog(BlogRequest $request, Blog $Blog);

    public function destroyBlog(Blog $Blog);
}
