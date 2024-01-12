<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Models\Product;
use App\Models\Category;
use App\Models\Brand;
use App\Models\User;
use App\Models\Order;
use App\Models\Orderitem;
use DB;
use Illuminate\Support\Collection;
class DashboardController extends Controller
{
    public function index()
    {
        $totalProducts = Product::count();
        $totalCategories = Category::count();
        $totalBrands = Brand::count();
        $totalAllUsers = User::count();
        $totalUser = User::where('role_as','0')->count();
        $totalAdmin = User::where('role_as','1')->count();

        $todayDate = Carbon::now()->format('d-m-Y');
        $thisMonth = Carbon::now()->format('m');
        $thisYear = Carbon::now()->format('Y');

        $totalOrder = Order::count();
$order = Order::all();
$topSellingProducts = Product::withCount('orderItems')
->orderBy('order_items_count', 'desc')
->take(10)
->get();



$topSellingCategories = Category::select('categories.name', DB::raw('COUNT(orders_items.order_id) as total_sales'))
->leftJoin('products', 'categories.id', '=', 'products.category_id')
->leftJoin('orders_items', 'products.id', '=', 'orders_items.product_id')
->groupBy('categories.id', 'categories.name')
->orderBy('total_sales', 'desc')
->take(5)
->get();

// Prepare data for the chart
$chartData = $topSellingCategories->pluck('total_sales');
$chartLabels = $topSellingCategories->pluck('name');

        $todayOrder = Order::whereDate('created_at',$todayDate)->count();
        $thisMonthOrder = Order::whereMonth('created_at',$thisMonth)->count();
        $thisYearOrder= Order::whereYear('created_at',$thisYear)->count();
        return view('admin.dashboard',compact('totalProducts','totalCategories','totalBrands','totalAllUsers'
    ,'totalUser','totalAdmin','todayDate','thisMonth','thisYear','totalOrder','todayOrder','thisMonthOrder','thisYearOrder','order',
    'topSellingProducts','chartData','chartLabels'
    ));
    }
}
