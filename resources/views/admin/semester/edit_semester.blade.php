@extends('admin/dashboardAdmin')
@section('admin_content')
<section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Thêm Semester</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Semester</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>


  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">

      <div class="row">
<<<<<<< HEAD
 
        <div class="col-md-6">
         
=======

        <div class="col-md-6">

>>>>>>> fd72615... fsadfsdfsdf
            <div class="card-body">
                <!-- Date -->
            <form action="{{url('semester/'. $semester_edit->semester_id)}}" method="POST">
                @method('patch')
                @csrf
                <div class="form-group">
                    <label for="exampleInputEmail1">Name Semester</label>
                    <input type="text" name="semester" required class="form-control" value="{{$semester_edit->semester_name}}" id="exampleInputEmail1" placeholder="Input name semester">
                </div>
<<<<<<< HEAD
                
=======
>>>>>>> fd72615... fsadfsdfsdf
                <div class="form-group">
                    <label>Start Date:</label>
                    <input type="date" name="startdate" value="{{$semester_edit->start_date}}" required id="datepicker" class="form-control">
                </div>

                <div class="form-group">
                    <label>End Date:</label>
                    <input type="date" name="enddate" value="{{$semester_edit->end_date}}" required id="datepicker2" class="form-control">
                </div>
<<<<<<< HEAD
            
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
          
        
          
=======

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>



>>>>>>> fd72615... fsadfsdfsdf
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
<<<<<<< HEAD
@endsection
=======
@endsection 
>>>>>>> fd72615... fsadfsdfsdf
