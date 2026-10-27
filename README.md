Banking Database Analysis with MySQL and Power BI

Descripción
Proyecto de análisis bancario desarrollado con MySQL y Power BI.

El proyecto permite gestionar información de clientes, cuentas bancarias y transacciones financieras mediante un modelo de datos relacional.

Objetivo
Analizar información financiera y construir indicadores para la toma de decisiones utilizando consultas SQL y visualizaciones en Power BI.

Tecnologías Utilizadas
MySQL
Power BI
GitHub
Modelo de Datos
Tabla Clientes
cliente_id
nombre
ciudad
fecha_registro
estado
Tabla Cuentas
cuenta_id
cliente_id
tipo_cuenta
saldo
Tabla Transacciones
transaccion_id
cuenta_id
monto
tipo
fecha
Relaciones
Clientes (1) → (N) Cuentas

Cuentas (1) → (N) Transacciones

Consultas SQL Aplicadas
SELECT
INSERT
UPDATE
SUM()
COUNT()
GROUP BY
ORDER BY
INNER JOIN
Dashboard
Indicadores desarrollados:

Total Clientes
Saldo Total
Total Transacciones
Visualizaciones:

Clientes por Ciudad
Saldo por Tipo de Cuenta
Depósitos vs Retiros
Autor
Carlos

Egresado de Computación e Informática.

Proyecto desarrollado como práctica de análisis de bases de datos, SQL y Power BI.

Habilidades Demostradas
Modelado de Bases de Datos
SQL
JOIN
Relaciones 1:N
Power BI
Visualización de Datos
Análisis Financiero
GitHub