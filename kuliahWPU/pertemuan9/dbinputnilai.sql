-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2023 pada 14.31
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
-- Database: `dbinputnilai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `username` varchar(20) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `nama_admin`, `password`, `foto`) VALUES
('admin', 'Admin SIINI', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'nus2.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `nid` varchar(20) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`nid`, `nama_dosen`, `password`, `foto`) VALUES
('101111640001', 'Imam Zaenuddin, S.Kom., M.Kom', 'd033e22ae348aeb5660fc2140aec35850c4da997', ''),
('101111640002', 'H. Harry Subagja, Ir., M.M.', 'd033e22ae348aeb5660fc2140aec35850c4da997', ''),
('109190640089', 'Iwan Mulyana, S.Kom, M.Kom.', 'd033e22ae348aeb5660fc2140aec35850c4da997', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `thn_akademik` year(4) NOT NULL,
  `jenjang_mhs` enum('D3','S1') NOT NULL,
  `foto` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jk_mhs` enum('Laki-Laki','Perempuan') NOT NULL,
  `jurusan_mhs` enum('Teknik Informatika','Sistem Informasi','Manajemen Informatika','Komputerisasi Akutansi') NOT NULL,
  `kelas_program` enum('Pagi','Malam','Sif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`nim`, `nama_mhs`, `thn_akademik`, `jenjang_mhs`, `foto`, `password`, `jk_mhs`, `jurusan_mhs`, `kelas_program`) VALUES
('109190640062', 'yunus', 2019, 'S1', 'me1.jpg', '1d0dca67fef675f4ccc65570e80a5b7d9ec790ea', 'Laki-Laki', 'Teknik Informatika', 'Malam'),
('109190640075', 'Tinus,am Laila', 2019, 'S1', 'WhatsApp_Image_2022-05-27_at_2', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Laki-Laki', 'Teknik Informatika', 'Sif'),
('109190640097', 'Sudianto Sitohang', 2019, 'S1', 'WhatsApp_Image_2022-05-27_at_2', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Laki-Laki', 'Teknik Informatika', 'Sif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `kode_mk` varchar(5) NOT NULL,
  `jml_sks` int(2) NOT NULL,
  `jurusan` enum('Teknik Informatika','Sistem Informatika','Manajemen Informatika','Komputerisasi Akutansi') NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `nid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`kode_mk`, `jml_sks`, `jurusan`, `nama_mk`, `semester`, `nid`) VALUES
('01', 2, 'Teknik Informatika', 'PEMOGRAMAN 4', '6', '101111640001'),
('02', 2, 'Teknik Informatika', 'METODE PENELITIAN', '6', '101111640002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `nim` varchar(20) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `grade` char(2) NOT NULL,
  `kode_mk` varchar(5) NOT NULL,
  `thn_akademik` year(4) NOT NULL,
  `nilai` int(3) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`nid`);

--
-- Indeks untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `nid` (`nid`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD KEY `nim` (`nim`),
  ADD KEY `nid` (`nid`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD CONSTRAINT `tbl_matakuliah_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `tbl_dosen` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `tbl_dosen` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `tbl_matakuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_3` FOREIGN KEY (`nim`) REFERENCES `tbl_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
