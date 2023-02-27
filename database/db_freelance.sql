-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2023 pada 08.17
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_freelance`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '081358098102'),
('email', 'ianpras234@gmail.com'),
('facebook', 'https://www.facebook.com/photo/?fbid=1681072865625300&set=a.238465483219386'),
('twitter', ''),
('linkin', ''),
('address', 'perum gka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `education`
--

CREATE TABLE `education` (
  `id` int(30) NOT NULL,
  `school` text DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `month` varchar(50) NOT NULL,
  `year` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `education`
--

INSERT INTO `education` (`id`, `school`, `degree`, `month`, `year`, `description`, `order_by`) VALUES
(1, 'Universitas Dinamika', 'S1 ', 'September', 2020, '&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;Sekarang saya sedang menempuh jenjang S1 Sistem Informasi yang dimana saya sekarang menduduki semester 6&lt;/font&gt;&lt;/p&gt;', 0),
(2, 'SMK Semen Gresik', 'SMK', 'March', 2019, '&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;Pada saat SMK saya mengambil jurusan RPL dan disana saya melanjutkan hobi saya yaitu basket dan disana saya mengikuti ekskul basket dan paskibraka.&amp;nbsp;&lt;/font&gt;&lt;/p&gt;', 0),
(3, 'SMP Negeri 2 Kebomas', 'SMP', 'April', 2016, '&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;Saya memasuki jenjang SMP pada umur 14 yang dimana saya sebelumnya bersekolah di SD Randuagung dan pada saat smp saya mengikuti ekskul basket dan band&lt;/font&gt;&lt;/p&gt;', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `client` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id`, `name`, `summary`, `description`, `banner`, `client`) VALUES
(2, 'Aliftyan Meirsyah Prasetyo', 'Dimana saya menggarap sebuah aplikasi Perpustakaan\r\n\r\n\r\n\r\n', 'Pada saat saya SMK saya ditugas kan oleh guru saya untuk membuat sebuah aplikasi sederhana dan saya membuat aplikasi perpustakaan.&lt;br&gt;', 'uploads/1677250200_(20+) Facebook — Mozilla Firefox 8_8_2022 6_26_44 PM.png', 'SMK Semen Gresik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Portofolio Saya'),
(2, 'address', 'INDONESIA'),
(3, 'contact', '+1234567890'),
(4, 'email', 'ianpras234@gmail.com'),
(6, 'short_name', 'My Website'),
(9, 'logo', 'uploads/1616118180_aclc.jpg'),
(11, 'welcome_message', 'Perkenalkan saya progamer full stack web yang dimana saya telah melakukan ini baru 1 tahun dan sekarang saya berkulaih di Universitas Dinamika yang dimana mengambil jurusan Sistem Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Aliftyan Meirsyah ', 'Prasetyo', 'admin2', '01488dd067097083f80f32761c0ad802', 'uploads/1677426480_(20+) Facebook — Mozilla Firefox 8_8_2022 6_26_44 PM.png', NULL, '2021-01-20 14:02:37', '2023-02-26 22:48:17'),
(2, 'John', 'Smith', 'admin', '123456', 'uploads/1619140500_avatar.png', NULL, '2021-01-20 14:02:37', '2021-04-23 15:14:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `work`
--

CREATE TABLE `work` (
  `id` int(30) NOT NULL,
  `company` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `started` varchar(250) NOT NULL,
  `ended` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `work`
--

INSERT INTO `work` (`id`, `company`, `position`, `started`, `ended`, `description`, `order_by`) VALUES
(1, 'Polres Gresik', 'Humas', 'January_2019', 'April_2018', '&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;Dimana pada saat saya SMK saya mengikuti program magang dari sekolah dan saya diminta sekolah untuk pertama kali magang di Polres Gresik&lt;/font&gt;&lt;/p&gt;', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `education`
--
ALTER TABLE `education`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `work`
--
ALTER TABLE `work`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
