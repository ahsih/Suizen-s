<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8"/>
    <meta name="Suizen's Noodle Bar 广东楼伯明翰大学"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('css/app.css')}}"/>
    <link rel="stylesheet" href="{{asset('css/navbar.css')}}"/>
    <link rel="stylesheet" href="{{asset('css/menuCSS.css')}}"/>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' 
          integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'/>
    <title>Suizen Noodle Bar</title>
</head>
<body>
    @include('include.navbar')
    <div id="Menu">
        <div class="container-fluid">
            <div class="row">
                <div class="col-8">
                    <div class="menu-border">
                        
                    </div>
                </div>
                <div class="col-4">
                    
                </div>
            </div>
        </div>
    </div>
</body>