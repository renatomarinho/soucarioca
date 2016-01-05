-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 05, 2016 at 01:38 AM
-- Server version: 10.0.23-MariaDB-1~trusty-log
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `soucarioca_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `impressions`
--

CREATE TABLE IF NOT EXISTS `impressions` (
  `id` int(11) NOT NULL,
  `impressionable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressionable_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `controller_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `referrer` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `impressions`
--

INSERT INTO `impressions` (`id`, `impressionable_type`, `impressionable_id`, `user_id`, `controller_name`, `action_name`, `view_name`, `request_hash`, `ip_address`, `session_hash`, `message`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 'User', 177, NULL, 'users', 'show', NULL, '2207a0229c612280aa3dd946c1ba9ba61b7ff111bb8495ab996749eb00e6e6ad', '127.0.0.1', '2bc34f90e07d963f9539a634612c2840', 'pageview', 'http://localhost:3000/user/search?page=3', '2015-03-18 04:36:08', '2015-03-18 04:36:08'),
(2, 'User', 122, NULL, 'users', 'show', NULL, '7ceee81aba8d1a7137deddd2bd4835d1d5bca8082167b9fafb67a84969d3b9d4', '127.0.0.1', '2bc34f90e07d963f9539a634612c2840', 'pageview', 'http://localhost:3000/user/search?q=a', '2015-03-18 04:36:30', '2015-03-18 04:36:30'),
(3, 'User', 190, 190, 'users', 'show', NULL, '108379a29bc64288bd1d050159f760b98543bb5a8040366d4b9f44f39efea33d', '127.0.0.1', '23b510449def38cda565832f3fc4b855', 'pageview', 'http://localhost:3000/user/profile', '2015-03-18 04:38:49', '2015-03-18 04:38:49'),
(4, 'User', 113, 190, 'users', 'show', NULL, 'e0547cd74350425768fc67c5895837bc9e920c89947de3028a8f0fffc2e6bee2', '127.0.0.1', '23b510449def38cda565832f3fc4b855', 'pageview', 'http://localhost:3000/user/search?q=a', '2015-03-18 05:01:19', '2015-03-18 05:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140627005245'),
('20150315013311'),
('20150315023602');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_manual` int(11) DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `provider`, `first_name`, `last_name`, `username`, `username_manual`, `email`, `gender`, `total`, `created_at`, `updated_at`) VALUES
(1, '132853273433650', 'facebook', 'Guy', 'Kawasaky', 'guykawasaky', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(2, '176063032413299', 'facebook', 'Leo', 'Messi', 'leomessi', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(3, '165669036820327', 'facebook', 'Luan', 'Santana', 'luansantana', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(4, '39677118233', 'facebook', 'Britney', 'Spears', 'britneyspears', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(5, '354873251249456', 'facebook', 'Juliana', 'Paes', 'julianapaes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(6, '624251168', 'facebook', 'Sabrina', 'Sato Rahal', 'sanbrinasato', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(7, '16499888529', 'facebook', 'Ivete', 'Sangalo', 'ivetesangalo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(8, '145076988449', 'facebook', 'Taís', 'Araújo', 'taisaraujo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(9, '146659712053598', 'facebook', 'Luciano', 'Huck', 'lucianohuck', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(10, '601942948', 'facebook', 'Dado', 'Dolabella', 'dadodolabella', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(11, '48798268246', 'facebook', 'Leonardo', 'Di Caprio', 'leonardodicaprio', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(12, '592165357', 'facebook', 'Samara', 'Felippo', 'samarafelippo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(13, '134908606527787', 'facebook', 'Bianca', 'Rinaldi', 'biancarinaldi', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(14, '57868405062', 'facebook', 'Carolina', 'Dieckmann', 'carolinadieckmann', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(15, '150500314978667', 'facebook', 'Grazi', 'Massafera', 'grazimassafera', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(16, '351338968253034', 'facebook', 'Dilma', 'Rousseff', 'dilmarousseff', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(17, '23406906839', 'facebook', 'Mariana', 'Ximenes', 'marianaximanes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(18, '5836432901', 'facebook', 'Jonas', 'Brothers', 'jonasbrothers', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(19, '150929464971981', 'facebook', 'CPM22', '', 'cpm22', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(20, '145578725499808', 'facebook', 'Emicida', '', 'emicida', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(21, '379272905710', 'facebook', 'Marimoon', '', 'marimoon', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(22, '108755587572', 'facebook', 'Marco', 'Luque', 'marcoluque', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(23, '100002822638010', 'facebook', 'Thalita', 'Riston', 'thalitariston', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(24, '100004043451299', 'facebook', 'Sara', 'Hellen', 'sarahellen', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(25, '100004524093769', 'facebook', 'Jessica', 'Cristina ', 'jessicacristina', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(26, '100002599764954', 'facebook', 'Francisco', 'Sá', 'franciscosa', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(27, '100003665960016', 'facebook', 'Hellen', 'Hotz', 'helenh', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(28, '100003680184715', 'facebook', 'Karen', 'Oliveira', 'karenoliveira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(29, '100007840269625', 'facebook', 'Morena', 'Silva', 'morenasilva', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(30, '100007299337516', 'facebook', 'Yasmim', 'konoski', 'yasminkonoski', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(31, '100008781726388', 'facebook', 'Anderson', 'Stevens', 'stevens', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(32, '100004278193496', 'facebook', 'Inglyd', 'Poliana', 'inglydpoliana', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(33, '100005626869268', 'facebook', 'Maiaria', 'Santos', 'maiariasantos', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(34, '100004672597535', 'facebook', 'Daniela', 'Kethellyn', 'dkethellyn', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(35, '100006125884300', 'facebook', 'Kamila', 'Camargo', 'kamilacamargo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(36, '100005269877618', 'facebook', 'Riquely', 'Carla', 'riquelycarla', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(37, '100002222332261', 'facebook', 'Jessica', 'Miranda', 'jessicamiranda', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(38, '100002660197129', 'facebook', 'Nathalya', 'Santos', 'nathalyasantos', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(39, '100003240640234', 'facebook', 'Julia', 'Motta', 'jmotta', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(40, '100002794791534', 'facebook', 'Rafaella', 'Oliveira', 'rafaellaoliveira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(41, '100004014083369', 'facebook', 'Heloisa', 'Ferreira', 'heloisaferreira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(42, '100008397409010', 'facebook', 'Camyh', 'Silvah', 'csilvah', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(43, '100003169490777', 'facebook', 'Ingridy', 'Karolina', 'ikarolina', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(44, '100003496645518', 'facebook', 'Tainá', 'Souza', 'tainasouza', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(45, '100007620039651', 'facebook', 'Dayane', 'Helena', 'ddhelena', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(46, '100006601203772', 'facebook', 'Yara', 'Aialah', 'aialahh', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(47, '10092511675', 'facebook', 'Rihanna', '', 'rihanna', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(48, '100003280603446', 'facebook', 'Taina', 'Rayane Cabral', 'cabralzinha', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(49, '100003527562130', 'facebook', 'Kelly', 'Ferreira', 'kellyferreira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(50, '100007761409477', 'facebook', 'Teteeh', 'Guinatica ', 'guinatica', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(51, '100003022178458', 'facebook', 'Kamilla', 'Silva', 'kakasilva', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(52, '100004644101083', 'facebook', 'Elaine', 'Silva', 'esilvinha', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(53, '100002497538956', 'facebook', 'Thaís', 'Cândido', 'thacandido', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(54, '100004248941653', 'facebook', 'Kamylla', 'Teles', 'kakateles', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(55, '100003318827567', 'facebook', 'Adânia', 'Fonseca', 'adania', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(56, '100006815263514', 'facebook', 'Samuel', 'Souza', 'samuelsouza', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(57, '100007824063247', 'facebook', 'Manu', 'Silva', 'msiv', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(58, '100004784682388', 'facebook', 'Helloísa', 'Mayara', 'hellomay', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(59, '100007577056386', 'facebook', 'Yohran', 'Lopes', 'ylopes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(60, '142523572511686', 'facebook', 'Ronaldinho', 'Gaúcho', 'ronaldinhogaucho', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(61, '100001438828359', 'facebook', 'Sidilane', 'Oliveira', 'sidoliveira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(62, '100004431336993', 'facebook', 'Paula', 'Graciely', 'paulagraciely', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(63, '100007626108997', 'facebook', 'Mehzabin', 'Supti', 'supti', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(64, '100008948168783', 'facebook', 'Ingrid', 'Solange', 'insolange', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(65, '100009198153037', 'facebook', 'Anurag', 'Pandey', 'pandey', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(66, '390212161139821', 'facebook', 'Angelika', 'Salus', 'asalus', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(67, '100000595249303', 'facebook', 'Igor', 'Alves da Silva', 'igor', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(68, '100002285907587', 'facebook', 'Filipe', 'Challout', 'challout', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(69, '100002182605742', 'facebook', 'Fabiano', 'Figueiredo', 'figueiredo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(70, '100000831598836', 'facebook', 'Fabiana', 'Farina', 'farina', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(71, '100003993986397', 'facebook', 'Adriele', 'Durante', 'adrieledurante', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(72, '100000085633230', 'facebook', 'Marcelo', 'Romeu', 'romeu', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(73, '100001665439161', 'facebook', 'Daniela', 'Alves Fernandes', 'alvesfernandes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(74, '100001632154264', 'facebook', 'Regina', 'Romeu', 'reromeu', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(75, '590605161', 'facebook', 'Luciana', 'Fontes', 'fontes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(76, '100000414828642', 'facebook', 'Djenane', 'Ribeiro', 'jRibeiro', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(77, '100000516409730', 'facebook', 'Lucas', 'Manciopi', 'manciopi', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(78, '100000845775605', 'facebook', 'Ita', 'Oliver', 'manciopi', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(79, '100005696749315', 'facebook', 'Larissa', 'Siqueira', 'sique', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(80, '100007514383308', 'facebook', 'Helena', 'Costa', 'hCosta', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(81, '100009253146383', 'facebook', 'Sallety', 'Oliver', 'saloliver', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(82, '100002525818285', 'facebook', 'Lisy', 'Martins', 'lisy', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(83, '100002142414460', 'facebook', 'Ana', 'Amorim', 'amorim', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(84, '100002414195391', 'facebook', 'Pamela', 'Berna', 'barnaaa', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(85, '100002379184653', 'facebook', 'Patrick', 'Borges', 'borrrg', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(86, '100006004564275', 'facebook', 'Jessica', 'Pereira', 'jessicagta', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(87, '100002971008284', 'facebook', 'Isabelly', 'Oliveira', 'isab2', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(88, '100002531305761', 'facebook', 'Guilherme', 'Teixeira', 'guiTeixeira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(89, '100003743419020', 'facebook', 'Erika', 'Erokinha', 'erokinha', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(90, '100006801876791', 'facebook', 'Daniel', 'Chaves', 'danielmodelo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(91, '100008445933657', 'facebook', 'Gilberto', 'Dantas', 'superdantas2', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(92, '100004722678627', 'facebook', 'André', 'Ghabé', 'ghabe', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(93, '100003786009551', 'facebook', 'Nathallya', 'Lima', 'natie', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(94, '195297713833664', 'facebook', 'Cauã', 'Reymond', 'cauareymond', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(95, '100008717795033', 'facebook', 'Ariany', 'Ribeiro', 'arianygata', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(96, '100002732581704', 'facebook', 'Karolina', 'Santos', 'karolsantos', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(97, '148286545082', 'facebook', 'Gisele', 'Bündchen', 'giselebundchen', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(98, '100000703764351', 'facebook', 'Rafaela', 'Ruiz', 'rafaruiz', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(99, '100004668691780', 'facebook', 'Leeh', 'Tozoni', 'leeh', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(100, '100003357930686', 'facebook', 'Herton', 'Famozinho', 'famozinho', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(101, '100004020907875', 'facebook', 'Evilin', 'Siebert', 'Siebert', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(102, '84218631570', 'facebook', 'David', 'Beckham', 'davidbeckham', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(103, '100005679429398', 'facebook', 'Maiara', 'Britto', 'maibritto', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(104, '100007703370030', 'facebook', 'Bruna', 'Abreu', 'brunaabreu', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(105, '100002056384717', 'facebook', 'Janaina', 'Andrade', 'jana', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(106, '100006851494694', 'facebook', 'Andrea', 'de Andrade', 'deandrade', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(107, '100004264624040', 'facebook', 'Linda', 'Oliveira', 'lindaoliveira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(108, '100003277251629', 'facebook', 'Anderson', 'Oliveira', 'andersol', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(109, '1849604170', 'facebook', 'Paty', 'Souza', 'patysouza', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(110, '100004635064453', 'facebook', 'Renata', 'Moraes', 'rmoraesgata', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(111, '100004173907884', 'facebook', 'Higino', 'Jeronimo', 'jeronimo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(112, '100004104984931', 'facebook', 'Lais', 'D Lopes', 'dlopess', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:08', '2015-03-18 04:35:08'),
(113, '100000329291067', 'facebook', 'Eliana', 'Amaral', 'elilinda', 0, 'teste@teste', 0, 1, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(114, '100005237897458', 'facebook', 'Danton', 'Fernandes', 'dantonfe', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(115, '100002703620465', 'facebook', 'Bruna', 'Bastos', 'brubastos', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(116, '100004418851373', 'facebook', 'Madelayne', 'Cavalcanti', 'hgostosacavalcanti', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(117, '1320133299', 'facebook', 'Ananza', 'Santiago', 'hgostosacavalcanti', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(118, '1364628883', 'facebook', 'Tatai', 'Leitee', 'hgostosacavalcanti', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(119, '1051446491', 'facebook', 'Patricia', 'Oliveira', 'patioliver', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(120, '1473796573', 'facebook', 'Nathalia', 'Matos', 'matoslinda', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(121, '1433173737', 'facebook', 'Renata', 'Castro', 'renatacastro', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(122, '100002645788038', 'facebook', 'Clariana', 'Caxito', 'caxito', 0, 'teste@teste', 0, 1, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(123, '100002540880724', 'facebook', 'Karine', 'Gaglianoni', 'gaglianoni', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(124, '100002708901824', 'facebook', 'Anninha', 'Castro', 'anninhacastro', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(125, '100003038261644', 'facebook', 'Tâmara', 'Gambert', 'gambert', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(126, '100000019135949', 'facebook', 'Rosi', 'Rosendo', 'rosendo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(127, '100005545807061', 'facebook', 'Luana', 'Costa', 'lucosta', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(128, '100002819472307', 'facebook', 'Andrea', 'Felina', 'felina', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(129, '100007660443576', 'facebook', 'Simone', 'Bernardes', 'sBernardes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(130, '100000622414867', 'facebook', 'Karine', 'Camargo', 'kCamargo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(131, '100003583830997', 'facebook', 'Taiana', 'Fontine', 'tati999544545', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(132, '100000061419772', 'facebook', 'Mharilia', 'Paiva', 'mhaPaiva', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(133, '100000151959108', 'facebook', 'Lívia', 'Soler', 'soler', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(134, '1142046862', 'facebook', 'Patricia', 'Battele Nascimento', 'battele', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(135, '1532216447011699', 'facebook', 'Neymar', 'Jr.', 'neymarjr', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(136, '100003260794724', 'facebook', 'Tatiane', 'Gomes', 'tatigomes', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(137, '100000231538476', 'facebook', 'Luciana', 'Andrade', 'luandrade', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(138, '1484172810', 'facebook', 'Juliana', 'Sanches', 'sanches', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(139, '100003911323579', 'facebook', 'Cris', 'Lopes Real', 'lopesreal', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(140, '521393468', 'facebook', 'Raliska', 'Teixeira', 'Raliska', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(141, '1087490901', 'facebook', 'Karol', 'Loren', 'kloren', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(142, '1540464166', 'facebook', 'Cindy', 'Sales', 'csales999893232', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(143, '1486010911', 'facebook', 'Renata', 'Barreto', 'barreto', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(144, '1306810245', 'facebook', 'Duda', 'Almeida', 'sualmeida', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(145, '1258398435', 'facebook', 'Cris', 'Maria', 'crismaria', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(146, '100001075060520', 'facebook', 'Michelle', 'Andrade', 'miandrade', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(147, '100000898865594', 'facebook', 'Carolina', 'Vieira', 'cavieira', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(148, '100001600335163', 'facebook', 'Teresa', 'Pereira', 'tete', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(149, '100000722752960', 'facebook', 'Raphaela', 'Bitencourtt Funari', 'bitencourttfunari', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(150, '100001407099168', 'facebook', 'Nara', 'Oliveira', 'nara', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(151, '100002140012241', 'facebook', 'Marina', 'Tommazi', 'tommazi', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(152, '100001632072219', 'facebook', 'Satler', 'Mariana', 'Satler', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(153, '100001765266816', 'facebook', 'Carol', 'Rios', 'crios', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(154, '100001613172803', 'facebook', 'Cristina', 'Ponce', 'ponce', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(155, '100001703315140', 'facebook', 'Natália', 'Carvalho', 'natiCarvalho', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(156, '100002106025180', 'facebook', 'Cátia', 'Gonçalves', 'catigo32', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(157, '100002052317655', 'facebook', 'Ivana', 'Perez', 'ivanaperez', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(158, '100002024721337', 'facebook', 'Amanda', 'Santos', 'asants', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(159, '100002530627916', 'facebook', 'Daniela', 'Freitas', 'dani32freitas', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(160, '201014990178', 'facebook', 'Ricardo', 'Kaka', 'ricardokaka', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(161, '100002361232436', 'facebook', 'Karim', '', 'krim29', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(162, '100003220189217', 'facebook', 'Cida', 'Alves', 'cidinha', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(163, '100002954008680', 'facebook', 'Martinha', 'Sampaio', 'martinhagta', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(164, '100004034627671', 'facebook', 'Bruna', 'Alves', 'balves', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(165, '100003299298153', 'facebook', 'Tdias', 'Silva', 'tsilvinha', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(166, '100004959735818', 'facebook', 'Melissa', 'Moraes', 'lindezario', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(167, '100005157135553', 'facebook', 'Eliana', 'Fichio', 'fichio', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(168, '100005037287022', 'facebook', 'Alice', 'Keiser', 'keiser', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(169, '100004989462400', 'facebook', 'Derlane', 'Silva', 'dersilva', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(170, '100008209650320', 'facebook', 'Aline', 'Riscado', 'ariscado', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(171, '100006726316307', 'facebook', 'Priscilla', 'Melo', 'primelo', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(172, '100000389716557', 'facebook', 'Vinícius', 'Magalhães', 'vinymaga', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(173, '100002625869031', 'facebook', 'Alicia', 'Rodrigues', 'aliro32', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(174, '100007341401267', 'facebook', 'Alex', 'Sandim', 'alexsa', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(175, '100003193690585', 'facebook', 'Ana', 'Rita', 'ritinha', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(176, '100001757884988', 'facebook', 'Bruno', 'Rodrigues', 'brodri', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(177, '100001279849838', 'facebook', 'Tatiane', 'Almeida', 'taal', 0, 'teste@teste', 0, 1, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(178, '100002891739790', 'facebook', 'Bethania', 'Diniz', 'bDiniz', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(179, '100003600675020', 'facebook', 'Janderson', 'Lemos', 'Janderson', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(180, '100005056638793', 'facebook', 'Charles', 'Silva', 'charlessilva', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(181, '100002916319111', 'facebook', 'Michele', 'Fideles', 'mfideles', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(182, '100000201625378', 'facebook', 'Erick', 'Cavaletto', 'Cavaletto', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(183, '100002851455999', 'facebook', 'Gusttavo', 'Magalhães', 'tavinho', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(184, '100007379119378', 'facebook', 'Lusiana', 'Beatriz Morais', 'gostosaLusiana', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(185, '1629181572', 'facebook', 'Ronicley', 'Rodrigues', 'ronirodrigues', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(186, '100003205360706', 'facebook', 'Fabian', 'Torres', 'fabiant', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(187, '100004485973863', 'facebook', 'Wellington', 'Sampaio', 'well', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(188, '100005007877374', 'facebook', 'Eduarda', 'Lavine', 'lavine', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(189, '100005007877374', 'facebook', 'Eduarda', 'Lavine', 'lavine', 0, 'teste@teste', 0, 0, '2015-03-18 04:35:09', '2015-03-18 04:35:09'),
(190, '834098049', 'facebook', 'Renato', 'Marinho', 'hatoa', 1, 'renato.marinho@s2move.com', 1, 1, '2015-03-18 04:38:25', '2015-03-18 04:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL,
  `votable_id` int(11) DEFAULT NULL,
  `votable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_flag` tinyint(1) DEFAULT NULL,
  `vote_scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `impressions`
--
ALTER TABLE `impressions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `impressionable_type_message_index` (`impressionable_type`,`message`(255),`impressionable_id`),
  ADD KEY `poly_request_index` (`impressionable_type`,`impressionable_id`,`request_hash`),
  ADD KEY `poly_ip_index` (`impressionable_type`,`impressionable_id`,`ip_address`),
  ADD KEY `poly_session_index` (`impressionable_type`,`impressionable_id`,`session_hash`),
  ADD KEY `controlleraction_request_index` (`controller_name`,`action_name`,`request_hash`),
  ADD KEY `controlleraction_ip_index` (`controller_name`,`action_name`,`ip_address`),
  ADD KEY `controlleraction_session_index` (`controller_name`,`action_name`,`session_hash`),
  ADD KEY `index_impressions_on_user_id` (`user_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_votes_on_voter_id_and_voter_type_and_vote_scope` (`voter_id`,`voter_type`,`vote_scope`),
  ADD KEY `index_votes_on_votable_id_and_votable_type_and_vote_scope` (`votable_id`,`votable_type`,`vote_scope`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `impressions`
--
ALTER TABLE `impressions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
