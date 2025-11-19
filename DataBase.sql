-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2025 at 10:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_bienestar_estudiantil`
--

-- --------------------------------------------------------

--
-- Table structure for table `administradores`
--

CREATE TABLE `administradores` (
  `usuario` varchar(30) NOT NULL,
  `contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administradores`
--

INSERT INTO `administradores` (`usuario`, `contraseña`) VALUES
('root', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `afirmaciones_suicidio`
--

CREATE TABLE `afirmaciones_suicidio` (
  `encuesta_id` int(11) NOT NULL,
  `no_seguir_adelante` int(11) NOT NULL CHECK (`no_seguir_adelante` between 0 and 3),
  `pensamientos_muerte` int(11) NOT NULL CHECK (`pensamientos_muerte` between 0 and 3),
  `familia_mejor_muerto` int(11) NOT NULL CHECK (`familia_mejor_muerto` between 0 and 3),
  `penso_matarse` int(11) NOT NULL CHECK (`penso_matarse` between 0 and 3),
  `total_suicidio` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `afirmaciones_suicidio`
--

INSERT INTO `afirmaciones_suicidio` (`encuesta_id`, `no_seguir_adelante`, `pensamientos_muerte`, `familia_mejor_muerto`, `penso_matarse`, `total_suicidio`) VALUES
(1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ansiedad_depresion`
--

CREATE TABLE `ansiedad_depresion` (
  `encuesta_id` int(11) NOT NULL,
  `tenso_nervioso` int(11) NOT NULL CHECK (`tenso_nervioso` between 0 and 3),
  `temor_malo` int(11) NOT NULL CHECK (`temor_malo` between 0 and 3),
  `cabeza_preocupaciones` int(11) NOT NULL CHECK (`cabeza_preocupaciones` between 0 and 3),
  `permanecer_sentado` int(11) NOT NULL CHECK (`permanecer_sentado` between 0 and 3),
  `nervios_estomago` int(11) NOT NULL CHECK (`nervios_estomago` between 0 and 3),
  `inquieto_moverse` int(11) NOT NULL CHECK (`inquieto_moverse` between 0 and 3),
  `angustia_temor` int(11) NOT NULL CHECK (`angustia_temor` between 0 and 3),
  `total_ansiedad` int(11) NOT NULL DEFAULT 0,
  `disfruta_cosas` int(11) NOT NULL CHECK (`disfruta_cosas` between 0 and 3),
  `reirse_cosas` int(11) NOT NULL CHECK (`reirse_cosas` between 0 and 3),
  `se_siente_alegre` int(11) NOT NULL CHECK (`se_siente_alegre` between 0 and 3),
  `lento_torpe` int(11) NOT NULL CHECK (`lento_torpe` between 0 and 3),
  `interes_aspecto` int(11) NOT NULL CHECK (`interes_aspecto` between 0 and 3),
  `espera_ilusion` int(11) NOT NULL CHECK (`espera_ilusion` between 0 and 3),
  `disfrutar_libro_tv` int(11) NOT NULL CHECK (`disfrutar_libro_tv` between 0 and 3),
  `total_depresion` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ansiedad_depresion`
--

INSERT INTO `ansiedad_depresion` (`encuesta_id`, `tenso_nervioso`, `temor_malo`, `cabeza_preocupaciones`, `permanecer_sentado`, `nervios_estomago`, `inquieto_moverse`, `angustia_temor`, `total_ansiedad`, `disfruta_cosas`, `reirse_cosas`, `se_siente_alegre`, `lento_torpe`, `interes_aspecto`, `espera_ilusion`, `disfrutar_libro_tv`, `total_depresion`) VALUES
(1, 1, 1, 1, 1, 0, 0, 1, 5, 3, 3, 3, 1, 0, 2, 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `becas_recibidas`
--

CREATE TABLE `becas_recibidas` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `nivel` enum('No','Preescolar','Primaria','Secundaria','Medio Superior','Superior') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `becas_recibidas`
--

INSERT INTO `becas_recibidas` (`id`, `encuesta_id`, `nivel`) VALUES
(1, 1, 'Primaria'),
(2, 1, 'Secundaria'),
(3, 1, 'Medio Superior');

-- --------------------------------------------------------

--
-- Table structure for table `bienestar`
--

CREATE TABLE `bienestar` (
  `encuesta_id` int(11) NOT NULL,
  `gusta_vida` int(11) NOT NULL CHECK (`gusta_vida` between 1 and 6),
  `persona_feliz` int(11) NOT NULL CHECK (`persona_feliz` between 1 and 6),
  `satisfecho_vida` int(11) NOT NULL CHECK (`satisfecho_vida` between 1 and 6),
  `vida_alegria` int(11) NOT NULL CHECK (`vida_alegria` between 1 and 6),
  `vida_feliz` int(11) NOT NULL CHECK (`vida_feliz` between 1 and 6),
  `disfruta_vida` int(11) NOT NULL CHECK (`disfruta_vida` between 1 and 6),
  `vida_maravillosa` int(11) NOT NULL CHECK (`vida_maravillosa` between 1 and 6),
  `de_buenas` int(11) NOT NULL CHECK (`de_buenas` between 1 and 6),
  `total_bienestar` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bienestar`
--

INSERT INTO `bienestar` (`encuesta_id`, `gusta_vida`, `persona_feliz`, `satisfecho_vida`, `vida_alegria`, `vida_feliz`, `disfruta_vida`, `vida_maravillosa`, `de_buenas`, `total_bienestar`) VALUES
(1, 5, 4, 5, 4, 5, 5, 4, 4, 36);

-- --------------------------------------------------------

--
-- Table structure for table `comunidades_indigenas`
--

CREATE TABLE `comunidades_indigenas` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `comunidad` enum('No','Si Nahuatl','Si Maya','Si Zapoteco','Si Mixteco','Si Otomi','Si Tonaca','Si Kikapu','Si Mazahua','Si Mazteco','Si Huasteco','Si Choles','Si Tarahumara','Si Chichimeca','Si Guariijio','Si Quiche','Si Aguacateco','Otra') NOT NULL,
  `otra_especificar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumo_alimentos`
--

CREATE TABLE `consumo_alimentos` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `alimento` enum('Vegetales','Frutas','Carne','Tortillas','Lácteos','Pastas','Cereales','Comida chatarra','Refrescos') NOT NULL,
  `frecuencia` enum('1-2 veces','3-5 veces','6-7 veces') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumo_alimentos`
--

INSERT INTO `consumo_alimentos` (`id`, `encuesta_id`, `alimento`, `frecuencia`) VALUES
(1, 1, 'Vegetales', '3-5 veces'),
(2, 1, 'Frutas', '1-2 veces'),
(3, 1, 'Carne', '6-7 veces'),
(4, 1, 'Tortillas', '1-2 veces'),
(5, 1, 'Lácteos', '1-2 veces'),
(6, 1, 'Pastas', '1-2 veces'),
(7, 1, 'Cereales', '3-5 veces'),
(8, 1, 'Comida chatarra', '3-5 veces'),
(9, 1, 'Refrescos', '3-5 veces');

-- --------------------------------------------------------

--
-- Table structure for table `consumo_sustancias`
--

CREATE TABLE `consumo_sustancias` (
  `encuesta_id` int(11) NOT NULL,
  `frecuencia_alcohol` enum('Nunca','una o dos veces','Mensualmente','Semanalmente','Diario o casi diario') NOT NULL,
  `valor_alcohol` int(11) NOT NULL DEFAULT 0,
  `frecuencia_tabaco` enum('Nunca','una o dos veces','Mensualmente','Semanalmente','Diario o casi diario') NOT NULL,
  `valor_tabaco` int(11) NOT NULL DEFAULT 0,
  `frecuencia_otras_drogas` enum('Nunca','una o dos veces','Mensualmente','Semanalmente','Diario o casi diario') NOT NULL,
  `valor_otras_drogas` int(11) NOT NULL DEFAULT 0,
  `cual_otra_droga` varchar(255) DEFAULT NULL,
  `frecuencia_deseo` enum('Nunca','una o dos veces','Mensualmente','Semanalmente','Diario o casi diario') NOT NULL,
  `valor_deseo` int(11) NOT NULL DEFAULT 0,
  `cual_deseo` varchar(255) DEFAULT NULL,
  `frecuencia_problemas` enum('Nunca','una o dos veces','Mensualmente','Semanalmente','Diario o casi diario') NOT NULL,
  `valor_problemas` int(11) NOT NULL DEFAULT 0,
  `cual_problemas` varchar(255) DEFAULT NULL,
  `frecuencia_dejo_hacer` enum('Nunca','una o dos veces','Mensualmente','Semanalmente','Diario o casi diario') NOT NULL,
  `valor_dejo_hacer` int(11) NOT NULL DEFAULT 0,
  `cual_dejo_hacer` varchar(255) DEFAULT NULL,
  `preocupacion_consumo` enum('Nunca','si en los últimos 3 meses','sí, pero no en los últimos 3 meses') NOT NULL,
  `valor_preocupacion` int(11) NOT NULL DEFAULT 0,
  `intento_reducir` enum('Nunca','si en los últimos 3 meses','sí, pero no en los últimos 3 meses') NOT NULL,
  `valor_intento` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumo_sustancias`
--

INSERT INTO `consumo_sustancias` (`encuesta_id`, `frecuencia_alcohol`, `valor_alcohol`, `frecuencia_tabaco`, `valor_tabaco`, `frecuencia_otras_drogas`, `valor_otras_drogas`, `cual_otra_droga`, `frecuencia_deseo`, `valor_deseo`, `cual_deseo`, `frecuencia_problemas`, `valor_problemas`, `cual_problemas`, `frecuencia_dejo_hacer`, `valor_dejo_hacer`, `cual_dejo_hacer`, `preocupacion_consumo`, `valor_preocupacion`, `intento_reducir`, `valor_intento`) VALUES
(1, 'Nunca', 0, 'Nunca', 0, 'Diario o casi diario', 4, 'mota', 'Diario o casi diario', 4, 'mota', 'Nunca', 0, '', 'Nunca', 0, '', 'Nunca', 0, 'Nunca', 0);

-- --------------------------------------------------------

--
-- Table structure for table `encuestas`
--

CREATE TABLE `encuestas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_encuesta` timestamp NOT NULL DEFAULT current_timestamp(),
  `completada` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `encuestas`
--

INSERT INTO `encuestas` (`id`, `usuario_id`, `fecha_encuesta`, `completada`) VALUES
(1, 1, '2025-11-03 23:40:36', 1),
(2, 1, '2025-11-04 00:06:53', 0),
(3, 1, '2025-11-04 00:06:56', 0),
(4, 1, '2025-11-04 00:06:58', 0),
(5, 1, '2025-11-04 00:07:59', 0),
(6, 1, '2025-11-04 00:08:02', 0),
(7, 1, '2025-11-04 00:08:06', 0),
(8, 1, '2025-11-04 00:10:02', 0),
(9, 1, '2025-11-04 00:10:25', 0),
(10, 1, '2025-11-04 00:10:27', 0),
(11, 1, '2025-11-04 00:10:31', 0),
(12, 1, '2025-11-04 00:10:34', 0),
(13, 1, '2025-11-11 00:37:22', 0),
(14, 1, '2025-11-11 00:37:26', 0),
(15, 1, '2025-11-11 00:37:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enfermedades_madre`
--

CREATE TABLE `enfermedades_madre` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `enfermedad` enum('Diabetes','Hipertensión arterial','Enfermedades cardiovasculares','Sobrepeso/Obesidad','Evento cerebrovascular (embolia)','Epilepsia','Alergias','Cáncer','Enfermedad autoinmune','Psiquiátricos','Enfermedades tiroideas','Mi madre está sana','Otro') NOT NULL,
  `otro_especificar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enfermedades_madre`
--

INSERT INTO `enfermedades_madre` (`id`, `encuesta_id`, `enfermedad`, `otro_especificar`) VALUES
(1, 1, 'Mi madre está sana', '');

-- --------------------------------------------------------

--
-- Table structure for table `enfermedades_padre`
--

CREATE TABLE `enfermedades_padre` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `enfermedad` enum('Diabetes','Hipertensión arterial','Enfermedades cardiovasculares','Sobrepeso/Obesidad','Evento cerebrovascular (embolia)','Epilepsia','Alergias','Cáncer','Enfermedad autoinmune','Psiquiátricos','Enfermedades tiroideas','Mi padre está sano','Otro') NOT NULL,
  `otro_especificar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enfermedades_padre`
--

INSERT INTO `enfermedades_padre` (`id`, `encuesta_id`, `enfermedad`, `otro_especificar`) VALUES
(1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `enfermedades_personales`
--

CREATE TABLE `enfermedades_personales` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `enfermedad` enum('Ninguna','Diabetes','Hipertensión arterial','Enfermedades cardiovasculares','Obesidad','VIH/Sida','Accidentes cerebrovasculares','Epilepsia','Alergias','Enfermedades tiroideas','Desórdenes psiquiátricos','Cáncer','Enfermedades Autoinmunes','Otras') NOT NULL,
  `cronica` tinyint(1) DEFAULT 1,
  `otro_especificar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grupos_vulnerabilidad`
--

CREATE TABLE `grupos_vulnerabilidad` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `grupo` enum('No','Adolescente','Persona en situacion de pobreza','Persona en situacion de discapacidad','Migrante','Adulto mayor','Indigena o afrodescendiente') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_personal`
--

CREATE TABLE `info_personal` (
  `encuesta_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` enum('Hombre','Mujer') NOT NULL,
  `domicilio` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `lugar_nacimiento` varchar(255) DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `escuela_procedencia` varchar(255) DEFAULT NULL,
  `campus` enum('Saltillo','Torreón','Norte') NOT NULL,
  `cartilla_vacunacion` enum('Completa','Incompleta') NOT NULL,
  `padres_viven` enum('Ambos padres viven','Solo mamá vive','Solo papa vive') NOT NULL,
  `cambios_ropa_semana` enum('Diario','<4','>4 pero menos de 7') NOT NULL,
  `banos_semana` enum('Diario','<4','>4 pero menos de 7') NOT NULL,
  `comidas_dia` enum('1','2','3','4','5','Más de 5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_personal`
--

INSERT INTO `info_personal` (`encuesta_id`, `nombre`, `matricula`, `edad`, `sexo`, `domicilio`, `telefono`, `lugar_nacimiento`, `curp`, `escuela_procedencia`, `campus`, `cartilla_vacunacion`, `padres_viven`, `cambios_ropa_semana`, `banos_semana`, `comidas_dia`) VALUES
(1, 'Juan Pablo Vazquez Zamora', '23163400', 20, 'Hombre', 'Conquian 318', '8611357633', 'Sabinas', 'VAZJ', 'Instituto Central Coahuila', 'Norte', 'Completa', 'Ambos padres viven', 'Diario', '>4 pero menos de 7', '2');

-- --------------------------------------------------------

--
-- Table structure for table `resultados_calculados`
--

CREATE TABLE `resultados_calculados` (
  `encuesta_id` int(11) NOT NULL,
  `campus` enum('Saltillo','Torreón','Norte') NOT NULL,
  `puntaje_tabaco` int(11) NOT NULL DEFAULT 0,
  `riesgo_tabaco` enum('Bajo','Moderado','Alto') NOT NULL,
  `puntaje_alcohol` int(11) NOT NULL DEFAULT 0,
  `riesgo_alcohol` enum('Bajo','Moderado','Alto') NOT NULL,
  `puntaje_otras_drogas` int(11) NOT NULL DEFAULT 0,
  `riesgo_otras_drogas` enum('Bajo','Moderado','Alto') NOT NULL,
  `consume_sustancias` tinyint(1) NOT NULL DEFAULT 0,
  `tiene_adiccion` tinyint(1) NOT NULL DEFAULT 0,
  `puntaje_bienestar` int(11) NOT NULL DEFAULT 0,
  `nivel_bienestar` enum('Bajo','Moderado','Alto') NOT NULL,
  `puntaje_suicidio` int(11) NOT NULL DEFAULT 0,
  `riesgo_suicidio` enum('Sin riesgo','En riesgo') NOT NULL,
  `tiene_riesgo_suicida` tinyint(1) NOT NULL DEFAULT 0,
  `puntaje_ansiedad` int(11) NOT NULL DEFAULT 0,
  `nivel_ansiedad` enum('Normal','Probable','Presente') NOT NULL,
  `tiene_ansiedad` tinyint(1) NOT NULL DEFAULT 0,
  `puntaje_depresion` int(11) NOT NULL DEFAULT 0,
  `nivel_depresion` enum('Normal','Probable','Presente') NOT NULL,
  `tiene_depresion` tinyint(1) NOT NULL DEFAULT 0,
  `tiene_enfermedades_cronicas` tinyint(1) NOT NULL DEFAULT 0,
  `cantidad_enfermedades_cronicas` int(11) NOT NULL DEFAULT 0,
  `sueño_saludable` tinyint(1) NOT NULL DEFAULT 0,
  `es_becado` tinyint(1) NOT NULL DEFAULT 0,
  `es_trabajador` tinyint(1) NOT NULL DEFAULT 0,
  `fecha_calculo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultados_calculados`
--

INSERT INTO `resultados_calculados` (`encuesta_id`, `campus`, `puntaje_tabaco`, `riesgo_tabaco`, `puntaje_alcohol`, `riesgo_alcohol`, `puntaje_otras_drogas`, `riesgo_otras_drogas`, `consume_sustancias`, `tiene_adiccion`, `puntaje_bienestar`, `nivel_bienestar`, `puntaje_suicidio`, `riesgo_suicidio`, `tiene_riesgo_suicida`, `puntaje_ansiedad`, `nivel_ansiedad`, `tiene_ansiedad`, `puntaje_depresion`, `nivel_depresion`, `tiene_depresion`, `tiene_enfermedades_cronicas`, `cantidad_enfermedades_cronicas`, `sueño_saludable`, `es_becado`, `es_trabajador`, `fecha_calculo`) VALUES
(1, 'Norte', 0, 'Bajo', 0, 'Bajo', 4, 'Moderado', 1, 0, 36, 'Alto', 0, 'Sin riesgo', 0, 5, 'Normal', 0, 15, 'Presente', 1, 0, 0, 1, 1, 0, '2025-11-03 23:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `salud`
--

CREATE TABLE `salud` (
  `encuesta_id` int(11) NOT NULL,
  `tipo_sangre` enum('O+','O-','A+','A-','B+','B-','AB+','AB-','No sé') NOT NULL,
  `servicio_medico` enum('IMSS','ISSSTE','INSABI','Privado','Otro') NOT NULL,
  `medicamento_controlado` enum('Sí','No') NOT NULL,
  `horas_sueno` enum('más de 10 horas','8 a 10 horas','6 a 8 horas','4 a 6 horas','menos de 4 horas') NOT NULL,
  `frecuencia_deporte` enum('No práctico','de 1-2 veces','de 3-4 veces','de 5-7 veces') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salud`
--

INSERT INTO `salud` (`encuesta_id`, `tipo_sangre`, `servicio_medico`, `medicamento_controlado`, `horas_sueno`, `frecuencia_deporte`) VALUES
(1, 'AB+', 'ISSSTE', 'No', '6 a 8 horas', 'No práctico');

-- --------------------------------------------------------

--
-- Table structure for table `servicios_casa`
--

CREATE TABLE `servicios_casa` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `servicio` enum('Drenaje','Luz','Agua','Gas','Internet') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicios_casa`
--

INSERT INTO `servicios_casa` (`id`, `encuesta_id`, `servicio`) VALUES
(1, 1, 'Drenaje'),
(2, 1, 'Luz'),
(3, 1, 'Agua'),
(4, 1, 'Gas'),
(5, 1, 'Internet');

-- --------------------------------------------------------

--
-- Table structure for table `socioeconomica`
--

CREATE TABLE `socioeconomica` (
  `encuesta_id` int(11) NOT NULL,
  `estado_civil` enum('Solter@','Casad@','Union Libre','Divorciad@','Viud@') NOT NULL,
  `hijos` enum('No','1','2','3','4+') NOT NULL,
  `embarazo` enum('Sí','No') NOT NULL,
  `ingreso_mensual_familiar` enum('1000 a 5000','5000 a 10000','11000 a 20000','21000 a 30000','30000+') NOT NULL,
  `trabaja_actualmente` enum('Sí','No') NOT NULL,
  `horas_trabajo` enum('35 o más horas semanales','25 a 34 horas semanales','15 a 24 horas semanales','5 a 14 horas semanales','menos de 5 horas semanales','no tengo empleo') NOT NULL,
  `turno_trabajo` enum('Matutino','Vespertino','Nocturno','Mixto','No tengo empleo') NOT NULL,
  `salario` enum('0-1000','1000 a 5000','5000 a 10000','10000 a 20000','20000+','No tengo empleo') NOT NULL,
  `dispositivos_casa` enum('Sí','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socioeconomica`
--

INSERT INTO `socioeconomica` (`encuesta_id`, `estado_civil`, `hijos`, `embarazo`, `ingreso_mensual_familiar`, `trabaja_actualmente`, `horas_trabajo`, `turno_trabajo`, `salario`, `dispositivos_casa`) VALUES
(1, 'Union Libre', 'No', 'No', '11000 a 20000', 'No', 'no tengo empleo', 'No tengo empleo', 'No tengo empleo', 'Sí');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nombre_completo`, `fecha_registro`) VALUES
(1, 'juan.zamora@uadec.edu.mx', 'JUAN PABLO VAZQUEZ ZAMORA', '2025-11-03 23:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `vulnerabilidad`
--

CREATE TABLE `vulnerabilidad` (
  `encuesta_id` int(11) NOT NULL,
  `discapacidad_fisica` enum('No','Si Parcial','Si Completa') NOT NULL,
  `cual_discapacidad_fisica` varchar(255) DEFAULT NULL,
  `discapacidad_sensorial` enum('No','Si visual Parcial','Si visual Completa','Si auditiva Parcial','Si Auditiva Completa','Si de comunicacion Parcial','Si de comunicacion Completa','Si de lenguaje Parcial','Si de lenguaje Completa','Otra') NOT NULL,
  `cual_discapacidad_sensorial` varchar(255) DEFAULT NULL,
  `discapacidad_intelectual` enum('No','Si Sindrome de Down','Si Sindrome alchoholico fetal','Si Sindrome X fragil','Si afecciones geneticas','Si defectos cognitivos','Si infecciones','Otra') NOT NULL,
  `cual_discapacidad_intelectual` varchar(255) DEFAULT NULL,
  `discapacidad_mental` enum('No','Si ansiedad','Si depresion','Si esquizofrenia','Si ludopatia','Si trastorno obsesivo compulsivo','Si trastorno bipolar','Si trastornos por estres postraumatico','Si trastornos alimentarios','Otra') NOT NULL,
  `cual_discapacidad_mental` varchar(255) DEFAULT NULL,
  `comunidad_lgbt` enum('Si','No') NOT NULL,
  `cual_comunidad_lgbt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`usuario`),
  ADD UNIQUE KEY `contraseña` (`contraseña`);

--
-- Indexes for table `afirmaciones_suicidio`
--
ALTER TABLE `afirmaciones_suicidio`
  ADD PRIMARY KEY (`encuesta_id`);

--
-- Indexes for table `ansiedad_depresion`
--
ALTER TABLE `ansiedad_depresion`
  ADD PRIMARY KEY (`encuesta_id`);

--
-- Indexes for table `becas_recibidas`
--
ALTER TABLE `becas_recibidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nivel` (`nivel`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `bienestar`
--
ALTER TABLE `bienestar`
  ADD PRIMARY KEY (`encuesta_id`);

--
-- Indexes for table `comunidades_indigenas`
--
ALTER TABLE `comunidades_indigenas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_comunidad` (`comunidad`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `consumo_alimentos`
--
ALTER TABLE `consumo_alimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alimento` (`alimento`),
  ADD KEY `idx_frecuencia` (`frecuencia`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `consumo_sustancias`
--
ALTER TABLE `consumo_sustancias`
  ADD PRIMARY KEY (`encuesta_id`),
  ADD KEY `idx_frecuencia_alcohol` (`frecuencia_alcohol`),
  ADD KEY `idx_frecuencia_tabaco` (`frecuencia_tabaco`),
  ADD KEY `idx_frecuencia_drogas` (`frecuencia_otras_drogas`);

--
-- Indexes for table `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_fecha` (`usuario_id`,`fecha_encuesta`),
  ADD KEY `idx_completadas` (`completada`),
  ADD KEY `idx_fecha` (`fecha_encuesta`);

--
-- Indexes for table `enfermedades_madre`
--
ALTER TABLE `enfermedades_madre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_enfermedad` (`enfermedad`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `enfermedades_padre`
--
ALTER TABLE `enfermedades_padre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_enfermedad` (`enfermedad`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `enfermedades_personales`
--
ALTER TABLE `enfermedades_personales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_enfermedad` (`enfermedad`),
  ADD KEY `idx_cronicas` (`cronica`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `grupos_vulnerabilidad`
--
ALTER TABLE `grupos_vulnerabilidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_grupo` (`grupo`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `info_personal`
--
ALTER TABLE `info_personal`
  ADD PRIMARY KEY (`encuesta_id`),
  ADD KEY `idx_campus` (`campus`),
  ADD KEY `idx_sexo` (`sexo`),
  ADD KEY `idx_edad` (`edad`);

--
-- Indexes for table `resultados_calculados`
--
ALTER TABLE `resultados_calculados`
  ADD PRIMARY KEY (`encuesta_id`),
  ADD KEY `idx_campus` (`campus`),
  ADD KEY `idx_riesgo_suicida` (`tiene_riesgo_suicida`),
  ADD KEY `idx_ansiedad` (`tiene_ansiedad`),
  ADD KEY `idx_depresion` (`tiene_depresion`),
  ADD KEY `idx_bienestar` (`nivel_bienestar`),
  ADD KEY `idx_adicciones` (`tiene_adiccion`),
  ADD KEY `idx_enfermedades_cronicas` (`tiene_enfermedades_cronicas`),
  ADD KEY `idx_sueno_saludable` (`sueño_saludable`),
  ADD KEY `idx_becados` (`es_becado`),
  ADD KEY `idx_trabajadores` (`es_trabajador`),
  ADD KEY `idx_consumo_sustancias` (`consume_sustancias`);

--
-- Indexes for table `salud`
--
ALTER TABLE `salud`
  ADD PRIMARY KEY (`encuesta_id`),
  ADD KEY `idx_horas_sueno` (`horas_sueno`),
  ADD KEY `idx_medicamento` (`medicamento_controlado`),
  ADD KEY `idx_servicio_medico` (`servicio_medico`);

--
-- Indexes for table `servicios_casa`
--
ALTER TABLE `servicios_casa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_servicio` (`servicio`),
  ADD KEY `idx_encuesta` (`encuesta_id`);

--
-- Indexes for table `socioeconomica`
--
ALTER TABLE `socioeconomica`
  ADD PRIMARY KEY (`encuesta_id`),
  ADD KEY `idx_estado_civil` (`estado_civil`),
  ADD KEY `idx_hijos` (`hijos`),
  ADD KEY `idx_trabaja` (`trabaja_actualmente`),
  ADD KEY `idx_ingreso` (`ingreso_mensual_familiar`),
  ADD KEY `idx_horas_trabajo` (`horas_trabajo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `vulnerabilidad`
--
ALTER TABLE `vulnerabilidad`
  ADD PRIMARY KEY (`encuesta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `becas_recibidas`
--
ALTER TABLE `becas_recibidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comunidades_indigenas`
--
ALTER TABLE `comunidades_indigenas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consumo_alimentos`
--
ALTER TABLE `consumo_alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enfermedades_madre`
--
ALTER TABLE `enfermedades_madre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enfermedades_padre`
--
ALTER TABLE `enfermedades_padre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enfermedades_personales`
--
ALTER TABLE `enfermedades_personales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grupos_vulnerabilidad`
--
ALTER TABLE `grupos_vulnerabilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicios_casa`
--
ALTER TABLE `servicios_casa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `afirmaciones_suicidio`
--
ALTER TABLE `afirmaciones_suicidio`
  ADD CONSTRAINT `afirmaciones_suicidio_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ansiedad_depresion`
--
ALTER TABLE `ansiedad_depresion`
  ADD CONSTRAINT `ansiedad_depresion_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `becas_recibidas`
--
ALTER TABLE `becas_recibidas`
  ADD CONSTRAINT `becas_recibidas_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bienestar`
--
ALTER TABLE `bienestar`
  ADD CONSTRAINT `bienestar_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comunidades_indigenas`
--
ALTER TABLE `comunidades_indigenas`
  ADD CONSTRAINT `comunidades_indigenas_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consumo_alimentos`
--
ALTER TABLE `consumo_alimentos`
  ADD CONSTRAINT `consumo_alimentos_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consumo_sustancias`
--
ALTER TABLE `consumo_sustancias`
  ADD CONSTRAINT `consumo_sustancias_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `encuestas`
--
ALTER TABLE `encuestas`
  ADD CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enfermedades_madre`
--
ALTER TABLE `enfermedades_madre`
  ADD CONSTRAINT `enfermedades_madre_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enfermedades_padre`
--
ALTER TABLE `enfermedades_padre`
  ADD CONSTRAINT `enfermedades_padre_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enfermedades_personales`
--
ALTER TABLE `enfermedades_personales`
  ADD CONSTRAINT `enfermedades_personales_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grupos_vulnerabilidad`
--
ALTER TABLE `grupos_vulnerabilidad`
  ADD CONSTRAINT `grupos_vulnerabilidad_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_personal`
--
ALTER TABLE `info_personal`
  ADD CONSTRAINT `info_personal_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resultados_calculados`
--
ALTER TABLE `resultados_calculados`
  ADD CONSTRAINT `resultados_calculados_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salud`
--
ALTER TABLE `salud`
  ADD CONSTRAINT `salud_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `servicios_casa`
--
ALTER TABLE `servicios_casa`
  ADD CONSTRAINT `servicios_casa_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `socioeconomica`
--
ALTER TABLE `socioeconomica`
  ADD CONSTRAINT `socioeconomica_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vulnerabilidad`
--
ALTER TABLE `vulnerabilidad`
  ADD CONSTRAINT `vulnerabilidad_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
