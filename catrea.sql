-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2019 a las 17:55:19
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catrea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspirantes`
--

CREATE TABLE `aspirantes` (
  `id_aspirante` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` varchar(30) NOT NULL,
  `estadocivil` varchar(20) NOT NULL,
  `nivelestudio` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aspirantes`
--

INSERT INTO `aspirantes` (`id_aspirante`, `nombre`, `apellido`, `dni`, `estadocivil`, `nivelestudio`, `localidad`, `telefono`, `mail`) VALUES
(18, 'flor', 'lopez', '39234567', 'soltero', 'secundario', 'caba', '1123344567', 'florlopes@gmail.com'),
(19, 'francisco', 'malamud', '40987654', 'soltero', 'primario', 'caba', '1123567833', 'francisco@gmail.com'),
(20, 'jesica', 'alvarado', '43789000', 'soltero', 'primario', 'caba', '1190578833', 'jesica@gmail.com'),
(21, 'carlos', 'conrado', '42567890', 'soltero', 'primario', 'caba', '1120007878', 'carlos@gmail.com'),
(22, 'renzo', 'fabro', '43000893', 'soltero', 'secundario', 'san isidro', '1190907878', 'fabro@gmail.com'),
(23, 'bruno', 'richi', '42345621', 'soltero', 'secundario', 'caba', '1178111122', 'bruno@gmail.com'),
(24, 'analia', 'terri', '40987111', 'soltero', 'secundario', 'lanus', '1188992233', 'analia@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `duracion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre`, `duracion`) VALUES
(8, 'soldado voluntario', '10'),
(9, 'suboficial', '2'),
(10, 'oficial', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadores`
--

CREATE TABLE `operadores` (
  `dni` int(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `contrasenia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operadores`
--

INSERT INTO `operadores` (`dni`, `nombre`, `apellido`, `contrasenia`) VALUES
(22425636, 'silvina', 'paez', 'Espinosa'),
(38234567, 'juan', 'rivera', 'Espinosa'),
(39789345, 'estefania', 'ucedo', 'Espinosa'),
(94847474, 'pablo', 'gonzalez', 'Espinosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripciones`
--

CREATE TABLE `preinscripciones` (
  `id_preinscripcion` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `id_carrera` int(20) NOT NULL,
  `id_operador` int(20) NOT NULL,
  `id_aspirante` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `preinscripciones`
--

INSERT INTO `preinscripciones` (`id_preinscripcion`, `fecha`, `id_carrera`, `id_operador`, `id_aspirante`) VALUES
(3, '2019-11-17', 8, 94847474, 18),
(4, '2019-11-18', 8, 22425636, 19),
(5, '2019-11-18', 9, 22425636, 20),
(6, '2019-11-18', 9, 22425636, 21),
(7, '2019-11-18', 10, 22425636, 23),
(8, '2019-11-18', 10, 22425636, 22),
(9, '2019-11-18', 10, 22425636, 24);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aspirantes`
--
ALTER TABLE `aspirantes`
  ADD PRIMARY KEY (`id_aspirante`),
  ADD UNIQUE KEY `id_postulante` (`id_aspirante`),
  ADD UNIQUE KEY `id_postulante_2` (`id_aspirante`),
  ADD UNIQUE KEY `id_postulante_3` (`id_aspirante`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `operadores`
--
ALTER TABLE `operadores`
  ADD PRIMARY KEY (`dni`) USING BTREE;

--
-- Indices de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  ADD PRIMARY KEY (`id_preinscripcion`),
  ADD KEY `id_carrera` (`id_carrera`),
  ADD KEY `id_operador` (`id_operador`),
  ADD KEY `id_aspirante` (`id_aspirante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aspirantes`
--
ALTER TABLE `aspirantes`
  MODIFY `id_aspirante` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  MODIFY `id_preinscripcion` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  ADD CONSTRAINT `preinscripciones_ibfk_1` FOREIGN KEY (`id_aspirante`) REFERENCES `aspirantes` (`id_aspirante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
