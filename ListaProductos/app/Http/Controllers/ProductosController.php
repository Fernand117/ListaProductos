<?php

namespace App\Http\Controllers;

use App\Models\Productos;
use Illuminate\Http\Request;

class ProductosController extends Controller
{
    public function create()
    {
        return view('productos.create');
    }

    public function index(Request $request)
    {
        $query = $request->input('busqueda');

        if ($query == '' || $query == null) {
            return redirect('/');
        }

        $productos = Productos::where('nombre', 'like', '%'.$query.'%')->orderBy('nombre')->get();

        if ($productos == '') {
            $request->session()->flash('mensaje', 'No se encontraron resultados para la búsqueda de ' . $query);
        }
        $request->session()->flash('mensaje', 'Resultados para la búsqueda de ' . $query);
        return view('productos', compact('productos'));
    }

    public function filter(Request $request)
    {
        $precio_minimo = $request->input('precio_minimo');
        $precio_maximo = $request->input('precio_maximo');

        $productos = Productos::whereBetween('precio', [$precio_minimo, $precio_maximo])->orderBy('nombre')->get();
        $request->session()->flash('mensaje', 'Lista de productos entre el rango de precios: $' . $precio_minimo . ' - $' . $precio_maximo);
        return view('productos', ['productos' => $productos]);
    }


    public function listaProductos()
    {
        $productos = Productos::orderBy('nombre')->get();
        return view('productos', ['productos' => $productos]);
    }

    public function registrarProductos(Request $request)
    {
        $data = $request->all();
        $producto = new Productos();
        $producto->nombre = $data['nombre'];
        $producto->descripcion = $data['descripcion'];
        $producto->precio = $data['precio'];
        $producto->save();
        $request->session()->flash('mensaje', 'Producto registrado correctamente');
        return redirect('/');
    }
}
