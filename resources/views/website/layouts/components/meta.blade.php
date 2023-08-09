<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!--FAVICON-->
<link rel="shortcut icon" href="{{ favicon() }}" type="image/x-icon">

<title>{{title()}}</title>

  {{-- Meta Tags --}}
  <meta name="description" content="{{ setting('short_description')  ?? (title() ?? 'Matshya Gallery') }}">
  <meta name="keywords" content="{{ $keywords  ?? 'matshya, matshya-gallery' }}">
  <meta name="author" content="The N Developers">
  @isset($blog)
  <meta name="description" content="{{ $blog->meta_description ?? 'Matshya Gallery' }}">
  <meta name="keywords" content="{{ $blog->meta_keywords ?? 'matshya, matshya-gallery' }}">
  <meta property="og:title" content="{{ $blog->meta_name ?? config('adminetic.title', 'Matshya Gallery') }}" />
  @endisset
  {{-- Open Graph Tags --}}
  <meta property="og:title" content="{{ $title ?? (title() ?? config('adminetic.title', 'Matshya Gallery')) }}" />
  <meta property="og:description" content="{{ setting('short_description')  ?? (title() ?? 'Matshya Gallery') }}" />
  <meta property="og:image" content="{{ url($image ?? logo()) }}" />