-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Des 2020 pada 05.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labIMK`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hak_akses`
--

CREATE TABLE `tb_hak_akses` (
  `id_hak_akses` int(11) NOT NULL,
  `nama_hak_akses` varchar(225) NOT NULL,
  `modul_akses` text NOT NULL,
  `parent_modul_akses` text DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_hak_akses`
--

INSERT INTO `tb_hak_akses` (`id_hak_akses`, `nama_hak_akses`, `modul_akses`, `parent_modul_akses`, `created_time`) VALUES
(1, 'superuser', '{\r\n    \"modul\": [\r\n        \"1\",\r\n        \"2\",\r\n        \"3\",\r\n        \"4\",\r\n        \"5\",\r\n        \"6\",\r\n        \"7\",\r\n        \"8\",\r\n        \"9\",\r\n        \"10\",\r\n        \"35\",\r\n        \"36\",\r\n        \"37\",\r\n        \"38\",\r\n        \"59\",\r\n        \"60\",\r\n        \"61\",\r\n        \"62\",\r\n        \"11\",\r\n        \"12\",\r\n        \"13\",\r\n        \"14\",\r\n        \"15\",\r\n        \"16\",\r\n        \"17\",\r\n        \"18\",\r\n        \"19\",\r\n        \"20\",\r\n        \"21\",\r\n        \"51\",\r\n        \"52\",\r\n        \"53\",\r\n        \"54\",\r\n        \"22\",\r\n        \"23\",\r\n        \"24\",\r\n        \"25\",\r\n        \"26\",\r\n        \"27\",\r\n        \"28\",\r\n        \"29\",\r\n        \"30\",\r\n        \"31\",\r\n        \"32\",\r\n        \"33\",\r\n        \"34\",\r\n        \"39\",\r\n        \"40\",\r\n        \"41\",\r\n        \"42\",\r\n        \"43\",\r\n        \"44\",\r\n        \"45\",\r\n        \"46\",\r\n        \"47\",\r\n        \"48\",\r\n        \"49\",\r\n        \"50\",\r\n        \"55\",\r\n        \"56\",\r\n        \"57\",\r\n        \"58\",\r\n        \"63\",\r\n        \"64\",\r\n        \"65\",\r\n        \"66\",\r\n        \"67\",\r\n        \"68\",\r\n        \"69\",\r\n        \"70\",\r\n        \"71\",\r\n        \"72\",\r\n        \"73\",\r\n        \"74\"\r\n    ]\r\n}', '{\r\n    \"parent_modul\": [\r\n        \"1\",\r\n        \"2\",\r\n        \"3\",\r\n        \"4\",\r\n        \"5\",\r\n        \"6\",\r\n        \"7\",\r\n        \"9\",\r\n        \"10\",\r\n        \"11\"\r\n    ]\r\n}', '2020-09-17 12:56:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_identitas`
--

CREATE TABLE `tb_identitas` (
  `id_profile` int(11) NOT NULL,
  `apps_name` varchar(225) NOT NULL,
  `apps_version` varchar(225) NOT NULL,
  `apps_code` varchar(5) NOT NULL,
  `agency` varchar(225) NOT NULL,
  `address` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `telephon` varchar(225) DEFAULT NULL,
  `fax` varchar(225) DEFAULT NULL,
  `website` varchar(225) NOT NULL,
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `keyword` text NOT NULL,
  `logo` varchar(225) DEFAULT 'NULL',
  `apps_icon` varchar(225) DEFAULT NULL,
  `about_us` text NOT NULL,
  `email` varchar(225) DEFAULT NULL,
  `email_password` varchar(225) DEFAULT NULL,
  `email_port` varchar(4) DEFAULT NULL,
  `email_host` varchar(225) DEFAULT NULL,
  `email_type` varchar(3) DEFAULT NULL,
  `bg_login` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_identitas`
--

INSERT INTO `tb_identitas` (`id_profile`, `apps_name`, `apps_version`, `apps_code`, `agency`, `address`, `city`, `telephon`, `fax`, `website`, `header`, `footer`, `keyword`, `logo`, `apps_icon`, `about_us`, `email`, `email_password`, `email_port`, `email_host`, `email_type`, `bg_login`) VALUES
(1, 'LabIMK', 'V 0.0.1', 'MEDIO', 'Pembelajaran Lab IMK', NULL, NULL, NULL, '', '', '', '<a class=\"text-bold-800 grey darken-2\" \r\nhref=\"\" target=\"_blank\">Powered By labIMK</a>', '', 'assets/logo/logo_usu.png', 'assets/logo/logo_usu1.png', '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_modul`
--

CREATE TABLE `tb_modul` (
  `id_modul` int(11) NOT NULL,
  `nama_modul` varchar(225) NOT NULL,
  `link_modul` varchar(225) NOT NULL,
  `type_modul` varchar(20) NOT NULL,
  `id_parent_modul` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `tampil_sidebar` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_modul`
--

INSERT INTO `tb_modul` (`id_modul`, `nama_modul`, `link_modul`, `type_modul`, `id_parent_modul`, `created_time`, `tampil_sidebar`) VALUES
(1, 'Hak Akses', 'panel/users/rbac_list', 'R', 3, '2020-09-17 13:13:21', 'Y'),
(2, 'Create Hak Akses', 'panel/users/create_rbac', 'C', 3, '2020-09-17 13:13:21', 'N'),
(3, 'Update Hak Akses', 'panel/users/update_rbac/', 'U', 3, '2020-09-17 13:13:49', 'N'),
(4, 'Delete Hak Akses', 'panel/users/delete_rbac/', 'D', 3, '2020-09-17 13:13:49', 'N'),
(5, 'List Pengguna', 'panel/users/list', 'R', 3, '2020-09-17 13:14:18', 'Y'),
(6, 'Tambah Pengguna', 'panel/users/create', 'C', 3, '2020-09-17 13:14:18', 'N'),
(7, 'Update Pengguna', 'panel/users/update/', 'U', 3, '2020-09-17 13:14:42', 'N'),
(8, 'Delete Pengguna', 'panel/users/delete/', 'D', 3, '2020-09-17 13:14:42', 'N'),
(9, 'Identitas Aplikasi', 'panel/settings/apps_info', 'U', 4, '2020-09-17 13:15:00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_parent_modul`
--

CREATE TABLE `tb_parent_modul` (
  `id_parent_modul` int(11) NOT NULL,
  `nama_parent_modul` varchar(225) NOT NULL,
  `urutan` int(11) NOT NULL,
  `icon` varchar(225) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `child_module` enum('Y','N') NOT NULL,
  `link` varchar(225) NOT NULL,
  `tampil_sidebar_parent` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_parent_modul`
--

INSERT INTO `tb_parent_modul` (`id_parent_modul`, `nama_parent_modul`, `urutan`, `icon`, `created_time`, `child_module`, `link`, `tampil_sidebar_parent`) VALUES
(1, 'Dashboard', 1, 'ft-home', '2020-09-17 12:57:16', 'N', 'panel/dashboard', 'Y'),
(3, 'Manajemen Pengguna', 3, 'fa fa-users', '2020-09-17 13:00:40', 'Y', '#', 'Y'),
(4, 'Pengaturan', 4, 'ft-settings', '2020-09-17 13:01:09', 'Y', '#', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `no_telp` varchar(14) DEFAULT NULL,
  `password` varchar(225) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenkel` enum('L','P') DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `fotopengguna` varchar(225) DEFAULT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `hak_akses` varchar(225) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `activity_status` enum('online','offline') NOT NULL DEFAULT 'offline',
  `last_login` datetime DEFAULT NULL,
  `status` enum('actived','deleted','pending') NOT NULL DEFAULT 'actived'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `email`, `no_telp`, `password`, `nama_lengkap`, `tgl_lahir`, `jenkel`, `alamat`, `fotopengguna`, `nim`, `hak_akses`, `created_time`, `activity_status`, `last_login`, `status`) VALUES
(1, 'superuser@mail.com', NULL, '070fd27fb7db7e1e684690db25b9deaf2eda39f0', 'Super User', NULL, NULL, NULL, NULL, '171402023', 'superuser', '2020-09-17 12:55:27', 'online', '2020-12-07 11:23:08', 'actived');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_hak_akses`
--
ALTER TABLE `tb_hak_akses`
  ADD PRIMARY KEY (`id_hak_akses`),
  ADD UNIQUE KEY `nama_hak_akses` (`nama_hak_akses`);

--
-- Indeks untuk tabel `tb_identitas`
--
ALTER TABLE `tb_identitas`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indeks untuk tabel `tb_modul`
--
ALTER TABLE `tb_modul`
  ADD PRIMARY KEY (`id_modul`),
  ADD KEY `parent_module` (`id_parent_modul`);

--
-- Indeks untuk tabel `tb_parent_modul`
--
ALTER TABLE `tb_parent_modul`
  ADD PRIMARY KEY (`id_parent_modul`),
  ADD UNIQUE KEY `urutan` (`urutan`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `nip` (`nim`),
  ADD KEY `hak_akses` (`hak_akses`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_hak_akses`
--
ALTER TABLE `tb_hak_akses`
  MODIFY `id_hak_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_identitas`
--
ALTER TABLE `tb_identitas`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_modul`
--
ALTER TABLE `tb_modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_parent_modul`
--
ALTER TABLE `tb_parent_modul`
  MODIFY `id_parent_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
