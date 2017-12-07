-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 Des 2017 pada 13.45
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `idMitra` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`idMitra`, `nama`, `alamat`, `idUser`) VALUES
(1, 'dandie', 'jl. ikan layur no 52', 4),
(2, 'Vian', 'jl. ikan layur no 52', 5),
(3, 'Yanuar', 'jl. ikan layur no 52', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idPemesanan` int(11) NOT NULL,
  `idMitra` int(11) NOT NULL,
  `idStok` int(11) NOT NULL,
  `tanggalPemesanan` varchar(15) NOT NULL,
  `jumlahProduk` int(11) NOT NULL,
  `statusPembayaran` enum('dalam proses','lunas') NOT NULL DEFAULT 'dalam proses'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`idPemesanan`, `idMitra`, `idStok`, `tanggalPemesanan`, `jumlahProduk`, `statusPembayaran`) VALUES
(5, 1, 1, '13/11/2017', 12, 'lunas'),
(6, 2, 3, '13/11/2017', 20, 'lunas'),
(7, 1, 1, '13/11/2017', 30, 'lunas'),
(8, 1, 1, '14/11/2017', 20, 'lunas'),
(9, 1, 3, '17/11/2017', 10, 'lunas'),
(12, 1, 1, '18/11/2017', 5, 'lunas'),
(13, 3, 1, '18/11/2017', 5, 'lunas'),
(14, 2, 1, '18/11/2017', 17, 'lunas'),
(15, 2, 1, '25/11/2017', 20, 'lunas'),
(16, 2, 1, '5/12/2017', 20, 'lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilikternak`
--

CREATE TABLE `pemilikternak` (
  `idPemilik` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `idPenjualan` int(11) NOT NULL,
  `idPemesanan` int(11) NOT NULL,
  `JumlahYangDibayarkan` int(11) NOT NULL,
  `HargaTotal` int(11) NOT NULL,
  `TanggalPenjualan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`idPenjualan`, `idPemesanan`, `JumlahYangDibayarkan`, `HargaTotal`, `TanggalPenjualan`) VALUES
(1, 7, 200000, 150000, '14/11/2017'),
(2, 8, 200000, 100000, '16/11/2017'),
(3, 5, 75000, 60000, '16/11/2017'),
(4, 5, 70000, 60000, '17/11/2017'),
(5, 6, 40000, 30000, '17/11/2017'),
(6, 5, 70000, 60000, '17/11/2017'),
(7, 9, 15000, 15000, '17/11/2017'),
(8, 12, 25000, 25000, '18/11/2017'),
(9, 13, 77777, 25000, '18/11/2017'),
(10, 8, 200000, 100000, '18/11/2017'),
(11, 7, 200000, 150000, '18/11/2017'),
(12, 14, 87000, 85000, '18/11/2017'),
(13, 5, 80000, 60000, '18/11/2017'),
(14, 15, 101000, 100000, '2/12/2017'),
(15, 16, 101000, 100000, '5/12/2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peternak`
--

CREATE TABLE `peternak` (
  `idPeternak` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `idStok` int(11) NOT NULL,
  `namaProduk` enum('-','Telur Asin Kualitas 1','Telur Asin Kualitas 2','Telur Bebek','','') NOT NULL,
  `HargaProduk` int(11) NOT NULL,
  `BanyakProduk` int(11) NOT NULL,
  `tanggalMasuk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`idStok`, `namaProduk`, `HargaProduk`, `BanyakProduk`, `tanggalMasuk`) VALUES
(1, 'Telur Asin Kualitas 1', 5000, 0, '12/11/2017'),
(2, 'Telur Asin Kualitas 2', 3000, 15, '2017-10-20'),
(3, 'Telur Bebek', 1500, 5, '21/11/2017'),
(5, 'Telur Asin Kualitas 1', 50000, 0, '2017-11-14'),
(7, 'Telur Asin Kualitas 1', 5000, 0, '12/11/2017'),
(8, 'Telur Bebek', 1500, 20, '12/11/2017'),
(9, 'Telur Asin Kualitas 1', 2000, 15, '14/11/2017'),
(10, 'Telur Asin Kualitas 1', 5000, 45, '14/11/2017'),
(11, 'Telur Asin Kualitas 1', 5000, 20, '29/11/2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactor`
--

CREATE TABLE `transactor` (
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idTransactor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 1),
(2, 'peternak', 'peternak', 2),
(3, 'pemilik', 'pemilik', 3),
(4, 'dandie', 'dandie', 4),
(5, 'vian', 'vian', 4),
(6, 'yanuar', 'yanuar', 4),
(7, 'ilham', 'ilham', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`idMitra`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idPemesanan`),
  ADD KEY `idMitra` (`idMitra`),
  ADD KEY `idProduk` (`idStok`);

--
-- Indexes for table `pemilikternak`
--
ALTER TABLE `pemilikternak`
  ADD UNIQUE KEY `idPemilik` (`idPemilik`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idPenjualan`),
  ADD KEY `idMitra` (`idPemesanan`);

--
-- Indexes for table `peternak`
--
ALTER TABLE `peternak`
  ADD PRIMARY KEY (`idPeternak`),
  ADD UNIQUE KEY `idPeternak` (`idPeternak`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`idStok`);

--
-- Indexes for table `transactor`
--
ALTER TABLE `transactor`
  ADD PRIMARY KEY (`idTransactor`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mitra`
--
ALTER TABLE `mitra`
  MODIFY `idMitra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idPemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pemilikternak`
--
ALTER TABLE `pemilikternak`
  MODIFY `idPemilik` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idPenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `peternak`
--
ALTER TABLE `peternak`
  MODIFY `idPeternak` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `idStok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD CONSTRAINT `mitra_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`idMitra`) REFERENCES `mitra` (`idMitra`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`idStok`) REFERENCES `stok` (`idStok`);

--
-- Ketidakleluasaan untuk tabel `pemilikternak`
--
ALTER TABLE `pemilikternak`
  ADD CONSTRAINT `pemilikternak_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`idPemesanan`) REFERENCES `pemesanan` (`idPemesanan`);

--
-- Ketidakleluasaan untuk tabel `peternak`
--
ALTER TABLE `peternak`
  ADD CONSTRAINT `peternak_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `transactor`
--
ALTER TABLE `transactor`
  ADD CONSTRAINT `transactor_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
