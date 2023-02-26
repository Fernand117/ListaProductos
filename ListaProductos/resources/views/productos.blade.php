<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <style type="text/css">

        body {
            background: rgb(238,174,202);
            background: -moz-radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            background: -webkit-radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#eeaeca",endColorstr="#94bbe9",GradientType=1);
        }

        .lista-productos, .filtro {
            background: white;
            padding: 2%;
            border-radius: 10px;
        }

        .lista-productos {
            margin: 0 auto;
        }

        .table {
            margin-top: 5%;
        }

        .form-buscar {
            width: 80%;
            float: left;
        }

        .btn-buscar, .btn-nuevo {
            float: left;
            margin-top: 2%;
            margin-left: 2%;
        }
        .btn-filtrar {
            float: right;
            margin-top: 5%;
        }
    </style>
</head>
<body>
    @if (session('mensaje'))
        <div class="alert alert-success">
            {{ session('mensaje') }}
        </div>
    @endif

    <div class="container mt-4">
        <div class="row">
            <div class="col-md-12">
                <!-- Formulario de búsqueda -->
                <form action="{{ route('productos.index') }}" method="GET">
                    <div class="form-buscar">
                        <label for="busqueda">Buscar producto:</label>
                        <input type="text" name="busqueda" id="busqueda" class="form-control" placeholder="Buscar..." value="{{ request()->input('busqueda') }}">
                    </div>
                    <button type="submit" class="btn btn-primary btn-buscar">Buscar</button>
                    <a href="{{ route('productos.create') }}" class="btn btn-primary btn-nuevo">Agregar</a>
                </form>
            </div>
        </div>

        <div class="row mt-4">

            <div class="col-md-2 filtro">
                <!-- Filtro de precios -->
                <form action="{{ route('productos.filter') }}" method="GET" class="form-inline float-md-right">
                    <p>Filtrar por precios.</p>
                    <div class="form-group">
                        <label for="precio_min">Precio mínimo:</label>
                        <input type="number" class="form-control ml-2 mr-2" name="precio_minimo" id="precio_min" placeholder="$ 0.00 MXN">
                    </div>
                    <div class="form-group">
                        <label for="precio_max">Precio máximo:</label>
                        <input type="number" class="form-control ml-2 mr-2" name="precio_maximo" id="precio_max" placeholder="$ 0.00 MXN">
                    </div>
                    <button type="submit" class="btn btn-primary ml-2 btn-filtrar">Filtrar</button>
                </form>
            </div>

            <div class="col-md-9 lista-productos">
                <!-- Lista de productos -->
                <h3>Lista de productos</h3>
                <table class="table">
                    <thead class="table-dark">
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Descripción</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse ($productos as $producto)
                        <tr>
                            <td>{{ $producto->nombre }}</td>
                            <td>$ {{ $producto->precio }} MXN</td>
                            <td>{{ $producto->descripcion }}</td>
                        </tr>
                    @empty
                        <h3>No hay productos registrados.</h3>
                    @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
