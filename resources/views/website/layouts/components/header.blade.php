@php
    $categories = Cache::get('categories',App\Models\Admin\Category::where('is_active',1)->get());
@endphp
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v14.0"
        nonce="BdI70xme"></script>
    <div class="header-wrapper">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-none">
                <a class="navbar-brand" href="{{route('index')}}">
                    <img src="{{logo()}}" alt="Logo" class="img-fluid logo1">
                    <img src="{{logo()}}" alt="Logo" class="img-fluid logo2">
                </a>
                <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> -->
                <div id="navbar-button">
                    <span style="font-size:30px;cursor:pointer" class="nav-open" onclick="openNav()">&#9776;</span>
                </div>
                @include('website.layouts.components.navbar')
                <div id="mainContainer" onclick="closeNav()">
                </div>
            </nav>
        </div>
    </div>