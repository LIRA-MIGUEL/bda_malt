base de datos para aplicaciones 
INSERT INTO ventas (id_venta, fecha, id_cliente)
SELECT id_cliente, '2023-06-04', id_cliente
FROM clientes;

FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
FOREING KEY (id_cliente) REFERENCES clientes(id_cliente)