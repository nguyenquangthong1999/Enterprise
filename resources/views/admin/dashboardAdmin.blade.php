@extends('parentlayout')
@section('admin_dashboard')
<ul class="navbar-nav">
  <li class="nav-item">
    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
  </li>
  <li class="nav-item d-none d-sm-inline-block">
    <a href="{{Route('DASHBOARD')}}" class="nav-link">Home</a>
  </li>
  <li class="nav-item d-none d-sm-inline-block">
    <a href="{{Route('DASHBOARD')}}" class="nav-link">Contact</a>
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
  <!-- Brand Logo -->
  <!-- <a href="index3.html" class="brand-link">
    <img src="{{asset('AdminTemplate/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
         style="opacity: .8">
    <span class="brand-text font-weight-light">Admin</span>
  </a> -->
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{asset('AdminTemplate/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="{{Route('DASHBOARD')}}" class="d-block">Admin</a>
      </div>
    </div>
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
          </ul>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-user"></i>
            <p>
              Account
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{route('ADD_ACCOUNT')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Add New Account</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{route('MANAGEMENT_ACCOUNT')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Account Management</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-book-reader"></i>
            <p>
              Faculty
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{route('MANAGEMENT_FACULITY')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Faculty Management</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-street-view"></i>
            <p>
              Coordinator
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{route('MANAGEMENT_COORDINATOR')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Coordinator Management</p>
              </a>
            </li>
          </ul>
        </li>
       
      
       
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-street-view"></i>
            <p>
              Guest
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{route('MANAGEMENT_GUEST')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Management Guest</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a href="{{Route('ADMIN')}}" class="nav-link active">
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
@section('admin_content')
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Welcome Admin!</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{Route('DASHBOARD')}}">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
@endsection