<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests;
use App\Account;
use App\Student;

class ManagerController extends Controller
{
    

    public function ManagerDashboard(){

        $getDataStudent = Student::all()->where('active' ,'=', '1');
        return view('marketing_manager.manager_dashboard',compact('getDataStudent'));
        
       
    }
    
    public function ViewStatistics()
    {
        $getDataStudent = Student::all()->where('active' ,'=', '1');
        return view('marketing_manager.function.statistics_contribution', compact('getDataStudent'));
    }

    
}
