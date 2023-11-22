SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `producto` (
  `nombreP` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `precio` float NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `descripccion` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `producto` (`nombreP`, `id`, `precio`, `fecha`, `descripccion`, `estado`, `imagen`) VALUES
('poke ', 8, 30000, '8/11/2022 ', 'La mejor consola de Nintento ', 'Disponible', 'https://images.wikidexcdn.net/mwuploads/wikidex/thumb/d/d5/latest/20220601144723/Car%C3%A1tula_Pok%C3%A9mon_Escarlata.png/1200px-Car%C3%A1tula_Pok%C3%A9mon_Escarlata.png'),
('Fallout 5 Goty ', 9, 50000, '20/11/2022 ', 'Edicion especial de Fallout 5  ', 'Agotado', 'https://i.blogs.es/483ca7/100817-fallout4-03/650_1200.jpg'),
('Resident Evil Village', 10, 800000, '30/11/2022 ', 'Se entrega por correo', 'Reponiendo', 'https://th.bing.com/th/id/OIP.TI7cpi9u3TdbfyQ27J4a4wHaJJ?pid=ImgDet&rs=1'),
('Switch', 11, 300000, '21/11/2022', 'llevalo donde quieras', 'Disponible', 'https://th.bing.com/th/id/OIP.16Agucnu2hUsLEI7AotWigHaEH?pid=ImgDet&rs=1'),
('PokÃ©mon Purpura', 19, 30000, '6/12/2022', 'Hazte con todos!!', 'Reponiendo', 'https://th.bing.com/th/id/R.e7bad1bcc8c08bb974633cfc872fc045?rik=Tl%2fs4ZjNk6ufVA&pid=ImgRaw&r=0'),
('PC Gamer', 20, 90000, '20/11/2022 ', 'La mejor potencia al alcance de tu mano', 'Disponible', 'https://th.bing.com/th/id/OIP.8kY6d4ZViQhpPu9xrWYZ9QHaHa?pid=ImgDet&rs=1'),
('coca', 21, 0, 'afkjnaek', 'awdkjfbwqakj', 'Reponiendo', 'kjsejfbjks');

CREATE TABLE `registro` (
  `id` int(255) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `Tipo` varchar(30) NOT NULL DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `registro` (`id`, `nombre`, `correo`, `telefono`, `contrasenia`, `Tipo`) VALUES
(1, 'Ulises ', 'rey07u@gmail.com ', '3316537263 ', '123456789 ', 'admin'),
(5, 'Edgar ', 'uils05jak@gmail.com  ', '3398456773', '12345678 ', 'admin'),
(9, 'Filurais ', '21017211@ceti.mx ', '73648364 ', '98765432183', 'admin');


ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `producto`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `registro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
