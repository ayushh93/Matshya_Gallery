<section class="popular section-padding">
    <div class="container">
        <div class="main-title text-center">
            <h4>Popular Fishes and Products</h4>
        </div>
        <ul class="nav nav-pills justify-content-center nav-tab-button">
            @foreach ($activeCategories as $category)
            <li class="nav-item">
                <a class="nav-link {{($loop->first) ? "active" : " " }}" data-toggle="pill" href="#{{$category->title}}" role="tab" aria-controls="pills-{{$category->title}}"
                    aria-selected="true">{{$category->title}}</a>
            </li>
            @endforeach            
        </ul>
        <div class="tab-content mt-3">
            @foreach ($activeCategories as $category)
            <div class="tab-pane fade {{($loop->first) ? "show active" : " " }}" id="{{$category->title}}" role="tabpanel" aria-labelledby="{{$category->title}}-tab">
                <div class="best-sellings">
                    <div class="owl-carousel owl-theme best-selling-products">
                        @foreach ($category->Products as $product)
                        @if($product->is_active)                            
                        <div class="item">
                            <div class="best-selling-items">
                                <a href="{{route('productDetail',$product->id)}}">
                                    <img src="{{asset('storage/'.$product->image)}}" alt="">
                                </a>
                                <h5 class="text-center my-2 best-selling-name">
                                    <a href="{{route('productDetail',$product->id)}}">{{$product->name}} </a>
                                </h5>
                            </div>
                        </div>
                        @endif
                        @endforeach

                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>