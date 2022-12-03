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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`idAdmin`, `ten`, `username`, `password`) VALUES
	(1, 'Hào', 'admin1', '123456'),
	(2, 'Hiếu', 'admin2', '123456');
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

-- Dumping data for table rapchieuphim.chitietve: ~12 rows (approximately)
/*!40000 ALTER TABLE `chitietve` DISABLE KEYS */;
INSERT INTO `chitietve` (`idVe`, `idGhe`) VALUES
	(1, 1),
	(1, 3),
	(1, 4),
	(2, 13),
	(2, 14),
	(2, 15),
	(3, 21),
	(3, 22),
	(3, 23),
	(4, 7),
	(4, 16),
	(4, 28);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.ghephongchieu: ~123 rows (approximately)
/*!40000 ALTER TABLE `ghephongchieu` DISABLE KEYS */;
INSERT INTO `ghephongchieu` (`idGhe`, `tenGhe`, `trangThai`, `idPhong`) VALUES
	(1, 'A1', 1, 1),
	(2, 'A2', 0, 1),
	(3, 'A3', 1, 1),
	(4, 'A4', 1, 1),
	(5, 'A5', 0, 1),
	(6, 'A6', 0, 1),
	(7, 'A7', 0, 1),
	(8, 'A8', 0, 1),
	(9, 'A9', 0, 1),
	(10, 'A10', 0, 1),
	(11, 'B1', 0, 1),
	(12, 'B2', 0, 1),
	(13, 'B3', 1, 1),
	(14, 'B4', 1, 1),
	(15, 'B5', 1, 1),
	(16, 'B6', 0, 1),
	(17, 'B7', 0, 1),
	(18, 'B8', 0, 1),
	(19, 'B9', 0, 1),
	(20, 'B10', 0, 1),
	(21, 'C1', 1, 1),
	(22, 'C2', 1, 1),
	(23, 'C3', 1, 1),
	(24, 'C4', 0, 1),
	(25, 'C5', 0, 1),
	(26, 'C6', 0, 1),
	(27, 'C7', 0, 1),
	(28, 'C8', 0, 1),
	(29, 'C9', 0, 1),
	(30, 'C10', 0, 1),
	(31, 'A1', 0, 2),
	(35, 'A2', 0, 2),
	(36, 'A3', 0, 2),
	(37, 'A4', 0, 2),
	(38, 'A5', 0, 2),
	(39, 'A6', 0, 2),
	(40, 'A7', 0, 2),
	(41, 'A8', 0, 2),
	(42, 'A9', 0, 2),
	(43, 'A10', 0, 2),
	(44, 'A11', 0, 2),
	(45, 'A12', 0, 2),
	(46, 'A3', 0, 2),
	(47, 'A3', 0, 2),
	(48, 'A3', 0, 2),
	(49, 'A3', 0, 2),
	(50, 'A3', 0, 2),
	(51, 'A3', 0, 2),
	(52, 'A3', 0, 2),
	(53, 'A3', 0, 2),
	(54, 'A3', 0, 2),
	(55, 'A3', 0, 2),
	(56, 'A3', 0, 2),
	(57, 'A3', 0, 2),
	(58, 'A3', 0, 2),
	(59, 'A3', 0, 2),
	(60, 'A3', 0, 2),
	(61, 'A3', 0, 2),
	(62, 'A3', 0, 2),
	(63, 'A3', 0, 2),
	(64, 'A3', 0, 2),
	(65, 'A3', 0, 2),
	(66, 'A3', 0, 2),
	(67, 'A1', 0, 3),
	(68, 'A1', 0, 3),
	(69, 'A1', 0, 3),
	(70, 'A1', 0, 3),
	(71, 'A1', 0, 3),
	(72, 'A1', 0, 3),
	(73, 'A1', 0, 3),
	(74, 'A1', 0, 3),
	(75, 'A1', 0, 3),
	(76, 'A1', 0, 3),
	(77, 'A1', 0, 3),
	(78, 'A1', 0, 3),
	(79, 'A1', 0, 3),
	(80, 'A1', 0, 3),
	(81, 'A1', 0, 3),
	(82, 'A1', 0, 3),
	(83, 'A1', 0, 3),
	(84, 'A1', 0, 3),
	(85, 'A1', 0, 3),
	(86, 'A1', 0, 3),
	(87, 'A1', 0, 3),
	(88, 'A1', 0, 3),
	(89, 'A1', 0, 3),
	(90, 'A1', 0, 3),
	(91, 'A1', 0, 3),
	(92, 'A1', 0, 3),
	(93, 'A1', 0, 3),
	(94, 'A1', 0, 3),
	(95, 'A1', 0, 3),
	(96, 'A1', 0, 3),
	(97, 'A1', 0, 4),
	(98, 'A1', 0, 4),
	(99, 'A1', 0, 4),
	(100, 'A1', 0, 4),
	(101, 'A1', 0, 4),
	(102, 'A1', 0, 4),
	(103, 'A1', 0, 4),
	(104, 'A1', 0, 4),
	(105, 'A1', 0, 4),
	(106, 'A1', 0, 4),
	(107, 'A1', 0, 4),
	(108, 'A1', 0, 4),
	(109, 'A1', 0, 4),
	(110, 'A1', 0, 4),
	(111, 'A1', 0, 4),
	(112, 'A1', 0, 4),
	(113, 'A1', 0, 4),
	(114, 'A1', 0, 4),
	(115, 'A1', 0, 4),
	(116, 'A1', 0, 4),
	(117, 'A1', 0, 4),
	(118, 'A1', 0, 4),
	(119, 'A1', 0, 4),
	(120, 'A1', 0, 4),
	(121, 'A1', 0, 4),
	(122, 'A1', 0, 4),
	(123, 'A1', 0, 4),
	(124, 'A1', 0, 4),
	(125, 'A1', 0, 4),
	(126, 'A1', 0, 4);
/*!40000 ALTER TABLE `ghephongchieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.giochieu
CREATE TABLE IF NOT EXISTS `giochieu` (
  `idGioChieu` int(11) NOT NULL AUTO_INCREMENT,
  `GioChieu` time DEFAULT NULL,
  PRIMARY KEY (`idGioChieu`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.giochieu: ~6 rows (approximately)
/*!40000 ALTER TABLE `giochieu` DISABLE KEYS */;
INSERT INTO `giochieu` (`idGioChieu`, `GioChieu`) VALUES
	(3, '17:00:00'),
	(5, '19:00:00'),
	(9, '21:00:00'),
	(11, '20:00:00'),
	(13, '13:00:00'),
	(14, '15:00:00');
/*!40000 ALTER TABLE `giochieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.lichchieu
CREATE TABLE IF NOT EXISTS `lichchieu` (
  `idLichChieu` int(11) NOT NULL AUTO_INCREMENT,
  `idPhim` int(11) NOT NULL,
  `idPhong` int(11) NOT NULL,
  `ngayChieu` date NOT NULL,
  `idGioChieu` int(11) NOT NULL,
  `giaVe` double DEFAULT NULL,
  PRIMARY KEY (`idPhong`,`idGioChieu`,`ngayChieu`) USING BTREE,
  UNIQUE KEY `idLichChieu` (`idLichChieu`) USING BTREE,
  KEY `idPhim` (`idPhim`),
  KEY `idPhong` (`idPhong`),
  KEY `idGioChieu` (`idGioChieu`),
  CONSTRAINT `FK_LichCHieu_GioChieu` FOREIGN KEY (`idGioChieu`) REFERENCES `giochieu` (`idGioChieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_LichCHieu_Phong` FOREIGN KEY (`idPhong`) REFERENCES `phongchieu` (`idPhong`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_LichChieu_Phim` FOREIGN KEY (`idPhim`) REFERENCES `phim` (`idPhim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.lichchieu: ~17 rows (approximately)
/*!40000 ALTER TABLE `lichchieu` DISABLE KEYS */;
INSERT INTO `lichchieu` (`idLichChieu`, `idPhim`, `idPhong`, `ngayChieu`, `idGioChieu`, `giaVe`) VALUES
	(2, 12, 1, '2022-11-27', 3, 50000),
	(11, 12, 1, '2022-11-29', 3, 70000),
	(5, 12, 1, '2022-11-27', 5, 50000),
	(13, 14, 1, '2022-11-29', 5, 50000),
	(20, 28, 1, '2022-11-30', 5, 50000),
	(27, 14, 1, '2022-12-04', 5, 500000),
	(32, 14, 1, '2022-12-05', 9, 50000),
	(21, 14, 2, '2022-12-03', 5, 50000),
	(24, 15, 2, '2022-12-04', 5, 50000),
	(25, 14, 2, '2022-12-03', 9, 50000),
	(17, 28, 3, '2022-11-30', 3, 50000),
	(23, 22, 3, '2022-12-03', 3, 50000),
	(10, 14, 3, '2022-11-29', 9, 70000),
	(26, 14, 3, '2022-12-03', 11, 50000),
	(6, 14, 3, '2022-11-28', 13, 70000),
	(15, 28, 3, '2022-11-30', 14, 50000),
	(30, 14, 4, '2022-12-04', 5, 50000),
	(14, 19, 4, '2022-11-29', 13, 50000);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.phim: ~7 rows (approximately)
/*!40000 ALTER TABLE `phim` DISABLE KEYS */;
INSERT INTO `phim` (`idPhim`, `tenPhim`, `moTa`, `thoiLuong`, `nhaSanXuat`, `doTuoi`, `daoDien`, `ngayKhoiChieu`, `ngayKetThuc`, `linkTrailer`, `linkAnh`, `idTheLoai`, `dienVien`, `quocGia`) VALUES
	(12, 'Hạnh Phúc Máu', 'Sau câu thần chú bí ẩn, Hà Phương (NSND Kim Xuân) tiếp tục nhấn mạnh sự bất hạnh của bản thân khi gia nhập gia tộc Vương Đình! Liệu rằng tất cả sẽ khép lại khi Hà Phương chuyển giao quyền lực cho con trai đích tôn!', '110', 'Hữu Tài', '18', 'Hữu Tài', '2022-11-25', '2023-01-01', 'https://youtu.be/AZsZjzxpVwQ', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/h/p/hpm_poster_2x3_1_.jpg', 1, 'NSND Kim Xuân', 'Việt Nam'),
	(14, 'Phi Vụ Nữa Đêm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'Anh'),
	(15, 'Xâm Chiếm Vật Chủ', 'Xâm Chiếm Vật Chủ xoay quanh câu chuyện về một nhóm du khách bất ngờ phát hiện sự tồn tại của một loài vật quái dị trong thời gian cách ly Covid tại một khách sạn của chính phủ. Sinh vật này chính là loài rết khổng lồ, có thể biến dạng dựa trên hình dạng và tính cách của con người. Vật đổi chủ, hồn đổi xác. Họ sẽ làm gì để trốn thoát khỏi sự truy đuổi của loài rết 100 chân khát máu này?', '92', 'Punyanet Tanaprapass', '18', 'Chalit Krileadmongkon', NULL, NULL, NULL, NULL, 2, NULL, NULL),
	(19, 'Thế Thân', 'Hyun-woo chọn cách nhận nuôi Isaac để vượt qua nỗi đau mất con sau một tai nạn thảm khốc. Oan nghiệt thay, Isaac lại là một đứa bé sở hữu đôi mắt âm dương có thể thấy được người cõi âm. Năng lực đặc biệt hay lời nguyền ám ảnh sẽ giáng lên cuộc sống của gia đình vốn chất chứa nhiều bi kịch?', '114', 'Kim Jin-Young', '18', 'Kim Jin-Young', '2022-11-18', '2023-12-05', 'https://youtu.be/mb1-ltMQT14', 'https://www.alotintuc.com/wp-content/uploads/2022/11/Teaser-Poster-2.jpg', 1, 'Park Hyo-ju, Kim Min-Jae, Cha Sun-Woo, Park Jae-jun', 'Hàn Quốc'),
	(22, 'Săn Lùng', 'Hai đặc vụ xuất sắc của Cơ Quan Tình Báo Hàn Quốc được giao nhiệm vụ truy lùng nội gián bên trong tổ chức, cả hai dần tìm ra những âm mưu đen tối của kẻ thù lẫn đồng đội. Những màn đấu trí cân não xen lẫn các trường đoạn hành động không ngừng nghỉ, khắc hoạ một chính trường Hàn Quốc đầy âm mưu và khủng hoảng vào những năm 1980. Liệu ai là kẻ chiến thắng khi cuộc chiến hạ màn? m mưu nào đang được che giấu?', '125', 'Lee Jung-jae, Han Jae-Duk, Cho Jae-sang', '18', 'Lee Jung-jae', '2022-11-29', '2023-11-29', 'https://youtu.be/dW79cWYUOc0', NULL, 1, 'Lee Jung-jae, Jung Woo-Sung, Jeon Hye-Jin, Heo Sung-tae, Go Youn-jung', 'Hàn Quốc'),
	(28, 'One Piece Film Red', 'Bối cảnh One Piece Film Red diễn ra ở hòn đảo âm nhạc Elegia, nơi diva nổi tiếng bậc nhất thế giới tên Uta thực hiện buổi biểu diễn trực tiếp đầu tiên trước công chúng. Uta đứng trên sân khấu với một ước mơ giản dị rằng ”Âm nhạc của tôi sẽ khiến cho thế giới hạnh phúc”. Đằng sau hình ảnh cô ca sĩ sở hữu giọng hát ở “đẳng cấp hoàn toàn khác” là một thân thế vô cùng bí ẩn được che giấu. Xem lịch chiếu One Piece Film Red và mua vé One Piece Film Red dễ dàng tại Moveek', '115', 'Goro Taniguchi', '13', 'Goro Taniguchi', '2022-11-25', '2023-11-29', 'https://youtu.be/7Ma1uab-bQM', 'https://m.media-amazon.com/images/M/MV5BNTU4YWEzMzMtZGQ0Ny00Y2Q4LTgyZTYtOWVmZjUyZDhjMWYzXkEyXkFqcGdeQXVyMTM0MDY3ODQ3._V1_.jpg', 3, 'Shuuichi Ikeda, Mayumi Tanaka, Kazuya Nakai, Akemi Okamura, Kappei Yamaguchi', 'Nhật Bản'),
	(32, 'Huyền Sử Vua Đinh', 'Phim là một góc nhìn mới mô tả câu chuyện Đinh Bộ Lĩnh dẹp loạn 12 sứ quân, thống nhất đất nước.', '78', 'Anthony Võ', '16', 'Anthony Võ', '2022-11-18', '2023-11-29', 'https://youtu.be/TOD5lG4GJSw', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/o/poster_470x700.jpg', 2, 'Anh Tài, Sala Uyên Trinh, Ngô Tiến Thành', 'Việt Nam'),
	(34, 'Bố Già', 'Phim sẽ xoay quanh lối sống thường nhật của một xóm lao động nghèo, ở đó có bộ tứ anh em Giàu - Sang - Phú - Quý với Ba Sang sẽ là nhân vật chính, hay lo chuyện bao đồng nhưng vô cùng thương con cái. Câu chuyện phim tập trung về hai cha con Ba Sang (Trấn Thành) và Quắn (Tuấn Trần). Dù yêu thương nhau nhưng khoảng cách thế hệ đã đem đến những bất đồng lớn giữa hai cha con. Liệu cả hai có thể cho nhau cơ hội thấu hiểu đối phương, thu hẹp khoảng cách và tạo nên hạnh phúc từ sự khác biệt?', '128', 'Trấn Thành', '13', 'Trấn Thành', '2022-11-29', '2022-12-29', NULL, 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/1/2/1200x1800.jpg', 3, 'Trấn Thành, Tuấn Trần, Ngân Chi, NSND Ngọc Giàu, ...', 'Việt Nam');
/*!40000 ALTER TABLE `phim` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.phongchieu
CREATE TABLE IF NOT EXISTS `phongchieu` (
  `idPhong` int(11) NOT NULL AUTO_INCREMENT,
  `tenPhong` varchar(100) DEFAULT NULL,
  `soGhe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPhong`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.phongchieu: ~2 rows (approximately)
/*!40000 ALTER TABLE `phongchieu` DISABLE KEYS */;
INSERT INTO `phongchieu` (`idPhong`, `tenPhong`, `soGhe`) VALUES
	(1, 'Rạp 1', 30),
	(2, 'Rạp  2', 30),
	(3, 'Phòng vip1', 30),
	(4, 'Phòng vip2', 30);
/*!40000 ALTER TABLE `phongchieu` ENABLE KEYS */;

-- Dumping structure for table rapchieuphim.theloai
CREATE TABLE IF NOT EXISTS `theloai` (
  `idTheLoai` int(11) NOT NULL AUTO_INCREMENT,
  `tenTheLoai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTheLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.theloai: ~5 rows (approximately)
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
INSERT INTO `theloai` (`idTheLoai`, `tenTheLoai`) VALUES
	(1, 'Drama'),
	(2, 'Kinh dị'),
	(3, 'Tình cảm'),
	(4, 'Gia đình'),
	(5, 'Hành động kịch tính'),
	(6, 'Khoa học viễn tưởng');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rapchieuphim.ve: ~5 rows (approximately)
/*!40000 ALTER TABLE `ve` DISABLE KEYS */;
INSERT INTO `ve` (`idVe`, `idLichChieu`, `tenKhach`, `soDienThoai`, `tongTien`) VALUES
	(1, 2, 'Le van hao', '0359235204', 150000),
	(2, 5, 'TranTrung Hieu', '0356879536', 150000),
	(3, 14, 'Pham Khac Luan', '0359623587', 150000),
	(4, 27, 'Hao', '0325655545', 150000),
	(5, 30, 'hao', '0359235204', 100000);
/*!40000 ALTER TABLE `ve` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
