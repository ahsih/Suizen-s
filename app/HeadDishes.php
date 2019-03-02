<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HeadDishes extends Model
{
    public function Menu()
    {
        return $this->hasMany(Menu::class);
    }
    
    public function Starters()
    {
        return $this->hasMany(Starters::class);
    }
    
    public function Soups()
    {
        return $this->hasMany(Soups::class);
    }
    
    public function ChefSpecial()
    {
        return $this->hasMany(ChefSpecial::class);
    }
}
