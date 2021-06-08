<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AirlinesClass extends Model
{
    use HasFactory;

    public function ticket(){
        return $this->hasMany(planeTicket::class , 'class_id' , 'id');
    }
}
