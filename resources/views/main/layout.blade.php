<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{asset('/css/app.css')}}">    
</head>
<body>
    <header>
        Header
    </header>
        
    <div class="container">
        @yield('content')
    </div>

    <footer>
        @section('footer')
        <i>Menu-</i>
        @show
        <b>Footer</b>
    </footer>
    
    <script src="{{'/js/app.js'}}"></script>
</body>
</html>