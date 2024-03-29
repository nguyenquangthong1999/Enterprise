<?php
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/','AdminController@getIndex');
Route::get('admin','AdminController@getLogin')->name('ADMIN');
Route::get('dashboardAdmin','AdminController@AdminDashboard')->name('DASHBOARD');
Route::post('executeLoginAdmin','AdminController@checkLoginForAdmin');
//Admin For Execute Account (Admin thực thi các Account)
//Account
Route::get('add_account','AccountController@create')->name('ADD_ACCOUNT');
Route::post('addaccount','AccountController@store');
Route::get('management_account','AccountController@index')->name('MANAGEMENT_ACCOUNT');//Show
Route::resource('manage_account', 'AccountController')->only('edit', 'update');//Update
Route::get('delete_account/{account_id}','AccountController@destroy');//Delete
//Phan quyen chuyen trang
Route::get('account','AccountController@loginAccount')->name('ACCOUNT');
Route::post('executeAccount','AccountController@executeLoginAccount');
//Student Function
Route::get('viewSemester','StudentController@viewSemester') ->name('VIEW_SEMESTER');
Route::get('dashboardStudent','StudentController@StudentDashboard')->name('STUDENT');
Route::get('fileUpload/{id}','StudentController@create')->name('FILE_UPLOAD');
Route::post('executeUpload','StudentController@store');
Route::get('showUpload','StudentController@index')->name('SHOW_UPLOAD');
Route::resource('show_upload','StudentController')->only('edit', 'update');
Route::get('grade','StudentController@checkGrade')->name('GRADE');
//Faculty Function
Route::get('management_faculity', 'FaculityController@manage_faculity')->name('MANAGEMENT_FACULITY');
Route::get('add_faculity', 'FaculityController@add')->name('ADD_FACULITY');
Route::post('addfaculity','FaculityController@addProcess');
Route::get('management_faculity/edit_faculity/{id}', 'FaculityController@edit');
Route::patch('management_faculity/{id}', 'FaculityController@editProcess');
Route::delete('management_faculity/{id}','FaculityController@delete');
// Coordinator Function
Route::get('dashboardCoordinator','CoordinatorController@CoordinatorDashboard')->name('COORDINATOR');
Route::get('management_coordinator','CoordinatorController@manage_coordinator')->name('MANAGEMENT_COORDINATOR');
Route::get('create_coordinator','CoordinatorController@add')->name('ADD_COORDINATOR');
Route::post('addcoordinator','CoordinatorController@storedCoordinator');
Route::get('management_coordinator/edit_coordinator/{id}', 'CoordinatorController@edit');
Route::patch('management_coordinator/{id}', 'CoordinatorController@editProcess');
Route::delete('management_coordinator/{id}','CoordinatorController@delete');
Route::get('review','CoordinatorController@review_post')->name('REVIEW_POST');
Route::delete('review/{id}','CoordinatorController@delete_post');
//publish bài viêt ở đây
Route::get('publish/{id}', 'CoordinatorController@publish_post');
// Coordinator Front End Function
Route::get('viewContribution','CoordinatorController@viewcontribution')->name('VIEW_CONTRIBUTION');
Route::post('executeComment/{student_id}','CoordinatorController@executecomment');
// Route::post('add_comment', 'CoordinatorController@addCommentProcess');
Route::patch('publish/{id}','CoordinatorController@publish_post');
// Route::patch('addcomment/{id}','CoordinatorController@addCommentProcess');

// Semester 
Route::get('semester', 'SemesterController@index')->name('MANAGEMENT_SEMESTER');
Route::get('add_semester', 'SemesterController@add_semester')->name('ADD_SEMESTER');
Route::post('semester', 'SemesterController@addSemesterProcess');
Route::delete('semester/{id}','SemesterController@deleteSemester');
Route::get('semester/edit/{id}','SemesterController@editSemester');
Route::patch('semester/{id}' , 'SemesterController@editSemesterProcess');
//  Marketing manager
Route::get('manager','ManagerController@ManagerDashboard')->name('MANAGER');
Route::get('statistics','ManagerController@ViewStatistics')->name('STATISTICS');
Route::post('/filter-by-date','ManagerController@filter_by_date');
Route::get('dowload','ManagerController@dowload_zip')->name('DOWLOAD_ZIP');
// Route::get('/dowloadzip', function(){
//     $file = public_path()
// });

Route::get('downloadZip', 'ManagerController@downloadZip');


//Guest Controller

Route::get('guest','GuestController@GuestDashboard')->name('GUEST');
Route::get('management_guest','GuestController@manage_guest')->name('MANAGEMENT_GUEST');
Route::get('add_guest','GuestController@addGuest')->name('ADD_GUEST');
Route::post('addguest','GuestController@addGuestProcess');
Route::get('management_guest/edit/{id}','GuestController@edit');
Route::patch('management_guest/{id}','GuestController@edit_process');
Route::delete('management_guest/{id}','GuestController@delete');



