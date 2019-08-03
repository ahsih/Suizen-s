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
                <img class="imageFit" src="{{URL('/Images/GalleryOne/Seaweed_rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">Seaweed fried rice 紫菜饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/SETA.png')}}">
                <h5 class="text-center textBlackFontForGallery">Set A 套餐A</h5>
                <h6 class="text-center helpTextForGallery">(Fried Tofu, Pak Choi, & Red-cooked pork with Rice)
                    (炸豆腐+红烧肉+青菜+白饭)</h6>
                <h6 class="text-center textBlackFontForGallery">£8.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/SETB.png')}}">
                <h5 class="text-center textBlackFontForGallery">Set B 套餐B</h5>
                <h6 class="text-center helpTextForGallery">(Beef Brisket, Pak Choi, & Fried Fish with Rice) (牛腩+炸鱼+青菜+白饭)</h6>
                <h6 class="text-center textBlackFontForGallery">£8.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/SET_C.png')}}">
                <h5 class="text-center textBlackFontForGallery">Set C 套餐C</h5>
                <h6 class="text-center helpTextForGallery">(Roast Duck, Pak Choi, & Fried Fish with Rice) (中式汁鸭+炸鱼+青菜+白饭)</h6>
                <h6 class="text-center textBlackFontForGallery">£8.00</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/Singapore_vermicelli.png')}}">
                <h5 class="text-center textBlackFontForGallery">Singapore vermicelli noodle 星洲炒米粉</h5>
                <h6 class="text-center textBlackFontForGallery">£5.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/Spicy_Popcorn_chicken.png')}}">
                <h5 class="text-center textBlackFontForGallery">Spicy popcorn chicken with rice 辣子鸡饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/taiwan_braised_pork_rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">Taiwan braised pork rice 卤肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryOne/Chilli_Salt_Ribs_rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">Chili & salt ribs wtih rice 椒盐排骨饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
        <div class="row galleryFiveLayout">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Char_Siu_Soup_Thin_Rice_Noodle.png')}}">
                <h5 class="text-center textBlackFontForGallery">Char siu soup with thin rice noodle 叉烧汤面</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Choi_Sum.png')}}">
                <h5 class="text-center textBlackFontForGallery">Choi Sum 蒜蓉菜心</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Five_Spices_Pork_Ear.png')}}">
                <h5 class="text-center textBlackFontForGallery">Five spices pork ear with rice 五香猪耳饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Mapo_ToFu.png')}}">
                <h5 class="text-center textBlackFontForGallery">MaPo tofu with rice 麻婆豆腐饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Szechuan_Kprawn.png')}}">
                <h5 class="text-center textBlackFontForGallery">Szchuan king prawn with rice 四川大虾饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Tom_Yum_Soup.png')}}">
                <h5 class="text-center textBlackFontForGallery">Tom yum soup with thin rice noodle 冬阴米粉汤</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/WaDaHor.png')}}">
                <h5 class="text-center textBlackFontForGallery">Wan tan hor 滑蛋河</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFive/Zha_Cai_Pork_Soup_Thin_Noodle.png')}}">
                <h5 class="text-center textBlackFontForGallery">ZhaCai Pork soup with thin noodle 榨菜肉丝汤面</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
        </div>
        <div class="row galleryTwoLayout">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/Beef_BBS.png')}}">
                <h5 class="text-center textBlackFontForGallery">Beef BBS with rice 士椒牛肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/Beef_Satay.png')}}">
                <h5 class="text-center textBlackFontForGallery">Beef satay with rice 沙爹牛肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/Chicken_Curry_Rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">Chicken curry with rice 咖喱鸡肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/Chill_Salt_Squid.png')}}">
                <h5 class="text-center textBlackFontForGallery">Chili and salt squid with rice 椒盐鱿鱼圈饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/KungPoChicken.png')}}">
                <h5 class="text-center textBlackFontForGallery">Kungpo chicken with rice 宫保鸡丁饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/Stirfried shredded potato.png')}}">
                <h5 class="text-center textBlackFontForGallery">Stirfried shredded potato 土豆丝</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/TomYumRice.png')}}">
                <h5 class="text-center textBlackFontForGallery">TomYum rice 冬阴饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryTwo/XO_Seafood_Udon.png')}}">
                <h5 class="text-center textBlackFontForGallery">XO seafood udon 海鲜乌冬面</h5>
                <h6 class="text-center textBlackFontForGallery">£6.50</h6>
            </div>
        </div>
        <div class="row galleryThreeLayout">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Chicken_Lemon_Sauce.png')}}">
                <h5 class="text-center textBlackFontForGallery">Chicken in lemon sauce with rice  柠檬鸡肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Kprawn_Fried_Rice.png')}}">
                <h5 class="text-center textBlackFontForGallery">King prawn fried rice 大虾炒饭</h5>
                <h6 class="text-center textBlackFontForGallery">£5.80</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Roast_Chicken_Chinese_Style.png')}}">
                <h5 class="text-center textBlackFontForGallery">Roast chicken chinese style with fried rice 炸鸡排炒饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Salt_Pepper_Kprawn.png')}}">
                <h5 class="text-center textBlackFontForGallery">Salt & pepper king prawn with fried rice 椒盐大虾炒饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Special_Chop_Suey.png')}}">
                <h5 class="text-center textBlackFontForGallery">Special chop suey with fried rice 招牌蔬菜炒饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Special_Curry.png')}}">
                <h5 class="text-center textBlackFontForGallery">Special curry with fried rice 招牌咖喱炒饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Sweet_Sour_Chicken.png')}}">
                <h5 class="text-center textBlackFontForGallery">Sweet & sour chicken with fried rice 酸甜炸鸡炒饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryThree/Szechuan_Beef.png')}}">
                <h5 class="text-center textBlackFontForGallery">Szechuan beef with fried rice 四川牛肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
        <div class="row galleryFourLayout">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/Crisp_Shredded_Beef.png')}}">
                <h5 class="text-center textBlackFontForGallery">Crisp shredded beef with rice 京汁干牛丝饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/Duck_In_plum_Sauce.png')}}">
                <h5 class="text-center textBlackFontForGallery">Duck in plum sauce with rice 梅汁烤鸭饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/Ginger_Beef_SpringOnion.png')}}">
                <h5 class="text-center textBlackFontForGallery">Ginger beef spring onion with rice 姜葱牛肉饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/King_Prawn_Pineapple.png')}}">
                <h5 class="text-center textBlackFontForGallery">King prawn pineapple with rice 大虾菠萝饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/KingprawnBambooshoot.png')}}">
                <h5 class="text-center textBlackFontForGallery">King prawn bamboo shoot & water chestnut with rice 大虾竹笋饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/KungPoChicken.png')}}">
                <h5 class="text-center textBlackFontForGallery">Kung po chicken with rice 宫保鸡饭</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/Mixed_Vegetable_ChopSuey.png')}}">
                <h5 class="text-center textBlackFontForGallery">Mixed vegetable chopsuey with rice 素菜饭</h5>
                <h6 class="text-center textBlackFontForGallery">£5.50</h6>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <img class="imageFit" src="{{URL('/Images/GalleryFour/Special_Chow_Mein_Sauce.png')}}">
                <h5 class="text-center textBlackFontForGallery">Special chow mein (SAUCE) 招牌面（酱）</h5>
                <h6 class="text-center textBlackFontForGallery">£6.00</h6>
            </div>
        </div>
    </div>
</body>