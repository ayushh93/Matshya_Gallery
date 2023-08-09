@extends('website.layouts.app2')

@section('title')
    Contact Us
@endsection

@section('content')
<!--CONTACT SECTION-->
<section class="contact-form">
    <div class="container">
        <div class="form-container">
            <div class="left-container">
                <div class="left-inner-container">
                    <h2>Visit Us</h2>
                    <ul class="info-footer">
                        <li><i class="fa-solid fa-location-dot"></i> {{setting('address')}}</li>
                        <li><i class="fa-solid fa-phone"></i> <a href="tel:{{setting('phone')}}">{{setting('phone')}}</a></li>
                        <li><i class="fa-solid fa-envelope"></i> <a href="mailto:{{setting('email')}}">{{setting('email')}}</a></li>
                    </ul>

                    <div class="social-container">
                        <a href="{{setting('facebook_link')}}" class="social" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                        <a href="{{setting('instagram_link')}}" class="social" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="right-container">
                <div class="right-inner-container">
                    <form action="#">
                        <h2 class="lg-view">CONTACT</h2>
                        <h2 class="sm-view">Let's Chat</h2>
                        <p>* Required</p>
                        <input type="text" placeholder="Name *" />
                        <input type="email" placeholder="Email *" />
                        <input type="text" placeholder="Company" />
                        <input type="phone" placeholder="Phone" />
                        <textarea rows="4" placeholder="Message"></textarea>
                        <button class="submit-contact" type="submit">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--GOOGLE MAP-->
<section class="google-map">
    <iframe
        src="{{setting('map')}}"
        width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>
@endsection

