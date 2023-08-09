
<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto align-items-center">
        <li class="nav-item {{ Route::is('index') ? 'active' : null }}">
            <a class="nav-link" href="{{route('index')}}">Home </a>
        </li>
        <li class="nav-item {{ Route::is('about') ? 'active' : null }}">
            <a class="nav-link" href="{{route('about')}}">About Us </a>
        </li>
        @foreach ($categories as $category)
        <li class="nav-item {{ request()->route('id') == $category->id && Route::is('categories') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('categories',$category->id)}}">{{$category->title}}</a>
        </li>
        @endforeach
        
        <li class="nav-item {{ Route::is('gallery') ? 'active' : null }}">
            <a class="nav-link" href="{{route('gallery')}}">Gallery</a>
        </li>
        <li class="nav-item {{ Route::is('blogs') ? 'active' : null }}">
            <a class="nav-link" href="{{route('blogs')}}">Blogs</a>
        </li>
        <li class="nav-item {{ Route::is('contact') ? 'active' : null }}">
            <a class="nav-link" href="{{route('contact')}}">Contact</a>
        </li>
        <li class="nav-item search-icon">
            <a class="nav-link" href="javascript:">
                <i class="fa-solid fa-magnifying-glass"></i>
                @include('website.layouts.components.search')
            </a>
        </li>
    </ul>
</div>
<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="{{route('index')}}">Home</a>
    <a href="{{route('about')}}">About Us</a>
    @foreach ($categories as $item)
    <a href="{{route('categories',$item->id)}}">{{$item->title}}</a>                        
    @endforeach
    <a href="{{route('gallery')}}">Gallery</a>
    <a href="{{route('blogs')}}">Blogs</a>
    <a href="{{route('contact')}}">Contact</a>
</div>