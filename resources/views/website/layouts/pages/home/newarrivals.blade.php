<section class="section-padding new-arrivals">
    <div class="container">
        <div class="main-title text-center">
            <h4>New Arrivals</h4>
        </div>
        <div class="best-sellings">
            <div class="owl-carousel owl-theme best-selling-products">
                @foreach ($newProducts as $product)
                <div class="item">
                    <div class="best-selling-items">
                        <a href="{{route('productDetail',$product->id)}}">
                            <img src="{{asset('storage/'.$product->image)}}" alt="">
                        </a>
                        <h5 class="text-center my-2 best-selling-name">
                            <a href="{{route('productDetail',$product->id)}}">{{$product->name}}</a>
                        </h5>
                    </div>
                </div>
                @endforeach
                
                
            </div>
        </div>
    </div>
</section>