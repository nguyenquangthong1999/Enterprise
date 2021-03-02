<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\StudentRequest;
use App\Student;
use Carbon\Carbon;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Student::all();
        return view('student.function.show',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('student.function.upload_file');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StudentRequest $request)
    {
        $add = new Student;
        if($request->file('student_uploadimage')){
            $destination_path1 = 'imageStudent';
            $student_uploadimage = $request->file('student_uploadimage');
            $image = $student_uploadimage->getClientOriginalName();
            $request->student_uploadimage->move($destination_path1,$image);
            $add->student_uploadimage = $image;
        }
        if($request->file('student_uploadfile')){
            $destination_path = 'uploadfile';
            $student_uploadfile = $request->file('student_uploadfile');
            $filename = $student_uploadfile->getClientOriginalName();
            $request->student_uploadfile->move($destination_path,$filename);
            $add->student_uploadfile = $filename;
        }
        // $created_at = $now;
        $add->student_description = $request->student_description;
        $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $add->created_at = now();
        $add->save();
        // dd($add);
        return Redirect()->Route('SHOW_UPLOAD')->with('message','Upload File Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($student_id)
    {
        $getId =  Student::find($student_id);
        return view('student.function.edit',compact('getId'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StudentRequest $request, $student_id)
    {
        $student = Student::find($student_id);
        $input = $request->all();
        if($request->file('student_uploadimage')){
            $destination_path1 = 'imageStudent';
            $student_uploadimage = $request->file('student_uploadimage');
            $image = $student_uploadimage->getClientOriginalName();
            $request->student_uploadimage->move($destination_path1,$image);
            $input['student_uploadimage'] = $image;
        }
        if($request->file('student_uploadfile')){
            $destination_path = 'uploadfile';
            $student_uploadfile = $request->file('student_uploadfile');
            $filename = $student_uploadfile->getClientOriginalName();
            $request->student_uploadfile->move($destination_path,$filename);
            $input['student_uploadfile'] = $filename;
        }
        // $created_at = $now;
        $input['student_description'] = $request->student_description;
        $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $input['updated_at'] = now();
        $student->update($input);
        // dd($student);
        return Redirect()->Route('SHOW_UPLOAD')->with('message','Update Your Upload Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function StudentDashboard(){
        return view('student.dashboardStudent');
    }
}
