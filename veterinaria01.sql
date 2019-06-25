-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.38-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para veterinaria01
CREATE DATABASE IF NOT EXISTS `veterinaria01` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `veterinaria01`;


-- Volcando estructura para tabla veterinaria01.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla veterinaria01.clientes: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`idCliente`, `nombre`, `apellidos`, `telefono`, `direccion`, `email`, `usuario`, `password`) VALUES
	(1, 'genesis', 'roa', 634049251, 'San Fermin Orcasur, Calle Corindon 18 piso 5to apto. C', 'genesisroa95@gmail.com', 'genesisr', '123'),
	(2, 'Genesis', 'Zambrano', 634049251, 'San Fermin Orcasur, Calle Corindon 18 piso 5to apto. C', 'genesisroa95@gmail.com', 'genesis', '123');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


-- Volcando estructura para tabla veterinaria01.mascotas
CREATE TABLE IF NOT EXISTS `mascotas` (
  `idMascota` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMascota` varchar(50) NOT NULL DEFAULT '0',
  `especie` varchar(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `raza` varchar(50) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMascota`),
  KEY `FK_mascota_cliente` (`idCliente`),
  CONSTRAINT `FK_mascota_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla veterinaria01.mascotas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
