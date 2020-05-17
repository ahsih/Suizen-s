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
    <link rel="stylesheet" href="{{asset('css/menuCSS.css')}}" />
    <link rel="stylesheet" href="{{asset('css/Notice.css')}}" />
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
        integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous' />
    <title>Suizen Noodle Bar</title>
</head>

<body>
    @include('include.navbar')
    @include('include.Notice')
    <div id="Menu">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-sm-0 col-md-0">
                </div>
                <div class="col-lg-7 col-sm-8 col-md-8">
                    <div id="Info" class="panel panel-info-style">
                        <div class="panel-heading">
                            <p class="InfoTitle">
                                For your info:
                            </p>
                            <p class="InfoSubTitle">
                                Dish + Rice is £6.00, more than £6.00 stay the same.
                            </p>
                            <p class=InfoSubTitle>
                                Both Dish + Rice will be placed in the same container.
                            </p>
                            <p class=InfoSubTitle>
                                Special dishes contains:<span style="color: red"> chicken, beef , duck, char
                                    siu(pork) and king prawn</span>.
                            </p>
                        </div>
                        <div class="panel-heading allergyTitle">
                            <p class="allergyInfo">
                                Please let us know if you are allergy to one of the allergens:
                            </p>
                            <p class="allergySubInfo">
                                Cereals, Crustaceans, Eggs, Fish, Peanuts, Soybeans, Milk
                            </p>
                            <p class="allergySubInfo">
                                Nuts, Celery, Mustard, Sesame seeds,
                                Sulphur Dioxide, Lupin and Molluscs.
                            </p>
                        </div>
                    </div>
                    <div id="selectionLists" class="panel panel-selection-style">
                        <div class="panel-heading">
                            <div id="firstSelection" class="row">
                                <div class="col-lg-2">
                                    <a href="#Starters" class="selectionFont selectionLinkBody">Starters 小菜</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#Soups" class="selectionFont">Soups 汤</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#FriedRice" class="selectionFont">Fried Rice 饭類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#Chowmein" class="selectionFont">Chow Mein 面類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#ChineseVegetableDish" class="selectionFont">Chinese Vegetables
                                        各式菜類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#SetMeal" class="selectionFont">Set Meal 套餐</a>
                                </div>
                            </div>
                            <hr />
                            <div id="secondSelection" class="row">
                                <div class="col-lg-2">
                                    <a href="#vegetarianDish" class="selectionFont">Vegetarian Dishes 素菜類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#SweetAndSourCantonese" class="selectionFont">Sweet & Sour Cantonese Style
                                        酸甜類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#SweetAndSourBalls" class="selectionFont">Sweet & Sour Balls 酸甜類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#SpareRibs" class="selectionFont">Spare Ribs 排骨類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#CurryDish" class="selectionFont">Curry Dishes 咖喱類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#SatayDish" class="selectionFont">Satay Dishes 沙爹類</a>
                                </div>
                            </div>
                            <hr />
                            <div id="thirdSelection" class="row">
                                <div class="col-lg-2">
                                    <a href="#KungPoDish" class="selectionFont">Kung Po Dishes 宮保類(英式)</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#CapitalDish" class="selectionFont">Capital Sauce Dishes 京汁類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#EggFooYungDish" class="selectionFont">Egg Foo Yung Dishes 芙蓉類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#OmeletteDish" class="selectionFont">Omelette Dishes 煎蛋類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#Duckling" class="selectionFont">Duckling Dishes 鸭肉類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#KprawnDish" class="selectionFont">King Prawn Dishes 大蝦類</a>
                                </div>
                            </div>
                            <hr/>
                            <div id="fourthSelection" class="row">
                                <div class="col-lg-2">
                                    <a href="#BeefDish" class="selectionFont">Beef Dishes 牛類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#ChickenDish" class="selectionFont">Chicken Dishes 雞類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#PorkDish" class="selectionFont">Pork Dishes 叉烧類</a>
                                </div>
                                <div class="col-lg-2">
                                    <a href="#ExtraPortionDish" class="selectionFont">Extra Portions</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="chefSpecial" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','23')->first()->Dish_Name }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($chefSpecials as $chefSpecial)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $chefSpecial->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $chefSpecial->FoodName }}
                                                @if (in_array($chefSpecial->id,$spicyFoodLabel))
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif
                                                @if ($chefSpecial->Recommended)
                                                <i style='font-size:16px; color:red; margin-top:5px'
                                                    class='fas'>&#xf164;</i>
                                                @endif</p>

                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $chefSpecial->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="Starters" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','20')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','20')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading" style="width:70%">Name餐名</th>
                                        <th class="secondTableHeading" style="width:30%">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($starters as $starter)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $starter->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $starter->FoodName }}
                                                @if($starter->Recommended)
                                                <i style='font-size:16px; color:red; margin-top:5px'
                                                    class='fas'>&#xf164;</i>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $starter->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">Small £{{ $starter->Small }}, Large
                                                £{{ $starter->Large }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="Soups" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','21')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','21')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="col-8 firstTableHeading">Name餐名</th>
                                        <th class="col-5 secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($soups as $soup)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $soup->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $soup->FoodName }}@if ($soup->Recommended)
                                                <i style='font-size:16px; color:red; margin-top:5px'
                                                    class='fas'>&#xf164;</i>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $soup->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£3.00</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="FriedRice" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','7')->first()->Dish_Name }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','7') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }} @if ($menu->Spicyness)
                                                <i class="fas fa-pepper-hot pepperLabel"></i>
                                                <i style='font-size:16px; color:red' class='fas'>&#xf164;</i>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="Chowmein" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','22')->first()->Dish_Name }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','22') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->Spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="ChineseVegetableDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','24')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','24')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','24') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="SetMeal" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','25')->first()->Dish_Name }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','25') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->Spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="vegetarianDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle veganSymbol">
                                {{ $headDishes->where('id','=','2')->first()->Dish_Name }}
                                <span style="color:green;">&#9419;</span>
                            </p>
                            <br class="clearFloat" />
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','2')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','2') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="SweetAndSourCantonese" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','17')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','17')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','17') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->OrderNumber == 169)
                                                <span class="fa fa-thumbs-up pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="SweetAndSourBalls" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','18')->first()->Dish_Name }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','18') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="SpareRibs" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','9')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','9')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','9') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->OrderNumber == 171)
                                                <span class="fa fa-thumbs-up pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="CurryDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','11')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','11')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','11') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="SatayDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','15')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','15')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','15') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="KungPoDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','16')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','16')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','16') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="CapitalDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','19')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','19')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','19') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="EggFooYungDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','12')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','12')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','12') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="OmeletteDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','13')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','13')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','13') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="Duckling" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','3')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','3')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','3') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="KprawnDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','4')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','4')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','4') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="BeefDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','5')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','5')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','5') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="ChickenDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','6')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','6')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','6') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr>@endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="PorkDish" class="panel panel-menu-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','10')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','10')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','10') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="ExtraPortionDish" class="panel panel-extraPortion-style">
                        <div class="panel-heading">
                            <p class="SubMenuTitle">
                                {{ $headDishes->where('id','=','14')->first()->Dish_Name }}
                            </p>
                            <p class="SubMenuTitleHelpText">
                                {{ $headDishes->where('id','=','14')->first()->HelpText }}
                            </p>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="firstTableHeading">Name餐名</th>
                                        <th class="secondTableHeading">Price价格</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menus->where('HeadDishes_Id','=','14') as $menu)
                                    <tr>
                                        <td>
                                            <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                            <p class="foodNameLabel">{{ $menu->FoodName }}
                                                @if ($menu->spicyness)
                                                <span class="fas fa-pepper-hot pepperLabel"></span>
                                                @endif</p>
                                            <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                        </td>
                                        <td>
                                            <p class="priceLabel">£{{ $menu->Price }}</p>
                                        </td>
                                    </tr> @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>