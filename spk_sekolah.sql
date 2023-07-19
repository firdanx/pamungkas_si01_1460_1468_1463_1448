-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Jul 2023 pada 09.53
-- Versi server: 8.0.30
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int NOT NULL,
  `id_sekolah` int NOT NULL,
  `status` enum('daftar','unggulan','belum unggulan') NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `id_sekolah`, `status`, `total`) VALUES
(25, 16, 'daftar', 0),
(26, 17, 'daftar', 0),
(27, 19, 'daftar', 0),
(28, 20, 'daftar', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif_nilai`
--

CREATE TABLE `alternatif_nilai` (
  `id_alternatif_nilai` int NOT NULL,
  `id_alternatif` int NOT NULL,
  `id_kriteria` int NOT NULL,
  `id_subkriteria` int NOT NULL,
  `id_nilai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif_nilai`
--

INSERT INTO `alternatif_nilai` (`id_alternatif_nilai`, `id_alternatif`, `id_kriteria`, `id_subkriteria`, `id_nilai`) VALUES
(196, 39, 13, 45, 45),
(197, 39, 14, 50, 50),
(198, 39, 16, 60, 60),
(199, 39, 17, 65, 65),
(200, 39, 20, 80, 80),
(201, 40, 13, 46, 46),
(202, 40, 14, 51, 51),
(203, 40, 16, 61, 61),
(204, 40, 17, 66, 66),
(205, 40, 20, 81, 81),
(206, 41, 13, 47, 47),
(207, 41, 14, 52, 52),
(208, 41, 16, 62, 62),
(209, 41, 17, 67, 67),
(210, 41, 20, 82, 82),
(211, 42, 13, 48, 48),
(212, 42, 14, 53, 53),
(213, 42, 16, 63, 63),
(214, 42, 17, 68, 68),
(215, 42, 20, 83, 83),
(226, 51, 13, 46, 46),
(227, 51, 14, 51, 51),
(228, 51, 16, 60, 60),
(229, 51, 17, 66, 66),
(230, 51, 20, 82, 82),
(231, 52, 13, 49, 49),
(232, 52, 14, 54, 54),
(233, 52, 16, 64, 64),
(234, 52, 17, 69, 69),
(235, 52, 20, 84, 84),
(236, 1, 13, 46, 46),
(237, 1, 14, 51, 51),
(238, 1, 16, 62, 62),
(239, 1, 17, 66, 66),
(240, 2, 13, 45, 45),
(241, 2, 14, 50, 50),
(242, 2, 16, 64, 64),
(243, 2, 17, 69, 69),
(244, 3, 13, 49, 49),
(245, 3, 14, 54, 54),
(246, 3, 16, 64, 64),
(247, 3, 17, 69, 69),
(248, 4, 13, 49, 49),
(249, 4, 14, 54, 54),
(250, 4, 16, 64, 64),
(251, 4, 17, 69, 69),
(252, 5, 13, 45, 45),
(253, 5, 14, 50, 50),
(254, 5, 16, 60, 60),
(255, 5, 17, 65, 65),
(256, 6, 13, 49, 49),
(257, 6, 14, 54, 54),
(258, 6, 16, 64, 64),
(259, 6, 17, 69, 69),
(260, 7, 13, 49, 49),
(261, 7, 14, 54, 54),
(262, 7, 16, 64, 64),
(263, 7, 17, 69, 69),
(264, 8, 13, 45, 45),
(265, 8, 14, 50, 50),
(266, 8, 16, 60, 60),
(267, 8, 17, 65, 65),
(268, 9, 13, 49, 49),
(269, 9, 14, 54, 54),
(270, 9, 16, 64, 64),
(271, 9, 17, 69, 69),
(272, 10, 13, 45, 45),
(273, 10, 14, 50, 50),
(274, 10, 16, 60, 60),
(275, 10, 17, 65, 65),
(276, 11, 13, 49, 49),
(277, 11, 14, 54, 54),
(278, 11, 16, 64, 64),
(279, 11, 17, 69, 69),
(280, 12, 13, 45, 45),
(281, 12, 14, 50, 50),
(282, 12, 16, 60, 60),
(283, 12, 17, 65, 65),
(284, 13, 13, 49, 49),
(285, 13, 14, 52, 52),
(286, 13, 16, 61, 61),
(287, 13, 17, 68, 68),
(288, 14, 13, 45, 45),
(289, 14, 14, 50, 50),
(290, 14, 16, 60, 60),
(291, 14, 17, 65, 65),
(292, 15, 13, 49, 49),
(293, 15, 14, 54, 54),
(294, 15, 16, 64, 64),
(295, 15, 17, 69, 69),
(296, 16, 22, 88, 88),
(297, 16, 23, 93, 93),
(298, 16, 24, 96, 96),
(299, 16, 25, 99, 99),
(300, 17, 22, 86, 86),
(301, 17, 23, 91, 91),
(302, 17, 24, 95, 95),
(303, 17, 25, 98, 98),
(304, 18, 22, 85, 85),
(305, 18, 23, 89, 89),
(306, 18, 24, 94, 94),
(307, 18, 25, 97, 97),
(308, 19, 22, 86, 86),
(309, 19, 23, 92, 92),
(310, 19, 24, 94, 94),
(311, 19, 25, 99, 99),
(312, 20, 22, 85, 85),
(313, 20, 23, 89, 89),
(314, 20, 24, 94, 94),
(315, 20, 25, 97, 97),
(316, 21, 22, 86, 86),
(317, 21, 23, 90, 90),
(318, 21, 24, 95, 95),
(319, 21, 25, 98, 98),
(320, 22, 22, 87, 87),
(321, 22, 23, 91, 91),
(322, 22, 24, 96, 96),
(323, 22, 25, 99, 99),
(324, 23, 22, 88, 88),
(325, 23, 23, 93, 93),
(326, 23, 24, 96, 96),
(327, 23, 25, 99, 99),
(328, 24, 22, 85, 85),
(329, 24, 23, 93, 93),
(330, 24, 24, 94, 94),
(331, 24, 25, 99, 99),
(332, 25, 22, 86, 86),
(333, 25, 23, 91, 91),
(334, 25, 24, 95, 95),
(335, 25, 25, 97, 97),
(336, 26, 22, 87, 87),
(337, 26, 23, 89, 89),
(338, 26, 24, 96, 96),
(339, 26, 25, 98, 98),
(340, 27, 22, 88, 88),
(341, 27, 23, 93, 93),
(342, 27, 24, 94, 94),
(343, 27, 25, 99, 99),
(344, 28, 22, 86, 86),
(345, 28, 23, 91, 91),
(346, 28, 24, 94, 94),
(347, 28, 25, 98, 98);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int NOT NULL,
  `id_tujuan` int NOT NULL,
  `judul` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int NOT NULL,
  `nama_kriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`) VALUES
(22, 'Prestasi'),
(23, 'Penghasilan Orang Tua'),
(24, 'Jumlah Saudara'),
(25, 'Usia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_nilai`
--

CREATE TABLE `kriteria_nilai` (
  `id_kriteria_nilai` int NOT NULL,
  `kriteria_id_dari` int NOT NULL,
  `kriteria_id_tujuan` int NOT NULL,
  `nilai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kategori`
--

CREATE TABLE `nilai_kategori` (
  `id_nilai` int NOT NULL,
  `nama_nilai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_kategori`
--

INSERT INTO `nilai_kategori` (`id_nilai`, `nama_nilai`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup'),
(4, 'Kurang'),
(5, 'Sangat Kurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subjek` varchar(30) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_siswa` int NOT NULL,
  `nama_siswa` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_sekolah` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurusan` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kelas` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_siswa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telpon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id_siswa`, `nama_siswa`, `nama_sekolah`, `jurusan`, `kelas`, `alamat_siswa`, `no_telpon`) VALUES
(16, 'Firdana Amanaturrokhim', 'Universitas Amikom Yogyakarta', 'Sistem Informasi', 'SI 01', '20.12.1460', '123456678'),
(17, 'Juwanda Adi Sasmita', 'Universitas Amikom Yogyakarta', 'Sistem Informasi', 'SI 01', '20.12.1468', '12345678'),
(18, 'Achmad Raynadi Pradana', 'Universitas Amikom Yogyakarta', 'Sistem Informasi', 'SI 01', '21.22.2438', '12345678'),
(19, 'Irfanda Zulfan Nadhiifa', 'Universitas Amikom Yogyakarta', 'Sistem Informasi', 'SI 01', '20.12.1448', '12345678'),
(20, 'Caraka Bayu Pamungkas', 'Universitas Amikom Yogyakarta', 'Sistem Informasi', 'SI 01', '20.12.1463', '123456678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `id_kriteria` int NOT NULL,
  `tipe` enum('teks','nilai') NOT NULL,
  `nilai_minimum` double DEFAULT NULL,
  `nilai_maksimum` double DEFAULT NULL,
  `op_min` varchar(4) DEFAULT NULL,
  `op_max` varchar(4) DEFAULT NULL,
  `id_nilai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `nama_subkriteria`, `id_kriteria`, `tipe`, `nilai_minimum`, `nilai_maksimum`, `op_min`, `op_max`, `id_nilai`) VALUES
(45, '=> 91 <= 100', 13, 'nilai', 91, 100, '=>', '<=', 1),
(46, '=> 81 <= 90', 13, 'nilai', 81, 90, '=>', '<=', 2),
(47, '=> 71 <= 80', 13, 'nilai', 71, 80, '=>', '<=', 3),
(48, '=> 61 <= 70', 13, 'nilai', 61, 70, '=>', '<=', 4),
(49, '=> 0 < 60', 13, 'nilai', 0, 60, '=>', '<', 5),
(50, '=> 91 <= 100', 14, 'nilai', 91, 100, '=>', '<=', 1),
(51, '=> 81 <= 90', 14, 'nilai', 81, 90, '=>', '<=', 2),
(52, '=> 71 <= 80', 14, 'nilai', 71, 80, '=>', '<=', 3),
(53, '=> 61 <= 70', 14, 'nilai', 61, 70, '=>', '<=', 4),
(54, '=> 0 <= 60', 14, 'nilai', 0, 60, '=>', '<=', 5),
(55, '=> 91 <= 100', 15, 'nilai', 91, 100, '=>', '<=', 1),
(56, '=> 81 <= 90', 15, 'nilai', 81, 90, '=>', '<=', 2),
(57, '=> 71 <= 80', 15, 'nilai', 71, 80, '=>', '<=', 3),
(58, '=> 61 <= 70', 15, 'nilai', 61, 70, '=>', '<=', 4),
(59, '=> 0 <= 60', 15, 'nilai', 0, 60, '=>', '<=', 5),
(60, 'Memuat 9 komponen dalam silabus', 16, 'teks', NULL, NULL, NULL, NULL, 1),
(61, 'Memuat 8 komponen dalam silabus', 16, 'teks', NULL, NULL, NULL, NULL, 2),
(62, 'Memuat 7 komponen dalam silabus', 16, 'teks', NULL, NULL, NULL, NULL, 3),
(63, 'Memuat 6 komponen dalam silabus', 16, 'teks', NULL, NULL, NULL, NULL, 4),
(64, 'Memuat kurang dari 6 komponen dalam silabus', 16, 'teks', NULL, NULL, NULL, NULL, 5),
(65, '100% mata pelajaran', 17, 'teks', NULL, NULL, NULL, NULL, 1),
(66, '95%-99% mata pelajaran', 17, 'teks', NULL, NULL, NULL, NULL, 2),
(67, '90%-94% mata pelajaran', 17, 'teks', NULL, NULL, NULL, NULL, 3),
(68, '85%-89% mata pelajaran', 17, 'teks', NULL, NULL, NULL, NULL, 4),
(69, 'Kurang dari 85% mata pelajaran', 17, 'teks', NULL, NULL, NULL, NULL, 5),
(85, 'Tidak ada', 22, 'teks', NULL, NULL, NULL, NULL, 4),
(86, 'Lokal', 22, 'teks', NULL, NULL, NULL, NULL, 3),
(87, 'Nasional', 22, 'teks', NULL, NULL, NULL, NULL, 2),
(88, 'Internasional', 22, 'teks', NULL, NULL, NULL, NULL, 1),
(89, '<1 Juta', 23, 'teks', NULL, NULL, NULL, NULL, 5),
(90, '1-2 Juta', 23, 'teks', NULL, NULL, NULL, NULL, 4),
(91, '2-3 Juta', 23, 'teks', NULL, NULL, NULL, NULL, 3),
(92, '3-4 Juta', 23, 'teks', NULL, NULL, NULL, NULL, 2),
(93, '>4 Juta', 23, 'teks', NULL, NULL, NULL, NULL, 1),
(94, '< 2', 24, 'teks', NULL, NULL, NULL, NULL, 3),
(95, '< 4', 24, 'teks', NULL, NULL, NULL, NULL, 2),
(96, '> 4', 24, 'teks', NULL, NULL, NULL, NULL, 1),
(97, '12 - 14 Tahun', 25, 'teks', NULL, NULL, NULL, NULL, 3),
(98, '15 - 17 Tahun', 25, 'teks', NULL, NULL, NULL, NULL, 2),
(99, '> 17 Tahun', 25, 'teks', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria_hasil`
--

CREATE TABLE `subkriteria_hasil` (
  `id_subkriteria_hasil` int NOT NULL,
  `id_subkriteria` int NOT NULL,
  `prioritas` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria_hasil`
--

INSERT INTO `subkriteria_hasil` (`id_subkriteria_hasil`, `id_subkriteria`, `prioritas`) VALUES
(83, 45, 1),
(84, 46, 0.5296070795769015),
(85, 47, 0.1515404539051346),
(86, 48, 0.1282407399951657),
(87, 49, 0.11669121673644427),
(88, 50, 1),
(89, 51, 0.21178188314887259),
(90, 52, 0.18580955091954202),
(91, 53, 0.174678551392686),
(92, 54, 0.1684946627666549),
(93, 60, 1),
(94, 61, 0.21178188314887259),
(95, 62, 0.18580955091954202),
(96, 63, 0.174678551392686),
(97, 64, 0.1684946627666549),
(98, 65, 1),
(99, 66, 0.21178188314887259),
(100, 67, 0.18580955091954202),
(101, 68, 0.174678551392686),
(102, 69, 0.1684946627666549),
(103, 80, 1),
(104, 81, 0.21178188314887259),
(105, 82, 0.18580955091954202),
(106, 83, 0.174678551392686),
(107, 84, 0.1684946627666549);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria_nilai`
--

CREATE TABLE `subkriteria_nilai` (
  `id_subkriteria_nilai` int NOT NULL,
  `id_kriteria` int NOT NULL,
  `subkriteria_id_dari` int NOT NULL,
  `subkriteria_id_tujuan` int NOT NULL,
  `nilai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria_nilai`
--

INSERT INTO `subkriteria_nilai` (`id_subkriteria_nilai`, `id_kriteria`, `subkriteria_id_dari`, `subkriteria_id_tujuan`, `nilai`) VALUES
(605, 20, 80, 81, 3),
(606, 20, 80, 82, 5),
(607, 20, 80, 83, 7),
(608, 20, 80, 84, 9),
(609, 20, 81, 82, 1),
(610, 20, 81, 83, 1),
(611, 20, 81, 84, 1),
(612, 20, 82, 83, 1),
(613, 20, 82, 84, 1),
(614, 20, 83, 84, 1),
(785, 14, 50, 51, 3),
(786, 14, 50, 52, 5),
(787, 14, 50, 53, 7),
(788, 14, 50, 54, 9),
(789, 14, 51, 52, 1),
(790, 14, 51, 53, 1),
(791, 14, 51, 54, 1),
(792, 14, 52, 53, 1),
(793, 14, 52, 54, 1),
(794, 14, 53, 54, 1),
(795, 16, 60, 61, 3),
(796, 16, 60, 62, 5),
(797, 16, 60, 63, 7),
(798, 16, 60, 64, 9),
(799, 16, 61, 62, 1),
(800, 16, 61, 63, 1),
(801, 16, 61, 64, 1),
(802, 16, 62, 63, 1),
(803, 16, 62, 64, 1),
(804, 16, 63, 64, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', 'suPo-mllp0t.uEXFBxuWeu01206297e748015fbf', 1501472329, 'Y2XqA.dZLpU.ULNXSFKV4e', 1268889823, 1689758504, 1, 'Akbar', 'Abustang', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(5, 1, 1),
(6, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `alternatif_nilai`
--
ALTER TABLE `alternatif_nilai`
  ADD PRIMARY KEY (`id_alternatif_nilai`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  ADD PRIMARY KEY (`id_kriteria_nilai`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_kategori`
--
ALTER TABLE `nilai_kategori`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- Indeks untuk tabel `subkriteria_hasil`
--
ALTER TABLE `subkriteria_hasil`
  ADD PRIMARY KEY (`id_subkriteria_hasil`);

--
-- Indeks untuk tabel `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  ADD PRIMARY KEY (`id_subkriteria_nilai`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `alternatif_nilai`
--
ALTER TABLE `alternatif_nilai`
  MODIFY `id_alternatif_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  MODIFY `id_kriteria_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `nilai_kategori`
--
ALTER TABLE `nilai_kategori`
  MODIFY `id_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_siswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `subkriteria_hasil`
--
ALTER TABLE `subkriteria_hasil`
  MODIFY `id_subkriteria_hasil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  MODIFY `id_subkriteria_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
