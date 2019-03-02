<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChefSpecial extends Model
{
    public function HeadDishes()
    {
        return $this->belongsTo(HeadDishes::class);
    }
}
