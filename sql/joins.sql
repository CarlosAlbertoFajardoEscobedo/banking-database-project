-- JOIN Clientes y Cuentas

SELECT

c.Nombre,
cu.NumeroCuenta,
cu.TipoCuenta,
cu.Saldo

FROM Clientes c

INNER JOIN Cuentas cu

ON c.IdCliente = cu.IdCliente;


-- JOIN Clientes + Cuentas + Transacciones

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