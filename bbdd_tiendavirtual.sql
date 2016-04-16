-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2016 a las 22:56:06
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbdd_tiendavirtual`
--
CREATE DATABASE IF NOT EXISTS `bbdd_tiendavirtual` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bbdd_tiendavirtual`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_administrador`
--

CREATE TABLE IF NOT EXISTS `tbl_administrador` (
  `adm_id` int(3) NOT NULL,
  `adm_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adm_DNI` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `adm_direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adm_cp` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `adm_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adm_telefono` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `adm_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adm_estado` int(1) NOT NULL,
  `rol_id` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_administrador`
--

INSERT INTO `tbl_administrador` (`adm_id`, `adm_nombre`, `adm_DNI`, `adm_direccion`, `adm_cp`, `adm_email`, `adm_telefono`, `adm_password`, `adm_estado`, `rol_id`) VALUES
(1, 'Administrador', '43182944Y', 'Avinguda Carrilet 200', '08213', 'administrador@gmail.com', '663119228', 'admin123', 0, 1),
(2, 'Administrador2', '43182944V', 'Avinguda Carrilet 202', '08213', 'administrador2@gmail.com', '663999228', 'admin456', 0, 1),
(3, 'Administrador3', '12345678Y', '123', '12345', '1232@123.es', '1234556', '123', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_cliente` (
  `cli_id` int(3) NOT NULL,
  `cli_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cli_DNI` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `cli_direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cp` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cli_telefono` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `cli_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cli_estado` int(1) NOT NULL,
  `rol_id` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`cli_id`, `cli_nombre`, `cli_DNI`, `cli_direccion`, `cli_cp`, `cli_email`, `cli_telefono`, `cli_password`, `cli_estado`, `rol_id`) VALUES
(1, 'Raul Perez', '46921359E', 'Rambla de la Marina', '08923', 'raul.perez@gmail.com', '642532743', 'raul123', 0, 1),
(2, 'Felipe Iglesias', '53885533L', 'Mare de Deu de Bellvitge', '08242', 'felipe.iglesias@gmail.com', '623416822', 'felipe123', 0, 1),
(3, '123', '12345678Y', '123', '12345', '123@asd.es', '1234556', '123', 1, 1),
(4, 'Lidia Marquez', '92423423Y', 'Esadkjasid', '08901', 'asdjasjidas@gmail.com', '644293484', '1234', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compra`
--

CREATE TABLE IF NOT EXISTS `tbl_compra` (
  `com_id` int(3) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_cantidad` int(3) NOT NULL,
  `prod_id` int(3) NOT NULL,
  `cli_id` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_compra`
--

INSERT INTO `tbl_compra` (`com_id`, `com_fecha`, `com_cantidad`, `prod_id`, `cli_id`) VALUES
(1, '2016-04-21 09:15:44', 4, 1, 1),
(2, '2016-04-16 09:16:00', 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura`
--

CREATE TABLE IF NOT EXISTS `tbl_factura` (
  `fac_id` int(3) NOT NULL,
  `fac_fecha` datetime NOT NULL,
  `fac_total` double NOT NULL,
  `cli_id` int(3) NOT NULL,
  `com_id` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_factura`
--

INSERT INTO `tbl_factura` (`fac_id`, `fac_fecha`, `fac_total`, `cli_id`, `com_id`) VALUES
(1, '2016-04-19 09:17:02', 40.4, 1, 1),
(2, '2016-04-27 09:17:20', 20, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_producto` (
  `pro_id` int(3) NOT NULL,
  `pro_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro_cantidad` int(3) NOT NULL,
  `pro_precio` int(3) NOT NULL,
  `pro_estado` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`pro_id`, `pro_nombre`, `pro_cantidad`, `pro_precio`, `pro_estado`) VALUES
(1, 'Se venden pinzas para tender', 101, 6, 0),
(2, 'Se venden peines para calvos', 50, 20, 0),
(3, '123', 12, 11, 0),
(4, '1234', 12, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE IF NOT EXISTS `tbl_rol` (
  `rol_id` int(3) NOT NULL,
  `rol_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`rol_id`, `rol_nombre`) VALUES
(1, 'Usuario'),
(2, 'Administrador'),
(3, 'Root');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_administrador`
--
ALTER TABLE `tbl_administrador`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indices de la tabla `tbl_compra`
--
ALTER TABLE `tbl_compra`
  ADD PRIMARY KEY (`com_id`);

--
-- Indices de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_administrador`
--
ALTER TABLE `tbl_administrador`
  MODIFY `adm_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `cli_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_compra`
--
ALTER TABLE `tbl_compra`
  MODIFY `com_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  MODIFY `fac_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `pro_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  MODIFY `rol_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
