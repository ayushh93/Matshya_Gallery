<section class="section-padding services">
    <div class="container">
        <div class="main-title text-center">
            <h4 class="text-light">Our Services</h4>
        </div>
        <div class="row">
            @foreach ($services as $service)
            <div class="col-lg-3 col-md-6">
                <div class="service-wrapper">
                    <div class="service-icon text-center">
                        <img src="{{asset('storage/'.$service->image)}}" alt="Service Icon" class="img-fluid">
                    </div>
                    <h5 class="text-white text-center service-heading">{{$service->title}}</h5>
                    <p>{!! $service->excerpt !!}</p>
                </div>
            </div>
            @endforeach
            
        </div>
    </div>
</section>