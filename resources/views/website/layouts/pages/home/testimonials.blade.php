<section class="section-padding testimonials-wrapper">
    <div class="container">
        <div class="main-title text-center">
            <h4>What Our Clients Says</h4>
        </div>
        <div id="testim" class="testim">
            <div class="testim-cover">
                <div class="wrap">
                    <span id="right-arrow" class="arrow right fa fa-chevron-right"></span>
                    <span id="left-arrow" class="arrow left fa fa-chevron-left "></span>
                    <ul id="testim-dots" class="dots">
                        @foreach ($testimonials as $item)
                        <li class="dot {{($loop->first) ? "Active" : "" }}"></li>
                        @endforeach
                    </ul>
                    <div id="testim-content" class="cont">
                        @foreach ($testimonials as $item)
                        <div class="{{($loop->index == 1) ? "Active" : "" }}">
                            <div class="img"><img
                                    src="{{asset('storage/'.$item->image)}}"
                                    alt=""></div>
                            <h2>{{$item->name}}</h2>
                            <p>{!!$item->excerpt!!}</p>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>