<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    public function HeadDishes(){
        return $this->belongsTo(HeadDishes::class);
    }
  
}
