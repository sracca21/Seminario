-- Tabla Persona
INSERT INTO Persona (idPersona, nombre, apellido, direccion, dni, telefono, correo)
VALUES (1, 'Roberto', 'Sanchez', 'Cordoba 5492 - Rosario', '35654789', '3415789456', 'robertosanchez@icloud.com');

INSERT INTO Persona (idPersona, nombre, apellido, direccion, dni, telefono, correo)
VALUES (2, 'Juan', 'Perez', 'San Martin 355 - Rosario', '29486257', '3415486285', 'juanperez@icloud.com');
-- SELECT * FROM Persona;
-- DELETE FROM Persona WHERE idPersona = 3;


-- Tabla Cliente
INSERT INTO Cliente (idCliente, Persona_idPersona)
VALUES (1, 1);

-- SELECT * FROM Cliente;

-- DELETE FROM Cliente WHERE idCliente = 1;


-- Tabla Usuario
INSERT INTO Usuario (IdUsuario, Persona_idPersona, login, password, fechaAlta, fechaBaja, activo)
VALUES (1, 2, 'jperez', '3astroRPG', '2025-05-10', NULL, 1);

-- SELECT * FROM Usuario;

-- DELETE FROM Usuario WHERE IdUsuario = 1;


-- Tabla Venta
INSERT INTO Venta (fecha, hora, monto, moneda, Cliente_idCliente, cuotas, montoCuota, tipoVenta)
VALUES ('2025-05-17', '10:37:05', 90000.00, 'ARS', 1, NULL, NULL, 'Contado');

-- SELECT * FROM Venta;

-- DELETE FROM Venta WHERE idVenta = 1 AND Cliente_idCliente = 1;


-- Tabla Inventario
INSERT INTO Inventario (puntoPedido, loteMinimo, stock, descripcion, caracteristicas, precio)
VALUES (5, 10, 12, 'Botella Termica', '500ml - Stanley', 45000.00);

INSERT INTO Inventario (puntoPedido, loteMinimo, stock, descripcion, caracteristicas, precio)
VALUES (10, 8, 10, 'Labial', 'Rojo intenso - loreal', 5000.00);

INSERT INTO Inventario (puntoPedido, loteMinimo, stock, descripcion, caracteristicas, precio)
VALUES (5, 5, 10, 'Collar dc', 'Dos corazones', 1000.00);

INSERT INTO Inventario (puntoPedido, loteMinimo, stock, descripcion, caracteristicas, precio)
VALUES (5, 5, 10, 'Collar ma', 'Mejores amigas', 1000.00);

INSERT INTO Inventario (puntoPedido, loteMinimo, stock, descripcion, caracteristicas, precio)
VALUES (5, 5, 10, 'Bufanda tg', 'Bufanda total gris', 1000.00);

-- SELECT * FROM Inventario;
-- DELETE FROM Inventario WHERE idInventario = 1;


-- Tabla Producto
INSERT INTO Producto (descripcion, cantidad, precio, subtotal, caracteristicas, Venta_idVenta, Venta_Cliente_idCliente, Venta_Producto_idProducto, Inventario_idInventario)
VALUES ('Botella Termica', 2, 45000.00, 90000.00, '500ml - Stanley', 1, 1, 1, 1);

-- SELECT * FROM Producto;

-- DELETE FROM Producto WHERE idProducto = 1 AND Venta_idVenta = 1 AND Venta_Cliente_idCliente = 1 AND Venta_Producto_idProducto = 1 AND Inventario_idInventario = 1;


-- Tabla MovimientoContable
INSERT INTO MovimientoContable (tipo, fecha, hora, monto, moneda)
VALUES ('Ingreso', '2025-05-17', '10:37:43', 90000.00, 'ARS');

-- SELECT * FROM MovimientoContable;

-- DELETE FROM MovimientoContable WHERE idMovimientoContable = 1;


-- Tabla Cobro
INSERT INTO Cobro (fecha, hora, monto, moneda, Venta_Producto_idProducto, MovimientoContable_idMovimientoContable, Venta_idVenta, Venta_Cliente_idCliente)
VALUES ('2025-05-17', '10:37:43', 90000.00, 'ARS', 1, 1, 1, 1);

-- SELECT * FROM Cobro;

-- DELETE FROM Cobro WHERE idCobro = 1 AND Venta_idVenta = 1 AND Venta_tCliente_idCliente = 1 AND Venta_Producto_idProducto = 1 AND CuentaCorriente_idCuentaCorriente = 1;


-- Tabla Parametro
INSERT INTO Parametro (parametro, valor)
VALUES ('Interes', 2.5);

-- SELECT * FROM Parametro;

-- DELETE FROM Parametro WHERE idParametro = 1;