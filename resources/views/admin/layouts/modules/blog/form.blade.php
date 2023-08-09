
<div class="row">
    <div class="col-lg-12">
        <label for="title">Blog Title</label>
        <div class="input-group">
            <input type="text" name="title" id="title" class="form-control"
                value="{{ $blog->title ?? old('title') }}" placeholder="Blog title">
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="author">Author</label>
        <div class="input-group">
            <input type="text" name="author" id="author" class="form-control"
                value="{{ $blog->author ?? old('author') }}" placeholder="Blog Author">
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="date">Date</label>
        <div class="input-group">
            <input type="date" name="date" id="date" max="{{date("Y-m-d")}}" class="form-control" value="{{ $blog->date ?? old('date') }}">
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-6">
        <label for="image">Image</label> <br>
        <input type="file" name="image" id="image" accept="image/*" onchange="readURL(this);">
    </div>
    <div class="col-lg-6">
        @if (isset($blog->image))
        <img src="{{asset('storage/' .$blog->image)}}" alt="{{$blog->title ?? 'Blog'}}" class="img-fluid" id="image_image" width="400px">
        @endif
        <img src="" id="image_image_placeholder" class="img-fluid">
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="description">Description</label>
        <div class="input-group">
            <textarea name="description" id="heavytexteditor" cols="30" rows="10">{{$blog->description ?? old('description')}}</textarea>
        </div>
    </div>
</div>
<hr>
<div class="card shadow-lg">
    <div class="card-header">
        <h4 class="card-name">SEO</h4>
    </div>
    <div class="card-content">
        <div class="card-body">
            <div class="row">
                <div class="col-lg-12">
                    <label for="meta_name">SEO Title</label>
                    <div class="input-group">
                        <input type="text" name="meta_name" id="meta_name" class="form-control"
                            value="{{$blog->meta_name ?? old('meta_name')}}" placeholder="SEO Title">
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <label for="meta_description">Meta Description</label>
                    <div class="input-group">
                        <textarea name="meta_description" id="meta_description"
                            style="width:100%">@isset($blog->meta_description){{$blog->meta_description}}@endisset</textarea>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <label for="meta_keywords">Meta Keywords</label>
                    <div class="input-group">
                        <textarea name="meta_keywords" id="meta_keywords"
                            style="width:100%">@isset($blog->meta_keywords){{$blog->meta_keywords}}@endisset</textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<x-adminetic-edit-add-button :model="$blog ?? null" name="Blog" />

