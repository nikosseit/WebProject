-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 18 Σεπ 2023 στις 23:19:01
-- Έκδοση διακομιστή: 10.4.28-MariaDB
-- Έκδοση PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `web_project`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tokens` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `monthly_score` int(11) NOT NULL,
  `monthly_tokens` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `admins`
--

INSERT INTO `admins` (`id`, `user_name`, `password`, `email`, `tokens`, `score`, `monthly_score`, `monthly_tokens`, `likes`, `dislikes`) VALUES
(1, 'Giannis', 'Giannis1!', 'giannis@gmail.com', 0, 40, 40, 0, 2, 0),
(2, 'Nikos', 'Nikos1!', 'nikos@gmail.com', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `awards`
--

CREATE TABLE `awards` (
  `awards_id` tinyint(4) NOT NULL DEFAULT 1,
  `tokens` int(11) DEFAULT 0,
  `made` tinyint(1) NOT NULL DEFAULT 0,
  `given` tinyint(1) NOT NULL DEFAULT 0
) ;

--
-- Άδειασμα δεδομένων του πίνακα `awards`
--

INSERT INTO `awards` (`awards_id`, `tokens`, `made`, `given`) VALUES
(1, 300, 0, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `categories`
--

CREATE TABLE `categories` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
('662418cbd02e435280148dbb8892782a', 'Για κατοικίδια'),
('8e8117f7d9d64cf1a931a351eb15bd69', 'Προσωπική φροντίδα'),
('a8ac6be68b53443bbd93b229e2f9cd34', 'Ποτά - Αναψυκτικά'),
('ee0022e7b1b34eb2b834ea334cda52e7', 'Τρόφιμα');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `daily_prices`
--

CREATE TABLE `daily_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `daily_prices`
--

INSERT INTO `daily_prices` (`id`, `product_id`, `date`, `price`) VALUES
(1, 699, '2023-09-26', 1.89),
(2, 699, '2023-09-25', 1.03),
(3, 699, '2023-09-28', 1.33),
(4, 699, '2023-09-27', 0.64),
(5, 699, '2023-09-29', 0.84),
(6, 699, '2023-09-24', 1.82),
(7, 699, '2023-09-30', 3.26),
(8, 896, '2023-09-26', 4.42),
(9, 896, '2023-09-25', 4.23),
(10, 896, '2023-09-28', 2.1),
(11, 896, '2023-09-27', 2.54),
(12, 896, '2023-09-29', 3.35),
(13, 896, '2023-09-24', 3.35),
(14, 896, '2023-09-30', 3.94),
(15, 1085, '2023-09-26', 1.73),
(16, 1085, '2023-09-25', 0.91),
(17, 1085, '2023-09-28', 0.6),
(18, 1085, '2023-09-27', 2.29),
(19, 1085, '2023-09-29', 3.39),
(20, 1085, '2023-09-24', 3.44),
(21, 1085, '2023-09-30', 2.95),
(22, 1132, '2023-09-26', 4.18),
(23, 1132, '2023-09-25', 0.59),
(24, 1132, '2023-09-28', 3.13),
(25, 1132, '2023-09-27', 2.54),
(26, 1132, '2023-09-29', 0.51),
(27, 1132, '2023-09-24', 2.33),
(28, 1132, '2023-09-30', 2.61),
(29, 1154, '2023-09-26', 2.38),
(30, 1154, '2023-09-25', 1.16),
(31, 1154, '2023-09-28', 1.7),
(32, 1154, '2023-09-27', 2.52),
(33, 1154, '2023-09-29', 2.63),
(34, 1154, '2023-09-24', 0.85),
(35, 1154, '2023-09-30', 3.24),
(36, 774, '2023-09-26', 2.37),
(37, 774, '2023-09-25', 0.75),
(38, 774, '2023-09-28', 1.22),
(39, 774, '2023-09-27', 0.87),
(40, 774, '2023-09-29', 3.86),
(41, 774, '2023-09-24', 0.85),
(42, 774, '2023-09-30', 4.22),
(43, 897, '2023-09-26', 3.44),
(44, 897, '2023-09-25', 4.48),
(45, 897, '2023-09-28', 2.96),
(46, 897, '2023-09-27', 2.38),
(47, 897, '2023-09-29', 2.72),
(48, 897, '2023-09-24', 1.67),
(49, 897, '2023-09-30', 0.87),
(50, 930, '2023-09-26', 4.16),
(51, 930, '2023-09-25', 4.33),
(52, 930, '2023-09-28', 1.44),
(53, 930, '2023-09-27', 3.5),
(54, 930, '2023-09-29', 3.99),
(55, 930, '2023-09-24', 4.48),
(56, 930, '2023-09-30', 3.48),
(57, 1018, '2023-09-26', 4.25),
(58, 1018, '2023-09-25', 3.38),
(59, 1018, '2023-09-28', 2.04),
(60, 1018, '2023-09-27', 2.86),
(61, 1018, '2023-09-29', 3.09),
(62, 1018, '2023-09-24', 1.34),
(63, 1018, '2023-09-30', 1.94),
(64, 1110, '2023-09-26', 2.65),
(65, 1110, '2023-09-25', 3.93),
(66, 1110, '2023-09-28', 3.53),
(67, 1110, '2023-09-27', 3.14),
(68, 1110, '2023-09-29', 2.59),
(69, 1110, '2023-09-24', 2.04),
(70, 1110, '2023-09-30', 0.88),
(71, 978, '2023-09-26', 1.93),
(72, 978, '2023-09-25', 3.4),
(73, 978, '2023-09-28', 2.34),
(74, 978, '2023-09-27', 3.34),
(75, 978, '2023-09-29', 1.37),
(76, 978, '2023-09-24', 2.07),
(77, 978, '2023-09-30', 3.43),
(78, 980, '2023-09-26', 1.84),
(79, 980, '2023-09-25', 4.27),
(80, 980, '2023-09-28', 3.15),
(81, 980, '2023-09-27', 1.81),
(82, 980, '2023-09-29', 3.13),
(83, 980, '2023-09-24', 0.79),
(84, 980, '2023-09-30', 0.86),
(85, 1142, '2023-09-26', 2.57),
(86, 1142, '2023-09-25', 2.56),
(87, 1142, '2023-09-28', 2.29),
(88, 1142, '2023-09-27', 3.28),
(89, 1142, '2023-09-29', 4.46),
(90, 1142, '2023-09-24', 1.99),
(91, 1142, '2023-09-30', 3.45),
(92, 1201, '2023-09-26', 3.18),
(93, 1201, '2023-09-25', 1.88),
(94, 1201, '2023-09-28', 2.89),
(95, 1201, '2023-09-27', 2.37),
(96, 1201, '2023-09-29', 0.95),
(97, 1201, '2023-09-24', 3.7),
(98, 1201, '2023-09-30', 3.02),
(99, 1336, '2023-09-26', 0.94),
(100, 1336, '2023-09-25', 0.95),
(101, 1336, '2023-09-28', 0.51),
(102, 1336, '2023-09-27', 3.55),
(103, 1336, '2023-09-29', 3.66),
(104, 1336, '2023-09-24', 1.14),
(105, 1336, '2023-09-30', 2.84),
(106, 1060, '2023-09-26', 1.82),
(107, 1060, '2023-09-25', 4.14),
(108, 1060, '2023-09-28', 0.79),
(109, 1060, '2023-09-27', 3.15),
(110, 1060, '2023-09-29', 3.5),
(111, 1060, '2023-09-24', 3.6),
(112, 1060, '2023-09-30', 2.65),
(113, 1112, '2023-09-26', 4.06),
(114, 1112, '2023-09-25', 3.47),
(115, 1112, '2023-09-28', 3.1),
(116, 1112, '2023-09-27', 2.7),
(117, 1112, '2023-09-29', 4.23),
(118, 1112, '2023-09-24', 3.33),
(119, 1112, '2023-09-30', 2.66),
(120, 1224, '2023-09-26', 3.27),
(121, 1224, '2023-09-25', 2.98),
(122, 1224, '2023-09-28', 1.38),
(123, 1224, '2023-09-27', 3.73),
(124, 1224, '2023-09-29', 2.58),
(125, 1224, '2023-09-24', 0.98),
(126, 1224, '2023-09-30', 2.36),
(127, 1236, '2023-09-26', 0.76),
(128, 1236, '2023-09-25', 1.81),
(129, 1236, '2023-09-28', 4.48),
(130, 1236, '2023-09-27', 1.42),
(131, 1236, '2023-09-29', 4.42),
(132, 1236, '2023-09-24', 1.55),
(133, 1236, '2023-09-30', 2.98),
(134, 1260, '2023-09-26', 1.32),
(135, 1260, '2023-09-25', 3.5),
(136, 1260, '2023-09-28', 2.92),
(137, 1260, '2023-09-27', 2.35),
(138, 1260, '2023-09-29', 4.44),
(139, 1260, '2023-09-24', 1.07),
(140, 1260, '2023-09-30', 3.25),
(141, 379, '2023-09-26', 3.52),
(142, 379, '2023-09-25', 4.13),
(143, 379, '2023-09-28', 2.02),
(144, 379, '2023-09-27', 4.43),
(145, 379, '2023-09-29', 2.81),
(146, 379, '2023-09-24', 2),
(147, 379, '2023-09-30', 1.03),
(148, 414, '2023-09-26', 1.07),
(149, 414, '2023-09-25', 1.16),
(150, 414, '2023-09-28', 3.16),
(151, 414, '2023-09-27', 2.01),
(152, 414, '2023-09-29', 3.8),
(153, 414, '2023-09-24', 3.73),
(154, 414, '2023-09-30', 1.58),
(155, 516, '2023-09-26', 0.91),
(156, 516, '2023-09-25', 2.7),
(157, 516, '2023-09-28', 1.01),
(158, 516, '2023-09-27', 2.05),
(159, 516, '2023-09-29', 3.68),
(160, 516, '2023-09-24', 1.82),
(161, 516, '2023-09-30', 1.85),
(162, 1064, '2023-09-26', 3.36),
(163, 1064, '2023-09-25', 4.42),
(164, 1064, '2023-09-28', 1.28),
(165, 1064, '2023-09-27', 2.8),
(166, 1064, '2023-09-29', 1.04),
(167, 1064, '2023-09-24', 2.02),
(168, 1064, '2023-09-30', 1.42),
(169, 1143, '2023-09-26', 3.45),
(170, 1143, '2023-09-25', 1.98),
(171, 1143, '2023-09-28', 3.66),
(172, 1143, '2023-09-27', 2.46),
(173, 1143, '2023-09-29', 1.59),
(174, 1143, '2023-09-24', 3.43),
(175, 1143, '2023-09-30', 1.15),
(176, 1011, '2023-09-26', 2.12),
(177, 1011, '2023-09-25', 0.9),
(178, 1011, '2023-09-28', 1.88),
(179, 1011, '2023-09-27', 3.34),
(180, 1011, '2023-09-29', 2.81),
(181, 1011, '2023-09-24', 1.87),
(182, 1011, '2023-09-30', 4.39),
(183, 1022, '2023-09-26', 0.95),
(184, 1022, '2023-09-25', 3.96),
(185, 1022, '2023-09-28', 2.94),
(186, 1022, '2023-09-27', 1.94),
(187, 1022, '2023-09-29', 1.39),
(188, 1022, '2023-09-24', 2.97),
(189, 1022, '2023-09-30', 2.49),
(190, 1175, '2023-09-26', 1.64),
(191, 1175, '2023-09-25', 1.84),
(192, 1175, '2023-09-28', 1.75),
(193, 1175, '2023-09-27', 4.32),
(194, 1175, '2023-09-29', 4.23),
(195, 1175, '2023-09-24', 4.5),
(196, 1175, '2023-09-30', 3.56),
(197, 1301, '2023-09-26', 2.33),
(198, 1301, '2023-09-25', 3.72),
(199, 1301, '2023-09-28', 1.48),
(200, 1301, '2023-09-27', 2.9),
(201, 1301, '2023-09-29', 3.04),
(202, 1301, '2023-09-24', 4),
(203, 1301, '2023-09-30', 1.49),
(204, 1348, '2023-09-26', 1.73),
(205, 1348, '2023-09-25', 3.28),
(206, 1348, '2023-09-28', 3.73),
(207, 1348, '2023-09-27', 0.69),
(208, 1348, '2023-09-29', 2.69),
(209, 1348, '2023-09-24', 1.52),
(210, 1348, '2023-09-30', 3.09),
(211, 1077, '2023-09-26', 0.81),
(212, 1077, '2023-09-25', 3.04),
(213, 1077, '2023-09-28', 4.45),
(214, 1077, '2023-09-27', 2.75),
(215, 1077, '2023-09-29', 3.26),
(216, 1077, '2023-09-24', 1.35),
(217, 1077, '2023-09-30', 1.64),
(218, 1152, '2023-09-26', 0.85),
(219, 1152, '2023-09-25', 3.29),
(220, 1152, '2023-09-28', 2.85),
(221, 1152, '2023-09-27', 0.51),
(222, 1152, '2023-09-29', 2.53),
(223, 1152, '2023-09-24', 1.66),
(224, 1152, '2023-09-30', 1.39),
(225, 1153, '2023-09-26', 3.52),
(226, 1153, '2023-09-25', 2.32),
(227, 1153, '2023-09-28', 3.91),
(228, 1153, '2023-09-27', 4.41),
(229, 1153, '2023-09-29', 2),
(230, 1153, '2023-09-24', 2.15),
(231, 1153, '2023-09-30', 3.42),
(232, 1322, '2023-09-26', 3.56),
(233, 1322, '2023-09-25', 1.12),
(234, 1322, '2023-09-28', 0.7),
(235, 1322, '2023-09-27', 1.1),
(236, 1322, '2023-09-29', 1.89),
(237, 1322, '2023-09-24', 2.02),
(238, 1322, '2023-09-30', 3.58),
(239, 1332, '2023-09-26', 3.45),
(240, 1332, '2023-09-25', 1.22),
(241, 1332, '2023-09-28', 4.16),
(242, 1332, '2023-09-27', 2.59),
(243, 1332, '2023-09-29', 0.99),
(244, 1332, '2023-09-24', 3.13),
(245, 1332, '2023-09-30', 2.62),
(246, 1178, '2023-09-26', 1.02),
(247, 1178, '2023-09-25', 1.66),
(248, 1178, '2023-09-28', 4.22),
(249, 1178, '2023-09-27', 1.65),
(250, 1178, '2023-09-29', 1.31),
(251, 1178, '2023-09-24', 1.66),
(252, 1178, '2023-09-30', 1.88),
(253, 1203, '2023-09-26', 2.9),
(254, 1203, '2023-09-25', 4.08),
(255, 1203, '2023-09-28', 0.67),
(256, 1203, '2023-09-27', 4.06),
(257, 1203, '2023-09-29', 1.11),
(258, 1203, '2023-09-24', 2.25),
(259, 1203, '2023-09-30', 0.84),
(260, 1266, '2023-09-26', 2.65),
(261, 1266, '2023-09-25', 1.81),
(262, 1266, '2023-09-28', 2.45),
(263, 1266, '2023-09-27', 0.58),
(264, 1266, '2023-09-29', 2.23),
(265, 1266, '2023-09-24', 2.43),
(266, 1266, '2023-09-30', 0.53),
(267, 1305, '2023-09-26', 3.12),
(268, 1305, '2023-09-25', 3.59),
(269, 1305, '2023-09-28', 4.25),
(270, 1305, '2023-09-27', 1.79),
(271, 1305, '2023-09-29', 2.52),
(272, 1305, '2023-09-24', 1.7),
(273, 1305, '2023-09-30', 4.27),
(274, 1337, '2023-09-26', 3.25),
(275, 1337, '2023-09-25', 4.47),
(276, 1337, '2023-09-28', 1.62),
(277, 1337, '2023-09-27', 2.8),
(278, 1337, '2023-09-29', 3.62),
(279, 1337, '2023-09-24', 2.57),
(280, 1337, '2023-09-30', 2.09);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `subcategory`) VALUES
(379, 'Aim Οδ/Μα Παιδ 2/6ετων 50ml', '8e8117f7d9d64cf1a931a351eb15bd69', '26e416b6efa745218f810c34678734b2'),
(414, 'Aim Οδ/μα White System 75ml', '8e8117f7d9d64cf1a931a351eb15bd69', '26e416b6efa745218f810c34678734b2'),
(516, 'Sensodyne Οδ/μα Complete Protection 75ml', '8e8117f7d9d64cf1a931a351eb15bd69', '26e416b6efa745218f810c34678734b2'),
(699, 'Pedigree Denta Stix Small Σκύλου 110γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(774, 'Purina One Γατ/Φή Ξηρά Βοδ/Σιτ 800γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(896, 'Pedigree Denta Stix Med Σκύλου 180γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(897, 'Purina Gold Gourmet Γατ/Φή Μους Ψάρι 85γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(930, 'Friskies Γατ/Φή Πατέ Κοτ/Λαχ 400γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(978, 'Μήλα Φουτζι Εγχ ', 'ee0022e7b1b34eb2b834ea334cda52e7', 'ea47cc6b2f6743169188da125e1f3761'),
(980, 'Πορτοκ Μερλίν - Λανε Λειτ- Ναβελ Λειτ Εγχ Χυμ Συσκ/Να', 'ee0022e7b1b34eb2b834ea334cda52e7', 'ea47cc6b2f6743169188da125e1f3761'),
(1011, 'Everyday Σερβ/Κια Norm All Cotton 24τεμ', '8e8117f7d9d64cf1a931a351eb15bd69', '2bce84e7df694ab1b81486aa2baf555d'),
(1018, 'Friskies Γατ/Φή Πατέ Μοσχάρι 400γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1022, 'Everyday Σερβ Norm/Ultra Plus Hyp 18τεμ', '8e8117f7d9d64cf1a931a351eb15bd69', '2bce84e7df694ab1b81486aa2baf555d'),
(1060, 'Ντομάτες Εισ Α', 'ee0022e7b1b34eb2b834ea334cda52e7', '9bc82778d6b44152b303698e8f72c429'),
(1064, 'Sensodyne Οδ/μα Repair/Protect 75ml', '8e8117f7d9d64cf1a931a351eb15bd69', '26e416b6efa745218f810c34678734b2'),
(1077, 'Coca Cola 250ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1085, 'Friskies Σκυλ/Φή Ξηρ Κοτ/Λαχ 1,5κιλ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1110, 'Whiskas Γατ/Φή Πουλ Σε Σάλτσα 100γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1112, 'Κολοκυθάκια Εγχ Με Ανθό', 'ee0022e7b1b34eb2b834ea334cda52e7', '9bc82778d6b44152b303698e8f72c429'),
(1132, 'Pedigree Σκυλ/Φή Μοσχάρι 400γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1142, 'Μήλα Στάρκιν Χύμα', 'ee0022e7b1b34eb2b834ea334cda52e7', 'ea47cc6b2f6743169188da125e1f3761'),
(1143, 'Oral B Οδοντικό Νήμα Κηρωμένο 50τεμ', '8e8117f7d9d64cf1a931a351eb15bd69', '26e416b6efa745218f810c34678734b2'),
(1152, 'Coca Cola 2Χ1,5λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1153, 'Sprite 6X330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1154, 'Pedigree Schmackos Μπισκότα Σκύλου 43γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1175, 'Everyday Σερβ Super/Ultra Plus Sens 18τεμ', '8e8117f7d9d64cf1a931a351eb15bd69', '2bce84e7df694ab1b81486aa2baf555d'),
(1178, 'Όλυμπος Φυσικός Χυμός Πορτοκάλι 1,5λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '4f1993ca5bd244329abf1d59746315b8'),
(1201, 'Καρπούζια Μίνι Εγχ', 'ee0022e7b1b34eb2b834ea334cda52e7', 'ea47cc6b2f6743169188da125e1f3761'),
(1203, 'Frulite Φρουτοπoτό Πορτ/Βερικ 500ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '4f1993ca5bd244329abf1d59746315b8'),
(1224, 'Κρεμμύδια Ξανθά Ξερά Εισ', 'ee0022e7b1b34eb2b834ea334cda52e7', '9bc82778d6b44152b303698e8f72c429'),
(1236, 'Ντομάτες Εγχ Υπαιθρ Β ', 'ee0022e7b1b34eb2b834ea334cda52e7', '9bc82778d6b44152b303698e8f72c429'),
(1260, 'Μπρόκολα Πράσινα Εγχ', 'ee0022e7b1b34eb2b834ea334cda52e7', '9bc82778d6b44152b303698e8f72c429'),
(1266, 'Cool Hellas Χυμός Πορτοκαλ Συμπ 1λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '4f1993ca5bd244329abf1d59746315b8'),
(1301, 'Always Σερβ Night 9τεμ', '8e8117f7d9d64cf1a931a351eb15bd69', '2bce84e7df694ab1b81486aa2baf555d'),
(1305, 'Frulite Σαγκουίνι/Μανταρίνι 1λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '4f1993ca5bd244329abf1d59746315b8'),
(1322, 'Fanta Πορτοκαλάδα 1,5λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1332, 'Tuborg Σόδα 330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1336, 'Πορτοκ Μερλίν - Λανε Λειτ- Ναβελ Λειτ Κατ Α Εγχ Ε/Ζ', 'ee0022e7b1b34eb2b834ea334cda52e7', 'ea47cc6b2f6743169188da125e1f3761'),
(1337, 'Όλυμπος Φυσικός Χυμός Πορτοκάλι 1λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '4f1993ca5bd244329abf1d59746315b8'),
(1348, 'Everyday Σερβ Norm/Ultra Plus Sens 18τεμ', '8e8117f7d9d64cf1a931a351eb15bd69', '2bce84e7df694ab1b81486aa2baf555d');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `stock` tinyint(4) NOT NULL DEFAULT 1,
  `below_week_price` tinyint(1) NOT NULL DEFAULT 0,
  `below_day_price` tinyint(1) NOT NULL DEFAULT 0,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `sales`
--

INSERT INTO `sales` (`id`, `price`, `date`, `active`, `likes`, `dislikes`, `stock`, `below_week_price`, `below_day_price`, `shop_id`, `user_id`, `product_id`, `admin_id`) VALUES
(1, 5.99, '2023-09-10', 0, 11, 8, 1, 0, 0, 54, 2, 1322, NULL),
(2, 2.99, '2023-09-11', 1, 9, 5, 1, 0, 0, 2, 2, 978, NULL),
(3, 1.99, '2023-09-01', 0, 0, 0, 1, 0, 0, 54, 1, 1337, NULL),
(7, 4.99, '2023-09-14', 1, 0, 0, 1, 0, 0, 49, 1, 1152, NULL),
(8, 2, '2023-09-14', 1, 0, 0, 1, 0, 0, 7, 1, 930, NULL),
(9, 4.99, '2023-09-14', 1, 0, 0, 0, 0, 0, 46, 1, 1022, NULL),
(10, 4.99, '2023-09-14', 1, 0, 0, 1, 0, 0, 26, 1, 1143, NULL),
(11, 4.99, '2023-09-14', 1, 0, 0, 1, 0, 0, 27, 1, 699, NULL),
(13, 2.99, '2023-09-15', 1, 0, 0, 1, 0, 0, 37, 3, 1143, NULL),
(15, 0.99, '2023-09-18', 1, 0, 0, 1, 1, 0, 33, NULL, 379, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `shops`
--

INSERT INTO `shops` (`id`, `lat`, `lon`, `name`, `shop`) VALUES
(2, 38.28931, 21.7806567, 'The Mart', 'supermarket'),
(3, 38.2633511, 21.7434265, 'Lidl', 'supermarket'),
(4, 38.2952086, 21.7908028, 'Σουπερμάρκετ Ανδρικόπουλος', 'supermarket'),
(5, 38.2104365, 21.7642075, 'Σκλαβενίτης', 'supermarket'),
(6, 38.23553, 21.7622778, 'Papakos', 'convenience'),
(7, 38.2312926, 21.740082, 'Lidl', 'supermarket'),
(8, 38.3013087, 21.7814957, 'Σκλαβενίτης', 'supermarket'),
(9, 38.2596476, 21.7489662, 'Σκλαβενίτης', 'supermarket'),
(10, 38.2613806, 21.7436127, 'Ρουμελιώτης SUPER Market', 'supermarket'),
(11, 38.2585236, 21.741582, 'Σκλαβενίτης', 'supermarket'),
(12, 38.2323892, 21.7473265, 'My market', 'supermarket'),
(13, 38.2322376, 21.7257294, 'ΑΒ Βασιλόπουλος', 'supermarket'),
(14, 38.2644973, 21.7603629, 'Markoulas', 'supermarket'),
(15, 38.3067563, 21.8051332, 'Lidl', 'supermarket'),
(16, 38.2399863, 21.736371, 'Ανδρικόπουλος', 'supermarket'),
(17, 38.2364945, 21.7373409, 'Σκλαβενίτης', 'supermarket'),
(18, 38.2427052, 21.7342362, 'My Market', 'supermarket'),
(19, 38.2568618, 21.7396708, 'My market', 'supermarket'),
(20, 38.1951968, 21.7323293, 'Ανδρικόπουλος', 'supermarket'),
(21, 38.2565589, 21.7418506, 'ΑΒ ΒΑΣΙΛΟΠΟΥΛΟΣ', 'supermarket'),
(22, 38.2434859, 21.733285, 'Σκλαβενίτης', 'supermarket'),
(23, 38.2512732, 21.7423925, 'Kaponis', 'supermarket'),
(24, 38.2427963, 21.7302559, 'Ανδρικόπουλος', 'supermarket'),
(25, 38.2795377, 21.7667136, 'Carna', 'convenience'),
(26, 38.3052409, 21.7770011, 'Mini Market', 'convenience'),
(27, 38.2425794, 21.7296435, 'Kronos', 'supermarket'),
(28, 38.2585639, 21.7504681, 'Φίλιππας', 'convenience'),
(29, 38.2498065, 21.7363349, 'No supermarket', 'supermarket'),
(30, 38.2490852, 21.735128, 'Kiosk', 'convenience'),
(31, 38.2493169, 21.7349115, 'Kiosk', 'convenience'),
(32, 38.2489563, 21.7344427, 'Kiosk', 'convenience'),
(33, 38.2569875, 21.7413066, 'Kiosk', 'convenience'),
(34, 38.2561434, 21.7409531, 'Kiosk', 'convenience'),
(35, 38.2691937, 21.7481501, 'Ανδρικόπουλος - Supermarket', 'supermarket'),
(36, 38.2690963, 21.7497014, 'Σκλαβενίτης', 'supermarket'),
(37, 38.233827, 21.7251655, 'ENA food cash $ cary', 'supermarket'),
(38, 38.3277388, 21.8764222, 'Mini Market', 'convenience'),
(39, 38.2170935, 21.7357783, 'ΑΒ Βασιλόπουλος', 'supermarket'),
(40, 38.2160259, 21.7321204, 'Mini Market', 'convenience'),
(41, 38.2504514, 21.7396687, '3A', 'supermarket'),
(42, 38.2486316, 21.7389771, 'Spar', 'supermarket'),
(43, 38.2481545, 21.7383224, 'ΑΝΔΡΙΚΟΠΟΥΛΟΣ', 'supermarket'),
(44, 38.2429466, 21.7308044, 'ΑΝΔΡΙΚΟΠΟΥΛΟΣ', 'supermarket'),
(45, 38.2392836, 21.7265283, 'MyMarket', 'supermarket'),
(46, 38.2346622, 21.7253472, 'Ena Cash And Carry', 'supermarket'),
(47, 38.2358002, 21.7294915, 'ΚΡΟΝΟΣ - (Σκαγιοπουλείου)', 'supermarket'),
(48, 38.2379176, 21.7306406, 'Ανδρικόπουλος Super Market', 'supermarket'),
(49, 38.2375068, 21.7328984, '3Α Αράπης', 'supermarket'),
(50, 38.2361127, 21.733787, 'Γαλαξίας', 'supermarket'),
(51, 38.2360129, 21.7283123, 'Super Market Θεοδωρόπουλος', 'supermarket'),
(52, 38.2390442, 21.7340723, 'Super Market ΚΡΟΝΟΣ', 'supermarket'),
(53, 38.2601801, 21.7428703, 'Σκλαβενίτης', 'supermarket'),
(54, 38.2586424, 21.7460078, '3A ARAPIS', 'supermarket'),
(55, 38.2454669, 21.7355058, 'Masoutis', 'supermarket'),
(56, 38.24957, 21.7380288, 'ΑΒ Shop & Go', 'supermarket'),
(57, 38.2398789, 21.7455558, '3Α ΑΡΑΠΗΣ', 'supermarket'),
(58, 38.2554443, 21.7408745, 'Περίπτερο', 'convenience');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `subcategories`
--

CREATE TABLE `subcategories` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`) VALUES
('0c6e42d52765495dbbd06c189a4fc80f', 'Pet shop/Τροφή σκύλου', '662418cbd02e435280148dbb8892782a'),
('26e416b6efa745218f810c34678734b2', 'Στοματική υγιεινή', '8e8117f7d9d64cf1a931a351eb15bd69'),
('2bce84e7df694ab1b81486aa2baf555d', 'Σερβιέτες', '8e8117f7d9d64cf1a931a351eb15bd69'),
('3010aca5cbdc401e8dfe1d39320a8d1a', 'Αναψυκτικά - Ενεργειακά Ποτά', 'a8ac6be68b53443bbd93b229e2f9cd34'),
('4f1993ca5bd244329abf1d59746315b8', 'Χυμοί', 'a8ac6be68b53443bbd93b229e2f9cd34'),
('926262c303fe402a8542a5d5cf3ac7eb', 'Pet shop/Τροφή γάτας', '662418cbd02e435280148dbb8892782a'),
('9bc82778d6b44152b303698e8f72c429', 'Φρέσκα/Λαχανικά', 'ee0022e7b1b34eb2b834ea334cda52e7'),
('ea47cc6b2f6743169188da125e1f3761', 'Φρέσκα/Φρούτα', 'ee0022e7b1b34eb2b834ea334cda52e7');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tokens` int(11) NOT NULL,
  `monthly_tokens` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `monthly_score` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `tokens`, `monthly_tokens`, `score`, `monthly_score`, `likes`, `dislikes`) VALUES
(1, 'User1', 'User12345!', 'user@gmail.com', 5000, 0, 2000, 0, 9, 8),
(2, 'User2', 'User12345!', 'user2@gmail.com', 4000, 0, 1587, 24, 0, 0),
(3, 'user3', 'User123456!', 'user3@gmail.com', 3000, 0, 1200, 0, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `weekly_prices`
--

CREATE TABLE `weekly_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `weekly_prices`
--

INSERT INTO `weekly_prices` (`id`, `product_id`, `date`, `price`) VALUES
(1, 699, '2023-09-08', 3.59),
(2, 699, '2023-09-01', 1.85),
(3, 699, '2023-09-22', 4.2),
(4, 699, '2023-09-29', 1.28),
(5, 699, '2023-09-15', 4.26),
(6, 896, '2023-09-08', 0.69),
(7, 896, '2023-09-01', 2.15),
(8, 896, '2023-09-22', 0.68),
(9, 896, '2023-09-29', 3.6),
(10, 896, '2023-09-15', 3.31),
(11, 1085, '2023-09-08', 4.15),
(12, 1085, '2023-09-01', 3.88),
(13, 1085, '2023-09-22', 2.52),
(14, 1085, '2023-09-29', 0.59),
(15, 1085, '2023-09-15', 0.85),
(16, 1132, '2023-09-08', 3.7),
(17, 1132, '2023-09-01', 4.18),
(18, 1132, '2023-09-22', 4.36),
(19, 1132, '2023-09-29', 0.69),
(20, 1132, '2023-09-15', 4.05),
(21, 1154, '2023-09-08', 0.53),
(22, 1154, '2023-09-01', 0.86),
(23, 1154, '2023-09-22', 3.1),
(24, 1154, '2023-09-29', 3.72),
(25, 1154, '2023-09-15', 2.35),
(26, 774, '2023-09-08', 1.24),
(27, 774, '2023-09-01', 0.65),
(28, 774, '2023-09-22', 1.74),
(29, 774, '2023-09-29', 1.45),
(30, 774, '2023-09-15', 3.56),
(31, 897, '2023-09-08', 3.05),
(32, 897, '2023-09-01', 3.66),
(33, 897, '2023-09-22', 1.63),
(34, 897, '2023-09-29', 2.6),
(35, 897, '2023-09-15', 1.08),
(36, 930, '2023-09-08', 0.95),
(37, 930, '2023-09-01', 0.61),
(38, 930, '2023-09-22', 0.77),
(39, 930, '2023-09-29', 3.36),
(40, 930, '2023-09-15', 3.72),
(41, 1018, '2023-09-08', 2.9),
(42, 1018, '2023-09-01', 3.34),
(43, 1018, '2023-09-22', 3.31),
(44, 1018, '2023-09-29', 2.54),
(45, 1018, '2023-09-15', 2.39),
(46, 1110, '2023-09-08', 0.8),
(47, 1110, '2023-09-01', 3.44),
(48, 1110, '2023-09-22', 0.74),
(49, 1110, '2023-09-29', 2.42),
(50, 1110, '2023-09-15', 1.5),
(51, 978, '2023-09-08', 1.79),
(52, 978, '2023-09-01', 4.33),
(53, 978, '2023-09-22', 1.64),
(54, 978, '2023-09-29', 3.62),
(55, 978, '2023-09-15', 1.46),
(56, 980, '2023-09-08', 0.83),
(57, 980, '2023-09-01', 2.45),
(58, 980, '2023-09-22', 4.26),
(59, 980, '2023-09-29', 4.21),
(60, 980, '2023-09-15', 2.34),
(61, 1142, '2023-09-08', 2.14),
(62, 1142, '2023-09-01', 2.48),
(63, 1142, '2023-09-22', 2.16),
(64, 1142, '2023-09-29', 2.02),
(65, 1142, '2023-09-15', 4.12),
(66, 1201, '2023-09-08', 2.58),
(67, 1201, '2023-09-01', 0.94),
(68, 1201, '2023-09-22', 4.42),
(69, 1201, '2023-09-29', 2.53),
(70, 1201, '2023-09-15', 2.43),
(71, 1336, '2023-09-08', 1.38),
(72, 1336, '2023-09-01', 2.14),
(73, 1336, '2023-09-22', 2.02),
(74, 1336, '2023-09-29', 1.76),
(75, 1336, '2023-09-15', 1.72),
(76, 1060, '2023-09-08', 3.11),
(77, 1060, '2023-09-01', 4.38),
(78, 1060, '2023-09-22', 3.36),
(79, 1060, '2023-09-29', 3.71),
(80, 1060, '2023-09-15', 4.18),
(81, 1112, '2023-09-08', 0.5),
(82, 1112, '2023-09-01', 2.49),
(83, 1112, '2023-09-22', 4.07),
(84, 1112, '2023-09-29', 4.24),
(85, 1112, '2023-09-15', 4.44),
(86, 1224, '2023-09-08', 2.56),
(87, 1224, '2023-09-01', 1.89),
(88, 1224, '2023-09-22', 2.54),
(89, 1224, '2023-09-29', 3.43),
(90, 1224, '2023-09-15', 1.04),
(91, 1236, '2023-09-08', 4.2),
(92, 1236, '2023-09-01', 1.22),
(93, 1236, '2023-09-22', 4.44),
(94, 1236, '2023-09-29', 1.03),
(95, 1236, '2023-09-15', 0.61),
(96, 1260, '2023-09-08', 4.48),
(97, 1260, '2023-09-01', 0.54),
(98, 1260, '2023-09-22', 0.64),
(99, 1260, '2023-09-29', 4.2),
(100, 1260, '2023-09-15', 3.98),
(101, 379, '2023-09-08', 2.53),
(102, 379, '2023-09-01', 1.48),
(103, 379, '2023-09-22', 2.15),
(104, 379, '2023-09-29', 1.75),
(105, 379, '2023-09-15', 2.43),
(106, 414, '2023-09-08', 3.28),
(107, 414, '2023-09-01', 0.63),
(108, 414, '2023-09-22', 1.7),
(109, 414, '2023-09-29', 4.04),
(110, 414, '2023-09-15', 0.84),
(111, 516, '2023-09-08', 2.06),
(112, 516, '2023-09-01', 4.03),
(113, 516, '2023-09-22', 2.17),
(114, 516, '2023-09-29', 3.96),
(115, 516, '2023-09-15', 4.16),
(116, 1064, '2023-09-08', 0.87),
(117, 1064, '2023-09-01', 2.4),
(118, 1064, '2023-09-22', 1.62),
(119, 1064, '2023-09-29', 2.72),
(120, 1064, '2023-09-15', 4.12),
(121, 1143, '2023-09-08', 0.6),
(122, 1143, '2023-09-01', 2.17),
(123, 1143, '2023-09-22', 0.66),
(124, 1143, '2023-09-29', 3.47),
(125, 1143, '2023-09-15', 4.11),
(126, 1011, '2023-09-08', 2.31),
(127, 1011, '2023-09-01', 1.22),
(128, 1011, '2023-09-22', 3.23),
(129, 1011, '2023-09-29', 2.51),
(130, 1011, '2023-09-15', 4.35),
(131, 1022, '2023-09-08', 2.75),
(132, 1022, '2023-09-01', 2.57),
(133, 1022, '2023-09-22', 3.71),
(134, 1022, '2023-09-29', 1.83),
(135, 1022, '2023-09-15', 4.45),
(136, 1175, '2023-09-08', 0.66),
(137, 1175, '2023-09-01', 4.06),
(138, 1175, '2023-09-22', 4.08),
(139, 1175, '2023-09-29', 1.09),
(140, 1175, '2023-09-15', 3.15),
(141, 1301, '2023-09-08', 4.38),
(142, 1301, '2023-09-01', 3.29),
(143, 1301, '2023-09-22', 1.45),
(144, 1301, '2023-09-29', 1.83),
(145, 1301, '2023-09-15', 1.03),
(146, 1348, '2023-09-08', 1.55),
(147, 1348, '2023-09-01', 3.02),
(148, 1348, '2023-09-22', 4.32),
(149, 1348, '2023-09-29', 3.86),
(150, 1348, '2023-09-15', 1.27),
(151, 1077, '2023-09-08', 2.68),
(152, 1077, '2023-09-01', 1.03),
(153, 1077, '2023-09-22', 2.96),
(154, 1077, '2023-09-29', 3.78),
(155, 1077, '2023-09-15', 3.85),
(156, 1152, '2023-09-08', 3.18),
(157, 1152, '2023-09-01', 4.39),
(158, 1152, '2023-09-22', 4.1),
(159, 1152, '2023-09-29', 3.77),
(160, 1152, '2023-09-15', 2.44),
(161, 1153, '2023-09-08', 2.92),
(162, 1153, '2023-09-01', 4.43),
(163, 1153, '2023-09-22', 1.5),
(164, 1153, '2023-09-29', 2.16),
(165, 1153, '2023-09-15', 4.35),
(166, 1322, '2023-09-08', 2.33),
(167, 1322, '2023-09-01', 4.44),
(168, 1322, '2023-09-22', 4.21),
(169, 1322, '2023-09-29', 4.25),
(170, 1322, '2023-09-15', 1.86),
(171, 1332, '2023-09-08', 1.22),
(172, 1332, '2023-09-01', 3.35),
(173, 1332, '2023-09-22', 0.76),
(174, 1332, '2023-09-29', 4.04),
(175, 1332, '2023-09-15', 1.72),
(176, 1178, '2023-09-08', 4.24),
(177, 1178, '2023-09-01', 2.41),
(178, 1178, '2023-09-22', 3.8),
(179, 1178, '2023-09-29', 3.38),
(180, 1178, '2023-09-15', 2.64),
(181, 1203, '2023-09-08', 3.59),
(182, 1203, '2023-09-01', 1.02),
(183, 1203, '2023-09-22', 3.99),
(184, 1203, '2023-09-29', 1.76),
(185, 1203, '2023-09-15', 1.92),
(186, 1266, '2023-09-08', 2.38),
(187, 1266, '2023-09-01', 4.17),
(188, 1266, '2023-09-22', 1.41),
(189, 1266, '2023-09-29', 2.35),
(190, 1266, '2023-09-15', 2.88),
(191, 1305, '2023-09-08', 2.42),
(192, 1305, '2023-09-01', 3.49),
(193, 1305, '2023-09-22', 2.81),
(194, 1305, '2023-09-29', 2.16),
(195, 1305, '2023-09-15', 2.38),
(196, 1337, '2023-09-08', 3.81),
(197, 1337, '2023-09-01', 3.7),
(198, 1337, '2023-09-22', 4.05),
(199, 1337, '2023-09-29', 2.98),
(200, 1337, '2023-09-15', 2.99);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`awards_id`);

--
-- Ευρετήρια για πίνακα `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `daily_prices`
--
ALTER TABLE `daily_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`product_id`);

--
-- Ευρετήρια για πίνακα `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catkey` (`category`),
  ADD KEY `subcatkey` (`subcategory`);

--
-- Ευρετήρια για πίνακα `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productkey` (`product_id`),
  ADD KEY `shopkey` (`shop_id`),
  ADD KEY `userkey` (`user_id`),
  ADD KEY `adminkey` (`admin_id`);

--
-- Ευρετήρια για πίνακα `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category_id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `weekly_prices`
--
ALTER TABLE `weekly_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`product_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `daily_prices`
--
ALTER TABLE `daily_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT για πίνακα `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT για πίνακα `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `weekly_prices`
--
ALTER TABLE `weekly_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `daily_prices`
--
ALTER TABLE `daily_prices`
  ADD CONSTRAINT `p_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `catkey` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subcatkey` FOREIGN KEY (`subcategory`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `adminkey` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `productkey` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `shopkey` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Περιορισμοί για πίνακα `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `weekly_prices`
--
ALTER TABLE `weekly_prices`
  ADD CONSTRAINT `prod_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
