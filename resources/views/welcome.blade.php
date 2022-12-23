<!doctype html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8" />
    <meta name="Suizen's Noodle Bar 广东楼伯明翰大学" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('css/app.css')}}" />
    <link rel="stylesheet" href="{{asset('css/navbar.css')}}" />
    <link rel="stylesheet" href="{{asset('css/welcome.css')}}" />
    <link rel="stylesheet" href="{{asset('css/Notice.css')}}" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Suizen Noodle Bar 伯明翰广东楼餐馆</title>
</head>

<body>
    <div class="welcome-center">
        <p class="welcome-label">When You Ready, Please Place Your Order At The Counter, Thank you</p>
        <p class="welcome-label">准备好后请到柜台下单，谢谢合作</p>
        <button class="welcome-button"><a class="welcome-link" href="{{ url('/menu') }}">菜单 Menu</a></button>
    </div>
</body>