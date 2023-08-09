<div class="row">
    <div class="col-lg-12">
        <label for="name">Title</label>
        <div class="input-group">
            <input type="text" name="title" id="title" class="form-control"
                value="{{ $slider->title ?? old('title') }}" placeholder="Slider Title">
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
        @if (isset($slider->image))
        <img src="{{asset('storage/' .$slider->image)}}" alt="{{$slider->title ?? 'Slider Image'}}" class="img-fluid" id="image_image" width="400px">
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
                <input name="is_active" type="checkbox" value="1" id="active" {{isset($slider->is_active) ?
                ($slider->is_active ? 'checked' : '') : 'checked'}}><span class="switch-state"></span>
            </label>
        </div>
    </div>
</div>
<hr>
<x-adminetic-edit-add-button :model="$slider ?? null" name="Sliders" />

