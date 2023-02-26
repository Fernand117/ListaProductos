<?php

use App\Http\Controllers\ProductosController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/**
 * Funciones para retornar las vistas
 */
Route::get('/', [ProductosController::class, 'listaProductos']);
Route::get('productos/buscar', [ProductosController::class, 'index'])->name('productos.index');
Route::get('/productos/nuevo', [ProductosController::class, 'create'])->name('productos.create');
Route::get('/productos/filter', [ProductosController::class, 'filter'])->name('productos.filter');


/**
 * Funciones de controlador que hacen un llamado a la DB
 */
Route::post('/productos', [ProductosController::class, 'registrarProductos'])->name('productos.store');
