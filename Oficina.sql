*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ModeloBD` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ModeloBD`;


DROP TABLE IF EXISTS `oficinas`;

CREATE TABLE `oficinas` (
  `IdOficina` varchar(10) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Direccion1` varchar(50) NOT NULL,
  `Direccion2` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Pais` varchar(50) NOT NULL,
  `CodigoPostal` varchar(15) NOT NULL,
  `Territorio` varchar(10) NOT NULL,
  PRIMARY KEY (`IdOficina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `offices` */

insert  into `oficinas`( `IdOficina`,
  `Ciudad`,
  `Telefono`,
  `Direccion1`,
  `Direccion2`,
  `Estado`,
  `Pais`,
  `CodigoPostal`,
  `Territorio`) values 

('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),

('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),

('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),

('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),

('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),

('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),

('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

De la tabla Oficinas realizar las siguientes consultas:
● ¿Cuáles son todas las ciudades donde se encuentran las oficinas registradas?

SELECT DISTINCT Ciudad FROM oficinas;

● ¿Cuál es el número de teléfono de cada oficina en la base de datos?

SELECT Ciudad, Telefono FROM oficinas;

● ¿Cuál es la dirección completa de cada oficina, incluyendo dirección 1,
dirección 2, ciudad, estado, código postal y país?

SELECT CONCAT_WS(', ', Direccion1, Direccion2, Ciudad, Estado, CodigoPostal, Pais) AS Direccion_Completa FROM oficinas;

● ¿Cuál es el territorio asignado a cada oficina?

SELECT Ciudad, Territorio FROM oficinas;

● ¿Cuál es el número de oficinas en cada país?

SELECT Pais, COUNT(*) AS Num_Oficinas FROM oficinas GROUP BY Pais;

● ¿Cuál es el código postal de cada oficina?

SELECT Ciudad, CodigoPostal FROM oficinas;

● ¿Cuál es la lista de todas las oficinas en un estado específico?

SELECT * FROM oficinas WHERE Estado = 'nom_estado';

● ¿Cuál es el promedio de teléfonos por oficina en una ciudad específica?

SELECT Ciudad, AVG(Telefono) AS Prom_Telefonos FROM oficinas WHERE Ciudad = 'nom_ciudad';

● ¿Cuál es la lista de todas las oficinas con un territorio particular?

SELECT * FROM oficinas WHERE Territorio = 'nom_territorio';

● ¿Cuál es la lista de todas las oficinas cuya dirección contiene un término
específico?

SELECT * FROM oficinas WHERE CONCAT_WS(', ', Direccion1, Direccion2) LIKE '%termino%';



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;