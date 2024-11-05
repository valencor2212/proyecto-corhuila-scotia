-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2024 a las 03:45:13
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `docentes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_period`
--

CREATE TABLE `academic_period` (
  `id` bigint(20) NOT NULL,
  `end_date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `academic_period`
--

INSERT INTO `academic_period` (`id`, `end_date`, `name`, `semester`, `start_date`, `year`) VALUES
(2, '2028-12-15', 'Periodo 2028 B', 2, '2028-08-01', 2028),
(3, '2029-06-30', 'Periodo 2029 A', 1, '2029-02-01', 2029),
(4, '2029-12-15', 'Periodo 2029 B', 2, '2029-08-01', 2029),
(5, '2030-06-30', 'Periodo 2030 A', 1, '2030-02-01', 2030),
(6, '2030-12-15', 'Periodo 2030 B', 2, '2030-08-01', 2030),
(7, '2024-10-16', 'Periodo 2024 B', 2, '2024-10-16', 2024);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_program`
--

CREATE TABLE `academic_program` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `academic_program`
--

INSERT INTO `academic_program` (`id`, `name`) VALUES
(1, 'Administración de Empresas Agropecuarias'),
(2, 'Administración Comercial'),
(3, 'Administración Financiera y Bursátil'),
(4, 'Administración de Empresas Turísticas'),
(5, 'Medicina Veterinaria y Zootecnia'),
(6, 'Mercadeo y Publicidad'),
(7, 'Negocios Internacionales'),
(8, 'Ingeniería de Sistemas'),
(9, 'Ingeniería Ambiental'),
(10, 'Ingeniería en Energías Renovables'),
(11, 'Ingeniería Mecatrónica'),
(12, 'Ingeniería Industrial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_work`
--

CREATE TABLE `academic_work` (
  `id` bigint(20) NOT NULL,
  `estimated_semiannual_time` int(11) NOT NULL,
  `estimated_weekly_time` int(11) NOT NULL,
  `work_name` varchar(255) NOT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `academic_work`
--

INSERT INTO `academic_work` (`id`, `estimated_semiannual_time`, `estimated_weekly_time`, `work_name`, `campus`, `group_id`, `subject_id`) VALUES
(1, 0, 0, 'Test', '', 0, 0),
(2, 455555, 12333333, 'Preparación de clases', '', NULL, NULL),
(3, 3, 3, 'Evaluación de aprendizajes a estudiantes', '', 0, 0),
(4, 2, 2, 'Gestión de eventos académicos', '', 0, 0),
(5, 0, 0, 'Acompañamiento académico a estudiantes', '', 0, 0),
(6, 0, 0, 'Cursos de fortalecimiento dirigido a estudiantes', '', 0, 0),
(7, 0, 0, 'Asesoría en emprendimiento', '', 0, 0),
(8, 0, 3, 'Gestión de semilleros de investigación', '', 0, 0),
(9, 0, 0, 'Elaboración de propuestas para convocatorias de CTeI', '', 0, 0),
(10, 0, 0, 'Gestión de proyectos de investigación en CTeI', '', 0, 0),
(11, 0, 0, 'Dirección de grupos de investigación', '', 0, 0),
(12, 0, 0, 'Elaboración de artículos científicos y textos académicos', '', 0, 0),
(13, 0, 3, 'Gestión de proyectos de consultoría', '', 0, 0),
(14, 0, 0, 'Acompañamiento al sector empresarial', '', 0, 0),
(15, 0, 0, 'Participación en proyectos de intervención comunitaria', '', 0, 0),
(16, 0, 0, 'Gestión de proyectos culturales', '', 0, 0),
(17, 0, 0, 'Promoción de la educación artística', '', 0, 0),
(18, 0, 0, 'Divulgación de los valores culturales', '', 0, 0),
(19, 0, 0, 'Participación como jurado y/o asesor académico en trabajos de grado', '', 0, 0),
(20, 0, 0, 'Participación en procesos de registros calificados', '', 0, 0),
(21, 0, 0, 'Participación en procesos de acreditación', '', 0, 0),
(22, 0, 0, 'Participación en Consejos y Comités', '', 0, 0),
(23, 0, 0, 'Participación en procesos de autoevaluación', '', 0, 0),
(24, 0, 0, 'Participación en Investigaciones de mercado', '', 0, 0),
(25, 0, 0, 'Participación en procesos de formación de profesores', '', 0, 0),
(26, 0, 0, 'Programación y gestión de prácticas extramuros', '', 0, 0),
(27, 0, 0, 'Elaboración de exámenes para validaciones', '', 0, 0),
(28, 0, 0, 'Líder de CTeI, extensión y proyección social', '', 0, 0),
(29, 0, 0, 'Líder de resultados de aprendizaje', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faculty`
--

CREATE TABLE `faculty` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `faculty`
--

INSERT INTO `faculty` (`id`, `name`) VALUES
(4, 'Ciencias Económicas y Administrativas'),
(5, 'Ingeniería'),
(6, 'Medicina Veterinaria y Ciencias Afines'),
(7, 'Departamento de Lenguas Modernas'),
(8, 'Educación Continuada'),
(9, 'Bienestar Institucional'),
(10, 'Internacionalización'),
(11, 'Investigaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `group_number` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `capacity`, `group_number`, `semester`, `subject_id`) VALUES
(1, 30, 1, 1, 1),
(2, 25, 2, 1, 1),
(3, 35, 1, 1, 2),
(4, 40, 2, 1, 2),
(5, 45, 1, 1, 3),
(6, 35, 2, 1, 3),
(7, 30, 1, 1, 4),
(8, 25, 2, 1, 4),
(9, 20, 1, 1, 5),
(10, 15, 2, 1, 5),
(11, 40, 1, 1, 6),
(12, 35, 2, 1, 6),
(13, 45, 1, 1, 7),
(14, 40, 2, 1, 7),
(15, 30, 1, 1, 8),
(16, 25, 2, 1, 8),
(17, 25, 1, 1, 9),
(18, 20, 2, 1, 9),
(19, 30, 1, 1, 10),
(20, 25, 2, 1, 10),
(21, 30, 1, 1, 11),
(22, 25, 2, 1, 11),
(23, 30, 1, 1, 12),
(24, 25, 2, 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `academic_work_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `nombre`, `academic_work_id`) VALUES
(1, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(2, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(3, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(4, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(5, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(6, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(7, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(8, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(9, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(10, '', 'FO-GD-83: Planeación actividades académicas', 4),
(11, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(12, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(13, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(14, '', 'LISTADO DE ASISTENCIA', 4),
(15, '', 'REGISTRO FOTOGRÁFICO', 4),
(16, '', 'MATERIAL DE APOYO', 4),
(17, '', 'EVALUACIÓN DEL EVENTO', 4),
(18, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(19, '', 'SOPORTE DE LAS REMISIONES', 5),
(20, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(21, '', 'LISTADO DE ASISTENCIA', 6),
(22, '', 'RECURSOS EDUCATIVOS', 6),
(23, '', 'EVALUACIÓN DEL CURSO', 6),
(24, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(25, '', 'MATERIAL DE APOYO', 7),
(26, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(27, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(28, '', 'AGENDAS Y/O ACTAS', 8),
(29, '', 'LISTADOS DE ASISTENCIA', 8),
(30, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(31, '', 'PROPUESTA: Para convocatoria interna', 9),
(32, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(33, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(34, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(35, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(36, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(37, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(38, '', 'AGENDAS Y/O ACTAS', 11),
(39, '', 'LISTADOS DE ASISTENCIA', 11),
(40, '', 'ARTÍCULOS: De investigación sometidos', 12),
(41, '', 'LIBRO: Resultado de investigación publicado', 12),
(42, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(43, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(44, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(45, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(46, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(47, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(48, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(49, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(50, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(51, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(52, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(53, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(54, '', 'FO-GD-83: Planeación actividades académicas', 4),
(55, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(56, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(57, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(58, '', 'LISTADO DE ASISTENCIA', 4),
(59, '', 'REGISTRO FOTOGRÁFICO', 4),
(60, '', 'MATERIAL DE APOYO', 4),
(61, '', 'EVALUACIÓN DEL EVENTO', 4),
(62, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(63, '', 'SOPORTE DE LAS REMISIONES', 5),
(64, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(65, '', 'LISTADO DE ASISTENCIA', 6),
(66, '', 'RECURSOS EDUCATIVOS', 6),
(67, '', 'EVALUACIÓN DEL CURSO', 6),
(68, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(69, '', 'MATERIAL DE APOYO', 7),
(70, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(71, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(72, '', 'AGENDAS Y/O ACTAS', 8),
(73, '', 'LISTADOS DE ASISTENCIA', 8),
(74, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(75, '', 'PROPUESTA: Para convocatoria interna', 9),
(76, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(77, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(78, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(79, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(80, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(81, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(82, '', 'AGENDAS Y/O ACTAS', 11),
(83, '', 'LISTADOS DE ASISTENCIA', 11),
(84, '', 'ARTÍCULOS: De investigación sometidos', 12),
(85, '', 'LIBRO: Resultado de investigación publicado', 12),
(86, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(87, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(88, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(89, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(90, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(91, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(92, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(93, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(94, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(95, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(96, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(97, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(98, '', 'FO-GD-83: Planeación actividades académicas', 4),
(99, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(100, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(101, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(102, '', 'LISTADO DE ASISTENCIA', 4),
(103, '', 'REGISTRO FOTOGRÁFICO', 4),
(104, '', 'MATERIAL DE APOYO', 4),
(105, '', 'EVALUACIÓN DEL EVENTO', 4),
(106, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(107, '', 'SOPORTE DE LAS REMISIONES', 5),
(108, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(109, '', 'LISTADO DE ASISTENCIA', 6),
(110, '', 'RECURSOS EDUCATIVOS', 6),
(111, '', 'EVALUACIÓN DEL CURSO', 6),
(112, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(113, '', 'MATERIAL DE APOYO', 7),
(114, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(115, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(116, '', 'AGENDAS Y/O ACTAS', 8),
(117, '', 'LISTADOS DE ASISTENCIA', 8),
(118, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(119, '', 'PROPUESTA: Para convocatoria interna', 9),
(120, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(121, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(122, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(123, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(124, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(125, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(126, '', 'AGENDAS Y/O ACTAS', 11),
(127, '', 'LISTADOS DE ASISTENCIA', 11),
(128, '', 'ARTÍCULOS: De investigación sometidos', 12),
(129, '', 'LIBRO: Resultado de investigación publicado', 12),
(130, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(131, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(132, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(133, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(134, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(135, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(136, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(137, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(138, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(139, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(140, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(141, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(142, '', 'FO-GD-83: Planeación actividades académicas', 4),
(143, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(144, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(145, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(146, '', 'LISTADO DE ASISTENCIA', 4),
(147, '', 'REGISTRO FOTOGRÁFICO', 4),
(148, '', 'MATERIAL DE APOYO', 4),
(149, '', 'EVALUACIÓN DEL EVENTO', 4),
(150, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(151, '', 'SOPORTE DE LAS REMISIONES', 5),
(152, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(153, '', 'LISTADO DE ASISTENCIA', 6),
(154, '', 'RECURSOS EDUCATIVOS', 6),
(155, '', 'EVALUACIÓN DEL CURSO', 6),
(156, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(157, '', 'MATERIAL DE APOYO', 7),
(158, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(159, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(160, '', 'AGENDAS Y/O ACTAS', 8),
(161, '', 'LISTADOS DE ASISTENCIA', 8),
(162, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(163, '', 'PROPUESTA: Para convocatoria interna', 9),
(164, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(165, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(166, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(167, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(168, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(169, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(170, '', 'AGENDAS Y/O ACTAS', 11),
(171, '', 'LISTADOS DE ASISTENCIA', 11),
(172, '', 'ARTÍCULOS: De investigación sometidos', 12),
(173, '', 'LIBRO: Resultado de investigación publicado', 12),
(174, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(175, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(176, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(177, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(178, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(179, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(180, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(181, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(182, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(183, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(184, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(185, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(186, '', 'FO-GD-83: Planeación actividades académicas', 4),
(187, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(188, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(189, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(190, '', 'LISTADO DE ASISTENCIA', 4),
(191, '', 'REGISTRO FOTOGRÁFICO', 4),
(192, '', 'MATERIAL DE APOYO', 4),
(193, '', 'EVALUACIÓN DEL EVENTO', 4),
(194, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(195, '', 'SOPORTE DE LAS REMISIONES', 5),
(196, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(197, '', 'LISTADO DE ASISTENCIA', 6),
(198, '', 'RECURSOS EDUCATIVOS', 6),
(199, '', 'EVALUACIÓN DEL CURSO', 6),
(200, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(201, '', 'MATERIAL DE APOYO', 7),
(202, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(203, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(204, '', 'AGENDAS Y/O ACTAS', 8),
(205, '', 'LISTADOS DE ASISTENCIA', 8),
(206, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(207, '', 'PROPUESTA: Para convocatoria interna', 9),
(208, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(209, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(210, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(211, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(212, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(213, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(214, '', 'AGENDAS Y/O ACTAS', 11),
(215, '', 'LISTADOS DE ASISTENCIA', 11),
(216, '', 'ARTÍCULOS: De investigación sometidos', 12),
(217, '', 'LIBRO: Resultado de investigación publicado', 12),
(218, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(219, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(220, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(221, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(222, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(223, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(224, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(225, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(226, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(227, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(228, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(229, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(230, '', 'FO-GD-83: Planeación actividades académicas', 4),
(231, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(232, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(233, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(234, '', 'LISTADO DE ASISTENCIA', 4),
(235, '', 'REGISTRO FOTOGRÁFICO', 4),
(236, '', 'MATERIAL DE APOYO', 4),
(237, '', 'EVALUACIÓN DEL EVENTO', 4),
(238, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(239, '', 'SOPORTE DE LAS REMISIONES', 5),
(240, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(241, '', 'LISTADO DE ASISTENCIA', 6),
(242, '', 'RECURSOS EDUCATIVOS', 6),
(243, '', 'EVALUACIÓN DEL CURSO', 6),
(244, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(245, '', 'MATERIAL DE APOYO', 7),
(246, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(247, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(248, '', 'AGENDAS Y/O ACTAS', 8),
(249, '', 'LISTADOS DE ASISTENCIA', 8),
(250, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(251, '', 'PROPUESTA: Para convocatoria interna', 9),
(252, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(253, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(254, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(255, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(256, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(257, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(258, '', 'AGENDAS Y/O ACTAS', 11),
(259, '', 'LISTADOS DE ASISTENCIA', 11),
(260, '', 'ARTÍCULOS: De investigación sometidos', 12),
(261, '', 'LIBRO: Resultado de investigación publicado', 12),
(262, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(263, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(264, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(265, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(266, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(267, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(268, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(269, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(270, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(271, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(272, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(273, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(274, '', 'FO-GD-83: Planeación actividades académicas', 4),
(275, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(276, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(277, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(278, '', 'LISTADO DE ASISTENCIA', 4),
(279, '', 'REGISTRO FOTOGRÁFICO', 4),
(280, '', 'MATERIAL DE APOYO', 4),
(281, '', 'EVALUACIÓN DEL EVENTO', 4),
(282, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(283, '', 'SOPORTE DE LAS REMISIONES', 5),
(284, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(285, '', 'LISTADO DE ASISTENCIA', 6),
(286, '', 'RECURSOS EDUCATIVOS', 6),
(287, '', 'EVALUACIÓN DEL CURSO', 6),
(288, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(289, '', 'MATERIAL DE APOYO', 7),
(290, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(291, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(292, '', 'AGENDAS Y/O ACTAS', 8),
(293, '', 'LISTADOS DE ASISTENCIA', 8),
(294, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(295, '', 'PROPUESTA: Para convocatoria interna', 9),
(296, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(297, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(298, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(299, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(300, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(301, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(302, '', 'AGENDAS Y/O ACTAS', 11),
(303, '', 'LISTADOS DE ASISTENCIA', 11),
(304, '', 'ARTÍCULOS: De investigación sometidos', 12),
(305, '', 'LIBRO: Resultado de investigación publicado', 12),
(306, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(307, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(308, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(309, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(310, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(311, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(312, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(313, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(314, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(315, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(316, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(317, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(318, '', 'FO-GD-83: Planeación actividades académicas', 4),
(319, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(320, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(321, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(322, '', 'LISTADO DE ASISTENCIA', 4),
(323, '', 'REGISTRO FOTOGRÁFICO', 4),
(324, '', 'MATERIAL DE APOYO', 4),
(325, '', 'EVALUACIÓN DEL EVENTO', 4),
(326, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(327, '', 'SOPORTE DE LAS REMISIONES', 5),
(328, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(329, '', 'LISTADO DE ASISTENCIA', 6),
(330, '', 'RECURSOS EDUCATIVOS', 6),
(331, '', 'EVALUACIÓN DEL CURSO', 6),
(332, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(333, '', 'MATERIAL DE APOYO', 7),
(334, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(335, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(336, '', 'AGENDAS Y/O ACTAS', 8),
(337, '', 'LISTADOS DE ASISTENCIA', 8),
(338, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(339, '', 'PROPUESTA: Para convocatoria interna', 9),
(340, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(341, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(342, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(343, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(344, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(345, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(346, '', 'AGENDAS Y/O ACTAS', 11),
(347, '', 'LISTADOS DE ASISTENCIA', 11),
(348, '', 'ARTÍCULOS: De investigación sometidos', 12),
(349, '', 'LIBRO: Resultado de investigación publicado', 12),
(350, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(351, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(352, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(353, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(354, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(355, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(356, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(357, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(358, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(359, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(360, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(361, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(362, '', 'FO-GD-83: Planeación actividades académicas', 4),
(363, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(364, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(365, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(366, '', 'LISTADO DE ASISTENCIA', 4),
(367, '', 'REGISTRO FOTOGRÁFICO', 4),
(368, '', 'MATERIAL DE APOYO', 4),
(369, '', 'EVALUACIÓN DEL EVENTO', 4),
(370, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(371, '', 'SOPORTE DE LAS REMISIONES', 5),
(372, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(373, '', 'LISTADO DE ASISTENCIA', 6),
(374, '', 'RECURSOS EDUCATIVOS', 6),
(375, '', 'EVALUACIÓN DEL CURSO', 6),
(376, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(377, '', 'MATERIAL DE APOYO', 7),
(378, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(379, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(380, '', 'AGENDAS Y/O ACTAS', 8),
(381, '', 'LISTADOS DE ASISTENCIA', 8),
(382, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(383, '', 'PROPUESTA: Para convocatoria interna', 9),
(384, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(385, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(386, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(387, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(388, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(389, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(390, '', 'AGENDAS Y/O ACTAS', 11),
(391, '', 'LISTADOS DE ASISTENCIA', 11),
(392, '', 'ARTÍCULOS: De investigación sometidos', 12),
(393, '', 'LIBRO: Resultado de investigación publicado', 12),
(394, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(395, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(396, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(397, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(398, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(399, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(400, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(401, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(402, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(403, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(404, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(405, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(406, '', 'FO-GD-83: Planeación actividades académicas', 4),
(407, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(408, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(409, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(410, '', 'LISTADO DE ASISTENCIA', 4),
(411, '', 'REGISTRO FOTOGRÁFICO', 4),
(412, '', 'MATERIAL DE APOYO', 4),
(413, '', 'EVALUACIÓN DEL EVENTO', 4),
(414, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(415, '', 'SOPORTE DE LAS REMISIONES', 5),
(416, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(417, '', 'LISTADO DE ASISTENCIA', 6),
(418, '', 'RECURSOS EDUCATIVOS', 6),
(419, '', 'EVALUACIÓN DEL CURSO', 6),
(420, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(421, '', 'MATERIAL DE APOYO', 7),
(422, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(423, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(424, '', 'AGENDAS Y/O ACTAS', 8),
(425, '', 'LISTADOS DE ASISTENCIA', 8),
(426, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(427, '', 'PROPUESTA: Para convocatoria interna', 9),
(428, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(429, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(430, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(431, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(432, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(433, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(434, '', 'AGENDAS Y/O ACTAS', 11),
(435, '', 'LISTADOS DE ASISTENCIA', 11),
(436, '', 'ARTÍCULOS: De investigación sometidos', 12),
(437, '', 'LIBRO: Resultado de investigación publicado', 12),
(438, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(439, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(440, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(441, '', 'SYLLABUS DE LA ASIGNATURA', 2),
(442, '', 'MATERIAL EDUCATIVO: Subido en la plataforma Moodle', 2),
(443, '', 'MATERIALES EDUCATIVOS: Utilizados en cada encuentro sincrónico', 2),
(444, '', 'RECURSOS EDUCATIVOS: Videos: links, infografías, etc.', 2),
(445, '', 'ACTIVIDADES: Cuestionarios: Ejercicios, tareas, etc.', 2),
(446, '', 'PLANILLA DE CALIFICACIONES (CORHUILAPLUS+)', 3),
(447, '', 'EVIDENCIAS DE AUTOEVALUACIÓN 30%, 30% Y 40%', 3),
(448, '', 'EVIDENCIAS DE COEVALUACIÓN 30%, 30% Y 40%', 3),
(449, '', 'EVIDENCIAS DE HETEROEVALUACIÓN 30%, 30% Y 40%', 3),
(450, '', 'FO-GD-83: Planeación actividades académicas', 4),
(451, '', 'FO-GD-84: Agenda para actividades académicas', 4),
(452, '', 'FO-GD-85: Presupuesto para actividades académicas', 4),
(453, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 4),
(454, '', 'LISTADO DE ASISTENCIA', 4),
(455, '', 'REGISTRO FOTOGRÁFICO', 4),
(456, '', 'MATERIAL DE APOYO', 4),
(457, '', 'EVALUACIÓN DEL EVENTO', 4),
(458, '', 'TRES REPORTES: Sobre el desarrollo y avances entregados', 5),
(459, '', 'SOPORTE DE LAS REMISIONES', 5),
(460, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 6),
(461, '', 'LISTADO DE ASISTENCIA', 6),
(462, '', 'RECURSOS EDUCATIVOS', 6),
(463, '', 'EVALUACIÓN DEL CURSO', 6),
(464, '', 'INFORME EJECUTIVO: Del desarrollo de la actividad', 7),
(465, '', 'MATERIAL DE APOYO', 7),
(466, '', 'EVALUACIÓN DE LA ASESORÍA', 7),
(467, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 8),
(468, '', 'AGENDAS Y/O ACTAS', 8),
(469, '', 'LISTADOS DE ASISTENCIA', 8),
(470, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 8),
(471, '', 'PROPUESTA: Para convocatoria interna', 9),
(472, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 10),
(473, '', 'PROYECTOS FINALIZADOS: Informe final técnico y financiero', 10),
(474, '', 'CONSULTORÍA REALIZADA: Informe final', 10),
(475, '', 'REGISTRO DE SOFTWARE: Realizado', 10),
(476, '', 'REGISTRO DE PATENTE: Avance en proceso o convalidada', 10),
(477, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 11),
(478, '', 'AGENDAS Y/O ACTAS', 11),
(479, '', 'LISTADOS DE ASISTENCIA', 11),
(480, '', 'ARTÍCULOS: De investigación sometidos', 12),
(481, '', 'LIBRO: Resultado de investigación publicado', 12),
(482, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 13),
(483, '', 'PROYECTOS FINALIZADOS: Informe final', 13),
(484, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 13),
(485, '', 'INFORME DE GESTIÓN: Del acompañamiento al sector empresarial', 14),
(486, '', 'ACTAS DE REUNIÓN', 14),
(487, '', 'LISTADOS DE ASISTENCIA', 14),
(488, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 14),
(489, '', 'PROYECTOS EN EJECUCIÓN: Informes parciales', 15),
(490, '', 'PROYECTOS FINALIZADOS: Informe final', 15),
(491, '', 'AGENDAS Y/O ACTAS', 15),
(492, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 15),
(493, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 16),
(494, '', 'AGENDAS Y/O ACTAS', 16),
(495, '', 'LISTADOS DE ASISTENCIA', 16),
(496, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 16),
(497, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 17),
(498, '', 'AGENDAS Y/O ACTAS', 17),
(499, '', 'LISTADOS DE ASISTENCIA', 17),
(500, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 18),
(501, '', 'OFICIO DE RETROALIMENTACIÓN: De opciones de grado para pregrado y posgrado', 19),
(502, '', 'DOCUMENTOS ASIGNADOS: Para el registro calificado', 20),
(503, '', 'DOCUMENTOS ASIGNADOS: Para la acreditación del programa académico', 21),
(504, '', 'REPORTE DE ASISTENCIA: A Consejos y Comités', 22),
(505, '', 'DOCUMENTOS ASIGNADOS: En el proceso de autoevaluación', 23),
(506, '', 'DOCUMENTO: Estudio de mercado', 24),
(507, '', 'REPORTE DE ASISTENCIA: A los procesos de formación', 25),
(508, '', 'FORMATO DE PLANEACIÓN: De práctica extramuros - FO-GD-25', 26),
(509, '', 'INFORME DE PRÁCTICA: Extramuros - FO-GD-24', 26),
(510, '', 'LISTADOS DE ASISTENCIA', 26),
(511, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 26),
(512, '', 'ACTA DE VALIDACIÓN: FO-GD-46', 27),
(513, 'Durante el periodo académico', 'INFORME DE GESTIÓN', 28),
(514, '', 'AGENDAS Y/O ACTAS', 28),
(515, '', 'LISTADOS DE ASISTENCIA', 28),
(516, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 28),
(517, '', 'MATERIAL EDUCATIVO UTILIZADO', 28),
(518, '', 'RECOPILACIÓN DE productosS: De proyectos de CTeI, extensión y proyección social', 28),
(519, '', 'INFORME DE GESTIÓN: Durante el periodo académico', 29),
(520, '', 'AGENDAS Y/O ACTAS', 29),
(521, '', 'LISTADOS DE ASISTENCIA', 29),
(522, '', 'REGISTRO FOTOGRÁFICO Y/O VIDEO', 29),
(523, '', 'MATERIAL EDUCATIVO UTILIZADO', 29),
(524, '', 'MATRIZ DE RESULTADOS: De aprendizaje del programa - RAP', 29),
(525, '', 'INFORME DE EVALUACIÓN: De los resultados de aprendizaje del programa - RAP', 29),
(526, '', 'INSTRUMENTOS: Para la evaluación de los resultados de aprendizaje del programa - RAP', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `program_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `name`, `program_id`) VALUES
(1, 'AGR101', 'Gestión de Recursos Naturales', 1),
(2, 'AGR102', 'Producción Agropecuaria', 1),
(3, 'AGR103', 'Administración Rural', 1),
(4, 'AGR104', 'Sistemas de Información Agrícola', 1),
(5, 'AGR105', 'Economía Agrícola', 1),
(6, 'AGR106', 'Desarrollo Rural', 1),
(7, 'AGR107', 'Comercialización de Productos Agrícolas', 1),
(8, 'AGR108', 'Manejo de Maquinaria Agrícola', 1),
(9, 'AGR109', 'Cálculo Agropecuario', 1),
(10, 'AGR110', 'Manejo de Cultivos Tropicales', 1),
(11, 'FIN301', 'Análisis Financiero', 3),
(12, 'FIN302', 'Matemáticas Financieras', 3),
(13, 'FIN303', 'Mercados de Capitales', 3),
(14, 'FIN304', 'Gestión de Riesgos Financieros', 3),
(15, 'FIN305', 'Contabilidad Financiera', 3),
(16, 'FIN306', 'Economía Financiera', 3),
(17, 'FIN307', 'Inversiones y Portafolios', 3),
(18, 'FIN308', 'Finanzas Corporativas', 3),
(19, 'FIN309', 'Modelos de Valoración', 3),
(20, 'FIN310', 'Análisis de Estados Financieros', 3),
(21, 'COM201', 'Administración Estratégica', 2),
(22, 'COM202', 'Investigación de Mercados', 2),
(23, 'COM203', 'Gestión de Ventas', 2),
(24, 'COM204', 'Comportamiento del Consumidor', 2),
(25, 'COM205', 'Comercio Internacional', 2),
(26, 'COM206', 'Gestión de la Calidad', 2),
(27, 'COM207', 'Marketing Digital', 2),
(28, 'COM208', 'Logística Empresarial', 2),
(29, 'COM209', 'Cálculo Comercial', 2),
(30, 'COM210', 'Gestión Financiera', 2),
(31, 'TUR401', 'Fundamentos del Turismo', 4),
(32, 'TUR402', 'Gestión de Destinos Turísticos', 4),
(33, 'TUR403', 'Marketing Turístico', 4),
(34, 'TUR404', 'Patrimonio Cultural y Natural', 4),
(35, 'TUR405', 'Turismo Sostenible', 4),
(36, 'TUR406', 'Administración Hotelera', 4),
(37, 'TUR407', 'Comportamiento del Consumidor Turístico', 4),
(38, 'TUR408', 'Gestión de Agencias de Viaje', 4),
(39, 'TUR409', 'Legislación Turística', 4),
(40, 'TUR410', 'Planificación y Desarrollo Turístico', 4),
(41, 'VET501', 'Anatomía Veterinaria', 5),
(42, 'VET502', 'Fisiología Animal', 5),
(43, 'VET503', 'Parasitología Veterinaria', 5),
(44, 'VET504', 'Patología General', 5),
(45, 'VET505', 'Farmacología y Toxicología', 5),
(46, 'VET506', 'Nutrición Animal', 5),
(47, 'VET507', 'Cirugía Veterinaria', 5),
(48, 'VET508', 'Manejo de Grandes Animales', 5),
(49, 'VET509', 'Reproducción Animal', 5),
(50, 'VET510', 'Epidemiología Veterinaria', 5),
(51, 'MKT601', 'Estrategias de Marketing', 6),
(52, 'MKT602', 'Publicidad Digital', 6),
(53, 'MKT603', 'Investigación de Mercados', 6),
(54, 'MKT604', 'Gestión de Marcas', 6),
(55, 'MKT605', 'Promoción y Merchandising', 6),
(56, 'MKT606', 'Comportamiento del Consumidor', 6),
(57, 'MKT607', 'Marketing Internacional', 6),
(58, 'MKT608', 'Marketing de Servicios', 6),
(59, 'MKT609', 'Ética en la Publicidad', 6),
(60, 'MKT610', 'Medios Publicitarios', 6),
(61, 'NEG701', 'Comercio Internacional', 7),
(62, 'NEG702', 'Logística Internacional', 7),
(63, 'NEG703', 'Negociación Internacional', 7),
(64, 'NEG704', 'Economía Internacional', 7),
(65, 'NEG705', 'Finanzas Internacionales', 7),
(66, 'NEG706', 'Marketing Global', 7),
(67, 'NEG707', 'Contratación Internacional', 7),
(68, 'NEG708', 'Política Comercial', 7),
(69, 'NEG709', 'Gestión de Importaciones y Exportaciones', 7),
(70, 'NEG710', 'Derecho Internacional de los Negocios', 7),
(71, 'SIS801', 'Programación Orientada a Objetos', 8),
(72, 'SIS802', 'Estructuras de Datos', 8),
(73, 'SIS803', 'Sistemas Operativos', 8),
(74, 'SIS804', 'Bases de Datos', 8),
(75, 'SIS805', 'Redes de Computadoras', 8),
(76, 'SIS806', 'Ingeniería de Software', 8),
(77, 'SIS807', 'Desarrollo Web', 8),
(78, 'SIS808', 'Seguridad Informática', 8),
(79, 'SIS809', 'Inteligencia Artificial', 8),
(80, 'SIS810', 'Gestión de Proyectos TI', 8),
(81, 'AMB901', 'Ecología Aplicada', 9),
(82, 'AMB902', 'Saneamiento Ambiental', 9),
(83, 'AMB903', 'Gestión de Residuos Sólidos', 9),
(84, 'AMB904', 'Impacto Ambiental', 9),
(85, 'AMB905', 'Energías Renovables', 9),
(86, 'AMB906', 'Química Ambiental', 9),
(87, 'AMB907', 'Modelos de Simulación Ambiental', 9),
(88, 'AMB908', 'Tecnología de Aguas Residuales', 9),
(89, 'AMB909', 'Cambio Climático', 9),
(90, 'AMB910', 'Legislación Ambiental', 9),
(91, 'ENE101', 'Energía Solar', 10),
(92, 'ENE102', 'Energía Eólica', 10),
(93, 'ENE103', 'Biomasa y Bioenergía', 10),
(94, 'ENE104', 'Hidrógeno y Pilas de Combustible', 10),
(95, 'ENE105', 'Sistemas Fotovoltaicos', 10),
(96, 'ENE106', 'Sistemas de Energía Híbrida', 10),
(97, 'ENE107', 'Eficiencia Energética', 10),
(98, 'ENE108', 'Política Energética', 10),
(99, 'ENE109', 'Sistemas de Almacenamiento de Energía', 10),
(100, 'ENE110', 'Mercados Energéticos', 10),
(101, 'MEC1101', 'Cálculo Vectorial', 11),
(102, 'MEC1102', 'Electrónica Digital', 11),
(103, 'MEC1103', 'Sistemas de Control', 11),
(104, 'MEC1104', 'Robótica Industrial', 11),
(105, 'MEC1105', 'Sistemas Hidráulicos', 11),
(106, 'MEC1106', 'Instrumentación Electrónica', 11),
(107, 'MEC1107', 'Automatización de Procesos', 11),
(108, 'MEC1108', 'Diseño de Sistemas Mecatrónicos', 11),
(109, 'MEC1109', 'Sensores y Actuadores', 11),
(110, 'IND1201', 'Investigación de Operaciones', 12),
(111, 'IND1202', 'Producción Industrial', 12),
(112, 'IND1203', 'Seguridad Industrial', 12),
(113, 'IND1204', 'Gestión de Calidad', 12),
(114, 'IND1205', 'Planeación de la Producción', 12),
(115, 'IND1206', 'Ergonomía y Seguridad en el Trabajo', 12),
(116, 'IND1207', 'Logística y Cadena de Suministro', 12),
(117, 'IND1208', 'Simulación de Sistemas Industriales', 12),
(118, 'IND1209', 'Gestión de Recursos Humanos', 12),
(119, 'IND1210', 'Ingeniería Económica', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) NOT NULL,
  `join_date` date NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `academic_period_id` bigint(20) DEFAULT NULL,
  `program_id` bigint(20) DEFAULT NULL,
  `faculty_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `join_date`, `nombre`, `password`, `username`, `academic_period_id`, `program_id`, `faculty_id`) VALUES
(1, '2024-10-15', 'Valentina Cordoba', '$2a$10$hFl/Hc5X5/se2PXnG3mzE.SAjgQfjA3ut7Rbmc/YISes8gNQjD0ru', 'valentina1', NULL, NULL, NULL),
(3, '2024-10-16', 'Valentina Cordoba', '$2a$10$4IQ6knSO05Q6C4vcM5RgjeMSWYKLJHbBi.FftIaFimwf7Myqvy2lu', 'valentinat', NULL, NULL, NULL),
(4, '2024-10-16', 'Valentina Cordoba', '$2a$10$5FOtz4XRXKcsgG7dv4qcLe55EA6DzlNh9hmxxVzcs7e4ICdXOBSou', 'valentinatest', 7, 8, 5),
(8, '2024-11-04', 'prueba prueba', '$2a$10$DW5jlTH5RX9Ns1MZUJXmrug9PIB7yZUVfleG61LXgEN2e5JnVHwLy', 'prueba', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academic_period`
--
ALTER TABLE `academic_period`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `academic_program`
--
ALTER TABLE `academic_program`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `academic_work`
--
ALTER TABLE `academic_work`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKg9g15d9vjhs8odqq4x5ci6fgs` (`subject_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkv1tpr0btap86k5h3no39o9ml` (`academic_work_id`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6mflgyhdekui362xp7ch3f8le` (`program_id`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKeoxl6ynhdahri3g5qfrdhflwv` (`username`),
  ADD KEY `FK2k74juf02xljlx0i0pl94gmfx` (`academic_period_id`),
  ADD KEY `FKpy81xl09u9dduiyyjsor8hwgh` (`program_id`),
  ADD KEY `FK9eg1sq70c7h7s2mov3aq6529a` (`faculty_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `academic_period`
--
ALTER TABLE `academic_period`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `academic_program`
--
ALTER TABLE `academic_program`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `academic_work`
--
ALTER TABLE `academic_work`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `FKg9g15d9vjhs8odqq4x5ci6fgs` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FKkv1tpr0btap86k5h3no39o9ml` FOREIGN KEY (`academic_work_id`) REFERENCES `academic_work` (`id`);

--
-- Filtros para la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `FK6mflgyhdekui362xp7ch3f8le` FOREIGN KEY (`program_id`) REFERENCES `academic_program` (`id`);

--
-- Filtros para la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `FK2k74juf02xljlx0i0pl94gmfx` FOREIGN KEY (`academic_period_id`) REFERENCES `academic_period` (`id`),
  ADD CONSTRAINT `FK9eg1sq70c7h7s2mov3aq6529a` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `FKpy81xl09u9dduiyyjsor8hwgh` FOREIGN KEY (`program_id`) REFERENCES `academic_program` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
