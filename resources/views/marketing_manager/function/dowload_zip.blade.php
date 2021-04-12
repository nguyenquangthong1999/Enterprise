@extends('marketing_manager/manager_dashboard')
@section('manager_content')
  <!-- Section Header -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Dowload Contributions</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{Route('DASHBOARD')}}">Home</a></li>
              <li class="breadcrumb-item active">Dowload Contributions</li>
            </ol>
          </div>
        </div>
      </div>
  </section>
  <center>
    <div class="col-sm-5">
      @if(session()->has('message'))
      <div class="alert alert-success">
        {!! session()->get('message') !!}
      </div>
      @elseif(session()->has('error'))
      <div class="alert alert-danger">
        {!! session()->get('error') !!}
      </div>
      @endif
   </div>
  </center>
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
     
      <div class="row">
        <div class="col-12">
          <br>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Student's contribution</th>
                  <th>Student's image</th>
                  <th>Student Faculty</th>
                </tr>
                </thead>
                <tbody>
                  @foreach($getDataStudent as $item)
                  <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$item->student_uploadfile}}</td>
                    <td>{{$item->student_uploadimage}}</td>
                    <td>{{$item->faculity_name}}</td>
                  
                  </tr>
                    @endforeach
                </tbody>
              </table>
            
                      
                <div class="d-flex justify-content-center mt-3">

                  <a style="color: white" href="{{url('downloadZip')}}" class="btn btn-primary">
                      Dowload Zip <i class="fas fa-cloud-download-alt"></i>
                  </a>
                   
                </div>
            
             

            </div>
        
          </div>
        
        </div>
    
      </div>
     
    </div>
    <!-- /.container-fluid -->
  </section>
@endsection