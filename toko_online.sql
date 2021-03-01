-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mar 2021 pada 07.12
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu Merk All Star', 'Pakaian Pria', 300000, 10, 'sepatu.jpg'),
(4, 'kamera', 'kamera canon eos 700d', 'elektronik', 5900000, 8, 'kamera.jpg'),
(5, 'hp', 'Samsung Galaxy A20', 'elektronik', 3400000, 28, 'hp.jpg'),
(6, 'laptop', 'laptop HP ram 2 gb', 'elektronik', 5000000, 40, 'laptop.jpg'),
(7, 'Kameja Pria', 'Kameja Pria', 'Pakaian Pria', 60000, 30, 'kameja_pria.jpg'),
(8, 'Tas Wanita', 'Tas Wanita Pink', 'Pakaian Wanita', 109000, 60, 'tas_wanita.jpg'),
(9, 'Topi Pria', 'Topi Pria Asli', 'Pakaian Pria', 150000, 40, 'topi_pria.jpg'),
(10, 'Bola Voli', 'Bola Voli Aesthetic', 'Peralatan Olahraga', 90000, 20, 'bola_voli_aesthetic.jpg'),
(11, 'Raket Badminton', 'Raket Badminton Yonex', 'Peralatan Olahraga', 350000, 80, 'raket_yonex.jpg'),
(12, 'Sepatu Wanita', 'Sepatu Wanita Pink', 'Pakaian Wanita', 200000, 70, 'sepatu_wanita.jpg'),
(13, 'Sandal Wanita ', 'Sandal Wanita Karakter', 'Pakaian Wanita', 50000, 10, 'sandal_wanita.jpg'),
(14, 'Sandal Anak Pria', 'Sandal Anak Pria Karakter', 'Pakaian Anak-anak', 39000, 20, 'sandal_anak_pria.jpg'),
(16, 'Celana Anak', 'Celana Anak', 'Pakaian Anak-anak', 49000, 15, 'celana_anak.jpg'),
(17, 'Blouse', 'Blouse ', 'Pakaian Wanita', 89000, 30, 'blouse.jpg'),
(18, 'Bola Basket', 'Bola Basket', 'Peralatan Olahraga', 150000, 50, 'bola_basket.jpg'),
(19, 'Barble', 'Brable 3 Kg', 'Peralatan Olahraga', 200000, 30, 'barble.jpg'),
(22, 'Televisi', 'Televisi Sony', 'Elektronik', 3000000, 10, 'tv.jpg'),
(23, 'Baju Anak ', 'Baju Anak Pria', 'Pakaian Pria', 39000, 10, 'baju_anak_laki1.jpg'),
(24, 'Baju Anak ', 'Baju Anak Wanita', 'Pakaian Anak-anak', 39000, 40, 'baju_anak-anak5.jpg'),
(25, 'Jam Tangan', 'jam tangan asli', 'Pakaian Pria', 200000, 60, 'jam_tangan_pria.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang_bag`
--

CREATE TABLE `tb_barang_bag` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang_bag`
--

INSERT INTO `tb_barang_bag` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu Merk All Star', 'Pakaian Pria', 300000, 10, 'sepatu.jpg'),
(4, 'kamera', 'kamera canon eos 700d', 'elektronik', 5900000, 9, 'kamera.jpg'),
(5, 'hp', 'Samsung Galaxy A20', 'elektronik', 3400000, 30, 'hp.jpg'),
(6, 'laptop', 'laptop HP ram 2 gb', 'elektronik', 5000000, 40, 'laptop.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, '', '', '2020-09-03 19:50:51', '2020-09-04 19:50:51'),
(2, '', '', '2020-09-03 20:23:49', '2020-09-04 20:23:49'),
(3, '', '', '2020-09-03 20:27:55', '2020-09-04 20:27:55'),
(4, '', '', '2020-09-03 20:28:09', '2020-09-04 20:28:09'),
(5, 'haikal surya', 'karangsono', '2020-09-03 20:30:00', '2020-09-04 20:30:00'),
(6, 'haikal surya', 'karansono', '2020-09-03 22:37:32', '2020-09-04 22:37:32'),
(7, 'haikal surya', 'karansono', '2020-09-03 22:39:52', '2020-09-04 22:39:52'),
(8, 'haikal surya', 'purwosari', '2020-09-10 21:21:00', '2020-09-11 21:21:00'),
(9, 'neli', 'lumajang', '2020-11-01 19:50:18', '2020-11-02 19:50:18'),
(10, 'kocor', 'kocor', '2020-11-01 19:52:11', '2020-11-02 19:52:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 3, 1, 'Sepatu', 1, 300000, ''),
(2, 5, 4, 'kamera', 1, 5900000, ''),
(3, 5, 5, 'hp', 1, 3400000, ''),
(4, 5, 6, 'laptop', 1, 5000000, ''),
(5, 6, 4, 'kamera', 1, 5900000, ''),
(6, 8, 1, 'Sepatu', 1, 300000, ''),
(7, 9, 4, 'kamera', 1, 5900000, ''),
(8, 10, 5, 'hp', 2, 3400000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_barang` (
`id_brg` int(11)
,`nama_brg` varchar(120)
,`keterangan` varchar(225)
,`kategori` varchar(60)
,`harga` int(11)
,`stok` int(4)
,`gambar` text
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_barang`
--
DROP TABLE IF EXISTS `view_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang`  AS  select `tb_barang`.`id_brg` AS `id_brg`,`tb_barang`.`nama_brg` AS `nama_brg`,`tb_barang`.`keterangan` AS `keterangan`,`tb_barang`.`kategori` AS `kategori`,`tb_barang`.`harga` AS `harga`,`tb_barang`.`stok` AS `stok`,`tb_barang`.`gambar` AS `gambar` from `tb_barang` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_barang_bag`
--
ALTER TABLE `tb_barang_bag`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_barang_bag`
--
ALTER TABLE `tb_barang_bag`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
