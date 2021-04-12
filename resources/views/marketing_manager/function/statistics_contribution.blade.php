@extends('marketing_manager/manager_dashboard')
@section('manager_content')
  <!-- Section Header -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Statistics Contribution</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{Route('DASHBOARD')}}">Home</a></li>
              <li class="breadcrumb-item active">Statistics Contributions</li>
            </ol>
          </div>
        </div>
      </div>
  </section>
  <!-- /.End Section-header -->
  <!-- Section Content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row"> 
        <div class="col-md-6">
        
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Total of data school</h3>
            </div>
            <div class="card-body">
              <div id="donut-example" ></div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Total of contributions each faculty</h3>
            </div>
            <div class="card-body">
              <div id="chart-area" ></div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Number of contributions to each faculty</h3>
            </div>
            <div class="card-body">
              <div id="Chart_bar" ></div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Number of contributions for each year</h3>
            </div>
            <div class="card-body">
              <div id="Chart_Line" ></div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </section>
   <!-- /.End Section-content -->
   <!-- Chart -->
@endsection