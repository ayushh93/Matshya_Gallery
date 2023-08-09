<!--FOOTER-->
<footer>
  <div class="footer-overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6">
        <div class="footer-section">
          <h5 class="footer-section-head">About Us</h5>
          <p>
           {!!Str::limit(setting('about_body'),200)!!}
          </p>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="footer-section">
          <h5 class="footer-section-head">Policies</h5>
          <ul class="info-footer">
            <li><a href="{{route('returnPolicy')}}">Return Policy</a></li>
            <li><a href="{{route('shippingPolicy')}}">Shipping Policy</a></li>
            <li><a href="{{route('terms')}}">Terms & Conditions</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="footer-section">
          <h5 class="footer-section-head">Quick Links</h5>
          <ul class="info-footer">
            <li><a href="{{route('index')}}">Home</a></li>
            <li><a href="{{route('about')}}">About Us</a></li>
            <li><a href="{{route('faqs')}}">FAQ</a></li>
            <li><a href="{{route('payment')}}">Payment Details</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="footer-section">
          <ul class="info-footer info-location">
            <li><i class="fa-solid fa-location-dot"></i> {{setting('address')}}</li>
            <li><i class="fa-solid fa-phone"></i> <a href="tel:{{setting('phone')}}">{{setting('phone')}}</a></li>
            <li><i class="fa-solid fa-envelope"></i> <a href="mailto:{{setting('email')}}">{{setting('email')}}</a></li>
          </ul>
          <ul class="info-footer social-footer">
            <li><a href="{{setting('facebook_link')}}" target="_blank"><i class="fa-brands fa-facebook-f"></i></a></li>
            <li><a href="{{setting('instagram_link')}}" target="_blank"><i class="fa-brands fa-instagram"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="copyright">
      <div class="row copy-row">
        <div class="col-lg-6 col-md-6">
          <div class="copy-text">
            <p>Copyright © <?php echo date("Y"); ?>, <a href="{{route('index')}}">{{title()}}</a> | All Rights
              Reserved</p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6">
          <div class="copy-text">
            <p class="text-right">Designed & Developed By <a href="{{route('index')}}">The N Developers</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

