<?php

namespace App\Http\Controllers;

use App\Models\Plane;
use Illuminate\Http\Request;

class PlaneController extends Controller
{
    public function index(){
        $planes = Plane::all();
        $message= [
            'message'=> 'success',
            'result' => $planes
        ] ;

        return response()->json($message,200);
    }

    public function store(Request $request){

        $imageName = time().'.'.$request->plane_image->extension();
        $request->plane_image->move(public_path('plane_image'), $imageName);

        // return $request->all();
        $insert = new Plane();
        $insert->name = $request->plane_name;
        $insert->image = $imageName;
        $insert->save();
        $message= [
            'message'=> 'success',
        ] ;

        return response()->json($message,200);
    }
}
