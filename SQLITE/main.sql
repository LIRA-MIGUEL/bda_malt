CREATE TABLE IF NOT EXISTS clientes (
    id_cliente integer PRIMARY KEY AUTOINCREMENT,
    nombre varchar(50),
    email varchar(50)
);

CREATE TABLE IF NOT EXISTS productos(
    id_producto integer PRIMARY KEY AUTOINCREMENT,
    producto varchar(50),
    precio_unitario float
);

CREATE TABLE IF NOT EXISTS ventas(
    id_venta integer PRIMARY KEY AUTOINCREMENT,
    fecha date,
    FOREING KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE IF NOT EXISTS detalle_ventas(
    id_detalle_venta integer PRIMARY KEY AUTOINCREMENT,
    FOREING KEY (id_venta) REFERENCES ventas(id_venta),
    FOREING KEY (id_producto) integer REFERENCES productos(id_producto),
    cantidad_producto integer,
    precio_unitario float,
    total_x_producto float
);

SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;
SELECT * FROM detalle_ventas;
