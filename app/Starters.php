<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Starters extends Model
{
    public function HeadDishes()
    {
       return $this->belongsTo(HeadDishes::class);
    }
}
