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
    <link rel="stylesheet" href="{{asset('css/combomeal.css')}}" />
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
        integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="{{ asset('js/comboMeal.js') }}"></script>
    <title>Suizen Noodle Bar 广东楼</title>
</head>

<body>
    @include('include.navbar')
    <div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-sm-0 col-md-0">
                </div>
                <div class="col-lg-7 col-sm-8 col-md-8">
                    <div id="header" class="panel panel-title-style">
                        <div class="panel-heading">
                            <h4 class="Title">Combo Meals 套餐 £6.00</h4>
                        </div>
                    </div>
                    <div id="option" class="panel panel-option-style">
                        <div class="panel-heading">
                            <div class="font-layout">
                                <h4 class="SubTitle"> Instruction: </h4>
                                <p id="ChooseTitle" class="firstSize"> Choose 3 choices 选择3种菜类:</p>
                                <p class="firstSize"><span class="redColor symbolFontSize">①</span> A type of Meat 肉类
                                </p>
                                <p class="firstSize"><span class="redColor symbolFontSize">②</span> A type of Style 风味
                                </p>
                                <p class="firstSize"><span class="redColor symbolFontSize">③</span> A type of Side
                                    Choice/Extra 饭或面</p>
                                <p class="firstSize"> To create a combo meal <span class="redColor">(All in One
                                        Container)</span> 全部装在一个盒子</p>
                            </div>
                        </div>
                    </div>
                    <div id="MeatChoice" class="panel panel-Meat-style">
                        <div class="panel-heading">
                            <div class="font-layout">
                                <p id="ChooseTitle" class="firstSize"><span class="symbolFontSize">①</span> Meat Choices
                                    (CHOOSE ONE) 肉类选择:</p>
                                <p class="secondSize">@for($i=0;$i < count($meats) / 2;$i++)<span class="meatOption">
                                        {{ $meats[$i]->FoodName }}</span>@endfor</p>
                                <p class="secondSize">@for($i=count($meats)/2 + 1;$i < count($meats);$i++) <span
                                        class="meatOption">{{ $meats[$i]->FoodName }}</span> @endfor</p>
                                <p class="secondSize">@for($i=0;$i < count($meats) / 2;$i++)<span class="meatOption">
                                        {{ $meats[$i]->ChineseName }}</span>@endfor</p>
                                <p class="secondSize">@for($i=count($meats)/2 + 1;$i < count($meats);$i++) <span
                                        class="meatOption">{{ $meats[$i]->ChineseName }}</span> @endfor</p>
                            </div>
                        </div>
                    </div>
                    <div id="Style" class="panel panel-Style-style">
                        <div class="panel-heading">
                            <div class="font-layout">
                                <p id="ChooseTitle" class="firstSize redColor"><span class="symbolFontSize">②</span>
                                    Style Options 风味选择:</p>
                                @foreach ($styles as $style)
                                <p class="styleSize">[{{$style->OrderNumber}}]
                                    <span>{{ $style->FoodName }}</span>
                                    <span class="styleChineseLayout">{{  $style->ChineseName }}</span>
                                </p>
                            <p class="styleSubSize">{{ $style->HelpText}}</p>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div id="Sides" class="panel panel-Side-style">
                        <div class="panel-heading">
                            <div class="font-layout">
                                <p id="ChooseTitle" class="firstSize redColor"><span class="symbolFontSize">③</span>
                                    SIDE CHOICES/EXTRA 选择饭或面:</p>
                                @for($i=0;$i < 3;$i++)
                                <p class="secondSize">{{ $sides[$i]->FoodName }} {{ $sides[$i]->ChinseName }}</p>
                                @endfor
                                <p class="secondSize priceAdding redColor">+50p</p> 
                                @for($i=3;$i < count($sides);$i++)
                                <p class="secondSize">{{ $sides[$i]->FoodName }} {{ $sides[$i]->ChinseName }}</p>
                                @endfor
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>