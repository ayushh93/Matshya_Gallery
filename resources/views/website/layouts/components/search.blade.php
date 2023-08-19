<div class="search-overlay">
    <form action="{{route('search')}}" method="POST">
        @csrf
        <input type="text" placeholder="Search Anything" name="search" class="search-input-form">
        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
    </form>
</div>