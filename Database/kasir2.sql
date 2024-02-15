-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2024 pada 03.46
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir_detailpenjualan`
--

CREATE TABLE `kasir_detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `penjualanID` int(11) NOT NULL,
  `produkID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir_detailpenjualan`
--

INSERT INTO `kasir_detailpenjualan` (`DetailID`, `penjualanID`, `produkID`, `JumlahProduk`, `subtotal`) VALUES
(1, 1, 45, 1, '15000.00'),
(2, 2, 887, 2, '5.00'),
(2, 3, 899, 3, '88865.00'),
(3, 4, 45, 2, '15000.00'),
(3, 5, 887, 5, '5.00'),
(5, 7, 899, 12, '88865.00'),
(8, 11, 0, 10, '0.00'),
(10, 13, 899, 2, '88865.00'),
(11, 15, 15, 5, '40000.00'),
(13, 17, 15, 2, '40000.00'),
(14, 18, 15, 1, '40000.00'),
(15, 19, 24, 12, '25000.00'),
(15, 20, 15, 21, '40000.00'),
(16, 21, 16, 6, '35000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir_pelanggan`
--

CREATE TABLE `kasir_pelanggan` (
  `pelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NoTelepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir_pelanggan`
--

INSERT INTO `kasir_pelanggan` (`pelangganID`, `NamaPelanggan`, `NoMeja`, `NoTelepon`) VALUES
(1, 'tes', 1, NULL),
(2, 'tesssss', 2, NULL),
(3, 'dea', 3, NULL),
(4, 'alisya', 56, NULL),
(5, 'nisaa', 12, NULL),
(6, 'dea awliani', 46, NULL),
(7, 'deaa', 57, NULL),
(8, 'harith rafie attirmidzi', 4, NULL),
(9, 'alisya', 3, NULL),
(10, 'dea', 2, NULL),
(11, 'saya', 21, NULL),
(12, 'dea', 7, NULL),
(13, 'deasukamabok', 12, NULL),
(14, 'fadlisukamabok', 1, NULL),
(15, 'nisa', 12, NULL),
(16, 'yani', 6, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir_penjualan`
--

CREATE TABLE `kasir_penjualan` (
  `penjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `pelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir_penjualan`
--

INSERT INTO `kasir_penjualan` (`penjualanID`, `TanggalPenjualan`, `total_harga`, `pelangganID`) VALUES
(1, '2024-02-05', '0.00', 0),
(2, '2024-02-05', '0.00', 0),
(3, '2024-02-05', '0.00', 0),
(4, '2024-02-05', '0.00', 0),
(5, '2024-02-05', '0.00', 0),
(6, '2024-02-06', '0.00', 0),
(7, '2024-02-06', '0.00', 0),
(8, '2024-02-07', '0.00', 0),
(9, '2024-02-12', '0.00', 0),
(10, '2024-02-12', '0.00', 0),
(11, '2024-02-12', '0.00', 0),
(12, '2024-02-13', '0.00', 0),
(13, '2024-02-13', '0.00', 0),
(14, '2024-02-13', '0.00', 0),
(15, '2024-02-13', '0.00', 0),
(16, '2024-02-13', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir_produk`
--

CREATE TABLE `kasir_produk` (
  `produkID` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir_produk`
--

INSERT INTO `kasir_produk` (`produkID`, `nama_produk`, `harga`, `stok`, `Foto`, `Terjual`) VALUES
(15, 'Nasi Kebuli', '40000.00', -4, '12022024084322.jpg', 29),
(16, 'Burger', '35000.00', 13, '12022024084620.jpg', 17),
(24, 'ayam bakar', '25000.00', 0, '12022024085040.jpeg', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir_user`
--

CREATE TABLE `kasir_user` (
  `UserID` int(11) NOT NULL,
  `Nama_user` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir_user`
--

INSERT INTO `kasir_user` (`UserID`, `Nama_user`, `Password`, `level`) VALUES
(2, 'sas', '202cb962ac59075b964b07152d234b70', 'admin'),
(111, 'nisa', '202cb962ac59075b964b07152d234b70', 'petugas'),
(1234, 'dea', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kasir_detailpenjualan`
--
ALTER TABLE `kasir_detailpenjualan`
  ADD PRIMARY KEY (`penjualanID`),
  ADD KEY `penjualanID` (`penjualanID`,`produkID`),
  ADD KEY `produkID` (`produkID`),
  ADD KEY `DetailID` (`DetailID`);

--
-- Indeks untuk tabel `kasir_pelanggan`
--
ALTER TABLE `kasir_pelanggan`
  ADD PRIMARY KEY (`pelangganID`);

--
-- Indeks untuk tabel `kasir_penjualan`
--
ALTER TABLE `kasir_penjualan`
  ADD PRIMARY KEY (`penjualanID`),
  ADD KEY `pelangganID` (`pelangganID`);

--
-- Indeks untuk tabel `kasir_produk`
--
ALTER TABLE `kasir_produk`
  ADD PRIMARY KEY (`produkID`);

--
-- Indeks untuk tabel `kasir_user`
--
ALTER TABLE `kasir_user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kasir_detailpenjualan`
--
ALTER TABLE `kasir_detailpenjualan`
  MODIFY `penjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kasir_penjualan`
--
ALTER TABLE `kasir_penjualan`
  MODIFY `penjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
