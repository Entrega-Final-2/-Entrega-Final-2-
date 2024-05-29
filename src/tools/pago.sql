-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 15:21:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pago`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CREAR_PRODUCTO` (IN `_PRODUCTO` VARCHAR(100), IN `_DESCRIPCION` VARCHAR(100))   BEGIN

INSERT INTO producto(PRODUCTO, DESCRIPCION) VALUES (_PRODUCTO, _DESCRIPCION);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINAR_PRODUCTO` (IN `_ID` INT)   BEGIN

DELETE FROM producto WHERE ID = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTAR_PRODUCTO` ()   BEGIN

SELECT * FROM producto;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICAR_PRODUCTO` (IN `_ID` INT(10), IN `_PRODUCTO` VARCHAR(100), IN `_DESCRIPCION` VARCHAR(100))   BEGIN

UPDATE producto SET PRODUCTO = _PRODUCTO, DESCRIPCION = _DESCRIPCION WHERE ID = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR_PRODUCTO` (IN `_ID` INT)   BEGIN

SELECT * FROM producto WHERE ID = _ID;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID` int(10) NOT NULL,
  `PRODUCTO` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID`, `PRODUCTO`, `DESCRIPCION`) VALUES
(1, 'CAMISA', 'BUENA CALIDAD'),
(2, 'PANTALON', 'PANTALON ORIGINAL'),
(3, 'ZAPATOS', 'LOS ZAPATOS SON ORIGINALES'),
(4, 'BUSO', 'EL BUSO ES ORIGINAL DE LA MARCA NIKE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
