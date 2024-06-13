<?php

namespace App\Http\Controllers;

use App\Http\Controllers\ProductManagementController;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductManagementController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view('admin.product-management.index', compact('products'));
    }

    public function delete(Request $request)
    {
        $request->validate([
            'product_id' => 'required|integer|exists:products,id',
            'quantity' => 'required|integer|min:1'
        ]);

        $product = Product::find($request->product_id);
        $product->quantity -= $request->quantity;

        if ($product->quantity <= 0) {
            $product->delete();
        } else {
            $product->save();
        }

        return redirect()->route('product.management')->with('success', 'Productos eliminados correctamente.');
    }
}