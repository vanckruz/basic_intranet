-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-04-2015 a las 21:26:50
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nuevaintranet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_noticias`
--

CREATE TABLE IF NOT EXISTS `galeria_noticias` (
`id_galeria` int(11) NOT NULL,
  `id_noticias` int(10) NOT NULL,
  `imagen` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `galeria_noticias`
--

INSERT INTO `galeria_noticias` (`id_galeria`, `id_noticias`, `imagen`) VALUES
(1, 1, '1.jpg'),
(2, 1, '2.jpg'),
(3, 2, '1.jpg'),
(4, 2, '2.jpg'),
(5, 3, '5.jpg'),
(6, 3, '6.jpg'),
(7, 3, '9.jpg'),
(8, 4, '9.jpg'),
(9, 4, '1.jpg'),
(10, 4, '5.jpg'),
(11, 5, '1.jpg'),
(12, 5, '2.jpg'),
(13, 6, '1.jpg'),
(14, 6, '2.jpg'),
(15, 7, '7.jpg'),
(16, 7, '8.jpg'),
(17, 9, '1.jpg'),
(18, 9, '2.jpg'),
(19, 9, '3.jpg'),
(20, 9, '4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
`id_noticias` int(11) NOT NULL,
  `titulo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `subtitulo` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen_principal` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `url` text COLLATE utf8_spanish_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticias`, `titulo`, `subtitulo`, `contenido`, `imagen_principal`, `fecha_creacion`, `url`) VALUES
(1, '250  MÉDICOS ESPECIALISTAS EGRESAN DEL IVSS.', 'Egresando nuevos profesionales para el servicio del pueblo.', 'Doscientos cincuenta Médicos culminaron sus estudios de especialización en centros de Instituto Venezolano de los Seguros Sociales en la región capital.\r\n\r\nEl acto de graduación estuvo presidido por el Presidente del Instituto, General Carlos Rotondaro, quien estuvo acompañado de la Directora General de Salud, María Antonieta Hurtado; el Director General de Recursos Humanos y Administración de Personal, Armando Pérez; así como autoridades administrativas y académicas de los centros asistenciales de la Gran Caracas.\r\n\r\nEn sus palabras, Rotondaro recalcó importancia de la formación de Médicos en diversas especialidades, “el IVSS ha sido pionero en la formación de especialistas de la salud que después pasan a formar parte del equipo que se distribuye en los distintos centros del Instituto a nivel nacional y que garantiza la atención a los pacientes que lo requieran”.\r\n\r\nPor parte destacó la labor del Gobierno Revolucionario que ha venido garantizando la salud del pueblo venezolano desde 1999 sin ningún tipo de distinción y hoy otorga medicamentos de alto costo, para enfermedades como cáncer, completamente gratuitos.\r\n\r\nEn los próximos días continuarán los actos de promoción de nuevos Médicos en distintos estados del país.', NULL, '2015-03-17', NULL),
(2, 'HOSPITAL DE CAMPAÑA SIMÓN BOLÍVAR ADECUADO PARA  ENFRENTAR ÉBOLA', 'Repotenciando y adaptando el hospital de campaña Simón Bolivar para adecuarse a las necesidades.', 'En el marco del Plan Nacional contra el Ebola, el Gobierno Nacional instaló en La Carlota , el hospital de Campaña Simón Bolívar , que son modernas instalaciones que pueden trasladadas a sitios donde se requiera para enfrentar contingencias.\r\n\r\n\r\nEl vicepresidente de la República, Jorge Arreaza en compañía de la ministra de Salud, Nancy Pérez, de la representante de la Organización Panamericana de la Salud en Venezuela , Celia Riera , del presidente del Ivss, Carlos Rotondaro y de integrantes de la Sociedad Científica de Venezuela y de la Asociación Venezolana de Clínicas y Hospitales , realizaron un recorrido por las instalaciones del mencionado centro el cual servirá para atender posibles casos de personas afectadas por el ébola.\r\n\r\n\r\nEn tal sentido, Jorge Arreaza señaló que “hoy estamos haciendo todo el esfuerzo, un esfuerzo mancomunado donde todos estamos aportando”. Recordó que aun cuando en el país no hay casos de ébola, se está preparando por si se produjera algún paciente sospechoso o en algún caso confirmado, el hospital estará presto para atender la situación.\r\n\r\nPor su parte el presidente del Ivss, Carlos Rotondaro dijo que el hospital consta de 54 camas, laboratorio que cuenta con equipo de gases arteriales, así como tecnología para realizar hematologías completas; dos mesas quirúrgicas, y permite efectuar dos procedimientos con máquina de anestesia.', 'hospital_campania.jpg', '2015-03-17', NULL),
(3, 'GRAN MISIÓN VIVIENDA OBRERA: IVSS ENTREGÓ APARTAMENTOS A TRABAJADORES', 'dignificando a nuestros trabajadores.', 'Cumpliendo con el compromiso del Gobierno Bolivariano de garantizar viviendas dignas a la clase obrera y en el marco de la Gran Misión Vivienda Obrera, el Instituto Venezolano de los Seguros Sociales hizo entrega de 14 viviendas ubicadas en el edificio multifamiliar en Roca Tarpeya a un grupo de trabajadores de la institución, así como a familias que habitaban en refugios.\r\n \r\nEn esta oportunidad los beneficiarios corresponden a 14 familias que a partir de este momento contará con viviendas espaciosas que constan de 2 y 3 habitaciones, baño, y un ambiente de sala cocina comedor integral.\r\n \r\nEl presidente del Ivss, Carlos Rotondaro estuvo acompañado por Francisco Villela de la Torre, director general (e) de la Comisión Presidencial de Refugios Dignos para proteger la población; viceministro de Vivienda, Nelson Martínez y el representante del Frente de motorizados, Alexis Tovar.\r\n \r\nRotondaro recordó que es una orden del Presidente Nicolás Maduro que no exista más venezolanos en los refugios, y por ello todo el gobierno trabaja para que esto ocurra.', 'mision_vivienda.jpg', '2015-03-17', NULL),
(4, 'GARANTIZADO PAGO DE PENSIONADOS ', '', 'También el Presidente del Ivss se refirió a los pensionados y dijo que actualmente hay 2.600.000 en todo el país y que ya están los recursos listos para la cancelación de los dos meses de aguinaldos al igual que el pago correspondiente a la asignación mensual, “ahora se paga diciembre por adelantado y un mes de aguinaldo, y en diciembre reciben el otro mes de aguinaldo y el pago correspondiente a enero de 2015”.\r\n \r\nEn materia de salud expresó que todos los venezolanos que acuden a los establecimientos del Seguro Social tienen garantizado sus medicamentos como parte del Sistema Público Nacional de Salud, para ello se invierten 6.4 mil millones de bolívares en la adquisición de medicamentos de alto costo, siendo el único país en el mundo que garantiza los tratamientos para personas que padecen de enfermedades.', NULL, '2015-03-17', NULL),
(5, 'Más de 33 mil pacientes con cáncer reciben tratamiento en el IVSS', '', 'Durante el año 2014, un promedio mensual de 33.057 pacientes con cáncer recibieron tratamiento completamente gratuito en las  farmacias de medicamentos de alto costo del Instituto Venezolano de los Seguros Sociales, en distintas regiones del país.\r\n\r\nMercedes Pereira, directora de Farmacoterapéutica del IVSS, destacó que en estas farmacias no sólo reciben medicamentos pacientes con cáncer  sino también personas que padecen enfermedades de alto costo y riesgo, quienes desde 1999, con la llegada del Presidente Chávez al Gobierno, son atendidas sin ningún tipo de distinción.\r\n\r\nEn este sentido, unos 895 mil pacientes con distintas patologías como hemofilia, hepatitis, artritis reumatoidea y trasplantados, entre otros, acudieron a las farmacias en busca de sus medicamentos que le garantizan una mejor calidad de vida.\r\n\r\nEn la adquisición de los tratamientos, el Instituto invierte mensualmente más de 306 millones de Bs, “conviertiéndonos en el único país de América Latina que garantiza de manera completamente gratuita medicamentos a pacientes con enfermedades catastróficas”.\r\n\r\nPara finalizar, se refirió a la importancia de participar en las constantes campañas de prevención de cáncer que se organizan en los distintos centros del Instituto a nivel nacional, especialmente de mama y de próstata que son los principales tipos que afectan a la población venezolana.', 'pacientes_cancer.jpg', '2015-03-17', NULL),
(6, 'IVSS SIMPLIFICA TRÁMITES: CONSTANCIA CERTIFICADA DE COTIZACIÓN ELECTRÓNICA', NULL, 'El Instituto Venezolano de los Seguros Sociales pone  a la disposición de usuarios y usuarias de la Seguridad Social, la posibilidad de obtener a través del Portal Web,  la Constancia Certificada de Cotización de forma electrónica.\r\n\r\nEste servicio, forma parte de la nueva plataforma tecnológica que ofrece el  Ivss  a la población  y que permite  simplificar los trámites  y evitar que el usuario se traslade a nuestras oficinas.\r\n\r\nEs importante recordar que el Ivss adelanta todo un sistema electrónico que facilita la obtención de los documentos que requieran , es así como tenemos la Solvencia Electrónica, la Constancia Electrónica para Pensionados y ahora la Constancia Certificada de Cotización.  Esto lo puede realizar  el interesado sin tener que trasladarse a ninguna oficina  y en muchos casos sin salir de  su casa.\r\n\r\nEl  proceso es sencillo ingrese  al portal www.ivss.gob.ve y seleccione  la opción de Constancia, allí haz clic y  aparecen dos alternativas: Constancia Certificada de Cotización; Constancia de Pensión, de acuerdo a su preferencia selecciona, y seguidamente deberá ingresar los datos que solicitan. Posteriormente  el sistema mostrará la Constancia Electrónica de Cotización con un código de verificación y la opción de imprimir si es necesario.\r\n\r\nLa Constancia Certificada  de Cotización tendrá  una vigencia   de un mes a partir de la fecha emitida; una vez vencida podrá nuevamente  solicitarla. Asimismo si desea verificar la Constancia, el sistema le da la opción ingresando el código de verificación  en el enlace y haga clic para ingresar al Sistema de Verificación de Constancia Certificada de Pensión.', 'constancias.jpg', '2015-03-17', NULL),
(7, 'IVSS pone a disposición de usuarios constancia electrónica para pensionados', NULL, 'El presidente del Instituto Venezolano de los Seguros Sociales, Carlos Rotondaro, anunció a través de su cuenta en twitter @c_rotondaro que a partir del próximo lunes 12 de enero estará disponible en la página web de Instituto, la emisión de la constancia de pensionado.\r\n\r\nLa emisión electrónica de la constancia contribuye con el plan de simplificación de trámites administrativos que adelanta el Gobierno Revolucionario, así con la descongestión de las Oficinas Administrativas del IVSS a nivel nacional.\r\n\r\nA partir del próximo lunes, la constancia de pensionado deberá ser solicitada de manera completamente gratuita, vía electrónica a través de la página web www.ivss.gob.ve.', 'constancias_pension.jpg', '2015-03-17', NULL),
(9, '70 ANIVERSARIO: RECONOCIMIENTO A TRABAJADORES Y TRABAJADORAS', NULL, 'Con un emotivo acto, el Instituto Venezolano de los Seguros Sociales celebró sus 70 Aniversario con la entrega de Reconocimientos e Imposición de Condecoraciones a 370  trabajadores y trabajadoras, quienes con sus aportes han construido la institución que hoy se tiene.\r\n\r\nEl Presidente del Ivss, Carlos Rotondaro en compañía de toda la directiva  presidieron el acto celebrado en el Teatro de la Academia Militar, donde asistieron trabajadores  de todas las regiones del país, quienes recibieron las Condecoraciones  “Orden del Libertador y Libertadoras” en su tercera Clase; Condecoración “Francisco de Miranda” en su tercera Clase; Honor al Mérito al Trabajo “Alfredo Maneiro”; Condecoración Honor al Mérito al Trabajo “Argelia Laya”; Condecoración del Instituto Venezolano de los Seguros Sociales.\r\n\r\nAsimismo durante el acto le fueron impuestas condecoraciones por parte de las gobernaciones de Aragua, Orden “Samán de Aragua” a dos trabajadores de esa entidad; Orden” Manuel Carlos Piar” a dos trabajadores del estado Bolívar; Orden “Relámpago del Catatumbo”, correspondiente  a 2 trabajadores de estado Zulia.\r\n\r\nDurante su intervención  Carlos Rotondaro  elogió la labor realizada por todos los trabajadores  en procura de tener una institución que responde a las demandas de nuestros usuarios y  laboran con un alto compromiso social  y de cumplimiento como servidores públicos.\r\n\r\nTambién fue reconocida la labor del Presidente del Ivss, Carlos Rotondaro  al recibir de manos del gobernador del estado Bolívar, Francisco Rangel Gómez la Orden “Congreso de Angostura”Gran Collar, distinción creada para honrar y reconocer el desempeño de labores y el compromiso demostrado en el cumplimiento de las mismas, así como la lealtad hacia el pueblo como firme defensa del mayor legado del líder de la revolución bolivariana, Hugo Chávez.\r\n\r\nDe esa misma forma el presidente del Ivss  fue condecorado con la  orden Lago de Maracaibo en su primera Clase por los servicios al desarrollo social, económico, al fomento de la ciencia y la cultura en Venezuela, más allá de las fronteras patrias.\r\n\r\nPara finalizar reiteró el agradecimiento  a todos los trabajadores y trabajadoras por su compromiso  de hacer las cosas bien, con esfuerzo, amor, y sentido de pertenencia, “sin ustedes no sería posible tener una institución modelo y debemos sentirnos orgullosos de pertenecer al Ivss”.', '70anios.jpg', '2015-03-17', NULL),
(10, ' IVSS NO HA INDICADO BAJAR CONSTANCIA DE PENSIONADOS PARA TRÁMITE EN BANCA ', NULL, 'El Instituto Venezolano de los Seguros Sociales, desmiente categóricamente, que en ningún momento la institución ha indicado ni emitido información alguna sobre la solicitud de la constancia de pensionados vía electrónica, ni acudir a las oficinas bancarias con la misma a realizar trámite alguno. Así lo hizo saber el Presidente del IVSS, Carlos Rotondaro a través de su cuenta en twitter Carlos Rotondaro ?@c_rotondaro #IVSSsimplificaTramites Es falso que se esté solicitando en Oficinas Bancarias constancia de Pensionado para ningún trámite. Esta aclaratoria obedece a una información que circuló hoy por diversas vías, en la cual menciona que se está solicitando a todos los pensionados y pensionadas que obtengan su constancia de pensionad@ por vía electrónica y luego asistan al banco para hacer ningún tipo de gestión. Una vez más el Presidente del IVSS manifestó en el twitter @c_rotondaro El #IVSS no ha indicado bajar planilla por Internet de constancia de pensionados, ni acudir a las oficinas Bancarias con dicho documento. ', 'noticiafalsa.jpg', '2015-03-01', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `galeria_noticias`
--
ALTER TABLE `galeria_noticias`
 ADD PRIMARY KEY (`id_galeria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
 ADD PRIMARY KEY (`id_noticias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `galeria_noticias`
--
ALTER TABLE `galeria_noticias`
MODIFY `id_galeria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
MODIFY `id_noticias` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
