@extends('website.layouts.app2')

@section('title')
    Terms and Conditions
@endsection

@section('content')
<section class="section-padding">
    <div class="container">
        <div class="main-title text-center">
            <h4>Terms and Conditions</h4>
        </div>
        <div class="policy-section">
            <h6>{{setting('terms_and_condition_title')}}</h6>
            <p>{!!setting('terms_and_condition_body')!!}</p>
        </div>
    </div>
</section>
@endsection

