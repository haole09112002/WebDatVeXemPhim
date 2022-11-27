-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for rapchieuphim
CREATE DATABASE IF NOT EXISTS `rapchieuphim` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rapchieuphim`;

-- Dumping structure for table rapchieuphim.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`idAdmin`, `ten`, `username`, `password`) VALUES
	(1, 'Hào', 'admin1', '123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.chitietve
CREATE TABLE IF NOT EXISTS `chitietve` (
  `idVe` int(11) NOT NULL,
  `idGhe` int(11) NOT NULL,
  PRIMARY KEY (`idVe`,`idGhe`) USING BTREE,
  KEY `FK_CTVe_ghe` (`idGhe`),
  CONSTRAINT `FK_CTVe_Ve` FOREIGN KEY (`idVe`) REFERENCES `ve` (`idVe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CTVe_ghe` FOREIGN KEY (`idGhe`) REFERENCES `ghephongchieu` (`idGhe`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.chitietve: ~2 rows (approximately)
/*!40000 ALTER TABLE `chitietve` DISABLE KEYS */;
INSERT INTO `chitietve` (`idVe`, `idGhe`) VALUES
	(1, 1),
	(1, 3),
	(1, 4);
/*!40000 ALTER TABLE `chitietve` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.ghephongchieu
CREATE TABLE IF NOT EXISTS `ghephongchieu` (
  `idGhe` int(11) NOT NULL AUTO_INCREMENT,
  `tenGhe` varchar(20) NOT NULL DEFAULT '',
  `trangThai` int(11) DEFAULT NULL,
  `idPhong` int(11) NOT NULL,
  PRIMARY KEY (`idGhe`),
  KEY `FK_Ghe_PhongChieu` (`idPhong`),
  CONSTRAINT `FK_Ghe_PhongChieu` FOREIGN KEY (`idPhong`) REFERENCES `phongchieu` (`idPhong`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.ghephongchieu: ~30 rows (approximately)
/*!40000 ALTER TABLE `ghephongchieu` DISABLE KEYS */;
INSERT INTO `ghephongchieu` (`idGhe`, `tenGhe`, `trangThai`, `idPhong`) VALUES
	(1, 'A1', 0, 1),
	(3, 'A2', 0, 1),
	(4, 'A3', 0, 1),
	(5, 'A4', 0, 1),
	(6, 'A5', 0, 1),
	(7, 'A6', 0, 1),
	(8, 'A7', 0, 1),
	(9, 'A8', 0, 1),
	(10, 'A9', 0, 1),
	(11, 'A10', 0, 1),
	(12, 'B1', 0, 1),
	(13, 'B2', 0, 1),
	(14, 'B3', 0, 1),
	(15, 'B4', 0, 1),
	(16, 'B5', 0, 1),
	(17, 'B6', 0, 1),
	(18, 'B7', 0, 1),
	(19, 'B8', 0, 1),
	(20, 'B9', 0, 1),
	(21, 'B10', 0, 1),
	(22, 'C1', 0, 1),
	(23, 'C2', 0, 1),
	(24, 'C3', 0, 1),
	(25, 'C4', 0, 1),
	(26, 'C5', 0, 1),
	(27, 'C6', 0, 1),
	(28, 'C7', 0, 1),
	(29, 'C8', 0, 1),
	(30, 'C9', 0, 1),
	(31, 'C10', 0, 1);
/*!40000 ALTER TABLE `ghephongchieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.giochieu
CREATE TABLE IF NOT EXISTS `giochieu` (
  `idGioChieu` int(11) NOT NULL AUTO_INCREMENT,
  `GioChieu` time DEFAULT NULL,
  `idRap` int(11) NOT NULL,
  PRIMARY KEY (`idGioChieu`),
  KEY `FK_GioChieu_Rap` (`idRap`),
  CONSTRAINT `FK_GioChieu_Rap` FOREIGN KEY (`idRap`) REFERENCES `rap` (`idRap`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.giochieu: ~1 rows (approximately)
/*!40000 ALTER TABLE `giochieu` DISABLE KEYS */;
INSERT INTO `giochieu` (`idGioChieu`, `GioChieu`, `idRap`) VALUES
	(3, '17:00:00', 1),
	(5, '17:04:31', 1);
/*!40000 ALTER TABLE `giochieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.lichchieu
CREATE TABLE IF NOT EXISTS `lichchieu` (
  `idLichChieu` int(11) NOT NULL AUTO_INCREMENT,
  `idPhim` int(11) NOT NULL,
  `idPhong` int(11) NOT NULL,
  `ngayChieu` date NOT NULL,
  `idGioChieu` int(11) NOT NULL,
  `giaVe` double DEFAULT NULL,
  PRIMARY KEY (`idLichChieu`,`idPhim`,`idPhong`,`idGioChieu`,`ngayChieu`) USING BTREE,
  KEY `idPhim` (`idPhim`),
  KEY `idPhong` (`idPhong`),
  KEY `idGioChieu` (`idGioChieu`),
  CONSTRAINT `FK_LichCHieu_GioChieu` FOREIGN KEY (`idGioChieu`) REFERENCES `giochieu` (`idGioChieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_LichCHieu_Phong` FOREIGN KEY (`idPhong`) REFERENCES `phongchieu` (`idPhong`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_LichChieu_Phim` FOREIGN KEY (`idPhim`) REFERENCES `phim` (`idPhim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.lichchieu: ~4 rows (approximately)
/*!40000 ALTER TABLE `lichchieu` DISABLE KEYS */;
INSERT INTO `lichchieu` (`idLichChieu`, `idPhim`, `idPhong`, `ngayChieu`, `idGioChieu`, `giaVe`) VALUES
	(2, 12, 1, '2022-11-27', 3, 50000),
	(5, 12, 1, '2022-11-27', 5, 50000),
	(6, 14, 2, '2022-11-27', 3, 70000),
	(10, 14, 2, '2022-11-27', 5, 70000);
/*!40000 ALTER TABLE `lichchieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.phim
CREATE TABLE IF NOT EXISTS `phim` (
  `idPhim` int(11) NOT NULL AUTO_INCREMENT,
  `tenPhim` varchar(150) NOT NULL,
  `moTa` text DEFAULT NULL,
  `thoiLuong` varchar(5) DEFAULT NULL,
  `nhaSanXuat` varchar(150) DEFAULT NULL,
  `doTuoi` varchar(5) DEFAULT NULL,
  `daoDien` varchar(150) DEFAULT NULL,
  `ngayKhoiChieu` date DEFAULT NULL,
  `ngayKetThuc` date DEFAULT NULL,
  `linkTrailer` varchar(200) DEFAULT NULL,
  `linkAnh` varchar(200) DEFAULT NULL,
  `idTheLoai` int(10) NOT NULL,
  `dienVien` varchar(100) DEFAULT NULL,
  `quocGia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPhim`),
  KEY `FK_Phim_TheLoai` (`idTheLoai`),
  CONSTRAINT `FK_Phim_TheLoai` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`idTheLoai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.phim: ~3 rows (approximately)
/*!40000 ALTER TABLE `phim` DISABLE KEYS */;
INSERT INTO `phim` (`idPhim`, `tenPhim`, `moTa`, `thoiLuong`, `nhaSanXuat`, `doTuoi`, `daoDien`, `ngayKhoiChieu`, `ngayKetThuc`, `linkTrailer`, `linkAnh`, `idTheLoai`, `dienVien`, `quocGia`) VALUES
	(12, 'Hạnh Phúc Máu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(14, 'Phi Vụ Nữa Đêm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL),
	(15, 'Xâm Chiếm Vật Chủ', 'Xâm Chiếm Vật Chủ xoay quanh câu chuyện về một nhóm du khách bất ngờ phát hiện sự tồn tại của một loài vật quái dị trong thời gian cách ly Covid tại một khách sạn của chính phủ. Sinh vật này chính là loài rết khổng lồ, có thể biến dạng dựa trên hình dạng và tính cách của con người. Vật đổi chủ, hồn đổi xác. Họ sẽ làm gì để trốn thoát khỏi sự truy đuổi của loài rết 100 chân khát máu này?', '92', 'Punyanet Tanaprapass', '18', 'Chalit Krileadmongkon', NULL, NULL, NULL, NULL, 2, NULL, NULL);
/*!40000 ALTER TABLE `phim` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.phongchieu
CREATE TABLE IF NOT EXISTS `phongchieu` (
  `idPhong` int(11) NOT NULL AUTO_INCREMENT,
  `idRap` int(11) DEFAULT NULL,
  `tenPhong` varchar(100) DEFAULT NULL,
  `soGhe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPhong`),
  KEY `FK_PhongChieu_Rap` (`idRap`),
  CONSTRAINT `FK_PhongChieu_Rap` FOREIGN KEY (`idRap`) REFERENCES `rap` (`idRap`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.phongchieu: ~2 rows (approximately)
/*!40000 ALTER TABLE `phongchieu` DISABLE KEYS */;
INSERT INTO `phongchieu` (`idPhong`, `idRap`, `tenPhong`, `soGhe`) VALUES
	(1, 1, 'Rạp 1', 40),
	(2, 1, 'Rạp  2', 40),
	(3, 2, 'Phòng vip1', 50);
/*!40000 ALTER TABLE `phongchieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.rap
CREATE TABLE IF NOT EXISTS `rap` (
  `idRap` int(11) NOT NULL AUTO_INCREMENT,
  `tenRap` varchar(100) DEFAULT NULL,
  `diaChi` varchar(200) DEFAULT NULL,
  `soPhong` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRap`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.rap: ~2 rows (approximately)
/*!40000 ALTER TABLE `rap` DISABLE KEYS */;
INSERT INTO `rap` (`idRap`, `tenRap`, `diaChi`, `soPhong`) VALUES
	(1, 'BHD Start', '13 NguyenVan Linh', 3),
	(2, 'Lotte CIname', '26 ', 3);
/*!40000 ALTER TABLE `rap` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.theloai
CREATE TABLE IF NOT EXISTS `theloai` (
  `idTheLoai` int(11) NOT NULL AUTO_INCREMENT,
  `tenTheLoai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTheLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.theloai: ~2 rows (approximately)
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
INSERT INTO `theloai` (`idTheLoai`, `tenTheLoai`) VALUES
	(1, 'Drama'),
	(2, 'Kinh dị'),
	(3, 'Tình cảm');
/*!40000 ALTER TABLE `theloai` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.ve
CREATE TABLE IF NOT EXISTS `ve` (
  `idVe` int(11) NOT NULL AUTO_INCREMENT,
  `idLichChieu` int(11) DEFAULT NULL,
  `tenKhach` varchar(100) DEFAULT NULL,
  `soDienThoai` varchar(11) DEFAULT NULL,
  `tongTien` double DEFAULT NULL,
  PRIMARY KEY (`idVe`),
  KEY `FK_Ve_LichChieu` (`idLichChieu`),
  CONSTRAINT `FK_Ve_LichChieu` FOREIGN KEY (`idLichChieu`) REFERENCES `lichchieu` (`idLichChieu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.ve: ~1 rows (approximately)
/*!40000 ALTER TABLE `ve` DISABLE KEYS */;
INSERT INTO `ve` (`idVe`, `idLichChieu`, `tenKhach`, `soDienThoai`, `tongTien`) VALUES
	(1, 2, 'Le van hao', '0359235204', 150000);
/*!40000 ALTER TABLE `ve` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
