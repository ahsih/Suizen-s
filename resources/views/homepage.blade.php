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
    <link rel="stylesheet" href="{{asset('css/homeCSS.css')}}"/>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' 
          integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <!-- Javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="{{asset('js/homepageJavaScript.js')}}"></script>
    <title>Suizen Noodle Bar</title>
</head>
<body>
@include('include.navbar')
<div id="Gallery">
    <div class="text-center galleryTitle">Our Food 推荐餐</div>
    <hr class="lineThicknessForGallery">
    <div id="FoodSlideShow" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
         <div class="row">
        <div class="col-lg-4 col-sm-4 col-md-4">
            <img class="img-responsive center imageFit" src="{{URL('/images/Fish_Tofu.png')}}" >
            <h5 class="text-center textBlackFontForGallery">Braised Fish Tofu Rice 斑斓豆腐鱼饭</h5>
            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
        </div>
        <div class="col-lg-4 col-sm-4 col-md-4">
            <img class="img-responsive imageFit" src="{{URL('/images/Traditional_Cantonese_Beef_Brisket.png')}}">
            <h5 class="text-center textBlackFontForGallery">Traditional Cantonese Beef Brisket 广式牛腩饭</h5>
            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
        </div>
        <div class='col-lg-4 col-sm-4 col-md-4'>
            <img class='img-responsive imageFit' src="{{URL('/images/Cumin_Chili_Beef.png')}}">
            <h5 class="text-center textBlackFontForGallery">Cumin Chili Beef 孜然牛肉饭</h5>
            <h6 class="text-center textBlackFontForGallery">£6.50
<i style='font-size:24px' class='fas'>&#xf164;</i></h6>
        </div>
    </div>
          <div class="row">
        <div class="col-lg-4 col-sm-4 col-md-4">
            <img class="img-responsive center imageFit" src="{{URL('/images/FUKIEN_FRICE_RICE.png')}}" >
            <h5 class="text-center textBlackFontForGallery">Fukien Fried Rice 福建饭</h5>
            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
        </div>
        <div class="col-lg-4 col-sm-4 col-md-4">
            <img class="img-responsive imageFit" src="{{URL('/images/Roast_Duck_Rice.png')}}">
            <h5 class="text-center textBlackFontForGallery">Roast Duck BBQ Rice 烧鸭饭（没骨）</h5>
            <h6 class="text-center textBlackFontForGallery">£6.00</h6>
        </div>
        <div class='col-lg-4 col-sm-4 col-md-4'>
            <img class='img-responsive soupImageFit' src="{{URL('/images/Char_Siu_Soup_Thin_Rice_Noodle.png')}}">
            <h5 class="text-center textBlackFontForGallery">Char Siu Thin Noodle Soup 叉烧细面汤</h5>
            <h6 class="text-center textBlackFontForGallery">£6.50</h6>
        </div>
    </div>
      </div>
      <div class="item">
          <p>test</p>
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
    <hr class="lineThicknessForGallery">
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
    <div class="row">
        <div class="text-center deliveryInfo col">
                <p>We also delivery to university accomodations and libaries, however you may need to pick it up from the outside of your building if it is possible as driver will not able to get into the building</p>
                <p>Aplogoise for any inconvenice.</p>
                <p>我们也送到大学宿舍或者图书馆，不过你可能需要出来取餐哦，因为司机可能进不去.</p>
                <p>给你带来不便之处，敬请原谅.</p>
        </div>
    </div>
</div>
</body>
</html>
