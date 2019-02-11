<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="Suizen's Noodle Bar 广东楼伯明翰大学"
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS -->
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('css/homeCSS.css')}}">
    <title>Suizen Noodle Bar</title>
</head>
<body>
@include('include.navbar')
<div id="Gallery">
    <div class="text-center galleryTitle">Gallery 图片</div>
    <hr class="lineThicknessForGallery">
      <div class="row">
        <div class="col-lg-4 col-sm-4 col-md-4">
            <h5 class="text-center">Braised Fish Tofu Rice 斑斓豆腐鱼饭</p>
            <h6 class="text-center">£6.50</p>
            <img class="img-responsive center imageFit" src="{{URL('/images/Fish_Tofu.png')}}" >
            <p></p>
        </div>
        <div class="col-lg-4 col-sm-4 col-md-4">
            <img class="img-responsive imageFit" src="{{URL('/images/Fukien_Fried_Rice.png')}}">
        </div>
        <div class='col-lg-4 col-sm-4 col-md-4'>
            <img class='img-responsive imageFit' src="{{URL('/images/Five_Spices_Pork_Ear.png')}}">
        </div>
    </div>
</div>
<div id="contactDetail">
    <div class="row backgroundRed">
        <div class="col-sm-4 col-md-4 col-lg-4">
            <div class="telephoneDetail text-center">
                <h4>Telephone Number/电话号码</h4>
                <p>0121 472 0003</p>
            </div>
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4">
            <div class="addressDetail text-center">
                <h4>Address/地址</h4>
                <p class="addressParagraph">622 Bristol Road</p>
                <p class="addressParagraph">Selly Oak</p>
                <p class="addressParagraph">Birmingham</p>
            </div>
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4">
            <div class="deliveryService text-center">
                <h4>Delivery Service/送餐服务</h4>
                <p>There is no minimum order for delivery service</p>
                <p class="">送餐服务收£1,没有最低消费</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
