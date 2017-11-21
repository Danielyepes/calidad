-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2017 a las 16:15:26
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acceptacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caso_prueba`
--

CREATE TABLE `caso_prueba` (
  `id` int(11) NOT NULL,
  `requisito` varchar(500) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `condiciones` varchar(200) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `comentarios` varchar(500) NOT NULL,
  `estado` int(11) NOT NULL,
  `id_software` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caso_prueba`
--

INSERT INTO `caso_prueba` (`id`, `requisito`, `nombre`, `descripcion`, `condiciones`, `fecha`, `comentarios`, `estado`, `id_software`) VALUES
(1, '', 'caso prueba1', 'Calcualadorea', 'x+y = z', '2017-11-06', 'funciono', 2, 7),
(2, '', 'jkdfj', 'jkfdj', 'kjfj', '2017-11-09', 'jfkjgk', 2, 7),
(4, '', 'Caso 1', 'nuevo caso', 'usuario ', '2017-11-15', 'jkjsd', 1, 8),
(5, 'Historia nutricional de un paciente', 'consultar historia nutricional', 'se realiza una consulta de la cual se debe obtner la historia nutricional del paciente', 'ambiente controlado', '2017-11-21', 'el usuario realizo la consulta con exito', 2, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software`
--

CREATE TABLE `software` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `software`
--

INSERT INTO `software` (`id`, `nombre`) VALUES
(7, 'dsdsd'),
(8, 'Software 1'),
(9, 'Software 2'),
(10, 'Notepad++'),
(11, 'Nutrisoft');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caso_prueba`
--
ALTER TABLE `caso_prueba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`id_software`);

--
-- Indices de la tabla `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caso_prueba`
--
ALTER TABLE `caso_prueba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caso_prueba`
--
ALTER TABLE `caso_prueba`
  ADD CONSTRAINT `fk` FOREIGN KEY (`id_software`) REFERENCES `software` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
