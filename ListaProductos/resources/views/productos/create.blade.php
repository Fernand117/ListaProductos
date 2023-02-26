<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nuevo producto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <style type="text/css">
        body {
            background: rgb(238,174,202);
            background: -moz-radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            background: -webkit-radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#eeaeca",endColorstr="#94bbe9",GradientType=1);
        }

        form {
            width: 55%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            min-height: 100vh;
            margin: 0 auto;
        }

        .container {
            background: white;
            padding: 2%;
            border-radius: 10px;
        }

        form h1 {
            margin-bottom: 5%;
        }

        form input[type="text"], form input[type="number"], form textarea {
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            background-color: #f2f2f2;
            font-size: 16px;
        }

        form button[type="submit"] {
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            float: right;
        }
    </style>
</head>
<body>

<form method="POST" action="{{ route('productos.store') }}" class="formulario">
    @csrf
    <h1>Añadir nuevo producto.</h1>
    <div class="container">
        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese el nombre del producto">
        </div>
        <div class="form-group">
            <label for="precio">Precio</label>
            <input type="number" class="form-control" id="precio" name="precio" placeholder="Ingrese el precio del producto">
        </div>
        <div class="form-group">
            <label for="descripcion">Descripción</label>
            <textarea class="form-control" id="descripcion" name="descripcion" rows="3" placeholder="Ingrese una descripción del producto"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
