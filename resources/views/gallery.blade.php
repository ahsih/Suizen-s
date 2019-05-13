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
    <link rel="stylesheet" href="{{asset('css/gallery.css')}}" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Suizen Noodle Bar</title>
</head>

<body>
    @include('include.navbar')
    <div class="container-fluid">
        <div class="row galleryOneLayout">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/Seaweed_rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">Seaweed fried rice 紫菜饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/SETA.png')}}">
                <h5 class="text-center textBlackFontForGallery">Set A 套餐A</h5>
                <h6 class="text-center helpTextForGallery">(Fried Tofu, Pak Choi, & Red-cooked pork with Rice)
                    (炸豆腐+红烧肉+青菜+白饭)</h6>
                <h6 class="text-center textBlackFontForGallery">£8.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/SETB.png')}}">
                <h5 class="text-center textBlackFontForGallery">Set B 套餐B</h5>
                <h6 class="text-center helpTextForGallery">(Beef Brisket, Pak Choi, & Fried Fish with Rice) (牛腩+炸鱼+青菜+白饭)</h6>
                <h6 class="text-center textBlackFontForGallery">£8.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/SET_C.png')}}">
                <h5 class="text-center textBlackFontForGallery">Set C 套餐C</h5>
                <h6 class="text-center helpTextForGallery">(Roast Duck, Pak Choi, & Fried Fish with Rice) (中式汁鸭+炸鱼+青菜+白饭)</h6>
                <h6 class="text-center textBlackFontForGallery">£8.00</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/Singapore_vermicelli.png')}}">
                <h5 class="text-center textBlackFontForGallery">Singapore vermicelli noodle 星洲炒米粉</h5>
                <h6 class="text-center textBlackFontForGallery">£5.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/Spicy_Popcorn_chicken.png')}}">
                <h5 class="text-center textBlackFontForGallery">Spicy popcorn chicken with rice 辣子鸡饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/taiwan_braised_pork_rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">Taiwan braised pork rice 卤肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/images/GalleryOne/SET_C.png')}}">
                <h5 class="text-center textBlackFontForGallery">Chili & salt ribs wtih rice 椒盐排骨饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
    </div>
</body>