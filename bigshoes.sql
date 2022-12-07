-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 07:22 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigshoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(50) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `hinh1` varchar(255) NOT NULL,
  `hinh2` varchar(255) NOT NULL,
  `hinh3` varchar(255) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `giam_gia` int(11) NOT NULL,
  `mo_ta` varchar(500) NOT NULL,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `hinh`, `hinh1`, `hinh2`, `hinh3`, `don_gia`, `giam_gia`, `mo_ta`, `ma_loai`) VALUES
(27, 'Adidas Continental 80', 'adidascontinental80.png', 'adidascontinental80-02.jpg', 'adidascontinental80-03.jpg', 'adidascontinental80-04.jpg', 1200000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(28, 'Adidas Cyber Punk', 'adidascyberpunk.png', 'adidascyberpunk-02.jpg', 'adidascyberpunk-03.jpg', 'adidascyberpunk-04.jpg', 1300000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(29, 'Adidas NMD_R1 Primeblue', 'Primeblue-04.jpg', 'Primeblue.jpg', 'Primeblue-03.jpg', 'Primeblue-02.jpg', 4000000, 5, 'Soạn đồ, mang giày và xuất phát. Hành trình phiêu lưu khắp phố phường đang vẫy gọi với đôi giày NMD_R1 này. Là phiên bản cập nhật của dòng giày chạy bộ thập niên 80 trứ danh trong kho di sản adidas, đôi giày trainer hiện đại này có thân giày bằng vải dệt kim mềm mại, co giãn và lớp đệm Boost hoàn trả năng lượng cho cảm giác thoải mái suốt ngày dài. Sắc màu táo bạo và các miếng bịt đế giữa đặc trưng gây ấn tượng mạnh mẽ, vậy nên bạn chắc chắn sẽ xuất hiện đầy phong cách ở bất cứ nơi đâu. Sản phẩm', 24),
(30, 'Adidas Reponse', 'adidasresponse.png', 'adidasresponse-02.png', 'adidasresponse-03.png', 'adidasresponse-04.png', 1500000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(31, 'Adidas Super Star', 'adidassupperstar.png', 'adidassupperstar-02.png', 'adidassupperstar-03.png', 'adidassupperstar-04.jpg', 990000, 0, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(32, 'Adidas UltraBoost', 'adidasultraboost.png', 'adidasultraboost-02.png', 'adidasultraboost-03.png', 'adidasultraboost-04.png', 1800000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(33, 'Adidas UltraBoost 20', 'adidasultraboost20-01.png', 'adidasultraboost20-02.png', 'adidasultraboost20-03.png', 'adidasultraboost20-04.png', 5200000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(34, 'Adidas UltraBoost DNA City', 'adidasultraboostdnacity.png', 'adidasultraboostdnacity-02.png', 'adidasultraboostdnacity-03.jpg', 'adidasultraboostdnacity-04.png', 2100000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(35, 'Adidas ZK 2K Boost', 'adidaszk2kboost.png', 'adidaszk2kboost-02.png', 'adidaszk2kboost-03.png', 'adidaszk2kboost-04.jpg', 2300000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(36, 'Pegasus Chaz', 'pegasuschaz.png', 'pegasuschaz-02.jpg', 'pegasuschaz-03.jpg', 'pegasuschaz-04.jpg', 880000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(37, 'Pegasus Trail 2', 'pegasustrail2.png', 'pegasustrail2-02.jpg', 'pegasustrail2-03.jpg', 'pegasustrail2-04.jpg', 1230000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(38, 'Nike Air Force 1 07 White', 'airforce1.jpg', 'airforce1-02.jpg', 'airforce1-03.jpg', 'airforce1-04.jpg', 3900000, 17, 'Tham gia bữa tiệc và kỷ niệm 40 năm vượt qua ranh giới thể thao và thời trang với Máy bay phản lực của Lực lượng Không quân 1. Tiến một bước táo bạo vào hình tượng b-ball, bọt React sang trọng và đế ngoài khuếch đại mang lại sự thoải mái cho thời đại mới. Các chi tiết vàng được đánh bóng và thương hiệu mới kết hợp các logo từ các bản phát hành trước đây tôn vinh vẻ ngoài không sợ hãi và tôn vinh triều đại của AF-1.', 25),
(39, 'Pegasus Zoom 37', 'pegasuszoom37.png', 'pegasuszoom37-02.jpg', 'pegasuszoom37-03.jpg', 'pegasuszoom37-04.jpg', 2120000, 30, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(40, 'Converse Chuck Taylor', 'conversechucktaylor.png', 'conversechucktaylor-02.png', 'conversechucktaylor-03.png', 'conversechucktaylor-04.png', 1990000, 20, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 20),
(41, 'BLAZER MID 77 - \'INFINITE BLACK\'', 'blazermid77.jpg', 'blazermid77-02.jpg', 'blazermid77-03.jpg', 'blazermid77-04.jpg', 1470000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(42, 'Blazer 77 Infinitive ', 'blazermid77infinitive.png', 'sn11-02.webp', 'sn11-03.webp', 'sn11-04.webp', 1360000, 20, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(43, 'Blazer 77 Suede', 'blazermid77suede.png', 'blazermid77suede-02.webp', 'blazermid77suede-03.webp', 'blazermid77suede-04.webp', 1250000, 50, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(44, 'Blazer 77 Vintage', 'blazermid77vintage.png', 'blazermid77vintage-02.jpg', 'blazermid77vintage-03.jpg', 'blazermid77vintage-04.jpg', 2010000, 40, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(45, 'Jordan 1 Lowse', 'jordan1lowse.png', 'jordan1lowse-02.jpg', 'jordan1lowse-03.jpg', 'jordan1lowse-04.jpg', 4900000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(46, 'Jordan 6 Retro', 'jordan6retro.png', 'jordan6retro-02.webp', 'jordan6retro-03.webp', 'jordan6retro-04.webp', 6800000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(47, 'Jordan ADG 2', 'jordanadg2.png', 'jordanadg2-02.webp', 'jordanadg2-03.webp', 'jordanadg2-04.webp', 3700000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(48, 'Jordan Delta', 'jordandelta.png', 'jordandelta-02.webp', 'jordandelta-03.webp', 'jordandelta-04.webp', 3300000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(49, 'Nike Air Force 1 ’07 ‘WHITE BLACK’', 'nikeairforce.png', 'nikeairforce-02.jpg', 'nikeairforce-03.jpg', 'nikeairforce-04.jpg', 4800000, 15, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(50, 'Nike Air Max 1 Recycled White', 'nikeairmax1.png', 'nikeairmax1-02.jpg', 'nikeairmax1-03.jpg', 'nikeairmax1-04.jpg', 3800000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(51, 'Nike Air Vapomax Flyknit Oreo', 'nikeairvapormax.png', 'nikeairvapormax-02.jpg', 'nikeairvapormax-03.webp', 'nikeairvapormax-04.jpg', 4960000, 2, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(52, 'Nike Air Zoom Tempo NEXT% Flyknit \'Curry Navy\'', 'nikeairzoom.png', 'nikeairzoom-02.jpeg', 'nikeairzoom-03.jpeg', '', 6900000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(53, 'Nike Zoom Freak \'Bred\'', 'nikejustin.png', 'nikejustin-02.jpg', 'nikejustin-03.jpg', 'nikejustin-04.jpg', 2990000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(54, 'Converse Chuck 1970 Vintage Hi Top', 'Conversechuck1970vintagehitop.jpg', 'Conversechuck1970vintagehitop-02.jpg', 'Conversechuck1970vintagehitop-03.jpg', 'Conversechuck1970vintagehitop-04.jpg', 2500000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 20),
(56, 'Pegasus FlyEase Blue', 'pegasusflyease.png', 'pegasusflyease-02.jpg', 'pegasusflyease-04.jpg', 'pegasusflyease-03.jpg', 3520000, 2, 'Hãy để Nike Pegasus FlyEase, một chuyến đi cân bằng và tràn đầy năng lượng cho bất kỳ cuộc chạy nào, giúp bạn tiến lên một tầm cao mới. Cảm giác hỗ trợ giúp giữ cho bàn chân của bạn được kiềm chế, trong khi Air dưới chân tạo thêm tiếng bật cho bước đi của bạn khi bạn chuyển từ gót chân sang ngón chân. Công nghệ Nike FlyEase hoạt động như một dây đeo, giúp cố định sự vừa vặn. Chú ngựa ô đáng tin cậy với đôi cánh của bạn đã trở lại. Đã đến giờ cất cánh.', 23);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hd` int(11) NOT NULL,
  `ngay_mua` varchar(20) NOT NULL,
  `ghi_chu` varchar(50) NOT NULL,
  `tinh_trang` varchar(20) NOT NULL DEFAULT '0',
  `ma_kh` varchar(50) NOT NULL,
  `thanh_toan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hd`, `ngay_mua`, `ghi_chu`, `tinh_trang`, `ma_kh`, `thanh_toan`) VALUES
(196, '05-11-2022', 'Giao hàng nhanh nha', '0', 'thai', 'Momo'),
(197, '06-11-2022', '', '0', 'thai', 'Momo'),
(198, '06-11-2022', '', '1', 'thai', 'Momo'),
(199, '06-11-2022', '', '1', 'thai', 'Momo'),
(200, '07-11-2022', '', '0', 'thai', 'Momo');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `ma_hd` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `ma_hh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoa_don_chi_tiet`
--

INSERT INTO `hoa_don_chi_tiet` (`ma_hd`, `so_luong`, `don_gia`, `ma_hh`) VALUES
(196, 9, 1200000, 27),
(196, 9, 1760000, 45),
(196, 9, 1250000, 29),
(197, 1, 1200000, 27),
(197, 1, 2000000, 33),
(198, 1, 1200000, 27),
(198, 2, 5200000, 33),
(199, 1, 1200000, 27),
(199, 2, 5200000, 33),
(199, 1, 1990000, 40),
(200, 1, 1200000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(50) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `vai_tro` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_ten`, `mat_khau`, `email`, `sdt`, `dia_chi`, `vai_tro`) VALUES
('abc', 'nguyenvanb', '159', 'a@gmail.com', '', 'Quận 10', 0),
('admin', 'admin', '123123', 'abc123@gmail.com', '0375736735', 'TPHCM', 1),
('bi', 'Biiiiiii', '123123', 'bi@gmail.com', '', 'Đà Nẵng', 0),
('khachhang', 'Nguyễn Văn A', '159', 'A123@gmail.com', '0903377629', 'Hà Nội', 0),
('khang1', 'nguyenkhang', '123', 'k@gmail.com', '0988322869', '152duongso3', 0),
('linh', 'Bùi Thị Linh', '123', 'linh@gmail.com', '0907833789', 'Lạng Sơn', 0),
('qaz', 'Nguyễn Văn An', '123', 'an@gmail.com', '', 'Bắc Ninh', 0),
('thai', 'Quốc Thái', '2121', 'thai@gmail.com', '0375736735', 'TPHCM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang`
--

CREATE TABLE `loai_hang` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai_hang`
--

INSERT INTO `loai_hang` (`ma_loai`, `ten_loai`) VALUES
(20, 'Converse'),
(21, 'Blazer'),
(22, 'Jordan'),
(23, 'Pegasus'),
(24, 'Adidas'),
(25, 'Nike');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Indexes for table `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_hd` (`ma_hd`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Indexes for table `loai_hang`
--
ALTER TABLE `loai_hang`
  ADD PRIMARY KEY (`ma_loai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `loai_hang`
--
ALTER TABLE `loai_hang`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_hang` (`ma_loai`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Constraints for table `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD CONSTRAINT `hoa_don_chi_tiet_ibfk_2` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`),
  ADD CONSTRAINT `hoa_don_chi_tiet_ibfk_3` FOREIGN KEY (`ma_hd`) REFERENCES `hoa_don` (`ma_hd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
