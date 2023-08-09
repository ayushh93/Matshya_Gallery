<div class="main section-padding gallery">
    <div class="top_banner">
        <div class="main-title text-center">
            <h4 class="text-white">Gallery</h4>
        </div>
    </div>
    <div class="container-fluid">
        <div class="main_content">
            @foreach($galleries as $gallery)
            <div class="picture_wrapper">
                <a href="{{asset('storage/'.$gallery->image)}}" data-fancybox="gallery"
                    data-caption="{{$gallery->title ?? "Gallery"}}">
                    <img src="{{asset('storage/'.$gallery->image)}}"
                        alt="Image Gallery">
                </a>
            </div>
            @endforeach
        </div>
    </div>
</div>