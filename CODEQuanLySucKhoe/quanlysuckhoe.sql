-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 05:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlysuckhoe`
--
DROP DATABASE IF EXISTS `quanlysuckhoe`;
CREATE DATABASE IF NOT EXISTS `quanlysuckhoe` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `quanlysuckhoe`;
-- --------------------------------------------------------

--
-- Table structure for table `bacsi`
--

CREATE TABLE `bacsi` (
  `MaBacSi` varchar(255) NOT NULL,
  `TenBacSi` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `ChuyenMon` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bacsi`
--

INSERT INTO `bacsi` (`MaBacSi`, `TenBacSi`, `NgaySinh`, `SoDienThoai`, `Mail`, `ChuyenMon`, `GioiTinh`) VALUES
('BS001', 'Trần Văn Khôi', '1988-02-01', '0789171899', 'tranvankhoi@gmail.com', 'Khoa', 'Nam'),
('BS002', 'Lê Thị Thảo', '1991-12-02', '0932860481', 'thao@gmail.com', 'Đa khoa', 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `benhnhan`
--

CREATE TABLE `benhnhan` (
  `MaBenhNhan` varchar(255) NOT NULL,
  `TenBenhNhan` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `SoDienThoaiNguoiThan` varchar(10) NOT NULL,
  `DiaChi` text NOT NULL,
  `ReToken` text NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `CanNang` float NOT NULL,
  `MaBacSi` varchar(255) NOT NULL,
  `Avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `benhnhan`
--

INSERT INTO `benhnhan` (`MaBenhNhan`, `TenBenhNhan`, `NgaySinh`, `SoDienThoai`, `Mail`, `SoDienThoaiNguoiThan`, `DiaChi`, `ReToken`, `GioiTinh`, `CanNang`, `MaBacSi`, `Avatar`) VALUES
('BN001', 'Nguyễn Thị Ngọc', '1991-01-02', '0978981234', 'ngoc@gmail.com', '0937899789', 'Long Xuyên, An Giang', '1//0e2P8xwa6wa7gCgYIARAAGA4SNwF-L9IrV0Bc2MMkM66y1yo5zU9IJmUK0tH8PLfGvvor_qBBfDRv9nhoCrfavYPNzfsHxm9RLzo', 'Nữ', 65, 'BS002', '1681843722484.png');

-- --------------------------------------------------------

--
-- Table structure for table `hoidap_benhnhan`
--

CREATE TABLE `hoidap_benhnhan` (
  `Id` int(11) NOT NULL,
  `MaBenhNhan` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayDang` date NOT NULL,
  `TinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hoidap_benhnhan`
--

INSERT INTO `hoidap_benhnhan` (`Id`, `MaBenhNhan`, `NoiDung`, `NgayDang`, `TinhTrang`) VALUES
(1, 'BN001', 'Xin chào, tôi có thể đặt 1 câu hỏi về sức khỏe hiện nay được không? Hiện nay tui đang gặp 1 số vấn về về hô hấp. Bác sĩ có thể giúp tôi một vài lới khuyên được không', '2023-04-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `Id` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` text NOT NULL,
  `Quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`Id`, `TenDangNhap`, `MatKhau`, `Quyen`) VALUES
(1, 'admin1', '$2b$10$kxveS/MI7sYSQA38eSqf1OBBIxGy0nw6FFouT4OYTMq2dJAYIIaYO', 1),
(2, 'BS001', '$2b$10$ik0EuwnjjSGG3s.4wQgzpe4alFwg/GPGVehkuRCQ8B.4pfcwz5aGi', 2),
(3, 'BS002', '$2b$10$cek/Ke2v4t2SChmwDmoKBe7aovwDTEsFMDh4KfChaNtEB9EQybuZK', 2),
(4, 'BN001', '$2b$10$D5WYbrVztp0yfcJo96Ad0uA/6sWQi..2t3we6nIHGnLPLrLFFNwWS', 3);

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `ID` int(11) NOT NULL,
  `ID_hoi` int(11) NOT NULL,
  `NoiDung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`ID`, `ID_hoi`, `NoiDung`) VALUES
(1, 1, 'Cảm ơn bạn đã đặt câu hỏi, tôi xin phép trả lời như sao:\r\nĐầu tiên về vấn đề sức khỏe của bạn\r\nTiếp theo là về các vấn đề khác');

-- --------------------------------------------------------

--
-- Table structure for table `suckhoe`
--

CREATE TABLE `suckhoe` (
  `Id` int(11) NOT NULL,
  `MaBenhNhan` varchar(255) NOT NULL,
  `NhipTim` float NOT NULL,
  `HATThu` float NOT NULL,
  `HATTruong` float NOT NULL,
  `SpO2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`MaBacSi`);

--
-- Indexes for table `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`MaBenhNhan`),
  ADD KEY `BN_FK_BS` (`MaBacSi`);

--
-- Indexes for table `hoidap_benhnhan`
--
ALTER TABLE `hoidap_benhnhan`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Hoi_FK_BN` (`MaBenhNhan`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PH_FK_HD` (`ID_hoi`);

--
-- Indexes for table `suckhoe`
--
ALTER TABLE `suckhoe`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `SK_FK_BN` (`MaBenhNhan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoidap_benhnhan`
--
ALTER TABLE `hoidap_benhnhan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suckhoe`
--
ALTER TABLE `suckhoe`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD CONSTRAINT `BN_FK_BS` FOREIGN KEY (`MaBacSi`) REFERENCES `bacsi` (`MaBacSi`);

--
-- Constraints for table `hoidap_benhnhan`
--
ALTER TABLE `hoidap_benhnhan`
  ADD CONSTRAINT `Hoi_FK_BN` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`MaBenhNhan`);

--
-- Constraints for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `PH_FK_HD` FOREIGN KEY (`ID_hoi`) REFERENCES `hoidap_benhnhan` (`Id`);

--
-- Constraints for table `suckhoe`
--
ALTER TABLE `suckhoe`
  ADD CONSTRAINT `SK_FK_BN` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`MaBenhNhan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
