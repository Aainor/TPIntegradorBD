-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2023 a las 16:27:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `tema` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_alta` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Juan', 'Perez', 'juan@gmail.com', 'Uso revolucionario de las IA', '2024-12-01 00:00:00'),
(2, 'María', 'Domingo', 'maria@gmail.com', 'Programación y Sociedad', '2023-12-01 16:30:00'),
(3, 'Samanta', 'Ardone', 'samy@gmail.com', 'Javascript', '2025-01-01 13:00:00'),
(4, 'Samuel', 'Casas', 'sam@gmail.com', 'Java', '2023-11-20 12:30:00'),
(5, 'Franco', 'Casas', 'ark@gmail.com', 'El Arte y las IA', '2026-10-13 03:00:00'),
(6, 'Matias', 'Vilmasky', 'matt@gmail.com', 'Política en la Programación', '2024-01-05 20:00:00'),
(7, 'Melany', 'Vilmasky', 'velany@gmail.com', 'Diferencia entre Git y GitHub', '2024-01-05 22:00:00'),
(8, 'Daiana', 'Gomez', 'dg@gmail.com', 'Fotografía con IAs', '2024-05-20 19:30:00'),
(9, 'Jorge', 'Gutierrez', 'jorge@gmail.com', '¿Cómo se creó la programación?', '2025-05-20 17:30:00'),
(10, 'Angie', 'Rosales', 'ar@gmail.com', 'Programadores Argentinos en la Historia', '2023-11-08 22:30:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
