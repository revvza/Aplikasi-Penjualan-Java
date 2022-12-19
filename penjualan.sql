-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 03:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jenis` varchar(20) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Stok` int(20) DEFAULT NULL,
  `Isi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Nama_Barang`, `Jenis`, `Harga`, `Stok`, `Isi`) VALUES
('BR001', 'Teh Gelas', 'Minuman', '20000', 20, '24 Pcs/Dus'),
('BR002', 'Mie Indomie Goreng', 'Makanan', '110000', 20, '24 Pcs/Dus'),
('BR003', 'Teh Pucuk Botol', 'Minuman', '55500', 10, '24 Pcs/Dus'),
('BR004', 'Tanggo Coklat Wafer ', 'Makanan', '110000', 5, '24 Pcs/Dus'),
('BR005', 'Oreo Vanila', 'Makanan', '22000', 5, '12 Pcs/Box'),
('BR006', 'Adem Sari Sachet', 'Minuman', '12000', 7, '5 Sachet/Box'),
('BR007', 'Beng beng', 'Makanan', '32000', 16, '20 Pcs/Box'),
('BR008', 'Malkist Roma', 'Makanan', '10000', 13, '10 Sachet/Renceng'),
('BR009', 'Yupi Baby Bear', 'Makanan', '12000', 12, '24 Pcs/Pak'),
('BR010', 'Yupi Littele Stars', 'Makanan', '13500', 19, '24 Pcs/Box'),
('BR011', 'Yupi Berger', 'Makanan', '12500', 17, '24 Pcs/Box'),
('BR012', 'Teh Kotak', 'Minuman', '73500', 27, '24 Pcs/Dus'),
('BR013', 'Amplop Putih Merpati', 'Barang', '12500', 30, '100 Pcs/Dus'),
('BR014', 'Shampo Head & Shoulders', 'Barang', '9700', 42, '12 Pcs/Renceng'),
('BR015', 'Oskadon Sakit Kepala', 'Obat-Obatan', '79000', 23, '50 Sachet/Pak'),
('BR016', 'Promag Tablet ', 'Obat-Obatan', '21500', 10, '3 Lembar/Box'),
('BR017', 'Indofood Bumbu Rendang', 'Bahan Memasak', '114000', 25, '24 Pcs/Box'),
('BR018', 'Royco Ayam', 'Bahan Memasak', '219000', 32, '48 Renceng/Dus'),
('BR019', 'Yakult', 'Minuman', '9000', 5, '5 Pcs/Pak'),
('BR020', 'Lem Kertas Glukol', 'Barang', '26000', 19, '24 Pcs/Pak'),
('BR021', 'Masker Duckbil Putih', 'Makanan', '20000', 5, '24 Pcs/Dus'),
('BR022', 'Oskadon SP', 'Obat-Obatan', '80000', 4, '50 Pcs/Box'),
('BR023', 'Sprite Botol 390 ML', 'Minuman', '56000', 5, '12 Botol/Dus');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
('AD001', 'revi', '12345'),
('AD002', 'STMIK28', 'stmik28');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `TotalBeli`) VALUES
('TR0001', '04-07-2022', '95000'),
('TR0002', '04-07-2022', '617500'),
('TR0003', '04-07-2022', '95000'),
('TR0004', '04-07-2022', '95000'),
('TR0005', '04-07-2022', '522500'),
('TR0006', '04-07-2022', '113500'),
('TR0007', '04-07-2022', '104500');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `ID_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_Barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Tanggal`, `Total`) VALUES
('TR0001', 'BR001', 'Teh Gelas', 5, '20000', '04-07-2022', '95000'),
('TR0002', 'BR002', 'Mie Indomie Goreng', 5, '110000', '04-07-2022', '522500'),
('TR0002', 'BR021', 'Masker Duckbil Putih', 5, '20000', '04-07-2022', '95000'),
('TR0003', 'BR001', 'Teh Gelas', 5, '20000', '04-07-2022', '95000'),
('TR0004', 'BR001', 'Teh Gelas', 5, '20000', '04-07-2022', '95000'),
('TR0005', 'BR002', 'Mie Indomie Goreng', 5, '110000', '04-07-2022', '522500'),
('TR0006', 'BR005', 'Oreo Vanila', 5, '22000', '04-07-2022', '104500'),
('TR0006', 'BR019', 'Yakult', 1, '9000', '04-07-2022', '9000'),
('TR0007', 'BR005', 'Oreo Vanila', 5, '22000', '04-07-2022', '104500');

--
-- Triggers `penjualanrinci`
--
DELIMITER $$
CREATE TRIGGER `AmbilStok` AFTER INSERT ON `penjualanrinci` FOR EACH ROW BEGIN
	UPDATE barang set stok = stok - NEW.Jumlah
    WHERE ID_Barang = NEW.ID_Barang;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
