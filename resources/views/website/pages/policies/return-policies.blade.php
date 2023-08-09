@extends('website.layouts.app2')

@section('title')
    Return Policy
@endsection

@section('content')
<section class="section-padding">
    <div class="container">
        <div class="main-title text-center">
            <h4>Return Policy</h4>
        </div>
        <div class="policy-section">
            <h6>{{setting('return_policy_title')}}</h6>
            <p>{!!setting('return_policy_body')!!}</p>
        </div>
    </div>
</section>
@endsection

