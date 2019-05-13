<?php

namespace App\Http\Controllers;

use App\Menu; 
use App\HeadDishes;
use App\ChefSpecial;
use App\Starters;
use App\Soups;

class MenuController extends Controller {

    public function index() {

        $menus = Menu::All();
        $chefSpecials = ChefSpecial::All();
        $HeadDishes = HeadDishes::All();
        $Starters = Starters::All();
        $Soups = Soups::All();

        $chefSpecialSpicy = array(4,8,11,12,14,16);

        $data = array
        (      
         'menus' =>  $menus,   
         'headDishes' => $HeadDishes,
         'chefSpecials' => $chefSpecials,
         'spicyFoodLabel' => $chefSpecialSpicy,
         'starters' => $Starters,
         'soups' => $Soups,
        );
                
        return view('menu')->with($data);
    }

}
