<section class="section-padding best-sellings">
    <div class="container">
        <div class="main-title text-center">
            <h4>Our Best Selling Fishes and Products</h4>
        </div>
        <div class="row">
            @foreach ($bestSellingProducts as $product)
            <div class="col-lg-3 col-md-4">
                <div class="best-selling-items">
                    <a href="{{route('productDetail',$product->id)}}">
                        <img src="{{asset('storage/'. $product->image)}}" alt="">
                    </a>
                    <h5 class="text-center my-2 best-selling-name">
                        <a href="{{route('productDetail',$product->id)}}">{{$product->name}}</a>
                    </h5>
                </div>
            </div>
            @endforeach            
        </div>
    </div>
</section>