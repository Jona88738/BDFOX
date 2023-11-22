-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 02:17:42
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
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `nombreP` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `precio` float NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `descripccion` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`nombreP`, `id`, `precio`, `fecha`, `descripccion`, `estado`, `imagen`) VALUES
('poke ', 1, 30000, '8/11/2022 ', 'La mejor consola de Nintento ', 'Disponible', 'https://images.wikidexcdn.net/mwuploads/wikidex/thumb/d/d5/latest/20220601144723/Car%C3%A1tula_Pok%C3%A9mon_Escarlata.png/1200px-Car%C3%A1tula_Pok%C3%A9mon_Escarlata.png'),
('Fallout 5 Goty ', 2, 50000, '20/11/2022 ', 'Edicion especial de Fallout 5  ', 'Agotado', 'https://i.blogs.es/483ca7/100817-fallout4-03/650_1200.jpg'),
('Resident Evil Village', 3, 800000, '30/11/2022 ', 'Se entrega por correo', 'Reponiendo', 'https://th.bing.com/th/id/OIP.TI7cpi9u3TdbfyQ27J4a4wHaJJ?pid=ImgDet&rs=1'),
('Switch', 4, 300000, '21/11/2022', 'llevalo donde quieras', 'Disponible', 'https://th.bing.com/th/id/OIP.16Agucnu2hUsLEI7AotWigHaEH?pid=ImgDet&rs=1'),
('Pokemon Purpura', 5, 30000, '6/12/2022', 'Hazte con todos!!', 'Reponiendo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmXSu2ix-dlhnSVSJarvQ6kjPcx1rsgy6Hmt8fAyrKcm3_kI147CR6M1B45yFWgPWsP4M&usqp=CAU'),
('PC Gamer', 6, 90000, '20/11/2022 ', 'La mejor potencia al alcance de tu mano', 'Disponible', 'https://th.bing.com/th/id/OIP.8kY6d4ZViQhpPu9xrWYZ9QHaHa?pid=ImgDet&rs=1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(255) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `Tipo` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombre`, `correo`, `telefono`, `contrasenia`, `Tipo`) VALUES
(1, 'Ulises ', 'rey07u@gmail.com ', '3316537263 ', '123456789 ', 1),
(2, 'Edgar ', 'uils05jak@gmail.com  ', '3398456773', '12345678 ', 1),
(3, 'Filurais  ', '21017211@ceti.mx  ', '73648364  ', '987654321', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
