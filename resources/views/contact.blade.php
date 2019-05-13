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
    <link rel="stylesheet" href="{{asset('css/contact.css')}}" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Suizen Noodle Bar</title>
</head>

<body>
    @include('include.navbar')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7 col-md-12 col-sm-12">
                <p class="mapWidth"><iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9727.631650628397!2d-1.9348563!3d52.4445829!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd363631c956ce982!2sSuizen&#39;s+Noodle+Bar!5e0!3m2!1sen!2suk!4v1557006730436!5m2!1sen!2suk"
                        class="mapLayout" frameborder="0" style="border:0" allowfullscreen></iframe></p>
            </div>
            <div class="col-lg-5 col-md-12 col-sm-12">
                <p class="titleMargin subTitle text-center">Contact Telephone Number 联系电话 (可以说中文哦)<span class="far fa-grin-beam"></span></p>
                <p class="text-center normalText"><a id="telephoneNumber" href="tel: 01214720003">0121 472 0003</a></p>
                <br>
                <p class="subTitle text-center">Our Location</p>
                <p class="text-center normalText">622 Bristol Road</p>
                <p class="text-center normalText">Selly Oak</p>
                <p class="text-center normalText">Birmingham</p>
                <p class="text-center normalText">B296EZ</p>
                <br>
                <p class="subTitle text-center">Parking</p>
                <p class="text-center normalText">There is free parking on the side road: 'Hubert road'</p>
                <p class="text-center normalText">Or Aldi car park (2.5 hours max stay)</p>
                <br>
                <p class="subTitle text-center">Opening Hours 营业时间</p>
                <p class="text-center normalText">Monday-Sunday 星期一到日 <span class="redColor">12pm -> 10:45pm</span></p>
                <p class="text-center normalText">Delivery Service 送餐服务 <span class="redColor">5pm -> 10:30pm</span></p>
                <p class="text-center normalText">Open 7 days a week including bank holidays</p>
            </div>
        </div>
    </div>
</body>