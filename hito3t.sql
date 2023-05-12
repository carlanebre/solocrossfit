-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-05-2023 a las 21:48:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hito3t`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `plan` varchar(250) NOT NULL,
  `peso` int(11) NOT NULL,
  `category` varchar(600) NOT NULL,
  `eventos` int(11) NOT NULL,
  `horas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `email`, `plan`, `peso`, `category`, `eventos`, `horas`) VALUES
(81, 'Carla', 'carla@gmail.com', 'Elite', 51, 'Peso pluma (66kg)', 3, 4),
(83, 'Pablo', 'pablo@gmail.com', 'Principiante', 77, 'Peso ligero (73kg)', 0, 1),
(84, 'Lorena', 'lorena@gmail.com', 'Intermedio', 96, 'Peso mediano (90kg)', 5, 2),
(90, 'Daniel', 'daniel@gmail.com', 'Principiante', 113, 'Peso pesado (>100kg)', 0, 18),
(92, 'Lucas', 'lucas@gmail.com', 'Intermedio', 85, 'Peso mediano ligero (81kg)', 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
