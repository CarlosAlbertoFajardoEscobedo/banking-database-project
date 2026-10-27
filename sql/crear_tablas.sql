CREATE TABLE Clientes (

   IdCliente INT PRIMARY KEY,
   DNI VARCHAR(8),
   Nombre VARCHAR(100),
   Ciudad VARCHAR(50)

);

CREATE TABLE Cuentas (

   IdCuenta INT PRIMARY KEY,
   NumeroCuenta VARCHAR(20),
   TipoCuenta VARCHAR(20),
   Saldo DECIMAL(10,2),
   IdCliente INT,

   FOREIGN KEY (IdCliente)
   REFERENCES Clientes(IdCliente)

);

CREATE TABLE Transacciones (

   IdTransaccion INT PRIMARY KEY,
   Fecha DATE,
   TipoMovimiento VARCHAR(20),
   Monto DECIMAL(10,2),
   IdCuenta INT,

   FOREIGN KEY (IdCuenta)
   REFERENCES Cuentas(IdCuenta)

);