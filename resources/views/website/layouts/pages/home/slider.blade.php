@isset($activeSliders)
@if($activeSliders->count() > 0)
<section class="owl-carousel owl-theme sliders">
    @foreach ($activeSliders as $item)
    <div class="item">
        <img src="{{ asset('storage/' . $item->image) }}" alt="{{ $item->title }}" alt="{{$item->title ?? "Slider"}}">
    </div>
    @endforeach
</section>
@endif
@endisset
