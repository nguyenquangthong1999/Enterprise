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
    public function manage_guest(){
        $guest = DB::table('guest')->get();

        return view ('guest.manageGuest')->with('guest',$guest);
    }
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
        return redirect('management_guest')->with('message', 'Add Guest Successful!');
<<<<<<< HEAD
<<<<<<< HEAD

        return redirect()->route('MANAGEMENT_GUEST')->with('message', 'Add Guest Successfully!');

=======
>>>>>>> 9b4c8c7df500e9e4c23ccac5f84dd915d2593eb7
=======
>>>>>>> a14782d0c6d73bd75b6f56dd3c0792eb3cfb6234
    }
    public function edit($id){
 
        $faculity = DB::table('faculity')->get();
        $guest = DB::table('guest')->where('guest_id', $id)->first();

        return view('guest.editGuest' , compact('faculity','guest'));
    }
    public function edit_process(Request $request, $id){
        DB::table('guest')->where('guest_id', $id)->update([
            'guest_name' => $request->name,
            'faculity_name' => $request->faculity_name,
        ]);
        return redirect()->route('MANAGEMENT_GUEST')->with('message', 'Update Guest Successfully!');
    }
    public function delete($id){
        DB::table('guest')->where('guest_id', $id)->delete();
        return redirect()->route('MANAGEMENT_GUEST')->with('message', 'Delete Guest Successfully!');
    }
    
}
