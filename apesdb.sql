-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2023 pada 14.03
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apesdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `angkatan`
--

CREATE TABLE `angkatan` (
  `angkatan` int(3) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `angkatan`
--

INSERT INTO `angkatan` (`angkatan`, `tahun_ajaran`) VALUES
(48, '2023/2024'),
(49, '2024/2025'),
(50, '2025/2026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelanggaran` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `jenis_pelanggaran` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_user` int(20) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelanggaran`, `nis`, `jenis_pelanggaran`, `keterangan`, `tanggal`, `id_user`, `foto`) VALUES
(3, 211115706, 'Bolos', 'parah', '2023-10-15 12:17:49', 1, ''),
(4, 21110987, 'Bolos', 'kokokokoko', '2023-10-15 12:42:07', 1, ''),
(5, 211115694, 'Bolos', 'lpll', '2023-10-15 12:44:44', 1, ''),
(6, 211115706, 'Bolos', 'lagi', '2023-10-15 13:51:28', 1, ''),
(7, 211115711, 'Bolos', 'yh', '2023-10-16 01:18:00', 1, ''),
(8, 211115710, 'Tidak Memakai Atribut', 'dasi', '2023-10-16 01:22:53', 1, ''),
(9, 211115708, 'Bolos', 'yh', '2023-10-16 03:33:36', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(4) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `angkatan` int(3) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `kelas`, `jurusan`, `angkatan`, `foto`) VALUES
(21110987, 'Wulan Hanifah', 'XII ', 'Instrumentasi dan Otomatisasi Proses', 48, ''),
(21115699, 'aleee', 'XII', 'Rekayasa Perangkat Lunak', 48, 'yeji.jpg'),
(211115694, 'alaa', 'XII', 'Rekayasa Perangkat Lunak', 48, 'yeji.jpg'),
(211115706, 'Muhammad Surya', 'XII ', 'Mekatronika', 48, ''),
(211115707, 'Raisa Putri Anindya', 'XII', 'Teknik Elektronika dan Komunikasi', 48, ''),
(211115708, 'Ivanna Apta Azibah', 'XII', 'Produksi Siaran Program Televisi', 48, ''),
(211115709, 'Gilang Danar Syaputra', 'XI', 'Teknik Otomasi Industri', 49, ''),
(211115710, 'Yuli Rahma', 'X', 'Sistem Jaringan dan Aplikasi', 50, ''),
(211115711, 'Ibrahim', 'XI', 'Teknik Pendingin dan Tata Udara', 49, ''),
(211115712, 'Kayla Adyla', 'XII', 'Teknik Elektronika Komunikasi', 48, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(20) NOT NULL,
  `username` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `email`) VALUES
(1, 'adminguru', 'guruadmin', 'adminguru@gmail.com'),
(2, 'super_admin', 'superadmin123', 'superadmin@gmail.com'),
(3, 'admin', 'admin123', 'admin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `angkatan`
--
ALTER TABLE `angkatan`
  ADD PRIMARY KEY (`angkatan`);

--
-- Indeks untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `nis` (`nis`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `angkatan` (`angkatan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `angkatan`
--
ALTER TABLE `angkatan`
  MODIFY `angkatan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_pelanggaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211115713;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD CONSTRAINT `pelanggaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `pelanggaran_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`angkatan`) REFERENCES `angkatan` (`angkatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
