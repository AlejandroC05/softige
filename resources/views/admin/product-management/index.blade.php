@extends('layouts.app')

@section('content')
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <style>
        a {
            text-decoration: none;
        }
    </style>
    <body class="bg-gradient-to-r from-slate-900 to-slate-700 p-0 m-0 flex items-center justify-center min-h-screen">
        <div class="w-full max-w-4xl mx-auto px-4">
            <div class="bg-gray-400 shadow-md rounded-lg overflow-hidden mx-auto">
                <a href="/admin" class="text-end float-end bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 mt-3 mr-10 rounded">Volver</a>
                <div class="p-4 bg-gray-300 border-b">
                    <h2 class="text-xl font-semibold">Lista de Productos</h2>
                </div>
                <div class="p-4 overflow-auto">
                    <table class="min-w-full divide-y divide-gray-200 w-full">
                        <thead>
                            <tr class="bg-gray-100">
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">ID</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Descripción</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Precio</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Stock</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Cantidad</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            @foreach($products as $product)
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">{{ $product->id }}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">{{ $product->description }}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">{{ $product->price }}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">{{ $product->stock }}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <form method="POST" action="{{ route('admin.update-stock') }}">
                                            @csrf
                                            <input type="hidden" name="product_id" value="{{ $product->id }}">
                                            <div class="flex items-center space-x-2">
                                                <input type="number" name="quantity" min="1" required class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
                                                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                                                    Eliminar
                                                </button>
                                            </div>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
    </html>
@endsection
