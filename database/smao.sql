-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2022 a las 00:19:20
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `smao`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripción` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicial_puesta_marcha` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ultima_fecha_puesta_marcha` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ultima_fecha_mantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `descripción`, `serial`, `fecha_inicial_puesta_marcha`, `ultima_fecha_puesta_marcha`, `ultima_fecha_mantenimiento`, `createdAt`, `updatedAt`) VALUES
(1, 'hp', 'computadora', '225845', '02/08/20', '26/06/21', '09/05/22', '2022-07-09 20:40:24', '2022-07-09 20:40:24'),
(2, 'samsung', 'televisor', '65664', '25/09/18', '06/07/20', '29/08/22', '2022-07-09 20:43:28', '2022-07-09 20:43:28'),
(3, 'hp', 'impresora', '86874', '29/10/10', '24/11/15', '24/03/19', '2022-07-09 20:44:24', '2022-07-09 20:44:24'),
(4, 'genius', 'mouse', '65485', '26/12/22', '24/01/22', '26/05/15', '2022-07-09 20:44:59', '2022-07-09 20:44:59'),
(5, 'genius', 'teclado', '687654', '20/09/20', '06/02/16', '12/11/19', '2022-07-09 20:45:35', '2022-07-09 20:45:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id` int(11) NOT NULL,
  `id_mantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_equipo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_planificada_mantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio_mantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_final_mantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatus_mantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipoMantenimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id`, `id_mantenimiento`, `id_equipo`, `fecha_planificada_mantenimiento`, `fecha_inicio_mantenimiento`, `fecha_final_mantenimiento`, `estatus_mantenimiento`, `tipoMantenimiento`, `createdAt`, `updatedAt`) VALUES
(1, '68767', '225845', '03/05/22', '01/05/22', '09/05/22', 'exitoso', 'correctivo', '2022-07-09 20:54:55', '2022-07-09 20:54:55'),
(2, '687684', '65664', '05/08/22', '10/08/22', '29/08/22', 'exitoso', 'preventivo', '2022-07-09 20:55:23', '2022-07-09 20:55:23'),
(3, '32546', '86874', '16/03/19', '16/03/19', '24/03/19', 'exitoso', 'correctivo', '2022-07-09 20:55:54', '2022-07-09 20:55:54'),
(4, '658768', '65485', '08/05/15', '13/05/15', '26/05/15', 'exitoso', 'preventivo', '2022-07-09 20:56:15', '2022-07-09 20:56:15'),
(5, '6876975', '687654', '08/11/19', '08/11/19', '12/11/19', 'exitoso', 'preventivo', '2022-07-09 20:58:42', '2022-07-09 20:58:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `contrasena`, `rol`, `createdAt`, `updatedAt`) VALUES
(1, 'Atilio', 'Garcia', 'AtiGar123', '123456', 'admin', '2022-07-09 21:41:21', '2022-07-09 21:41:21'),
(2, 'Genesis', 'Castillo', 'GeneCasti', 'abcdef', 'admin', '2022-07-09 21:41:42', '2022-07-09 21:41:42'),
(3, 'Genesis', 'Vasquez', 'VasquezG3n3', 'HolaMundo', 'admin', '2022-07-09 21:41:56', '2022-07-09 21:41:56'),
(4, 'Pedro', 'Gonzalez', 'GonzaP', '30.291.291', 'personal', '2022-07-09 21:42:29', '2022-07-09 21:42:29'),
(5, 'Juan', 'Ocanto', 'MagicDonkey', 'MathIsC00L', 'personal', '2022-07-09 21:43:54', '2022-07-09 21:43:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
