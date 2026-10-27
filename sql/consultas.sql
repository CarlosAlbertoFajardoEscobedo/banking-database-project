-- Total Depositado

SELECT
SUM(Monto) AS TotalDepositos
FROM Transacciones
WHERE TipoMovimiento='Deposito';


-- Total Retirado

SELECT
SUM(Monto) AS TotalRetiros
FROM Transacciones
WHERE TipoMovimiento='Retiro';


-- Cliente con mayor saldo

SELECT

c.Nombre,
cu.Saldo

FROM Clientes c

INNER JOIN Cuentas cu
ON c.IdCliente = cu.IdCliente

ORDER BY cu.Saldo DESC;


-- Movimientos por Cliente

SELECT

c.Nombre,
COUNT(*) AS Movimientos

FROM Clientes c

INNER JOIN Cuentas cu
ON c.IdCliente = cu.IdCliente

INNER JOIN Transacciones t
ON cu.IdCuenta = t.IdCuenta

GROUP BY c.Nombre;