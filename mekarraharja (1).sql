-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2017 at 07:58 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mekarraharja`
--

-- --------------------------------------------------------

--
-- Table structure for table `datang`
--

CREATE TABLE `datang` (
  `id` int(11) NOT NULL,
  `nik` char(25) NOT NULL,
  `namal` char(25) NOT NULL,
  `tempt` varchar(15) NOT NULL,
  `tgl` date NOT NULL,
  `jkl` enum('Laki-Laki','Perempuan') NOT NULL,
  `kwg` varchar(15) NOT NULL,
  `dtg` varchar(25) NOT NULL,
  `ttlskrg` varchar(25) NOT NULL,
  `tgl2` date NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datapenduduk`
--

CREATE TABLE `datapenduduk` (
  `id` int(11) NOT NULL,
  `kk` char(25) NOT NULL,
  `nik` char(25) NOT NULL,
  `namakk` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `tempatl` varchar(25) NOT NULL,
  `tanggallhr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datapenduduk`
--

INSERT INTO `datapenduduk` (`id`, `kk`, `nik`, `namakk`, `alamat`, `tempatl`, `tanggallhr`) VALUES
(1, '1', '1', 'rwerwersddas', '0', 'dsaldjklasjda', '2017-12-22'),
(2, '2', '2', 'hh', 'jj', 'bandung', '2017-11-01'),
(3, '5', '5', 'uyuyuy', 'jjhjhj', 'bandung', '2017-11-02'),
(4, '9', '9', 'klklh', 'gjjhkkj', 'badklajlka', '2017-11-25'),
(5, '1234657', '12356', 'Adam', 'bandung', 'bandun', '2017-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `Id` int(11) NOT NULL,
  `nkkm` varchar(25) NOT NULL,
  `nikm` char(25) NOT NULL,
  `namam` varchar(25) NOT NULL,
  `jklkm` enum('Laki-Laki','Perempuan') NOT NULL,
  `umurkm` char(11) NOT NULL,
  `pkjaan` varchar(25) NOT NULL,
  `wktum` datetime NOT NULL,
  `sbbm` varchar(25) NOT NULL,
  `tmptm` varchar(25) NOT NULL,
  `blokm` char(15) NOT NULL,
  `rtm` char(11) NOT NULL,
  `rwm` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kematian`
--

INSERT INTO `kematian` (`Id`, `nkkm`, `nikm`, `namam`, `jklkm`, `umurkm`, `pkjaan`, `wktum`, `sbbm`, `tmptm`, `blokm`, `rtm`, `rwm`) VALUES
(1, '', '1231232432', 'dsdadasdadsa', '', '56', 'pembuat kokolontong', '2018-07-10 00:00:00', 'sakit jantung', 'rumah', 'sukamandi', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kkdanktp`
--

CREATE TABLE `kkdanktp` (
  `id` int(11) NOT NULL,
  `namak` varchar(25) NOT NULL,
  `jkktp` set('KK','KTP') NOT NULL,
  `tglk` date NOT NULL,
  `nkktp` char(25) NOT NULL,
  `kettp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kkdanktp`
--

INSERT INTO `kkdanktp` (`id`, `namak`, `jkktp`, `tglk`, `nkktp`, `kettp`) VALUES
(1, '', 'KK', '2019-02-09', '123252342353', '<p>\r\n	pertama</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `klanak`
--

CREATE TABLE `klanak` (
  `IDA` int(225) NOT NULL,
  `nanak` varchar(25) NOT NULL,
  `wktla` date NOT NULL,
  `tmel` time NOT NULL,
  `jklh` enum('Laki-Laki','Perempuan') NOT NULL,
  `bbdn` int(15) NOT NULL,
  `pjbdn` int(15) NOT NULL,
  `ankke` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20') NOT NULL,
  `tmptkll` varchar(25) NOT NULL,
  `namasu` varchar(25) NOT NULL,
  `agma` enum('Islam','Kristen Protestan','Kristen Katolik','Budha','Hindu','Konghucu','Yahudi') NOT NULL,
  `umro` char(15) NOT NULL,
  `pkjan` char(25) NOT NULL,
  `naist` char(25) NOT NULL,
  `agmas` enum('Islam','Kristen Protestan','Kristen Katolik','Budha','Hindu','Konghucu','Yahudi') NOT NULL,
  `umris` char(15) NOT NULL,
  `pkjanis` char(25) NOT NULL,
  `blok` varchar(25) NOT NULL,
  `rtort` char(11) NOT NULL,
  `rworts` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klanak`
--

INSERT INTO `klanak` (`IDA`, `nanak`, `wktla`, `tmel`, `jklh`, `bbdn`, `pjbdn`, `ankke`, `tmptkll`, `namasu`, `agma`, `umro`, `pkjan`, `naist`, `agmas`, `umris`, `pkjanis`, `blok`, `rtort`, `rworts`) VALUES
(1, 'cklk', '2017-01-08', '00:00:11', 'Laki-Laki', 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kuyah`
--

CREATE TABLE `kuyah` (
  `id_users` int(10) NOT NULL,
  `kuy` int(11) NOT NULL,
  `ah` int(11) NOT NULL,
  `fraud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuyah`
--

INSERT INTO `kuyah` (`id_users`, `kuy`, `ah`, `fraud`) VALUES
(2, 12, 21, 32);

-- --------------------------------------------------------

--
-- Table structure for table `lapsppt`
--

CREATE TABLE `lapsppt` (
  `id` int(11) NOT NULL,
  `namapmt` varchar(25) NOT NULL,
  `nolc` char(25) NOT NULL,
  `amt` varchar(25) NOT NULL,
  `nmspt` varchar(25) NOT NULL,
  `loktnh` varchar(25) NOT NULL,
  `nosppt` char(20) NOT NULL,
  `lstnh` int(16) NOT NULL,
  `klstn` char(10) NOT NULL,
  `sprktn` enum('Kebun','Hutan','Sawah') NOT NULL,
  `pjkip` varchar(20) NOT NULL,
  `sbbrk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapsppt`
--

INSERT INTO `lapsppt` (`id`, `namapmt`, `nolc`, `amt`, `nmspt`, `loktnh`, `nosppt`, `lstnh`, `klstn`, `sprktn`, `pjkip`, `sbbrk`) VALUES
(1, '', '', '', '', '', '', 0, '', 'Hutan', '', ''),
(2, '', '24356789', 'bandung', 'rendy', 'majalengka', '4321', 34, 'b', 'Sawah', '271831', '<p>\r\n	turunan</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `namasurat`
--

CREATE TABLE `namasurat` (
  `BLANGKO_SURAT.docx` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(10) NOT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `nomor`, `nama`, `created`, `updated`) VALUES
(11, '2341237698', 'Nurlia Nori', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(12, '4910235867', 'Dillah', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(13, '123465987', 'Abdillah', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(14, '12349878', 'Lala', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(15, '34234234', 'dsfsdf', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(16, '53425345', 'sdfsdfsdf', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(17, '76756756', 'sdfsgrtge445', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(18, '56456456', 'dertert', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(19, '343213423', 'dfsdfsdf', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(20, '45353453', 'sadasdfe4', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(22, '123546879', 'asdasdjlk', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(23, '0123457', 'jktjgrtgjkt', '2017-01-11 00:00:00', '0000-00-00 00:00:00'),
(24, '7856437856', 'hjgfdjkfg fkggfdg', '2017-01-11 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pindah`
--

CREATE TABLE `pindah` (
  `id` int(11) NOT NULL,
  `nik` char(25) NOT NULL,
  `namap` varchar(25) NOT NULL,
  `tempp` varchar(15) NOT NULL,
  `tglp` date NOT NULL,
  `jklp` enum('Laki-Laki','Perempuan') NOT NULL,
  `kwgp` varchar(15) NOT NULL,
  `asalp` varchar(25) NOT NULL,
  `tujuanp` varchar(25) NOT NULL,
  `tglpp` date NOT NULL,
  `kett` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pindah`
--

INSERT INTO `pindah` (`id`, `nik`, `namap`, `tempp`, `tglp`, `jklp`, `kwgp`, `asalp`, `tujuanp`, `tglpp`, `kett`) VALUES
(1, '', '', 'bandung', '2019-03-09', 'Perempuan', 'WNI', 'Majlengka', 'Bandung', '2019-03-10', '<p>\r\n	Mencari fairy tail</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1510555210, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datang`
--
ALTER TABLE `datang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datapenduduk`
--
ALTER TABLE `datapenduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `kkdanktp`
--
ALTER TABLE `kkdanktp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klanak`
--
ALTER TABLE `klanak`
  ADD PRIMARY KEY (`IDA`);

--
-- Indexes for table `kuyah`
--
ALTER TABLE `kuyah`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `lapsppt`
--
ALTER TABLE `lapsppt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `pindah`
--
ALTER TABLE `pindah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datang`
--
ALTER TABLE `datang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `datapenduduk`
--
ALTER TABLE `datapenduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kematian`
--
ALTER TABLE `kematian`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kkdanktp`
--
ALTER TABLE `kkdanktp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `klanak`
--
ALTER TABLE `klanak`
  MODIFY `IDA` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kuyah`
--
ALTER TABLE `kuyah`
  MODIFY `id_users` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lapsppt`
--
ALTER TABLE `lapsppt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pindah`
--
ALTER TABLE `pindah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
