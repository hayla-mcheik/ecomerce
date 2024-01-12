@extends('layouts.admin')

@section('content')
<style>
  .no-decoration{
    text-decoration: none;
}
  </style>
<div class="row">
            <div class="col-md-12 grid-margin">
 
                    @if(session('message'))
                    <h6 class="alert alert-success">{{ session('message') }}</h6>
                    @endif
    
                    <div class="me-md-3 me-xl-5">
                    <p class="mb-md-0">Your analytics dashboard </p>
                    <hr>
                  </div>

                  <div class="row">

<div class="col-md-3">
  <div class="card card-body bg-primary text-white mb-3">
<label>Total Orders</label>
<h1>{{ $totalOrder }}</h1>
<a href="{{ url('admin/orders') }}" class="text-white no-decoration">View</a>
</div>
</div>

<div class="col-md-3">
  <div class="card card-body bg-warning text-white mb-3">
<label>This Month Orders</label>
<h1>{{ $thisMonthOrder }}</h1>
<a href="{{ url('admin/orders') }}" class="text-white no-decoration">View</a>
</div>
</div>

<div class="col-md-3">
  <div class="card card-body bg-danger text-white mb-3">
<label>Year Orders</label>
<h1>{{ $thisYearOrder }}</h1>
<a href="{{ url('admin/orders') }}" class="text-white no-decoration">View</a>
</div>
</div>
<div class="col-md-3">
  <div class="card card-body bg-primary text-white mb-3">
<label>Total Products</label>
<h1>{{ $totalProducts }}</h1>
<a href="{{ url('admin/products') }}" class="text-white no-decoration">View</a>
</div>
</div>

</div>

<hr>


            </div>
          </div>


          <div class="row">
      
          <div class="col-md-8">
          <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Top Selling Categories</h3>
                </div>
                <div class="card-body">
                    <canvas id="topSellingChart"></canvas>
                </div>
            </div>
</div>


<div class="col-md-4">
<div class="me-md-3 me-xl-5">
                    <p class="mb-md-0 text-bold">Top Selling Products </p>
                  </div>
            <hr>
            <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Product ID</th>
                                <th>Name</th>
                                <th>Number of Orders</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($topSellingProducts as $product)
                            <tr>
                                <td>{{ $product->id }}</td>
                                <td>{{ $product->name }}</td>
                                <td>{{ $product->order_items_count }}</td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="3">No products available</td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
</div>
</div>
<div class="row">
        <div class="col-md-12">
            <div class="me-md-3 me-xl-5">
                    <p class="mb-md-0 text-bold">Recent Order </p>
                  </div>
            <hr>
            <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <th>Order ID</th>
                                <th>Username</th>
                                <th>Payment Mode</th>
                                <th>Status Message</th>
                                <th>Action</th>
</thead>
<tbody>
    @forelse ($order as $item)
    <tr>
        <td>{{ $item->id }}</td>
        <td>{{ $item->fullname }}</td>
        <td>{{ $item->payment_mode }}</td>
        <td>{{ $item->status_message }}</td>
        <td><a href="{{ url('admin/orders/'.$item->id) }}" class="btn btn-primary btn-sm">View</a></td>
</tr>
    @empty
    <tr>
        <td colspan="7">No Orders available</td>
</tr>
    @endforelse
</tbody>
</table>



</div>
</div>
        </div>

            @endsection

            @section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Get the data from the PHP variables
        var chartData = {!! json_encode($chartData) !!};
        var chartLabels = {!! json_encode($chartLabels) !!};

        // Create the chart
        var ctx = document.getElementById('topSellingChart').getContext('2d');
        var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: chartLabels,
                datasets: [{
                    label: 'Total Sales',
                    data: chartData,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        stepSize: 1
                    }
                }
            }
        });
    </script>
@endsection