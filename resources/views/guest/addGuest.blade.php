@extends('admin/dashboardAdmin')
@section('admin_content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Guest</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{Route('DASHBOARD')}}">Home</a></li>
            <li class="breadcrumb-item active">Coordinator</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <!-- left column -->
        <div class="col-md-8">
          <!-- general form elements -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Assign Guest to Faculty</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="{{URL('addguest')}}" method="POST" >
              @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="">Email</label>
                  <select class="form-control" name="email" required>
                    <option>Select Guest For Faculity</option>
                    @foreach($data as $datas)
                      @if($datas->account_number == 1)
                        <option value="{{$datas->account_email}}">{{$datas->account_email}}</option>
                      @endif
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Guest Name</label>
                  <input type="text" name="nameguest" class="form-control" placeholder="Enter Guest Name" required>
                </div>
                <div class="form-group">
                  <label for="">Faculty</label>
                  <select class="form-control" id ="faculty" name="faculity_name" required>
                    <option>Select Falcuty</option>
                    @foreach($faculty as $item)
                    <option value="{{$item -> faculity_name}}">{{$item -> faculity_name}}</option>
                    @endforeach
                  </select>
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Add</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
</section>
@endsection