# Lista de productos

Página web que muestra una lista de productos y permite al usuario agregar nuevos productos a la lista. La lista está ordenada alfabéticamente por el nombre del producto, además permite realizar búsqueda y filtrar los productos mediante rango de precios.

### Requisitos

- Laravel versión 8
- Base de datos MySql con el nombre `dbListaProductos`


### Instalación

Clonar el proyecto del repositorio de GitHub mediante el siguiente enlace:
- `https://github.com/Fernand117/ListaProductos.git`

Una vez clonado es necesario haber creado la base de datos en MySql mencionada en los requisitos, por default la configuración del archivo .env se mantendrá como originalmente composer lo genera, por lo que se deberá asegurar de cambiar el usuario y contraseña conforme a sus credenciales personales:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=dbListaProductos
DB_USERNAME=root
DB_PASSWORD=
```

A continuación ejecutaremos el siguiente comando para instalar las dependencias del proyecto
- `composer install`

Una vez se terminen de instalar las dependencias ejecutamos el siguiente comando para crear las tablas usando en la base de datos
- `php artisan migrate`

Ahora, ya que nuestra base de datos se encuentra lista, procedemos a restaurar los datos que vienen en el archivo `productos_backup.sql`, ejecutamos el siguiente comando:
- `mysql -u usuario -p exampledb < productos_backup.sql`

Por último, ejecutamos el siguiente comando y corroboramos que todo esté funcionando
- `php artisan serve`