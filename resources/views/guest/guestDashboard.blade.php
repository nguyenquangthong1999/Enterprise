@extends('parentlayout')
@section('guest_dashboard')
<ul class="navbar-nav">
  <li class="nav-item">
    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
  </li>
  <li class="nav-item d-none d-sm-inline-block">
    <a href="{{Route('COORDINATOR')}}" class="nav-link">Home</a>
  </li>
  <li class="nav-item d-none d-sm-inline-block">
    <a href="{{Route('COORDINATOR')}}" class="nav-link">Contact</a>
  </li>
</ul>
<!-- SEARCH FORM -->
<div class="form-inline ml-3">
  <div class="input-group input-group-sm">
    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
    <div class="input-group-append">
      <button class="btn btn-navbar">
        <i class="fas fa-search"></i>
      </button>
    </div>
  </div>
</div>
@endsection
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Sidebar -->
    <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{asset('AdminTemplate/dist/img/avatar5.png')}}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">Guest</a>
      </div>
    </div>
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview">
            <a href="{{ROUTE('GUEST')}}" class="nav-link active">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Dashboard
                
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{Route('ACCOUNT')}}" class="nav-link active">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
@section('guest_content')

@if($getGuestEmail)
  <div class="content-header">      
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Welcome Guest!</h1>
        </div><!-- /.col -->
      </div>
    </div>
      
      
    @foreach($getData as $key => $getDatas)
    <div class="card-body pb-0 main1">  
      <div class="row d-flex align-items-stretch main2">
          <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch">
            <div class="card bg-light">
              <div class="card-header text-muted border-bottom-0">
                File Upload By Student
              </div>
              <div class="card-body pt-0">
                <div class="row">
                  <div class="col-7">
                    <input type="hidden" id="getId" value="{{$getDatas->student_id}}">
                    <h2 class="lead"><b id="file1">{{$getDatas->student_uploadfile}}</b></h2>
                    <p class="text-muted text-sm"><b>Description: </b>{{$getDatas->student_description}}</p>
                    <p class="text-muted text-sm"><b>Date Upload: </b>{{$getDatas->created_at}}</p>
                    <p class="text-muted text-sm"><b>Faculty: </b>{{$getDatas->faculity_name}}</p>
                  </div>
                  <div class="col-5 text-center">
                    <img src="{{asset("imageStudent/$getDatas->student_uploadimage")}}" class="img-circle img-fluid" alt="">
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <div class="text-right">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      @endforeach
  </div>
  @else
  <div class="container-fluid content-header">
    <h1 class="m-0 text-dark">Please <a href= "{{route('ACCOUNT')}}">login</a> first!</h1>
  </div>
@endif


@endsection