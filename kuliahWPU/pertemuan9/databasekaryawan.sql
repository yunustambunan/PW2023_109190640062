-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2023 pada 14.30
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasekaryawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `no_urut` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NK` int(10) NOT NULL,
  `Umur` int(2) NOT NULL,
  `Tanggal_Masuk` date NOT NULL,
  `Jabatan` varchar(50) NOT NULL,
  `Gaji` decimal(10,0) NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`no_urut`, `Nama`, `NK`, `Umur`, `Tanggal_Masuk`, `Jabatan`, `Gaji`, `Foto`) VALUES
(1, 'Yunus Tan', 1023787015, 35, '2015-04-15', 'Admin', '15000000', 'jpeg'),
(2, 'Deni Sumargo', 1023787022, 25, '2022-04-15', 'IT Suport', '5000000', 'deni.jpg'),
(3, 'Heni Wati', 1023787021, 23, '2023-04-15', 'Office', '4700000', 'png'),
(4, 'Shinta', 1023787019, 22, '2019-04-15', 'Admin', '6000000', 'jpg'),
(5, 'Nando Parapat', 1023787018, 32, '2018-02-15', 'IT Suport Senior', '6700000', 'nando.jpg'),
(37, 'natalia', 1023787095, 28, '2017-08-26', 'Admin', '15000000', 'jpg'),
(40, 'jainal', 1023787099, 45, '2019-09-18', 'IT Suport', '15000000', 'jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'yunus', '$2y$10$rzWrmr1b0yo7CbiAen7qiOCcPcJ1kEBFdoMPsUZCzDTEvsyn7KssG'),
(2, 'admin', '$2y$10$Z9GlqjfMA/YTFsZJsRWA3OlYQ2bzwZL7JRKVFoewCho7w3ybWqgqe'),
(19, 'tambunan', '$2y$10$R99PoJvWoaTR5mAPqPCE5uHRyeMO15D8cYjRPgZ817qocjTugogTq');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`no_urut`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  MODIFY `no_urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
