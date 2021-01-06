-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 11:45 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_login_register_todoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'sessions', '0001_initial', '2021-01-02 06:00:47.546540');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` bigint(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `title`, `description`) VALUES
(1, 'ccccccccccc', 'cccccccccccccc'),
(3, 'a', 'a'),
(4, 'hello', 'world'),
(5, 'sadf', 'asdf'),
(22, 'cradsadasf', 'ccccccccccccc'),
(26, 'asdad', 'bbbbbbbbbbbbbbbbbb');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `last_login`) VALUES
(1, 'ditya_jelita971', 'ditya_jelita971@gmail.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(2, 'arkadewi_waskita763', 'arkadewi_waskita763@zoho.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(3, 'wijaya.pranawa178', 'wijaya.pranawa178@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(4, 'danurdaragayatri497', 'danurdaragayatri497@zoho.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(5, 'arief.santoso390', 'arief.santoso390@tutanota.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(6, 'hadi_pradigta906', 'hadi_pradigta906@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(7, 'teja.bajradaka914', 'teja.bajradaka914@zoho.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(8, 'ulung.brawijaya150', 'ulung.brawijaya150@aim.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(9, 'nawa.lestari533', 'nawa.lestari533@aim.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(10, 'rahardian__tohpati297', 'rahardian__tohpati297@protonmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(11, 'ariefbamantara163', 'ariefbamantara163@protonmail.ch', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(12, 'gibran.ganendra567', 'gibran.ganendra567@icloud.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(13, 'rama_arjanta645', 'rama_arjanta645@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(14, 'intannarasnama224', 'intannarasnama224@protonmail.ch', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(15, 'janu_cipta691', 'janu_cipta691@aol.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(16, 'abyasa_gadhing533', 'abyasa_gadhing533@yandex.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(17, 'adhi.sudiro517', 'adhi.sudiro517@yandex.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(18, 'widia.listia669', 'widia.listia669@protonmail.ch', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(19, 'sudirocandra9', 'sudirocandra9@gmail.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(20, 'gumelar__raditya332', 'gumelar__raditya332@aim.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(21, 'sudiro__tulus6', 'sudiro__tulus6@keemail.me', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(22, 'nadindra_april217', 'nadindra_april217@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(23, 'gempita.permata767', 'gempita.permata767@keemail.me', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(24, 'bagasdirga427', 'bagasdirga427@gmail.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(25, 'tohpati.teja946', 'tohpati.teja946@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(26, 'april__wuri352', 'april__wuri352@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(27, 'madaharsa.ditya668', 'madaharsa.ditya668@tutanota.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(28, 'rani_ningrum246', 'rani_ningrum246@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(29, 'wangi_jenar107', 'wangi_jenar107@facebook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(30, 'wulanairani892', 'wulanairani892@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(31, 'ihsan_mahadri525', 'ihsan_mahadri525@tutanota.de', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(32, 'samudra_budiono248', 'samudra_budiono248@aol.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(33, 'banurasmi__ratih816', 'banurasmi__ratih816@tutanota.de', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(34, 'gilanggunawan351', 'gilanggunawan351@keemail.me', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(35, 'cakraabimana680', 'cakraabimana680@facebook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(36, 'maya__citra879', 'maya__citra879@tutanota.de', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(37, 'aswangga__haris727', 'aswangga__haris727@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(38, 'ayudisha.widi234', 'ayudisha.widi234@protonmail.ch', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(39, 'maktikagantari468', 'maktikagantari468@zoho.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(40, 'gunawan.hakim807', 'gunawan.hakim807@tutanota.de', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(41, 'hasya_padmana971', 'hasya_padmana971@gmail.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(42, 'santoso_raharja583', 'santoso_raharja583@icloud.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(43, 'daniswara__handaru70', 'daniswara__handaru70@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(44, 'buana.gentala202', 'buana.gentala202@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(45, 'manika.anjani350', 'manika.anjani350@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(46, 'nirmala__kana544', 'nirmala__kana544@yandex.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(47, 'ganendra_siswanto263', 'ganendra_siswanto263@tutanota.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(48, 'banyu.widayaka243', 'banyu.widayaka243@protonmail.ch', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(49, 'ulung.tohpati912', 'ulung.tohpati912@keemail.me', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(50, 'rudiganendra141', 'rudiganendra141@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(51, 'hardana.rangga486', 'hardana.rangga486@stikom.ac.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(52, 'respatiastaguna382', 'respatiastaguna382@tutanota.de', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(53, 'kasihisthika404', 'kasihisthika404@icloud.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(54, 'tohpati__abyasa501', 'tohpati__abyasa501@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(55, 'herdian__buana447', 'herdian__buana447@tutanota.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(56, 'adinata__jatmika657', 'adinata__jatmika657@tuta.io', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(57, 'kamandaka.lakeswara646', 'kamandaka.lakeswara646@facebook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(58, 'tri.swasti994', 'tri.swasti994@tutanota.de', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(59, 'widuri.mirtra914', 'widuri.mirtra914@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(60, 'kahyang.paramita637', 'kahyang.paramita637@lycos.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(61, 'hasya.saraswati670', 'hasya.saraswati670@tutanota.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(62, 'hanafirangga82', 'hanafirangga82@stikom.ac.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(63, 'aradhana.henry147', 'aradhana.henry147@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(64, 'kasyaira_lestari859', 'kasyaira_lestari859@aim.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(65, 'ganendradarsa227', 'ganendradarsa227@stikom.ac.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(66, 'surya__aji900', 'surya__aji900@keemail.me', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(67, 'aradhana_halim457', 'aradhana_halim457@zoho.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(68, 'kemala__karmika341', 'kemala__karmika341@protonmail.ch', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(69, 'dianti.rahmi970', 'dianti.rahmi970@lycos.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(70, 'madaharsa__wangi725', 'madaharsa__wangi725@tuta.io', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(71, 'brahmajiwa83', 'brahmajiwa83@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(72, 'lika.limar681', 'lika.limar681@gmail.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(73, 'narasnamalaksita952', 'narasnamalaksita952@stikom.ac.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(74, 'langitbisma354', 'langitbisma354@tutamail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(75, 'jiwa__satria213', 'jiwa__satria213@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(76, 'prasetyo__apta699', 'prasetyo__apta699@zoho.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(77, 'tulus.ricky64', 'tulus.ricky64@keemail.me', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(78, 'sucibatari303', 'sucibatari303@facebook.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(79, 'yuni__kasih673', 'yuni__kasih673@gmail.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(80, 'kiranasuci678', 'kiranasuci678@aim.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(81, 'herdian__budiono470', 'herdian__budiono470@tuta.io', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(82, 'istari__kani581', 'istari__kani581@tuta.io', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(83, 'sudiro_kresna775', 'sudiro_kresna775@stikom.ac.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(84, 'wangimadarsana630', 'wangimadarsana630@tuta.io', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(85, 'cakrawalabajradaka411', 'cakrawalabajradaka411@yandex.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(86, 'gusti__jenaka858', 'gusti__jenaka858@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(87, 'bulan_mada255', 'bulan_mada255@icloud.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(88, 'jokokala250', 'jokokala250@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(89, 'kamajaya.adiwangsa787', 'kamajaya.adiwangsa787@icloud.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0000-00-00 00:00:00'),
(90, 'aruna_rosa400', 'aruna_rosa400@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2021-01-06 05:47:51'),
(94, 'admin', 'tokohp90@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2021-01-06 06:41:35'),
(95, 'sariika', 'sariika@gmail.com', 'c33367701511b4f6020ec61ded352059', 'admin', '2021-01-06 06:42:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
