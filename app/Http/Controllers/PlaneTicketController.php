<?php

namespace App\Http\Controllers;

use App\Models\planeTicket;
use Illuminate\Http\Request;

class PlaneTicketController extends Controller
{
    public function index(){
        $tickets = planeTicket::get();
        $message= [
            'message'=> 'success',
            'result' => $tickets
        ] ;

        return response()->json($message,200);
    }

    public function classFilter(Request $request){
//        return $request->id_list;
        $filter_data = planeTicket::whereIn('class_id',$request->id_list )->get();
        $message= [
            'message'=> 'success',
            'result' => $filter_data
        ] ;

        return response()->json($message,200);
    }
    public function priceFilter(Request $request){
//        return $request->ordering;
        $filter_data = planeTicket::orderBy('total_price', $request->ordering)->get();
        $message= [
            'message'=> 'success',
            'result' => $filter_data
        ] ;

        return response()->json($message,200);
    }

    public function store(Request $request){

        $insert = new planeTicket();
        $insert->class_id = $request->class_id;

        $insert->journey_plane_id = $request->journey_plane_id;
        $insert->return_plane_id = $request->return_plane_id;

        $insert->journey_date = $request->journey_date;
        $insert->return_date = $request->return_date;

        $insert->journey_to_time = $request->journey_to_time;
        $insert->journey_from_time = $request->journey_from_time;

        $insert->return_to_time = $request->return_to_time;
        $insert->return_from_time = $request->return_from_time;

        $insert->return_price = $request->return_price;
        $insert->journey_price = $request->journey_price;

        $insert->total_price = $request->return_price + $request->journey_price;

        $insert->save();

        $message= [
            'message'=> 'success',
        ] ;

        return response()->json($message,200);





    }
}
