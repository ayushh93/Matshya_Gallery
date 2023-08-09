@extends('website.layouts.app2')

@section('title')
    Payment Details
@endsection

@section('content')
<section class="section-padding">
    <div class="container">
        <div class="form-container">
            <div class="main-title text-center">
                <h4>Our payment details</h4>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="acc-details">
                        <p>{!!setting('payment_details')!!}</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="qr-image text-center">
                        <img src="{{asset('storage/'.setting('qr_code'))}}" alt="QR Code" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

