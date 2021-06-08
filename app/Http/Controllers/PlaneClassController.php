<?php

namespace App\Http\Controllers;

use App\Models\AirlinesClass;
use Illuminate\Http\Request;

class PlaneClassController extends Controller
{
    public function index()
    {
        $plane_class = AirlinesClass::get();
        $message= [
            'message'=> 'success',
            'result' => $plane_class
        ] ;

        return response()->json($message,200);


    }
}
