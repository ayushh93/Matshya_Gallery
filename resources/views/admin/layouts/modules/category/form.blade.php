<div class="row">
    <div class="col-lg-12">
        <label for="name">Title</label>
        <div class="input-group">
            <input type="text" name="title" id="title" class="form-control"
                value="{{ $category->title ?? old('title') }}" placeholder="Category Title">
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
        @if (isset($category->image))
        <img src="{{asset('storage/' .$category->image)}}" alt="{{$category->title ?? 'Category Image'}}" class="img-fluid" id="image_image" width="200px">
        @endif
        <img src="" id="image_image_placeholder" class="img-fluid">
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-7">
        <label for="active">Active</label>
        <div class="mb-2">
            <label class="switch">
                <input type="hidden" name="is_active" value="0">
                <input name="is_active" type="checkbox" value="1" id="active" {{isset($category->is_active) ?
                ($category->is_active ? 'checked' : '') : 'checked'}}><span class="switch-state"></span>
            </label>
        </div>
    </div>
</div>
<hr>
<x-adminetic-edit-add-button :model="$category ?? null" name="Category" />

