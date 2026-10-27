CREATE DATABASE BancoDB;

USE Banco_DB;

CREATE TABLE Clientes (
	IdCliente INT PRIMARY KEY,
    DNI VARCHAR (8),
    Nombre VARCHAR (100),
    Ciudad VARCHAR(50)
);

INSERT INTO Clientes Values
(1,'12345678','Carlos Fajardo', 'Lima'),
(2,'87654321','Ana Ramos','Arequipa'),
(3,'45678912','Luis Flores','Trujillo');

SELECT * FROM Clientes;


CREATE TABLE Cuentas (

    IdCuenta INT PRIMARY KEY,

    NumeroCuenta VARCHAR(20),

    TipoCuenta VARCHAR(20),

    Saldo DECIMAL(10,2),

    IdCliente INT,

    FOREIGN KEY (IdCliente)
    REFERENCES clientes(IdCliente)

);

    INSERT INTO Cuentas VALUES
    (1,'001-123456','Ahorro',2500,1),
	(2,'001-654321','Corriente',1800,2),
	(3,'001-7778888','Ahorro',3200,3);

	SELECT * FROM Cuentas;


CREATE TABLE Transacciones (
	IdTransaccion INT PRIMARY KEY,
    Fecha DATE,
    TipoMovimiento VARCHAR(20),
    Monto DECIMAL(10,2),
    IdCuenta INT,
    
    FOREIGN KEY (IdCUENTA)
    REFERENCES Cuentas(IdCuenta)
);

INSERT INTO Transacciones VALUES
(1,'2026-10-01','Deposito',500,1),
(2,'2026-10-03','Retiro',200,1),
(3,'2026-10-05','Deposito',800,2),
(4,'2026-10-08','Retiro',100,3);

SELECT * FROM Transacciones;

SHOW TABLES;

SELECT

c.Nombre,
cu.NumeroCuenta,
cu.TipoCuenta,
cu.Saldo

FROM Clientes c

INNER JOIN Cuentas cu

ON c.IdCliente = cu.IdCliente;

--luego haremos el join completo

SELECT

c.Nombre,

cu.NumeroCuenta,

t.TipoMovimiento,

t.Monto,

t.Fecha

FROM Clientes c

INNER JOIN Cuentas cu
ON c.IdCliente = cu.IdCliente

INNER JOIN Transacciones t
ON cu.IdCuenta = t.IdCuenta;


SELECT

c.Nombre,
cu.NumeroCuenta,
cu.TipoCuenta,
cu.Saldo

FROM Clientes c

INNER JOIN Cuentas cu

ON c.IdCliente = cu.IdCliente;


SELECT

c.Nombre,

cu.NumeroCuenta,

t.TipoMovimiento,

t.Monto,

t.Fecha

FROM Clientes c

INNER JOIN Cuentas cu
ON c.IdCliente = cu.IdCliente

INNER JOIN Transacciones t
ON cu.IdCuenta = t.IdCuenta;


SELECT
SUM(Monto) AS TotalDepositos
FROM Transacciones
WHERE TipoMovimiento='Deposito';

SELECT
SUM(Monto) AS TotalRetiros
FROM Transacciones
WHERE TipoMovimiento='Retiro';


SELECT

c.Nombre,
cu.Saldo

FROM Clientes c

INNER JOIN Cuentas cu
ON c.IdCliente = cu.IdCliente

ORDER BY cu.Saldo DESC;


SELECT

c.Nombre,
COUNT(*) AS Movimientos

FROM Clientes c

INNER JOIN Cuentas cu
ON c.IdCliente = cu.IdCliente

INNER JOIN Transacciones t
ON cu.IdCuenta = t.IdCuenta

GROUP BY c.Nombre;