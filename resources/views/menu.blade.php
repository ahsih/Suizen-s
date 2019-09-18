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
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
        crossorigin='anonymous' />
    <title>Suizen Noodle Bar</title>
</head>

<body>
    @include('include.navbar')
    <div id="Menu">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-sm-0 col-md-0">
                </div>
                <div class="col-lg-7 col-sm-8 col-md-8">
                    <div class="menu-border">
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
                                    Special dishes contains:<span  style="color: red"> chicken, beef , duck, char siu(pork) and king prawn</span>.
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
                        </div>
                            <div id="chefSpecial" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle">
                                        {{ $headDishes->where('id','=','23')->first()->Dish_Name }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($chefSpecials as $chefSpecial)
                                    <p class="orderNumberLabel">[{{ $chefSpecial->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $chefSpecial->FoodName }}</p>
                                    @if (in_array($chefSpecial->id,$spicyFoodLabel))
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $chefSpecial->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $chefSpecial->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($starters as $starter)
                                    <p class="orderNumberLabel">[{{ $starter->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $starter->FoodName }}</p>
                                    @if ($starter->Recommended)
                                    <i style='font-size:16px; color:red; margin-top:5px' class='fas'>&#xf164;</i></h6>
                                    @endif
                                    <p class="priceLabel">Small £{{ $starter->Small }}, Large £{{ $starter->Large }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $starter->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($soups as $soup)
                                    <p class="orderNumberLabel">[{{ $soup->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $soup->FoodName }}</p>
                                    @if ($soup->Recommended)
                                    <i style='font-size:16px; color:red; margin-top:5px' class='fas'>&#xf164;</i></h6>
                                    @endif
                                    <p class="priceLabel">£3.00</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $soup->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                            <div id="FriedRice" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle">
                                        {{ $headDishes->where('id','=','7')->first()->Dish_Name }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($menus->where('HeadDishes_Id','=','7') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->Spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    <i style='font-size:16px; color:red' class='fas'>&#xf164;</i></h6>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                            <div id="Chowmein" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle">
                                        {{ $headDishes->where('id','=','22')->first()->Dish_Name }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($menus->where('HeadDishes_Id','=','22') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->Spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','24') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                            <div id="SetMeal" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle">
                                        {{ $headDishes->where('id','=','25')->first()->Dish_Name }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($menus->where('HeadDishes_Id','=','25') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->Spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                            <div id="vegetarianDish" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle veganSymbol">
                                        {{ $headDishes->where('id','=','2')->first()->Dish_Name }}
                                         <span style="color:green;">&#9419;</span>
                                    </p>
                                    <br class="clearFloat"/>
                                    <p class="SubMenuTitleHelpText">
                                        {{ $headDishes->where('id','=','2')->first()->HelpText }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($menus->where('HeadDishes_Id','=','2') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','17') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->OrderNumber == 169)
                                    <p class="fa fa-thumbs-up pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                            <div id="SweetAndSourBalls" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle">
                                        {{ $headDishes->where('id','=','18')->first()->Dish_Name }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($menus->where('HeadDishes_Id','=','18') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','9') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->OrderNumber == 171)
                                    <p class="fa fa-thumbs-up pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','11') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','15') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','16') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                            <div id="KungPoDish" class="panel panel-menu-style">
                                <div class="panel-heading">
                                    <p class="SubMenuTitle">
                                        {{ $headDishes->where('id','=','19')->first()->Dish_Name }}
                                    </p>
                                    <p class="SubMenuTitleHelpText">
                                        {{ $headDishes->where('id','=','19')->first()->HelpText }}
                                    </p>
                                </div>
                                <div class="panel-body">
                                    @foreach ($menus->where('HeadDishes_Id','=','19') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','12') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','13') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','3') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','4') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','5') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','6') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','10') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
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
                                    @foreach ($menus->where('HeadDishes_Id','=','14') as $menu)
                                    <p class="orderNumberLabel">[{{ $menu->OrderNumber }}]</p>
                                    <p class="foodNameLabel">{{ $menu->FoodName }}</p>
                                    @if ($menu->spicyness)
                                    <p class="fas fa-pepper-hot pepperLabel"></p>
                                    @endif
                                    <p class="priceLabel">£{{ $menu->Price }}</p>
                                    <br class="clearFloat" />
                                    <p class="hintNameLabel">{{ $menu->HelpText }}</p>
                                    <hr class="seperateLine"> @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>