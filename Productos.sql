*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ModeloBD` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ModeloBD`;

De la tabla productos realizar las siguientes consultas:
● ¿Cuáles son los nombres de todos los productos en la base de datos?

SELECT nom_producto
FROM productos;

● ¿Cuál es la cantidad total de productos en cada categoría?

SELECT categoria, COUNT(*) AS cant_total
FROM productos
GROUP BY categoria;

● ¿Cuál es el precio de compra más alto y más bajo entre todos los productos?

SELECT MAX(precio_compra) AS precio_alto, MIN(precio_compra) AS precio_bajo
FROM productos;

● ¿Cuál es la cantidad disponible para cada producto en el inventario?

SELECT nom_producto, cant_disponible
FROM productos;

● ¿Cuál es la lista de todos los vendedores que ofrecen productos en la base de
datos?

SELECT DISTINCT vendedor
FROM productos;

● ¿Cuál es la cantidad total de productos en existencia para cada vendedor?

SELECT vendedor, SUM(cant_disponible) AS cant_total
FROM productos
GROUP BY vendedor;

● ¿Cuál es el precio de venta sugerido para cada producto en función de la
escala?

SELECT nom_producto, precio_compra * factor AS precio_sugerido
FROM productos;

● ¿Cuáles son los productos con la descripción que contiene un término
específico?

SELECT nomproducto, descripcion
FROM productos
WHERE descripcion LIKE '%término%';

● ¿Cuál es la categoría de productos que tiene el precio de venta más alto en
promedio?

SELECT categoria, AVG(precio_venta) AS precio_promedio
FROM productos
GROUP BY categoria
ORDER BY precio_promedio DESC
LIMIT 1;

● ¿Cuál es el nombre y la cantidad de productos vendidos por un vendedor en
particular?

SELECT vendedor, nom_producto, SUM(cant_vendida) AS cant_vendida
FROM ventas
WHERE vendedor = 'nom_vendedor'
GROUP BY vendedor, nom_producto;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;