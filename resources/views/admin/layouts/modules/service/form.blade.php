<div class="row">
    <div class="col-lg-12">
        <label for="name">Title</label>
        <div class="input-group">
            <input type="text" name="title" id="title" class="form-control"
                value="{{ $service->title ?? old('title') }}" placeholder="Service Title">
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
        @if (isset($service->image))
        <img src="{{asset('storage/' .$service->image)}}" alt="{{$service->title ?? 'Service Image'}}" class="img-fluid" id="image_image" width="200px">
        @endif
        <img src="" id="image_image_placeholder" class="img-fluid">
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="excerpt">Excerpt</label>
        <div class="input-group">
            <textarea name="excerpt" id="heavytexteditor" cols="30" rows="10">{{$service->excerpt ?? ''}}</textarea>
        </div>
    </div>
</div>
<hr>
<x-adminetic-edit-add-button :model="$service ?? null" name="Services" />

