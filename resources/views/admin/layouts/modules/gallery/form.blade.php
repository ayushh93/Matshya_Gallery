<div class="row">
    <div class="col-lg-12">
        <label for="name">Title</label>
        <div class="input-group">
            <input type="text" name="title" id="title" class="form-control"
                value="{{old('title') }}" placeholder="Gallery Title">
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
        @if (isset($gallery->image))
        <img src="{{asset('storage/' .$gallery->image)}}" alt="{{$gallery->title ?? 'Gallery Image'}}" class="img-fluid" id="image_image" width="400px">
        @endif
        <img src="" id="image_image_placeholder" class="img-fluid">
    </div>
</div>
<hr>
<x-adminetic-edit-add-button :model="$gallery ?? null" name="Gallery" />

