<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Binx') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <script src="https://kit.fontawesome.com/a536d1a554.js" crossorigin="anonymous"></script>

    <!-- Styles -->
    <link href="{{ asset('css/main.css') }}" rel="stylesheet">
</head>
<body>

    <!-- Side background -->

    <div class="wrapper-wide">
        <div class="login-container">
            <div class="brand">
                <div class="login-col login-bg"></div>
                <div class="login-col login-bg-cover"></div>
                <div class="login-logo">
                    <a class="logo-l" href="{{ url('/home') }}"><h1>Binx</h1></a>
                </div>
            </div>
            <div class="form">
                @yield('content')
            </div>
        </div>
    </div>

</body>
</html>
