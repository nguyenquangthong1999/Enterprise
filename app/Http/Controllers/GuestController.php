<?php
namespace App\Http\Controllers;
use Session;
use App\Account;
use App\Student;
use App\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;



class GuestController extends Controller
{
    public function GuestDashboard(Request $request){
        $getGuestEmail = Session::get('guest_email');

        $faculty_name_guest = DB::table('guest')->where('guest_email',$getGuestEmail)->pluck('faculity_name');
        
        $getData = DB::table('student')->whereIn('faculity_name', $faculty_name_guest)->get();
        
        return view('guest.guestDashboard',compact('getData'))->with('getGuestEmail',$getGuestEmail);
    }
    public function addGuest(){
        $data = Account::all();
        $faculty =  DB::table('faculity')->get();
        return view('guest.addGuest',compact('data'))->with('faculty',$faculty);
    }
    public function addGuestProcess(Request $request){
        DB::table('guest')->insert([
            'guest_name' => $request->nameguest,
            'guest_email' => $request->email,
            'faculity_name' => $request->faculity_name, 
        ]);
        return redirect('dashboardAdmin')->with('message', 'Add Guest Successful!');
    }
    
    
    
}
