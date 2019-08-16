<?php

namespace App\Http\Controllers;

use App\ComboMeal_Meat; 
use App\ComboMeal_Side;
use App\ComboMeal_Style;

class ComboMealController extends Controller
{

    public function index(){
        
        $comboMealMeats = ComboMeal_Meat::All();
        $comboMealSide = ComboMeal_Side::All();
        $comboMealStyle = ComboMeal_Style::All();

        $data = array
        (
            'meats' => $comboMealMeats,
            'sides' => $comboMealSide,
            'styles' => $comboMealStyle
        );
        return view('comboMeal')->with($data);
    }
}