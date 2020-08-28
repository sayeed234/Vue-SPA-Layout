<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Admin\Product;
use App\Admin\Customer;
use App\AdminOrder;
use App\AdminOrderdetails;
use App\AdminPayment;
use App\AdminShipping;
use Hash;
use App\Admin\Package;
use Cart;
use Session;
use DB;

class ManageController extends Controller
{
    public function pending(){
        if(Session::get('type')==1){
            $result=DB::table('admin_orders')
            ->join('customers','customers.id','=','admin_orders.customer')
            ->select('admin_orders.*','customers.name')
            ->where('status_type',0)
            ->OrderBy('id','DESC')
            ->get();

         return view('admin.order.pending',compact('result'));
        }else{
      
     return redirect()->back();
        }
        
    }

    public function pending_edit($id){
        $data=AdminOrder::find($id);
        return $data;
    }
    public function pending_update(Request $request){
        $data=AdminOrder::find($request->id);
        $data->status_type=$request->status_type;
        $data->save();
        return redirect()->back()->with('update','fd');
    }
    public function pending_view($id){
        if(Session::get('type')==1){
            $order=AdminOrder::find($id);   
            $customer=Customer::where('id',$order->customer)->first();
            $shipping=AdminShipping::where('id',$order->shipping)->first();
            $details=AdminOrderdetails::where('order',$id)->get();
            $payment=AdminPayment::where('order_id',$id)->first();
            return view('admin.order.view',compact('order','customer','shipping','details','payment')); 
        }else{
        return redirect()->back();
        }
       
    }
}
