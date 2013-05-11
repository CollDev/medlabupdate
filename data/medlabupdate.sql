-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-05-2013 a las 01:27:37
-- Versión del servidor: 5.5.31-0ubuntu0.13.04.1
-- Versión de PHP: 5.4.9-4ubuntu2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `medlabupdate`
--
CREATE DATABASE `medlabupdate` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `medlabupdate`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizado`
--

CREATE TABLE IF NOT EXISTS `actualizado` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hash` varchar(14) NOT NULL,
  `autor` smallint(3) NOT NULL,
  `descargado` int(10) NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `actualizado`
--

INSERT INTO `actualizado` (`id`, `hash`, `autor`, `descargado`, `creado`) VALUES
(1, '518dd527c54f4', 1, 0, '2013-05-11 00:20:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis`
--

CREATE TABLE IF NOT EXISTS `analisis` (
  `codigo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `especialidad` varchar(255) NOT NULL,
  `diagnosticos` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `total` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `analisis`
--

INSERT INTO `analisis` (`codigo`, `nombre`, `especialidad`, `diagnosticos`, `titulo`, `descripcion`, `total`) VALUES
('D201', 'AC.FOLICO', 'Suero', 'ECLIA', 'D201 AC.FOLICO', '\r\n-Ayuno de 8 hrs., muestra procesada lo antes posible.\r\nEnviar 1 mL de SUERO\r\n-Estabilidad de la muestra:\r\nTemperatura ambiente: dos horas\r\nRefrigerada (2-8°C): dos días.\r\nA -20ºC: un mes.\r\nCongelar solo una vez, proteger de la luz.\r\nEstabilidad del suero obtenido con gel separador:\r\nEntre 2-8°C: 24 horas', 'Muestra:\r\nSuero\r\nCondiciones para el envío de la muestra:\r\n-Ayuno de 8 hrs., muestra procesada lo antes posible.\r\nEnviar 1 mL de SUERO\r\n-Estabilidad de la muestra:\r\nTemperatura ambiente: dos horas\r\nRefrigerada (2-8°C): dos días.\r\nA -20ºC: un mes.\r\nCongelar solo una vez, proteger de la luz.\r\nEstabilidad del suero obtenido con gel separador:\r\nEntre 2-8°C: 24 horas\r\nValores Referenciales:\r\nTODO GRUPO ETAREO\r\nM/F: 8.4 - 35.2 ng/mL\r\nMétodo:\r\nECLIA\r\nComentarios:\r\nLa carencia de Folato puede provocar anemias nutricionales y megalocíticas;\r\nse ha observado una relación entre los valores bajos en suero durante el embarazo\r\ny defectos del tubo neural en el feto. Esta vitamina es de importancia esencial\r\npara el metabolismo, la síntesis del ADN y el crecimiento y desarrollo de los eritrocitos.\r\nEn el ser humano la deficiencia de folato se debe principalmente a una deficiencia alimenticia\r\no a un síndrome de mala absorción.\r\nPlazo de Entrega:\r\n24 horas\r\n\r\n'),
('D2011', 'AC. FOLICO INTRAERITROCITARIO', 'Sangre total (EDTA)', 'ECLIA', 'D2011 AC. FOLICO INTRAERITROCITARIO', '-Ayuno de 8 hrs., muestra procesada lo antes posible.\r\n-Enviar sangre total con EDTA\r\n-Estabilidad de la muestra:\r\nA temperatura ambiente: 2 horas\r\nDe 2 -8 ºC : 24 días\r\nA -20ºC: 1 mes\r\n- Las muestras hemolizadas no son idóneas para el ensayo.', 'Muestra:\r\nSangre total (EDTA)\r\n\r\nCondiciones para el envío de la muestra:\r\n-Ayuno de 8 hrs., muestra procesada lo antes posible.\r\n-Enviar sangre total con EDTA\r\n-Estabilidad de la muestra:\r\nA temperatura ambiente: 2 horas\r\nDe 2 -8 ºC : 24 días\r\nA -20ºC: 1 mes\r\n- Las muestras hemolizadas no son idóneas para el ensayo.\r\n\r\nValores Referenciales:\r\nTODO GRUPO ETAREO\r\nM/F: 496.0 - 1477.0 ng/mL\r\nMétodo:\r\nECLIA\r\nComentarios:\r\nPara el diagnóstico de la eficiencia de ácido fólico se recomienda determinar el\r\nfolato no sólo en suero sino también en los eritrocitos, ya que más de un 95% del\r\nfolato se encuentra en los glóbulos rojos. Es un indicador más fidedigno del déficit\r\nhístico de folato, por que no está sujeto a la variación debida a la dieta.\r\nPlazo de Entrega:\r\n2 días.\r\n'),
('B208', 'AC. HOMOVANILICO ORINA 24 HRS (HVA)', 'Orina de 24 horas', 'Espectrofotométrico', 'B208 AC. HOMOVANILICO ORINA 24 HRS (HVA)', '\r\n-10mL Colectada con HCL6N (20mL), refrigerado\r\n-No requiere ayuno\r\n-No consumir alcohol, ni realizar ejercicio 8 horas antes', 'Muestra:\r\nOrina de 24 horas\r\nCondiciones para el envío de la muestra:\r\n-10mL Colectada con HCL6N (20mL), refrigerado\r\n-No requiere ayuno\r\n-No consumir alcohol, ni realizar ejercicio 8 horas antes\r\nValores Referenciales:\r\n1.0 – 16.0 ml/24 horas\r\nMétodo:\r\nEspectrofotométrico.\r\nComentarios:\r\nEl ácido homovanilíco es el principal metabolito urinario de la dopamina. Cerca de 75%\r\nde pacientes con neuroblastoma excretan niveles elevados de HVA y de acido vanilmandélico\r\n(VMA). Niveles elevados tambien son encontrados en feocromocitoma, ganglioneuroblastomas y\r\nen el sindrome de Riley-Day. La excreción puede ser intermitente. Aproximadamente 20% de\r\npacientes con valores elevados no tienen neuroblastoma. Las concentraciones puedes sufrir\r\ninterferencias de algunos alimentos, tabaco, etanol y drogas\r\nPlazo de Entrega:\r\n3 días.\r\n'),
('B216', 'AC. LACTICO (LACTATO)', 'Sangre capilar o sangre total tratada con heparina de litio', 'Fotometría de reflexión. Amperometría', 'B216 AC. LACTICO (LACTATO)', '-La muestra debe ser procesada inmediatamente.\r\n-Se debe coordinar la toma de muestra.', 'Muestra:\r\nSangre capilar o sangre total tratada con heparina de litio.\r\nCondiciones para el envío de la muestra:\r\n-La muestra debe ser procesada inmediatamente.\r\n-Se debe coordinar la toma de muestra.\r\nValores Referenciales:\r\nSangre capilar o plasma: 0.9 - 1.7 mmol/L\r\nMétodo:\r\nFotometría de reflexión. Amperometría\r\nComentarios:\r\nEl ácido láctico que esta en la sangre en forma de ion lactato, proviene fundamentalmente\r\nde las células musculares y los eritrocitos. Este es un producto intermedio del metabolismo\r\nde carbohidratos y en circunstancias normales es metabolizado por el hígado.\r\nEste examen se utiliza generalmente para diagnosticar la acidosis láctica.\r\nPlazo de Entrega:\r\n24 horas\r\n'),
('B109', 'AC. URICO', 'Suero', 'URICASA POD', 'B109 AC. URICO', '\r\n-Se recomienda 8 horas de ayuno, salvo en situación de emergencia.\r\n- Evitar enviar muestra hemolizadas.\r\nEstabilidad de la muestra ( suero ):\r\n- De 2 - 8° C : 5 dias\r\n- De -15 o – 25ºC : 6 meses ', 'Muestra:\r\nSuero\r\nCondiciones para el envío de la muestra:\r\n-Se recomienda 8 horas de ayuno, salvo en situación de emergencia.\r\n- Evitar enviar muestra hemolizadas.\r\nEstabilidad de la muestra ( suero ):\r\n- De 2 - 8° C : 5 dias\r\n- De -15 o – 25ºC : 6 meses\r\nValores Referenciales:\r\nM/F:\r\n0 - 1 ms: 3.0- 5.1 mg/dL\r\n2 - 12 ms: 3.0- 6.1 mg/dL\r\n1 - 17 años: 3.0- 6.0 mg/dL\r\nM:\r\n18 - 65 años: 3.0- 6.9 mg/dL\r\n66 a más años: 3.0- 8.3 mg/dL\r\nF:\r\n18 a más años: 3.0- 5.6 mg/dL\r\nMétodo:\r\nURICASA POD\r\nComentarios:\r\nSe usa para el diagnóstico y seguimiento de numerosos trastornos renales, metabólicos,\r\ntrastornos nutricionales, así como en pacientes con terapia citostatica.\r\nProductos que interfieren: Alcohol, Ac. Ascórbico, cafeína, Adrenalina, Etambutol,\r\nAspirina, Adrenalina, Metildopa.\r\n\r\nPlazo de Entrega:\r\n24 horas\r\n'),
('O306', 'AC. URICO ORINA 24 HRS', 'Orina de 24 horas', 'URICASA POD', 'O306 AC. URICO ORINA 24 HRS', 'La recolección de la muestra de orina de 24 horas se realiza eliminando\r\nla primera orina de la mañana del día en que se comienza la recolección, luego\r\nse recolecta toda la orina emitida hasta la primera orina del día siguiente.\r\nNo consumir alcohol\r\n-Enviar una alícuota, indicando el volumen de la muestra.\r\n-No refrigerar, mantener a temperatura ambiente.\r\nEstabilidad de la muestra ( orina ):\r\nAnalizar lo antes posible, No refrigerar.\r\nEstabilidad con adición de NaOH (pH > 8.0 ) :\r\n- De 15-25ºC: 4 días ', 'Muestra:\r\nOrina de 24 horas.\r\nCondiciones para el envío de la muestra:\r\nLa recolección de la muestra de orina de 24 horas se realiza eliminando la primera\r\norina de la mañana del día en que se comienza la recolección, luego se recolecta\r\ntoda la orina emitida hasta la primera orina del día siguiente.\r\nNo consumir alcohol\r\n-Enviar una alícuota, indicando el volumen de la muestra.\r\n-No refrigerar, mantener a temperatura ambiente.\r\nEstabilidad de la muestra ( orina ):\r\nAnalizar lo antes posible, No refrigerar.\r\nEstabilidad con adición de NaOH (pH > 8.0 ) :\r\n- De 15-25ºC: 4 días\r\nValores Referenciales:\r\nTODO GRUPO ETAREO\r\nM/F: 200 - 1,000 mg/24 horas\r\nMétodo:\r\nURICASA POD\r\nComentarios:\r\nLos niveles son útiles para evaluar el metabolismo de Ac. Urico en la enfermedad de\r\nGota e investigar la hiperuricosuria en paciente con formación decalculos.\r\n\r\nPlazo de Entrega:\r\n24 horas.\r\n'),
('D110', 'AC. VALPROICO', 'Suero', 'FPIA', 'D110 AC. VALPROICO', '- Se sugiere ayuno de 8 horas\r\n- Almacene las muestras a una temperatura de 2 – 8ºC,\r\n- Enviar 1mL de suero', 'Muestra:\r\nSuero.\r\nCondiciones para el envío de la muestra:\r\n- Se sugiere ayuno de 8 horas\r\n- Almacene las muestras a una temperatura de 2 – 8ºC,\r\n- Enviar 1mL de suero\r\nValores Referenciales:\r\nTODO GRUPO ETAREO\r\nM/F: Rango terapéutico 50.0 - 100.0 ug/mL\r\nMétodo:\r\nFPIA\r\nComentarios:\r\nEl dosaje de este medicamento en sangre tiene valor para alcanzar un nivel terapéutico\r\nideal en pacientes con crisis convulsivas.\r\nPlazo de Entrega:\r\n24 Horas.\r\n'),
('O228', 'AC. VANIL MANDELICO (VMA)', 'Orina de 24 horas', 'CROM.COL.', 'O228 AC. VANIL MANDELICO (VMA)', '- Mantener la muestra refrigerada (2 a 8°C), hasta 48 horas previas a la realización de la prueba.', 'Muestra:\r\nOrina de 24 horas\r\nCondiciones para el envío de la muestra:\r\n- Mantener la muestra refrigerada (2 a 8°C), hasta 48 horas previas a la realización\r\nde la prueba.\r\nValores Referenciales:\r\nTODO GRUPO ETAREO\r\n< 13.6 mg/24 horas.\r\nMétodo:\r\nCROM.COL.\r\nComentarios:\r\nNo consumir principalmente los siguientes alimentos: cítricos, chocolate, tomates vainilla,\r\ncafé, té y plátano. No consumir alcohol. No realizar ejercicios 8 horas antes ni durante la\r\nrecolección de la muestra. La recolección de la muestra de orina de 24 horas se realiza\r\neliminando la primera orina de la mañana del día en que se comienza la recolección, luego\r\nse recolecta toda la orina emitida hasta la primera muestra de orina del día siguiente\r\nPlazo de Entrega:\r\n3 días\r\n'),
('M277', 'ACAROS', 'Raspado de piel', 'Examen Directo', 'M277 ACAROS', '-Enviar la muestra en un contenedor estéril, indicando en la etiqueta la zona de la muestra tomada.', 'Muestra:\r\nRaspado de piel\r\nCondiciones para el envío de la muestra:\r\n-Enviar la muestra en un contenedor estéril, indicando en la etiqueta la zona de la muestra tomada.\r\nValores Referenciales:\r\nAusencia\r\nMétodo:\r\nExamen Directo\r\nComentarios:\r\nSin aseo en la zona afectada, maquillaje o aplicación de acaricidas 3 días antes del examen.\r\nEs preferible tomar la muestra de alguna lesión, si la hubiera.\r\nPlazo de Entrega:\r\nDurante el día\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(64) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `usuario` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `apellido`, `nombre`, `usuario`, `password`, `foto`, `creado`, `actualizado`) VALUES
(1, 'Doe', 'Jhon', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin.jpg', '2013-05-11 05:15:56', '2013-05-11 05:15:56'),
(2, 'Robles', 'Joe', 'joebuntu', '5b1b61fc96faf0883c38b7a83d4680a1', 'joe-cool.jpg', '2013-05-11 05:15:56', '2013-05-11 05:15:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(16) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `perfil`, `descripcion`) VALUES
(1, 'Admin', 'Crea y actualiza análisis clínicos'),
(2, 'Invitado', 'Puede visualizar los análisis clínicos');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
