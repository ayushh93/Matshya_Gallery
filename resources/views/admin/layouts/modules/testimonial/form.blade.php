<div class="row">
    <div class="col-lg-12">
        <label for="name">Name</label>
        <div class="input-group">
            <input type="text" name="name" id="name" class="form-control"
                value="{{ $testimonial->name ?? old('name') }}" placeholder="Enter the name">
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
        @if (isset($testimonial->image))
        <img src="{{asset('storage/' .$testimonial->image)}}" alt="{{$testimonial->name ?? 'Testimonial Image'}}" class="img-fluid" id="image_image" width="200px">
        @endif
        <img src="" id="image_image_placeholder" class="img-fluid">
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="excerpt">Excerpt</label>
        <div class="input-group">
            <textarea name="excerpt" id="heavytexteditor" cols="30" rows="10">{{$testimonial->excerpt ?? ''}}</textarea>
        </div>
    </div>
</div>
<hr>
<x-adminetic-edit-add-button :model="$testimonial ?? null" name="Testimonial" />

