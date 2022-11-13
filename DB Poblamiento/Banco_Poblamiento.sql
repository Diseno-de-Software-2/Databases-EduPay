use SistemaBancos;


INSERT INTO banco(nombre) VALUES ('Western Bank');
INSERT INTO banco(nombre) VALUES ('Eastern Bank');
INSERT INTO cuenta(numero, nombre_titular,email, saldo, id_banco) VALUES (1234567891011121, 'Juan David Castillo Sierra', 'juanchito@gmail.com', 500000, 1);

-- Cuenta de la universidad
INSERT INTO cuenta(numero, nombre_titular,email, saldo, id_banco) VALUES (1111111111111111, 'EduPay', 'edupay@gmail.com', 0, 2);
INSERT INTO tarjeta(numero, fecha_expiracion, cvv, proveedor, credito, id_cuenta) VALUES (1234567891011122, '2020-12-31', 123, 'Visa', 500000, 1);