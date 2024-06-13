<?php

use App\Admin\Controllers\ProductController;
use App\Http\Controllers\ProductManagementController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin/product-management', [ProductManagementController::class, 'index'])->name('product.management');
Route::post('/admin/product-management/delete', [ProductManagementController::class, 'delete'])->name('product.management.delete');
Route::post('/admin/update-stock', [ProductController::class, 'updateStock'])->name('admin.update-stock');