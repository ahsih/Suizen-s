<!doctype html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta name="Suizen's Noodle Bar 广东楼伯明翰大学" />
    <meta name="google-site-verification" content="_V-arpPAUgr_mMGBkU85VklBJ1oG7qoNji1FI12DLaY" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('css/app.css')}}" />
    <link rel="stylesheet" href="{{asset('css/navbar.css')}}" />
    <link rel="stylesheet" href="{{asset('css/homeCSS.css')}}" />
    <link rel="stylesheet" href="{{asset('css/Notice.css')}}"/>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
        integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <!-- Javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="{{asset('js/homepageJavaScript.js')}}"></script>
    <title>Suizen Noodle Bar 伯明翰广东楼餐馆</title>
</head>

<body>
    @include('include.navbar')
    <div id="Gallery">
        <div id="FoodSlideShow" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active container-fluid">
                    <div class="row">
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive center imageFit" src="{{URL('/Images/SlideOne/Fish_Tofu.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Braised Fish Tofu Rice 斑斓豆腐鱼饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive imageFit"
                                src="{{URL('/Images/SlideOne/Traditional_Cantonese_Beef_Brisket.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Traditional Cantonese Beef Brisket 广式牛腩饭
                            </h5>
                            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
                        </div>
                        <div class='col-lg-4 col-sm-4 col-md-4'>
                            <img class='img-responsive imageFit' src="{{URL('/Images/SlideOne/Cumin_Chili_Beef.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Cumin Chili Beef 孜然牛肉饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50
                                <i style='font-size:24px' class='fas'>&#xf164;</i></h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive center imageFit"
                                src="{{URL('/Images/SlideOne/FUKIEN_FRICE_RICE.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Fukien Fried Rice 福建饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive imageFit" src="{{URL('/Images/SlideOne/Roast_Duck_Rice.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Roast Duck BBQ Rice 烧鸭饭（没骨）</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
                        </div>
                        <div class='col-lg-4 col-sm-4 col-md-4'>
                            <img class='img-responsive soupImageFit'
                                src="{{URL('/Images/SlideOne/Seaprised_Aubergine_Rice.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Seaprised Aubergine Rice 鱼香茄子饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
                        </div>
                    </div>
                </div>
                <div class="item container-fluid">
                    <div class="row">
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive center imageFit"
                                src="{{URL('/Images/SlideTwo/Braised_Pork_With_Soya_Sauce_Rice.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Braised Pork With Soya Sauce With Rice 红烧肉饭
                            </h5>
                            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive imageFit" src="{{URL('/Images/SlideTwo/Sweet_Sour_Fish.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Sweet & Sour Fish With Rice 酸甜鱼饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
                        </div>
                        <div class='col-lg-4 col-sm-4 col-md-4'>
                            <img class='img-responsive imageFit'
                                src="{{URL('/Images/SlideTwo/Minced_Pork_Beans.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Minced Pork Beans With Rice 四季豆饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive center imageFit"
                                src="{{URL('/Images/SlideTwo/Spicy_Popcorn_Chicken_Rice.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Spicy Popcorn Chicken With Rice 辣子鸡饭
                            </h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
                        </div>
                        <div class="col-lg-4 col-sm-4 col-md-4">
                            <img class="img-responsive imageFit"
                                src="{{URL('/Images/SlideTwo/CharSiu_Honey_Sauce.png')}}">
                            <h5 class="text-center textBlackFontForGallery">CharSiu Honey Sauce 蜜汁叉烧饭</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
                        </div>
                        <div class='col-lg-4 col-sm-4 col-md-4'>
                            <img class='img-responsive soupImageFit' src="{{URL('/Images/SlideTwo/WaDaHor.png')}}">
                            <h5 class="text-center textBlackFontForGallery">Wat Tan Hor 滑旦河</h5>
                            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#FoodSlideShow" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#FoodSlideShow" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div id="contactDetail" class="container-fluid">
        <div class="row backgroundRed">
            <div class="col-12">
                <h2 class="text-center OpeningHourInfo">Open 7 days a week from 12pm to 3:30pm then 5pm to 10:30pm</h2>
                <h2 class="text-center OpeningHourInfo">Unforunately, Delivery Service Is Unavailable For Now</h2>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4">
                <div class="telephoneDetail text-center">
                    <h4>Telephone Number/电话号码</h4>
                    <p><a id="telephoneNumber" href="tel: 01214720003">0121 472 0003</a></p>
                </div>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4">
                <div class="addressDetail text-center">
                    <h4>Address/地址</h4>
                    <p class="addressParagraph">622 Bristol Road</p>
                    <p class="addressParagraph">Selly Oak</p>
                    <p class="addressParagraph">Birmingham</p>
                    <p class="addressParagraph">B29 6BQ</p>
                    <p class="addressParagraph">Opposite Aldi in Selly Oak</p>
                    <p class="addressParagraph">Free parking on street or on Hubert road</p>
                </div>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4">
                <div class="deliveryService text-center">
                    <h4>我们微信上线啦。。有送餐服务哦</h4>
                </div>
            <img class="weChatImg" src="{{URL('/Images/HomepageImages/SuizenWeChat.JPG')}}"/>
            </div>
        </div>
        <div class="text-center FreeDrinkInfo row">
            <!--<div class="weChatInfo col-12">
                <p>We Accept WeChat Payment 接受微信支付！！！</p>
            </div>-->
            <div class="freeDrinkBorder col-12">
                <p>Free tropical drinks or bottle of water for any order over £6!</p>
                <p>Free prawn cracker for over £10.99!</p>
                <p>任何餐超过6英镑的订单将获得Caprisun饮品或者矿泉水</p>
            </div>
        </div>
        <!--<div class="row">
            <div class="text-center deliveryInfo col">
                <p>We also delivery to university accomodations and libaries, however you might need to pick it up from
                    the
                    outside of your building</p>
                <p>as the driver will not be able to get into the building without permission</p>
                <p>Aplogoise for any inconvenice.</p>
                <p>我们也送到大学宿舍或者图书馆，不过你可能需要出来取餐哦，因为司机可能进不去.</p>
                <p>给你带来不便之处，敬请原谅.</p>
            </div>
        </div>-->
    </div>
</body>

</html>