-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2019 a las 00:07:29
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_producto`
--

CREATE TABLE `t_producto` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pro_precio` int(11) NOT NULL,
  `pro_escripcion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `pro_foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_producto`
--

INSERT INTO `t_producto` (`pro_id`, `pro_nombre`, `pro_precio`, `pro_escripcion`, `pro_foto`) VALUES
(26, 'producto 1', 1000, 'ejemplo de un producto ; aqui es su descripcion donde se habla de sus caracteristicas, tamaÃ±os, disponibilidad,etc', 'sena.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_sugerencias`
--

CREATE TABLE `t_sugerencias` (
  `su_id` int(11) NOT NULL,
  `su_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `su_correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `su_telefono` int(11) NOT NULL,
  `su_mensaje` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_sugerencias`
--

INSERT INTO `t_sugerencias` (`su_id`, `su_nombre`, `su_correo`, `su_telefono`, `su_mensaje`) VALUES
(1, 'fran', 'fran@gmail.com', 2147483647, 'por fin?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usarios`
--

CREATE TABLE `t_usarios` (
  `usu_id` int(11) NOT NULL,
  `usu_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usu_correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usu_telefono` int(11) NOT NULL,
  `usu_password` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `usu_rol` tinyint(4) NOT NULL,
  `usu_fch_rgt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_usarios`
--

INSERT INTO `t_usarios` (`usu_id`, `usu_nombre`, `usu_correo`, `usu_telefono`, `usu_password`, `usu_rol`, `usu_fch_rgt`) VALUES
(11, 'admin', 'admin@gmail.com', 123456, '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '2019-05-07'),
(80, 'admin2', 'admin2@gmail.com', 12, '7b52009b64fd0a2a49e6d8a939753077792b0554', 1, '2019-06-27'),
(99, 'Juan', 'juan@gmail.com', 12, '7b52009b64fd0a2a49e6d8a939753077792b0554', 2, '2019-07-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_producto`
--
ALTER TABLE `t_producto`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indices de la tabla `t_sugerencias`
--
ALTER TABLE `t_sugerencias`
  ADD PRIMARY KEY (`su_id`);

--
-- Indices de la tabla `t_usarios`
--
ALTER TABLE `t_usarios`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_producto`
--
ALTER TABLE `t_producto`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `t_sugerencias`
--
ALTER TABLE `t_sugerencias`
  MODIFY `su_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `t_usarios`
--
ALTER TABLE `t_usarios`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
