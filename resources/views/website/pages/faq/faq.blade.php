@extends('website.layouts.app2')

@section('title')
    FAQs
@endsection

@section('content')

<section class="section-padding">
    <div class="container">
        <div class="jsn-bootstrap3">
            <div id="4UJYZD" class="row " style="padding-top:10px;padding-bottom:10px;padding-left:10px;padding-right:10px;">
                <div class="col-md-12">
                    <div class="jsn-bootstrap3 wr-element-container wr-element-heading" style="margin-top:5px; margin-bottom:25px ">
                        <h2 style="text-align:center;" class="faq-heading">Some of the FAQ's</h2>
                    </div>
                </div>
                @foreach ($faqs as $item)
                <div class="col-md-6 col-lg-6 mb-4">
                    <div class="jsn-bootstrap3 wr-element-container wr-element-heading" style="margin-top:5px; margin-bottom:15px">
                        <h5 style="">{{$item->question}}</h5>
                    </div>
                    <div class="jsn-bootstrap3 wr-element-container wr-element-text">
                        <div class="wr_text" id="aNEiDc">
                            <p>{{$item->answer}}</p>
                        </div>
                    </div>
                </div> 
                @endforeach
                
            </div>
        </div>
    </div>
</section>
@endsection

