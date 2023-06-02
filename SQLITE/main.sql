CREATE TABLE clientes (
    id_cliente integer PRIMARY KEY AUTOINCREMENT,
    nombre varchar(50),
    email varchar(50)
);
SELECT * FROM clientes;

CREATE TABLE ventas(
    id_venta integer PRIMARY KEY AUTOINCREMENT,
    fecha date,
    id_cliente integer REFERENCES clientes(id_cliente)
);
SELECT * FROM ventas;

CREATE TABLE detalle_ventas(
    id_detalle_venta integer PRIMARY KEY AUTOINCREMENT,
    id_venta integer REFERENCES ventas(id_venta),
    id_producto integer REFERENCES productos(id_producto),
    cantidad_producto integer,
    precio_unitario float,
    total_x_producto float
);
SELECT * FROM detalle_ventas;

CREATE TABLE productos(
    id_producto integer PRIMARY KEY AUTOINCREMENT,
    producto varchar(50),
    precio_unitario float
);
SELECT * FROM productos;
