<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HeadDishes extends Model
{
    public function Menu()
    {
        return $this->hasMany(Menu::class);
    }
}
