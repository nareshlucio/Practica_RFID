-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2019 a las 19:45:19
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rfid`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `Id` int(11) NOT NULL,
  `Id_Tarjeta` varchar(40) NOT NULL,
  `Fecha` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rfid`
--

CREATE TABLE `rfid` (
  `ID` int(20) NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `ID_Card` varchar(50) NOT NULL,
  `Valor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rfid`
--

INSERT INTO `rfid` (`ID`, `Fecha`, `ID_Card`, `Valor`) VALUES
(22, '2019-08-08 18:50:56', '104', '64'),
(23, '2019-08-08 19:08:05', '104', '52'),
(24, '2019-08-08 19:10:20', '64', '32'),
(25, '2019-08-08 19:17:04', '1144917832', '32'),
(26, '2019-08-08 19:17:08', '1144917832', '32'),
(27, '2019-08-08 19:17:23', '1144917832', '32'),
(28, '2019-08-08 19:42:01', '871691152', '52'),
(29, '2019-08-08 19:42:34', '871691152', '52'),
(30, '2019-08-08 19:51:10', '871691152', '52'),
(31, '2019-08-08 19:51:23', '1144917832', '32'),
(32, '2019-08-08 19:51:56', '871691152', '52'),
(33, '2019-08-08 19:52:38', '871691152', '52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(10) NOT NULL,
  `Apellido_P` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellido_M` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `Genero` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `Edad` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo_Usuario` int(5) NOT NULL,
  `Id_Tarjeta` int(20) NOT NULL,
  `Pass_Tarj` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Apellido_P`, `Apellido_M`, `Nombre`, `Usuario`, `Correo`, `Password`, `Genero`, `Telefono`, `Edad`, `Tipo_Usuario`, `Id_Tarjeta`, `Pass_Tarj`) VALUES
(1, 'Admins', 'Adminsr', 'Admin', 'Admin', 'Admin', '$2y$10$gSdNR/LgXW94e5bCkvEtgOPGqXJZCrmp2u5i6cngGVRUwtRJRRKMi', 'Hombre', '2176235487', '30', 1, 104, 52),
(2, 'Lucio', 'LÃ³pez', 'David Naresh', 'Poti7652', 'poti9976@gmail.com', '$2y$10$nWKhIrKrAvwgWaB9Ga31qu3TZwGLBOVifNRpvefM5t5okw6OFv4Oi', 'Hombre', '5552155285', '20', 2, 64, 32);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `rfid`
--
ALTER TABLE `rfid`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD UNIQUE KEY `Usuario_2` (`Usuario`),
  ADD KEY `Usuario` (`Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rfid`
--
ALTER TABLE `rfid`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
