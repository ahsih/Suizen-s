<?php

namespace App\Http\Controllers;

use App\Menu; 
use App\HeadDishes;
use App\ChefSpecial;

class MenuController extends Controller {

    public function index() {

        $menus = Menu::All();
        $chefSpecials = ChefSpecial::All();
        $HeadDishes = HeadDishes::All();

        $data = array
        (      
         'menus' =>  $menus,   
         'headDishes' => $HeadDishes,
         'chefSpecials' => $chefSpecials,
        );
                
        return view('menu')->with($data);
    }

}
