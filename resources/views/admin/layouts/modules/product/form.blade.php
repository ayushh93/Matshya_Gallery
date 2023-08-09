
<div class="row">
    <div class="col-lg-12">
        <label for="category_id">Category</label>
        <div class="input-group">
            <select name="category_id" id="category_id" class="select2" style="width: 100%">
                <option selected disabled>Select Category ... </option>
                @foreach ($categories as $category)
                <option value="{{ $category->id }}"
                    {{ (old('category_id', isset($product->category) ? $product->category->id : null) == $category->id) ? 'selected' : '' }}>
                    {{ $category->title }}
                </option>                                
                @endforeach
            </select>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <label for="name">Product Name</label>
        <div class="input-group">
            <input type="text" name="name" id="name" class="form-control"
                value="{{ $product->name ?? old('name') }}" placeholder="Product Name">
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-6">
        <label for="mrp">Market price</label>
        <div class="input-group">
            <input type="number" name="mrp" id="mrp" class="form-control"
                value="{{ $product->mrp ?? old('mrp') }}" placeholder="Product market price" min="0">
        </div>
    </div>
    <div class="col-lg-6">
        <label for="sp">Selling price</label>
        <div class="input-group">
            <input type="number" name="sp" id="sp" class="form-control"
                value="{{ $product->sp ?? old('sp') }}" placeholder="Product selling price" min="0">
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-6">
        <label for="image">Display Image</label> <br>
        <input type="file" name="image" id="image" accept="image/*" onchange="readURL(this);">
    </div>
    <div class="col-lg-6">
        @if (isset($product->image))
        <img src="{{asset('storage/' .$product->image)}}" alt="{{$product->name ?? 'Product Image'}}" class="img-fluid" id="image_image" width="200px">
        @endif
        <img src="" id="image_image_placeholder" class="img-fluid">
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-3">
        <label for="is_active">Active</label>
        <div class="mb-2">
            <label class="switch">
                <input type="hidden" name="is_active" value="0">
                <input name="is_active" type="checkbox" value="1" id="active" {{isset($product->is_active) ?
                ($product->is_active ? 'checked' : '') : 'checked'}}><span class="switch-state"></span>
            </label>
        </div>
    </div>

    <div class="col-lg-3">
        <label for="is_best_selling">Best selling</label>
        <div class="mb-2">
            <label class="switch">
                <input type="hidden" name="is_best_selling" value="0">
                <input name="is_best_selling" type="checkbox" value="1" id="active" {{isset($product->is_best_selling) ?
                ($product->is_best_selling ? 'checked' : '') : 'checked'}}><span class="switch-state"></span>
            </label>
        </div>
    </div>

    <div class="col-lg-3">
        <label for="is_popular">Is Popular</label>
        <div class="mb-2">
            <label class="switch">
                <input type="hidden" name="is_popular" value="0">
                <input name="is_popular" type="checkbox" value="1" id="active" {{isset($product->is_popular) ?
                ($product->is_popular ? 'checked' : '') : 'checked'}}><span class="switch-state"></span>
            </label>
        </div>
    </div>

    <div class="col-lg-3">
        <label for="is_new_arrival">New Arrival</label>
        <div class="mb-2">
            <label class="switch">
                <input type="hidden" name="is_new_arrival" value="0">
                <input name="is_new_arrival" type="checkbox" value="1" id="active" {{isset($product->is_new_arrival) ?
                ($product->is_new_arrival ? 'checked' : '') : 'checked'}}><span class="switch-state"></span>
            </label>
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="description">Description</label>
        <div class="input-group">
            <textarea name="description" id="heavytexteditor" cols="30" rows="10">{{$product->description ?? ''}}</textarea>
        </div>
    </div>
</div>
{{-- <br>
<div class="row">
    <div class="col-lg-6">
        <label for="gallery">Gallery</label> <br>
        <input type="file" name="gallery[]" id="image" accept="image/*" multiple>
    </div>
</div> --}}
<hr>
<x-adminetic-edit-add-button :model="$product ?? null" name="Product" />

