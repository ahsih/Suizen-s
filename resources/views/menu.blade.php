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
                        <div id="chefSpecial" class="panel panel-menu-style">
                            <div class="panel-heading">
                                <p class="SubMenuTitle">
                                    {{ $headDishes->where('id','=','23')->first()->Dish_Name }}
                                </p>
                            </div>
                            <div class="panel-body">
                                @foreach ($chefSpecials as $chefSpecial)
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
                        <div id="FriedRice" class="panel panel-menu-style">
                            <div class="panel-heading">
                                <p class="SubMenuTitle">
                                    {{ $headDishes->where('id','=','7')->first()->Dish_Name }}
                                </p>
                            </div>
                            <div class="panel-body">
                                @foreach ($menus->where('HeadDishes_Id','=','7') as $menu)
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
                        <div id="SetMeal" class="panel panel-menu-style">
                            <div class="panel-heading">
                                <p class="SubMenuTitle">
                                    {{ $headDishes->where('id','=','25')->first()->Dish_Name }}
                                </p>
                            </div>
                            <div class="panel-body">
                                @foreach ($menus->where('HeadDishes_Id','=','25') as $menu)
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
                    </div>
                </div>
                <div class="col-lg-2 col-sm-4 col-md-4">

                </div>
            </div>
        </div>
    </div>
</body>