@extends('website.layouts.app2')

@section('title')
    Shipping Policy
@endsection

@section('content')
<section class="section-padding">
    <div class="container">
        <div class="main-title text-center">
            <h4>Shipping Policy</h4>
        </div>
        <div class="policy-section">
            <h6>{{setting('shipping_policy_title')}}</h6>
            <p>{!!setting('shipping_policy_body')!!}</p>
        </div>
    </div>
</section>
@endsection

