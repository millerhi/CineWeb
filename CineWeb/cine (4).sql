-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2021 a las 17:38:00
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `codigoactor` char(5) NOT NULL,
  `nombre` char(40) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`codigoactor`, `nombre`, `estado`) VALUES
('00124', 'Cara Delevigne', 'V'),
('00202', ' Dolores Fonzi', 'V'),
('00204', 'Jennifer Lopez', 'V'),
('03020', 'Eric Edelstein', 'V'),
('06087', 'Stephen Sommers', 'V'),
('11111', ' Ana Silvia', 'V'),
('11114', 'Demetri Martin', 'V'),
('12222', 'Charlize Theron', 'V'),
('13333', 'Chloe Grace', 'V'),
('14157', 'Tom Cruise', 'V'),
('22222', 'Camila Sodi', 'V'),
('22312', 'Devon Sawa', 'F'),
('25412', 'Jaden Smith', 'V'),
('29191', 'Emilio Vodanovich', 'V'),
('29299', ' Carlos Valencia', 'V'),
('33333', 'Finn el humano', 'V'),
('33988', 'James Bond', 'V'),
('34211', 'Jose Restrepo', 'V'),
('34234', 'John Sams', 'V'),
('44444', 'Jake el perro', 'V'),
('55445', 'Bobby Moynihan', 'V'),
('55555', 'Anne Selcoe', 'V'),
('55887', 'Robert de Niro', 'V'),
('66666', 'Cory David', 'V'),
('77777', 'Christian J', 'V'),
('88888', 'Bart Johnson', 'V'),
('98786', ' Camille Sullivan', 'F'),
('99999', 'Malachi Barton', 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actorpelicula`
--

CREATE TABLE `actorpelicula` (
  `codigoactor` char(5) NOT NULL,
  `idpelicula` int(5) UNSIGNED ZEROFILL NOT NULL,
  `estado` char(1) NOT NULL,
  `id` int(5) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actorpelicula`
--

INSERT INTO `actorpelicula` (`codigoactor`, `idpelicula`, `estado`, `id`) VALUES
('00204', 00005, 'F', 00002),
('06087', 00009, 'V', 00005),
('14157', 00010, 'V', 00006),
('06087', 00007, 'V', 00007),
('33988', 00009, 'V', 00008),
('55887', 00005, 'V', 00009),
('14157', 00005, 'V', 00010),
('03020', 00011, 'V', 00011),
('55445', 00011, 'V', 00012),
('11114', 00011, 'V', 00013),
('25412', 00013, 'V', 00014),
('00124', 00013, 'V', 00015),
('33988', 00005, 'V', 00016),
('88888', 00014, 'V', 00017),
('29191', 00030, 'V', 00020),
('00202', 00030, 'V', 00021),
('88888', 00031, 'V', 00022),
('00204', 00031, 'V', 00023),
('34211', 00032, 'V', 00024),
('29299', 00032, 'V', 00025),
('11111', 00033, 'V', 00026),
('22222', 00033, 'V', 00027),
('33333', 00034, 'V', 00028),
('44444', 00034, 'V', 00029),
('66666', 00035, 'V', 00030),
('55555', 00035, 'V', 00031),
('77777', 00036, 'V', 00032),
('99999', 00036, 'V', 00033),
('12222', 00037, 'V', 00034),
('13333', 00037, 'V', 00035);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `codigodirector` char(10) NOT NULL,
  `nombre` char(40) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`codigodirector`, `nombre`, `estado`) VALUES
('', '', 'F'),
('06050', 'esteban muÃƒÆ’Ã‚Â±oz', 'F'),
('10145', 'john carpenter', 'V'),
('11111', 'Ang Lee', 'V'),
('20201', 'Sam Raimy', 'V'),
('20214', ' Mitja Okorn', 'V'),
('22222', 'Larry leichliter', 'V'),
('23423', 'Claudia Llosa', 'V'),
('23427', 'Rodrigo Fiallega', 'V'),
('33333', 'James Temple', 'V'),
('38282', 'Shawn Linden', 'F'),
('44444', 'Alex Zamm', 'V'),
('46451', 'Daniel Chong', 'V'),
('46791', 'Federico Fellini', 'V'),
('55555', 'Conrad Vernon', 'V'),
('72921', 'Woody Allen', 'V'),
('88789', 'Manny Hernandez', 'V'),
('88889', 'John Berardo', 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directorpelicula`
--

CREATE TABLE `directorpelicula` (
  `codigodirector` char(10) NOT NULL,
  `idpelicula` int(5) UNSIGNED ZEROFILL NOT NULL,
  `estado` char(1) NOT NULL,
  `id` int(5) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `directorpelicula`
--

INSERT INTO `directorpelicula` (`codigodirector`, `idpelicula`, `estado`, `id`) VALUES
('20201', 00007, 'V', 00001),
('10145', 00010, 'V', 00002),
('10145', 00005, 'V', 00004),
('11111', 00005, 'V', 00005),
('46791', 00009, 'V', 00006),
('11111', 00010, 'V', 00008),
('20214', 00013, 'V', 00009),
('88889', 00014, 'V', 00010),
('88789', 00011, 'V', 00011),
('23423', 00030, 'V', 00013),
('23423', 00031, 'V', 00014),
('88889', 00032, 'V', 00015),
('23427', 00033, 'V', 00016),
('22222', 00034, 'V', 00017),
('33333', 00035, 'V', 00018),
('44444', 00036, 'V', 00019),
('55555', 00037, 'V', 00020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `codigogenero` char(10) NOT NULL,
  `nombre` char(40) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`codigogenero`, `nombre`, `estado`) VALUES
('11111', 'accion', 'V'),
('22222', 'drama', 'V'),
('33333', 'terror', 'V'),
('44444', 'infantil', 'V'),
('55555', 'aventura', 'V'),
('66666', 'ciencia ficcion', 'V'),
('77777', 'romance', 'V'),
('88888', 'suspenso', 'V'),
('99999', 'comedia', 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generopelicula`
--

CREATE TABLE `generopelicula` (
  `codigogenero` char(10) NOT NULL,
  `idpelicula` int(5) UNSIGNED ZEROFILL NOT NULL,
  `estado` char(1) NOT NULL,
  `id` int(5) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generopelicula`
--

INSERT INTO `generopelicula` (`codigogenero`, `idpelicula`, `estado`, `id`) VALUES
('11111', 00009, 'V', 00001),
('22222', 00005, 'V', 00002),
('33333', 00007, 'V', 00003),
('44444', 00010, 'V', 00005),
('55555', 00011, 'V', 00006),
('77777', 00005, 'V', 00007),
('77777', 00013, 'V', 00008),
('44444', 00011, 'V', 00009),
('66666', 00009, 'V', 00010),
('33333', 00014, 'V', 00011),
('22222', 00030, 'V', 00014),
('88888', 00030, 'V', 00015),
('33333', 00030, 'V', 00016),
('44444', 00031, 'V', 00017),
('88888', 00032, 'V', 00018),
('33333', 00033, 'V', 00019),
('44444', 00034, 'V', 00020),
('55555', 00035, 'V', 00021),
('99999', 00036, 'V', 00022),
('44444', 00037, 'V', 00023),
('99999', 00037, 'V', 00024);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `usuarioing` char(20) NOT NULL,
  `claveing` char(40) NOT NULL,
  `cedula` char(10) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`usuarioing`, `claveing`, `cedula`, `estado`) VALUES
('dilanjaramillo', '90fbbcf2b72b5973ae42cd3a19ab4ae8a1bd210b', '1000441502', 'V'),
('camilosanchez', '30b6b062c2ed1087376a319a48cc5facbeb414ed', '1254870152', 'V'),
('camila', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1316232772', 'V'),
('samuel', '7c4a8d09ca3762af61e59520943dc26494f8941b', '6541954685', 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idMenu` char(3) NOT NULL,
  `nombreMenu` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idMenu`, `nombreMenu`) VALUES
('001', 'Actor'),
('002', 'Director'),
('003', 'Género'),
('004', 'Película'),
('005', 'Actorpelícula'),
('006', 'Directorpelícula'),
('007', 'Géneropelícula'),
('008', 'Usuario'),
('009', 'Sesión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `idpelicula` int(5) UNSIGNED ZEROFILL NOT NULL,
  `titulooriginal` char(60) NOT NULL,
  `titulolatino` char(60) NOT NULL,
  `resena` varchar(400) NOT NULL,
  `imagen` char(100) NOT NULL,
  `tipo` char(10) NOT NULL,
  `tamano` int(11) NOT NULL,
  `publicacion` year(4) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`idpelicula`, `titulooriginal`, `titulolatino`, `resena`, `imagen`, `tipo`, `tamano`, `publicacion`, `estado`) VALUES
(00005, 'Clouds', 'Nubes', 'Zach Sobiech de 17 anos es un divertido estudiante con talento musical nato Pero pocas semanas despues de años de iniciar su ultimo año su mundo se viene abajo cuando descubre que su cancer se extendio dejandolo con apenas unos meses de vida Con el limitado tiempo que le queda el y su mejor amiga y companera escritora Sammy deciden seguir sus suenos y finalmente lanzar un album				 				 ', '../pelicula/clouds.jpg', 'image/jpeg', 71038, 2020, 'V'),
(00007, 'The Devils Dolls', ' La muñeca vudú', 'Luego de la caza de un asesino en serie una antigua maldicion consume a una ciudad causando una serie de asesinatos brutales y poniendo a un detective contra reloj para salvar la vida de su hija				 ', '../pelicula/la-muneca-vudu.jpg', 'image/jpeg', 95634, 2019, 'V'),
(00009, 'Nueva York sin salida', ' Manhattan sin salida castellano', 'Durante la busqueda de un duo de asesinos de policias el detective Andre Davis comienza a descubrir una masiva e inesperada conspiracion y debe decidir a quien persigue y quien lo estaba persiguiendo a el				 ', '../pelicula/nueva-york-sin-salida-4k.jpg', 'image/jpeg', 85480, 2019, 'V'),
(00010, 'Ben 10 Versus el Universo', 'Ben 10 contra el Universo', 'Uno de los villanos mas temibles de la galaxia tiene la intencion de acabar con la humanidad Asi que Ben 10 tendra que viajar al espacio exterior donde se vera en la necesidad de luchar contra el convirtiendose en la batalla mas importante y grande de su vida', '../pelicula/ben-10-versus-the-universe.jpg', 'image/jpeg', 61723, 2020, 'V'),
(00011, 'We Bare Bears The Movie', 'Escandalosos La Pelicula', 'la historia relata de tres osos los \r\ncuales viven en una sociedad donde se relacionan con humanos tratando de encajar con las personas de una manera algo rara				 				 ', '../pelicula/we-bare-bears-the-movie.jpg', 'image/jpeg', 68473, 2020, 'V'),
(00013, 'life in a year', 'toda una vida en un año', 'Daryn de 17 anios se entera de que su novia se está muriendo y se propone brindarle las experiencias de toda una vida en el anio que le queda por vivir', '../pelicula/lifeinayear.jpg', 'image/jpeg', 91312, 2021, 'V'),
(00014, 'Initiation', 'Iniciacion', 'Una ola de asesinatos desata el pánico en la universidad de Whiton. Todos los crímenes tienen como nexo las redes sociales, y tres amigas de una sororidad deciden investigarlos, poniendo al descubierto los secretos más oscuros de la academia.', '../pelicula/initiation.jpg', 'image/jpeg', 103937, 2021, 'V'),
(00029, 'Way Down', ' Comienza la cuenta atrás para el robo del siglo', 'Hay un banco completamente distinto a cualquier otro absolutamente inexpugnable Nadie ha podido robar ese banco no existen planos ni datos y nadie sabe de qué manera se ha construido la cámara acorazada de su interior El ingeniero Thom Laybrick no tiene miedo a nada lo único que piensa es en entrar en esa cámara acorazada y robar un misterioso objeto que hay en su interior Un objeto que sólo estar', '../pelicula/way-down.jpg', 'image/jpeg', 57506, 2021, 'F'),
(00030, ' Fever Dream', 'Distancia de rescate', 'Una mujer llamada Amanda pasa las vacaciones en un tranquilo pueblo argentino con su pequeña hija Nina Siempre preocupada por el bienestar de su hija calcula constantemente la distancia de rescate necesaria para protegerla Pronto descubre que las cosas que la rodean no son como parecen', '../pelicula/distancia de rescate.jpg', 'image/jpeg', 66363, 2021, 'V'),
(00031, ' Catalina la Catrina', ' Catalina la Catrina', 'Catalina vive en el inframundo y sueña con ser una agente que conecte a los vivos con sus familiares fallecidos Cuando el Día de Muertos está en riesgo de no celebrarse nunca más ella deberá romper todas las reglas posibles para rescatar al pan de muerto y el chocolatito caliente de esta maravillosa tradición', '../pelicula/catalina la catrina.jpg', 'image/jpeg', 83848, 2021, 'V'),
(00032, 'Submersible', ' Sumergible', 'Un narco submarino hecho a mano está a punto de hundirse y perder su preciosa carga debido a una falla mecánica Los tres tripulantes se ven obligados a abrir la cabina de carga prohibida para distribuir el peso y salvar el barco Junto a la carga encuentran un obsequio especial para el comprador una niña amordazada y en pésimo estado El bote apenas lo suficientemente grande para tres', '../pelicula/sumergible.jpg', 'image/jpeg', 102181, 2020, 'V'),
(00033, 'THE EXORCISM OF CARMEN FARÍAS', 'El Exorcismo de Carmen Farías', 'Carmen descubre que su abuela le ha dejado algo más que una casa como herencia', '../pelicula/el exorcismo de carmen farias.jpg', 'image/jpeg', 54615, 2021, 'V'),
(00034, 'Adventure Time', 'Hora de Aventuras', 'Regresa al Mundo de Ooo con nuevos e inolvidables especiales de Hora de Aventuras Una miniserie que consta de cuatro episodios estando cada uno centrado en un personaje', '../pelicula/hora de aventuras.jpg', 'image/jpeg', 47137, 2020, 'V'),
(00035, 'The Cascadia Treasure', 'El Tesoro De Cascadia', 'Creyendo que es la clave para mantener unida a su familia una granjera adolescente se embarca en una búsqueda para encontrar un tesoro perdido hace mucho tiempo sin darse cuenta de que su aliado más cercano en el proyecto está aliado con su principal némesis', '../pelicula/el tesoro de cascadia.jpg', 'image/jpeg', 78539, 2020, 'V'),
(00036, ' Under Wraps', 'Una Momia en Halloween', 'Tres amigos intentan salvar a su amigo momificado Harold de los criminales codiciosos devolviéndolo a su lugar de descanso antes de la medianoche de Halloween', '../pelicula/una momia en halloween.jpg', 'image/jpeg', 90151, 2021, 'V'),
(00037, 'The Addams Family 2', 'La familia Addams 2', 'Los Addams se enredan en aventuras más locas y se ven envueltos en divertidos enfrentamientos con todo tipo de personajes desprevenidos', '../pelicula/la familia de addams.jpg', 'image/jpeg', 83801, 2021, 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenu`
--

CREATE TABLE `submenu` (
  `idSubmenu` char(3) NOT NULL,
  `nombreSubMenu` char(50) NOT NULL,
  `idMenu` char(3) NOT NULL,
  `url` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `submenu`
--

INSERT INTO `submenu` (`idSubmenu`, `nombreSubMenu`, `idMenu`, `url`) VALUES
('001', 'Control de Actores', '001', '../control/facade.php?opc=3'),
('002', 'Control de Directores', '002', '../control/facade.php?opc=23'),
('003', 'Control de Géneros', '003', '../control/facade.php?opc=43'),
('004', 'Control de Películas', '004', '../control/facade.php?opc=63'),
('005', 'Control de Actores y Películas', '005', '../control/facade.php?opc=83'),
('006', 'Control de Directores y Películas', '006', '../control/facade.php?opc=103'),
('007', 'Control de Géneros y Películas', '007', '../control/facade.php?opc=123'),
('008', 'Control de Usuarios', '008', '../control/facade.php?opc=143'),
('009', 'Cerrar Sesión', '009', '../control/cerrar.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` char(20) NOT NULL,
  `clave` char(40) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `clave`, `estado`) VALUES
('brayanmontes', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'V'),
('estebanmuñoz', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'V'),
('millerhincapie', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'V'),
('samuelmolina', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'V');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`codigoactor`);

--
-- Indices de la tabla `actorpelicula`
--
ALTER TABLE `actorpelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigoactor` (`codigoactor`),
  ADD KEY `idpelicula` (`idpelicula`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`codigodirector`);

--
-- Indices de la tabla `directorpelicula`
--
ALTER TABLE `directorpelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigodirector` (`codigodirector`),
  ADD KEY `idpelicula` (`idpelicula`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`codigogenero`);

--
-- Indices de la tabla `generopelicula`
--
ALTER TABLE `generopelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigogenero` (`codigogenero`),
  ADD KEY `idpelicula` (`idpelicula`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`idpelicula`);

--
-- Indices de la tabla `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`idSubmenu`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actorpelicula`
--
ALTER TABLE `actorpelicula`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `directorpelicula`
--
ALTER TABLE `directorpelicula`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `generopelicula`
--
ALTER TABLE `generopelicula`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `idpelicula` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actorpelicula`
--
ALTER TABLE `actorpelicula`
  ADD CONSTRAINT `actorpelicula_ibfk_1` FOREIGN KEY (`codigoactor`) REFERENCES `actor` (`codigoactor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actorpelicula_ibfk_2` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `directorpelicula`
--
ALTER TABLE `directorpelicula`
  ADD CONSTRAINT `directorpelicula_ibfk_1` FOREIGN KEY (`codigodirector`) REFERENCES `director` (`codigodirector`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directorpelicula_ibfk_2` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `generopelicula`
--
ALTER TABLE `generopelicula`
  ADD CONSTRAINT `generopelicula_ibfk_1` FOREIGN KEY (`codigogenero`) REFERENCES `genero` (`codigogenero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `generopelicula_ibfk_2` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
