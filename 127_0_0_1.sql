-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2026 at 12:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin`;
--
-- Database: `arm`
--
CREATE DATABASE IF NOT EXISTS `arm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arm`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `day` datetime DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `name`, `day`, `time`, `type`, `img`) VALUES
(1, 'kkddd', '2024-05-01 15:35:13', 1, 'ขนมหวาน', '2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_project`
--
CREATE DATABASE IF NOT EXISTS `db_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_project`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_ID` int(11) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `activity_description` text NOT NULL,
  `activity_image` varchar(255) NOT NULL,
  `activity_track` varchar(255) NOT NULL,
  `activity_description2` text NOT NULL,
  `activity_location` text NOT NULL,
  `activity_location_name` varchar(255) NOT NULL,
  `activity_rating` varchar(255) NOT NULL,
  `activity_image1` varchar(255) NOT NULL,
  `activity_image2` varchar(255) NOT NULL,
  `activity_image3` varchar(255) NOT NULL,
  `activity_image4` varchar(255) NOT NULL,
  `activity_image5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_ID`, `activity_name`, `activity_description`, `activity_image`, `activity_track`, `activity_description2`, `activity_location`, `activity_location_name`, `activity_rating`, `activity_image1`, `activity_image2`, `activity_image3`, `activity_image4`, `activity_image5`) VALUES
(1, 'กิจกรรมจิตอาสาเราทำความดีด้วยหัวใจ', 'กิจกรรมจิตอาสาพัฒนาเนื่องในวันคล้ายวันสวรรคตสมเด็จพระนเรศวรมหาราช\r\n', 'Image/pic_ativity6.jpg', 'activity_inside.php', 'เมื่อวันพฤหัสบดีที่ 25 เมษายน 2567 นายสิทธิศักดิ์  แย้มพรายภิรมย์ \r\nนายอำเภอเมืองสุพรรณบุรี นำทุกภาคส่วน \r\nร่วมกิจกรรมจิตอาสาพัฒนาเนื่องในวันคล้ายวันสวรรคตสมเด็จพระนเรศวรมหาราช ประจำปี 2567 \r\n           ณ โดมอเนกประสงค์วัดธรรมมงคล หมู่ที่ 5 ตำบลไผ่ไผ่ขวาง และ ล้างพื้นผิวถนนบริเวณคันคลองไผ่ขวาง', 'https://maps.app.goo.gl/AdxMm4jTnXMjocsW7', ' ณ โดมอเนกประสงค์วัดธรรมมงคล หมู่ที่ 5 ตำบลไผ่ขวาง', '4.6 ❤️️❤️️❤️️❤️\r\n\r\n', 'Image/acti2.1.jpg', 'Image/acti2.2.jpg', 'Image/acti2.3.jpg', 'Image/acti2.4.jpg', 'Image/acti2.5.jpg'),
(2, 'การจัดการเรียนการสอนนักเรียนผู้สูงอายุ\r\n', 'โรงเรียนสร้างสุขผู้สูงอายุตำบลไผ่ขวาง รุ่นที่ 1\r\nนายปรีชา คชวงษ์ นายกองค์การบริหารส่วนตำบลไผ่ขวาง ได้มอบหมายให้ นายวิทยา ศิริเลิศ รองนายกองค์การบริหารส่วนตำบลไผ่ขวาง ณ ศูนย์การเรียนรู้วงษ์ทอง หมู่ 5 ตำบลไผ่ขวาง อำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุรี', 'Image/pic_ativity5.jpg', 'activity_inside.php', 'นายปรีชา  คชวงษ์ นายกองค์การบริหารส่วนตำบลไผ่ขวาง ได้มอบหมายให้ \r\nนายวิทยา  ศิริเลิศ รองนายกองค์การบริหารส่วนตำบลไผ่ขวาง \r\nเข้าร่วมดำเนินการจัดการเรียนการสอนนักเรียนผู้สูงอายุ โรงเรียนสร้างสุขผู้สูงอายุตำบลไผ่ขวาง รุ่นที่ 1 \r\nประจำปีงบประมาณ พ.ศ. 2567 สัปดาห์ที่ 9 ได้มีการอบรมให้ความรู้ในรายวิชา \r\nข้อควรระวังในการใช้ยา และ การดูแลสุขภาพตามหลัก 3 อ. โดย คุณเนตรทราย  ศิริเลิศ พยาบาลวิชาชีพชำนาญการ \r\nสถานพินิจและคุ้มครองเด็กและเยาวชน จังหวัดสุพรรณบุรี พร้อมด้วย \r\nกิจกรรมเข้าจังหวะเพื่อบริหารร่างกายเบื้องต้น และนอกจากนี้ ยังได้มีกิจกรรมสันทนาการการเล่นเกมเพื่อผ่อนคลาย \r\nสร้างรอยยิ้มให้กับนักเรียนผู้สูงอายุ โดย ชมรมคนแกร่งตำบลไผ่ขวาง ', 'https://maps.app.goo.gl/a8T3FTcZAW1UNx3w9', 'ณ ศูนย์การเรียนรู้วงษ์ทอง หมู่ 5 ตำบลไผ่ขวาง อำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุรี', '4.3 ❤️️❤️️❤️️❤️', 'Image/acti.1.2.jpg', 'Image/acti1.3.jpg', 'Image/acti1.4.jpg', 'Image/acti1.5.jpg', ''),
(3, 'โครงการปั่นเพื่อสุขภาพ (Bike for Health)', 'เพื่อเป็นการส่งเสริมการออกกำลังกายให้กับประชาชนด้วยการใช้จักรยานทำให้อวัยวะในส่วนต่างๆ ของร่างกายแข็งแรง\r\nช่วยเผาผลาญพลังงานให้เกิดรูปร่างและสุขภาพที่ดีโดยมีนายปรีชา คชวงษ์ คณะผู้บริหาร สมาชิกสภาฯ ผู้นำชุมชน ครูและนักเรียน \r\nตลอดจนประชาชนตำบลไผ่ขวางเข้าร่วมกิจกรรมดังกล่าว', 'Image/pic_cul9.jpg', 'activity_inside.php\r\n', 'นายศรีธรรม ราชแก้ว นายอำเภอเมืองสุพรรณบุรี ได้ให้เกียรติเป็นประธานกล่าวเปิดโครงการปั่นเพื่อสุขภาพ (Bike for Health) \r\nประจำปีงบประมาณ พ.ศ. 2565 ณ ลานอเนกประสงค์วัดธรรมมงคล โดยมีนายปรีชา คชวงษ์ คณะผู้บริหาร สมาชิกสภาฯ \r\nผู้นำชุมชน ครูและนักเรียน ตลอดจนประชาชนตำบลไผ่ขวาง \r\nเข้าร่วมกิจกรรมดังกล่าว ซึ่งจัดขึ้นโดย กองสาธารณสุขและสิ่งแวดล้อม องค์การบริหารส่วนตำบลไผ่ขวาง เป็นการปั่นจักรยานตั้งแต่บริเวณคันคลองไผ่ขวาง \r\nตลอดจนเส้นทางถนนคงมาลัยทั้งสองฝั่งคลอง เพื่อเป็นการส่งเสริมการออกกำลังกายให้กับประชาชนด้วยการใช้จักรยาน \r\nทำให้อวัยวะในส่วนต่างๆ ของร่างกายแข็งแรง ช่วยเผาผลาญพลังงานให้เกิดรูปร่างและสุขภาพที่ดี \r\nลดความเสี่ยงในการเกิดโรคเรื้อรัง อีกทั้งยังช่วยควบคุมน้ำหนัก ส่งผลดีต่ออารมณ์และจิตใจ', '', '', '4.1 ❤️️❤️️❤️️❤️', 'Image/acti3.1.jpg', 'Image/acti3.2.jpg', 'Image/acti3.3.jpg', 'Image/acti3.4.jpg', 'Image/acti3.5.jpg'),
(4, 'กิจกรรมรดน้ำขอพรผู้สูงอายุ ตำบลไผ่ขวาง', 'นำโดยท่านนายกปรีชา คชวงษ์ นายกองค์การบริหารส่วนตำบลไผ่ขวางและคณะผู้บริหาร สมาชิกสภา ข้าราชการ พนักงานจ้าง และประชาชนตำบลไผ่ขวาง ระหว่างวันที่ 14 - 17 เมษายน 2567', 'Image/pic_ativity7.jpg', 'activity_inside.php', 'ได้จัดกิจกรรมวันสงกรานต์ให้กับนักเรียนสร้างสุขผู้สูงอายุตำบลไผ่ขวาง \r\nประจำปีงบประมาณ พ.ศ. 2567 โดยมีกิจกรรมต่างๆ มากมาย \r\nทั้งการแสดงของนักเรียน ชมรมคนแกร่งตำบลไผ่ขวาง การรดน้ำขอพรนักเรียนผู้สูงอายุ \r\nพร้อมด้วย กิจกรรมรำวงและร้องเพลงร่วมกันอย่างมีความสุข', 'https://maps.app.goo.gl/GZshqMa4wCD1PbQD7', 'ณ ศูนย์เรียนรู้วงษ์ทอง หมู่ 5 ตำบลไผ่ขวาง อำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุรี', '4.8 ❤️️❤️️❤️️❤️', 'Image/acti4.2.jpg', 'Image/acti4.3.jpg', 'Image/acti4.4.jpg', 'Image/acti4.5.jpg', ''),
(5, 'โครงการมหกรรมสุขภาพเชิงรุก ประจำปี 2567', 'โรงพยาบาลเจ้าพระยายมราช โรงพยาบาลส่งเสริมสุขภาพตำบลไผ่ขวาง โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดอนกลาง และสำนักงานสาธารณสุขอำเภอเมืองสุพรรณบุรี ได้จัดกิจกรรมมหกรรมสุขภาพเชิงรุก ณ โรงพยาบาลส่งเสริมสุขภาพตำบลไผ่ขวาง เพื่อให้บริการตรวจสุขภาพประชาชนในพื้นที่ตำบลไผ่ขวาง และช่วยให้ประชาชน\r\nได้เรียนรู้เกี่ยวกับสภาพร่างกายของตนเองและยังช่วยให้ตรวจพบโรคตั้งแต่ระยะเริ่มแรก', 'Image/pic_ativity8.jpg', 'activity_inside.php', 'วันอังคารที่ 20 กุมภาพันธ์ 2567 นายปรีชา คชวงษ์ นายกองค์การบริหารส่วนตำบลไผ่ขวาง \r\nคณะผู้บริหาร สมาชิกสภาฯ และเจ้าหน้าที่องค์การบริหารส่วนตำบลไผ่ขวาง ฝ่ายปกครองท้องที่ \r\nร่วมกับ โรงพยาบาลเจ้าพระยายมราช โรงพยาบาลส่งเสริมสุขภาพตำบลไผ่ขวาง โ\r\nรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดอนกลาง และสำนักงานสาธารณสุขอำเภอเมืองสุพรรณบุรี\r\nได้จัดกิจกรรมมหกรรมสุขภาพเชิงรุก ประจำปีงบประมาณ 2567 \r\nณ โรงพยาบาลส่งเสริมสุขภาพตำบลไผ่ขวาง เพื่อให้บริการตรวจสุขภาพประชาชนในพื้นที่ตำบลไผ่ขวาง\r\nและช่วยให้ประชาชนได้เรียนรู้เกี่ยวกับสภาพร่างกายของตนเอง และยังช่วยให้ตรวจพบโรคตั้งแต่ระยะเริ่มแรก \r\nซึ่งมีโอกาสสูงในการรักษาให้หายขาด โอกาสนี้ ได้รับเกียรติจาก นายสิทธิศักดิ์ แย้มพรายภิรมย์ \r\nนายอำเภอเมืองสุพรรณบุรี มาเป็นประธานในพิธีเปิดโครงการ', 'https://maps.app.goo.gl/W4nXAE5KfnJubzgb6', 'โรงพยาบาลส่งเสริมสุขภาพตำบลไผ่ขวาง', '4.6 ❤️️❤️️❤️️❤️', 'Image/acti5.1.jpg', 'Image/acti5.2.jpg', 'Image/acti5.3.jpg', 'Image/acti5.4.jpg', 'Image/acti5.5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `culture`
--

CREATE TABLE `culture` (
  `culture_id` int(11) NOT NULL,
  `culture_name` varchar(255) NOT NULL,
  `culture_description` text NOT NULL,
  `culture_image` varchar(255) NOT NULL,
  `culture_track` varchar(255) NOT NULL,
  `culture_description2` text NOT NULL,
  `culture_location` varchar(255) NOT NULL,
  `culture_location_name` varchar(255) NOT NULL,
  `culture_rating` varchar(255) NOT NULL,
  `culture_image1` varchar(255) NOT NULL,
  `culture_image2` varchar(255) NOT NULL,
  `culture_image3` varchar(255) NOT NULL,
  `culture_image4` varchar(255) NOT NULL,
  `culture_image5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `culture`
--

INSERT INTO `culture` (`culture_id`, `culture_name`, `culture_description`, `culture_image`, `culture_track`, `culture_description2`, `culture_location`, `culture_location_name`, `culture_rating`, `culture_image1`, `culture_image2`, `culture_image3`, `culture_image4`, `culture_image5`) VALUES
(1, 'ข้าวประดับดิน', 'ประเพณี “ข้าวประดับดิน” \r\nที่สืบทอดกันมานับ100ปี โดยชาวบ้านจะตื่นกันตั้งแต่เช้ามืด ตี 4 \r\nเพื่อไปไหว้ศาลประจำหมู่บ้าน ที่ชาวบ้านให้ความเคารพนับถือ \r\nเป็นศาลตาเจ้าที่ ในวันมงคลสืบสานประเพณีข้าวประดับดิน \r\nที่ลูกหลานชาวลาวเวียง สืบทอดกันมาเป็นร้อยปีแล้ว', 'Image/pic_cul10.jpg', 'culture_inside.php', 'ชาวบ้านชุมชนไผ่ขวาง ต.ไผ่ขวาง อ.เมือง จ.สุพรรณบุรี \r\nได้ร่วมกันสืบสานประเพณี “ข้าวประดับดิน” \r\nที่สืบทอดกันมานับ100ปี โดยชาวบ้านจะตื่นกันตั้งแต่เช้ามืด ตี 4 เพื่อไปไหว้ศาลประจำหมู่บ้าน ที่ชาวบ้านให้ความเคารพนับถือ \r\nเป็นศาลตาเจ้าที่ ในวันมงคลสืบสานประเพณีข้าวประดับดิน \r\nที่ลูกหลานชาวลาวเวียง สืบทอดกันมาเป็นร้อยปีแล้ว ในวันสิ้นเดือน 9 เป็นวันสารลาว \r\nที่ถือปฎิบัติกันมายาวนาน และเป็นการอุทิศส่วนกุศลให้กับผู้ที่ล่วงลับไปแล้ว และสัมปเวสี \r\nทั้งนี้เป็นการให้ทานแก่ผู้ยากไร้ โดยชาวบ้านจะนำข้าวสุก อาหารคาวหวาน \r\nผลไม้ ใส่กระทง พร้อมน้ำดื่ม แล้วนำมาวางบริเวณศาลประจำหมู่บ้าน \r\nทางสามแพร่ง เจดีย์ในวัด และหน้าพระอุโบสถ และจุดธูป เทียน \r\nกล่าวเชิญให้ผู้ล่วงลับมา จากนั้นในช่วงสาย ลูกหลานจะทำข้าวปลาอาหารไปถวายพระ \r\nพร้อมกับแต่งชลอมเล็ก ที่มีผลไม้ กล้วย มะม่วง เงาะ มะละกอ ส้ม ลำไย และน้ำเปล่า \r\nตบแต่งด้วยกระดาษธงที่มีสีสันสดใส สวยงาม และปัจจัยติดธงด้วยเงินทอง \r\nมาถวายพระเพื่อทำบุญอุทิศส่วนกุศลไปให้บรรพบุรุษ ที่ล่วงลับไปแล้ว \r\nซึ่งตรงกับวันสารลาววันแรก สำหรับชุมชนบ้านไผ่ขวาง แห่งนี้มีลูกหลานชาวลาวเวียง \r\nอาศัยอยู่ตั้งแต่พระเจ้ากรุงธนบุรี หรือพระเจ้าตากสิน ที่ตอนคนลาวมาเป็นชเลย \r\nในสมัยนั้น จนถึงปัจจุบัน ก็อาศัยอยู่จนเป็นหมู่บ้านไผ่ขวางที่มีชาวลาวเวียง อาศัยอยู่ราว 300 \r\nกว่าครัวเรือน มีเอกลักษณ์ที่เป็นของตัวเอง \r\nส่วนลูกหลานที่เป็นคนไทยเชื้อสายลาวเวียง ก็ไปทำงานที่อื่น \r\nพอถึงวันสารลาวก็จะกลับบ้าน มาทำบุญร่วมกับพ่อแม่ ที่บ้านเกิด', '', '', '4.0 ❤️️❤️️❤️️❤️', 'Image/cul1.jpg', 'Image/cul1.2.jpg', '', '', ''),
(2, 'ศาลปู่ตา ศาลตายาย', ' พิธีกรรมและความเชื่อเกี่ยวกับข้าว : ศาลปู่ตา ศาลตายาย\r\n  “ศาลปู่ตา ศาลตายาย” เป็นผีบรรพบุรุษที่ล่วงลับไปแล้ว แต่มีความเชื่อว่าดวงวิญญาณยังห่วงลูกหลาน \r\nจึงคอยดูแลลูกหลานในหมู่บ้านและชุมชนให้อยู่เย็นเป็นสุข \r\nและคอยปกปักรักษาดูแลทั้งผู้คน สัตว์ และพืชพรรณธัญญาหารในหมู่บ้าน \r\nเพื่อให้ชุมชนได้อยู่รอดแคล้วคลาดปลอดภัยภยันตราย และประสพแต่ความสุข ความอุดมสมบูรณ์', 'Image/pic_cul11.jpg', 'culture_inside.php', '    ในช่วงเดือนพฤษภาคมของประเทศไทย หรือเดือน ๖ นั้น จะเป็นช่วงเข้าฤดูฝน \r\nเป็นช่วงเวลาที่ชาวนาไทยรอคอยที่จะเริ่มการทำนา \r\nในเดือนนี้มีการประกอบพิธีกรรมเกี่ยวกับการทำนา \r\n   พิธีกรรมข้าวมีความสำคัญต่อชาวนาไทยมาก เนื่องจากเป็นวิถีชีวิตที่ทำมาหาเลี้ยงชีพหลัก \r\nโดยจะแบ่งตามลำดับการเพาะปลูกข้าวเป็น ๔ ช่วง คือ พิธีกรรมก่อนการเพาะปลูก พิธีกรรมช่วงเพาะปลูก พิธีกรรมเพื่อการบำรุงรักษา \r\nและพิธีกรรมเพื่อการเก็บเกี่ยว เฉลิมฉลองผลผลิตที่ได้จากการทำนามาตลอดทั้งปี \r\n   พิธีกรรมก่อนการเพาะปลูก ซึ่งมีวัตถุประสงค์เพื่อบวงสรวงบูชาสิ่งศักดิ์สิทธิ์หรือบรรพบุรุษให้คุ้มครองป้องกันภยันตรายแก่ชีวิต\r\nและทรัพย์สินให้มีความสิริมงคล ความอุดมสมบูรณ์ และความปลอดภัยจากอุปสรรคที่อาจจะเกิดขึ้นกับการเริ่มต้นทำนา\r\n     ศาลปู่ตา ศาลตายายเป็นเหมือนศาลเจ้าเล็ก ๆ ลักษณะเป็นบ้านยกพื้นเสาสูง สร้างด้วยไม้ \r\nมุงหลังคา มีลานด้านหน้า ด้านในมีโถงโล่ง ผนังกั้นสามด้าน ด้านข้างทั้งสองข้าง \r\nและด้านหลัง หรืออาจจะไม่มีผนังกั้น แต่โดยทั่วไปส่วนมากแล้วจะมีผนังลักษณะคล้ายเป็นบ้านหลังเล็ก ๆ \r\nภายในศาลอาจจะมีหรือไม่มีสัญลักษณ์ใด ๆ หากมี ก็จะเป็นตัวแทนหรือสิ่งแทนตั้งอยู่ภายในศาล \r\nเช่น รูปปั้นตายาย ในกรณีของศาลปู่ตาที่อำเภอบางปลาม้า พื้นที่ไปสำรวจหลังนี้ มีแผ่นไม้ทรงสี่เหลี่ยมผืนผ้ายาวปลายโค้งมนด้านหนึ่งตั้งขึ้น \r\nมีรอยของการเขียนภาพลงสีและปิดทอง \r\nแต่ภาพเลือนลางมาก เห็นเพียงเส้นสีบางส่วน', '', '', '4.3 ❤️️❤️️❤️️❤️', 'Image/cul2.1.jpg', 'Image/cul2.2.jpg', 'Image/cul2.3.jpg', 'Image/cul2.4.jpg', 'Image/cul2.5.jpg'),
(3, 'ชาติพันธุ์ลาวเวียงตำบลไผ่ขวาง', 'ภูมิปัญญาท้องถิ่นด้านวัฒนธรรมประเพณี \"ชาติพันธุ์ลาวเวียงตำบลไผ่ขวาง\" ', 'Image/cul3.1.jpg', 'culture_inside.php', 'ลาวเวียง เป็นกลุ่มคนที่อพยพย้ายมาจากเวียงจันทน์ สปป.ลาว \r\nมาตั้งถิ่นฐานในประเทศไทยตั้งแต่สมัยกรุงธนบุรีและมีการโยกย้ายครั้งใหญ่ในสมัยรัตนโกสินทร์ตอนต้น \r\nตั้งถิ่นฐานอย่างหนาแน่นบริเวณลุ่มน้ำภาคกลาง \r\nบริเวณจังหวัดสุพรรณบุรี การดำรงชีพส่วนใหญ่ทำการเกษตร โดยเฉพาะการทำนา \r\nมีบางพื้นที่ที่มีการปลูกหอม  และทอผ้า เป็นอาชีพเสริม อัตลักษณ์สำคัญของชาวลาวเวียง คือ ผ้าซิ่นตีนจก \r\nเป็นงานหัตกรรมที่มีความโดดเด่นด้านลวดลายและความหมาย \r\nจนเกิดการรวมกลุ่มเป็นวิสาหกิจชุมชนที่สืบทอดมรดกภูมิปัญญาจากบรรพบุรุษมาใช้ต่อยอดในการสร้างมูลค่าทางเศรษฐกิจ', '', '', '3.7 ❤️️❤️️❤️️', 'Image/cul3.2.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `food_and_drink`
--

CREATE TABLE `food_and_drink` (
  `Food_ID` int(11) NOT NULL,
  `Food_Name` varchar(255) NOT NULL,
  `Food_Description` text NOT NULL,
  `Food_Image` varchar(255) NOT NULL,
  `Food_Track` text NOT NULL,
  `Food_Description2` text NOT NULL,
  `Food_Location` varchar(255) NOT NULL,
  `Food_Location_Name` varchar(255) NOT NULL,
  `Food_Rating` text NOT NULL,
  `Food_Image1` varchar(255) NOT NULL,
  `Food_Image2` varchar(255) NOT NULL,
  `Food_Image3` varchar(255) NOT NULL,
  `Food_Image4` varchar(255) NOT NULL,
  `Food_Image5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_and_drink`
--

INSERT INTO `food_and_drink` (`Food_ID`, `Food_Name`, `Food_Description`, `Food_Image`, `Food_Track`, `Food_Description2`, `Food_Location`, `Food_Location_Name`, `Food_Rating`, `Food_Image1`, `Food_Image2`, `Food_Image3`, `Food_Image4`, `Food_Image5`) VALUES
(1, 'ร้านอาหารไผ่ขวาง (Phai Khwang Restaurant)', 'ร้านรับแขกบ้านแขกเมืองของสุพรรณบุรีเป็นร้านเก่าแก่ในสุพรรณบุรี บรรยากาศเป็นตึกกว้าง\r\nบริการทั้งห้องแอร์และพัดลม มีห้องรับรองแยก อาหารเป็นอาหารโทนไทย ๆ\r\nวัตถุดิบท้องถิ่น อาทิ กุ้งแม่น้ำ เห็ดโคนปลาแม่น้ำ หอยแม่น้ำ อาหารรอไม่นาน รสชาติดี ผ่านไปผ่านมาแวะมาลองกันได้', 'Image/PhaiKhwang_Rest.jpg', 'food1.php', 'เชิญชวนให้คุณมาสัมผัสกับประสบการณ์อร่อยแบบแท้จริงที่ร้านอาหารไผ่ขวาง \r\nที่ตั้งอยู่ในจังหวัดสุพรรณบุรี ที่นี่คุณจะได้พบกับเมนูอาหารไทยคลาสสิค\r\nที่มีรสชาติอันหอมหวานเผ็ดตามตำรับแท้ของไทย และบรรยากาศที่อบอุ่น เหมือนบ้านเกิด \r\nทำให้คุณสามารถมาสัมผัสกับบรรยากาศและอาหารไทยแท้ ๆ ได้อย่างแท้จริง รับรองว่าคุณจะต้องพอใจกับการเข้าร้านนี้แน่นอน!', 'https://www.google.com/maps/place/14%C2%B027\'40.6%22N+100%C2%B008\'57.2%22E/@14.4620948,100.1499699,18.04z/data=!4m4!3m3!8m2!3d14.4612722!4d100.1492334?entry=ttu', '167, 33 ตำบลไผ่ขวาง เมืองสุพรรณบุรี จังหวัดสุพรรณบุรี', '4.3 ❤️️❤️️❤️️❤️', 'Image/food1.5.jpg', 'Image/food1.3.jpg', 'Image/food1.2.jpg', 'Image/food1.1.jpg', 'Image/food1.6.jpg'),
(2, 'ก๋วยเตี๋ยวเรืออยุธยาสูตรโบราณ', 'รสชาติอร่อย สูตรแท้ดั้งเดิมคนอยุธยา ป้าเจ้าของร้านใจดี บริการเยี่ยม \r\nราคาไม่แพง และที่สำคัญ วัตถุดิบสด สะอาด', 'Image/food2.3.png', 'food1.php', 'ก๋วยเตี๋ยวเรืออยุธยาสูตรโบราณ ราคาเริ่มที่ชามละ 35 บาท \r\nร้านนี้เป็นก๋วยเตี๋ยวสูตรอยุธยาแท้ๆ เช่น ก๋วยเตี๋ยวน้ำตก-น้ำใส ก๋วยเตี๋ยวต้มยำ ก๋วยเตี๋ยวต้มยำไข่ยางมะตูม \r\nและเกาเหลาน้ำตกน้ำใส รวมถึงยังมีเมนูแนะนำให้ลูกค้าได้ลองทาน เช่น ตับลวก หมูลวก และขาไก่ตุ๋นยาจีน เป็นต้น', 'https://maps.app.goo.gl/MERjmwJ3YFHyXzLu9', '209 33, - ท่าระหัด เมืองสุพรรณบุรี สุพรรณบุรี สุพรรณบุรี \r\n(ตรงข้ามก๋วยเตี๋ยวเรือรังสิต)', '4.2 ❤️️❤️️❤️️❤️️', 'Image/food2.3.png', 'Image/food2.1.jpg', 'Image/food2.5.jpg', '', ''),
(3, 'ก๋วยเตี๋ยวเรือรังสิต (สูตรเจ๊สม)', 'ก๋วยเตี๋ยวเรือสูตรรังสิตครับ หอม อร่อย กลมกล่อม ชามเล็กกำลังดี\r\nทั้งนี้ยังมีอาหารอย่างอื่นนอกจากก๋วยเตี๋ยวอีกด้วย', 'Image/food3.1.png', 'food1.php', 'ความอร่อยเข้มข้นไม่เป็นรองใคร เพราะเป็นเจ้าเด็ดเจ้าเก่า ยืนหนึ่งมาอย่างยาวนาน ข้ามสะพานแดงมาเรื่อยๆ เจอเลย มีทั้งก๋วยเตี๋ยวเรือหมู และเนื้อ รสชาติน้ำซุปเข้มข้น กลมกล่อม', 'https://maps.app.goo.gl/kjc5zdbVtAHg3gRR8', 'ตำบล ไผ่ขวาง อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000 ก่อนข้ามสะพานตลาดนัด', '4.2 ❤️️❤️️❤️️❤️', 'Image/food3.5.png', 'Image/food3.6.png', 'Image/food3.7.png', '', ''),
(4, 'เป้ หมูกระทะ', 'หมูกระทะราคาเป็นชุด ให้เยอะเหมาะสมกับราคา \r\nรสชาติอร่อย น้ำจิ้มสูตรเด็ด บริการดีเยี่ยม ร้านโล่งโปร่งนั่งสบาย', 'Image/food4.1.jpg', 'food1.php', 'ร้านเปิดทุกวัน 10:00-22:30 น. \r\n   มีบริการส่งถึงบ้าน\r\nชุด 200฿ 300฿ 400฿ 500฿\r\nน้ำจิ้มชื้อแยกถุงละ 30฿ ขวดละ 120฿\r\nหมูกระทะของที่นี่จะมีทั้งหมด 4 ราคา น้ำซุปหวาน อร่อยกลมกล่อม และที่เด็ดที่สุดของร้านคือน้ำจิ้ม มีให้เลือก 3 แบบ น้ำจิ้มแดง เผ็ดกำลังดี รสจัดถูกปาก, น้ำจิ้มสุกี้ เผ็ดน้อย เปรี้ยวหวานกลมกล่อม, น้ำจิ้มซีฟู้ด สามารถมิกซ์เองได้ตามต้องการ', 'https://maps.app.goo.gl/Wej4rFyBAeQNGyh89', '33 ตำบล ท่าระหัด อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '4.5 ❤️️❤️️❤️️❤️', 'Image/food4.2.jpg', 'Image/food4.3.jpg', 'Image/food4.5.jpg', 'Image/food4.6.jpg', ''),
(5, 'ครัวอีสานบ้านลาบ', 'ครัวอีสานบ้านลาบ อาหารอร่อย รสชาติแซ่บถูกใจ', 'Image/food5.1.png', 'food1.php', 'สัมผัสรสชาติอาหารอีสานตามแบบฉบับคนท้องถิ่น พร้อมอิ่มฟินกับหลากเมนูที่กินแล้ววางไม่ลง เมนูห้ามพลาด “ส้มตำปูปลาร้า” ทั้งความเผ็ด เด็ด จี๊ด บอกเลยว่าต้องฝากท้องเป็นลูกค้าประจำ อีกหนึ่งเมนูขายดีที่ต้องสั่ง “คอหมูย่าง” พร้อมความสุกกำลังดี มันเยิ้ม ๆ กินคู่กันกับข้าวเหนียวร้อน ๆ', 'https://maps.app.goo.gl/ALib698Y636pMewU9', '329 ตำบล ท่าระหัด อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '4.0 ❤️️❤️️❤️️❤️', 'Image/food5.2.jpg', '', '', '', ''),
(6, 'Endoo Home Café', 'โฮมคาเฟ่เล็กๆ แนวแฟมิลี่แฟมิใจ งานนี้น้อง ๆ หนู ๆ ต้องเลิฟ เพราะเป็นคาเฟ่เด็ก \r\nที่มีมุมของเล่นและกิจกรรมให้ทำเยอะมาก ทั้งวาดรูประบายสี และกิจกรรม diy \r\nพร้อมของเล่นเสริมพัฒนาการต่าง ๆ พาเด็ก ๆ มาปล่อยพลังได้เลย ที่ร้านมมีทั้งโวนห้องแอร์ \r\nและ outdoor  มีมุมจิบกาแฟสำหรับผู้ปกครองด้วย เครื่องดื่มและขนมที่นี่ราคาดีมาก\r\nแถมอร่อยอีกด้วย', 'Image/food6.1.png', 'food1.php', '  เปิด 09:30-19:00 (อังคาร ถึง อาทิตย์) \r\n\r\n☑️ บริการโซนเล่นเด็ก Indoor 3 ห้อง\r\n☑️ บริการโซนเล่นเด็ก Out door 1 โซน\r\n      ( Play Ground) \r\n☑️ มีบริการกาแฟสด เครื่องดื่มคาเฟ่\r\n☑️ เบเกอรี่ ครัวซองต์ ครอฟเฟิล บราวนี่ เค้ก ขนม\r\n☑️ ขนม DIY  & กิจกรรม Work Shop & DIY \r\n☑️ เมนูทานเล่น & อาหารจานด่วน \r\n?อัตราค่าบริการ สำหรับเด็ก \r\n79  Bath : เด็ก 1 คนต่อรอบ (เล่นได้ไม่เกิน 3 ชม.) \r\n( กรณีเหมาทั้งวัน ไม่จำกัดเวลา 139 บาท / คน ) \r\nปล* เด็กๆ ต้องสวมถุงเท้าขณะเข้ารับบริการ indoor \r\nโปรดติดต่อชำระค่าบริการ ก่อนเข้าใช้บริการทุกโซน ', 'https://maps.app.goo.gl/y8AxdAA5sD413a2u8', '21 Endoo Home Cafe 9 ตำบล ไผ่ขวาง เมือง สุพรรณบุรี 72000', '4.8 ❤️️❤️️❤️️❤️', 'Image/food6.2.jpg', 'Image/food6.3.jpg', 'Image/food6.4.jpg', 'Image/food6.5.jpg', 'Image/food6.6.jpg'),
(7, 'Kori-i ชานมไข่มุกโคริอิ สาขาไผ่ขวาง', 'ดื่มชายังไง..ให้ได้กลิ่นหอมมม เหมือนนั่งอยู่ในไร่ชา โคริอิพิถีพิถัน \r\nคัดสรรแต่วัตถุดิบชั้นเยี่ยม เลือกใช้ใบชาแท้จากไต้หวันเท่านั้น \r\nจึงทำให้เมนูชามีกลิ่นหอมมม...อันเป็นเอกลักษณ์ ที่ใครได้ชิมแล้วต้องชอบ', 'Image/food7.1.png', 'food1.php', 'ชานมไข่มุกโคริอิราคาเริ่มต้น 19 บาท หอม อร่อย เข้มข้น คุ้มเกินราคา ด้วยใบชานำเข้าจากไต้หวันแท้ๆ\r\nไข่มุกขวัญใจวัยรุ่นที่สามารถเลือกเครื่องดื่มได้เยอะ และความอร่อยไม่ธรรมดาเลยทีเดียวและความเด็ดของร้านนี้อยู่ที่ตัวไข่มุก เคี้ยวหนึบ เนื้อนุ่ม ไม่เหมือนใคร พร้อมเลือกระดับความหวานได้ตามใจชอบ ตอนนี้มีเมนูชาไทยสุดหอมอร่อย เข้มข้นไม่แพ้ร้านดังร้านอื่น', 'https://maps.app.goo.gl/EoZZZJ1GfP2xAHBQ8', 'ร้านชาไข่มุกโคริอิ สาขา ซอย หมู่บ้านบ้านวัฒนา ตำบล ไผ่ขวาง อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '4.6 ❤️️❤️️❤️️❤️', 'Image/food7.2.jpg', 'Image/food7.3.jpg', 'Image/food7.5.jpg', 'Image/food7.6.jpg', 'Image/food7.7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `otop`
--

CREATE TABLE `otop` (
  `otop_id` int(11) NOT NULL,
  `otop_name` varchar(255) NOT NULL,
  `otop_description` text NOT NULL,
  `otop_image` varchar(255) NOT NULL,
  `otop_track` varchar(255) NOT NULL,
  `otop_description2` text NOT NULL,
  `otop_location` varchar(255) NOT NULL,
  `otop_location_name` varchar(255) NOT NULL,
  `otop_rating` varchar(255) NOT NULL,
  `otop_image1` varchar(255) NOT NULL,
  `otop_image2` varchar(255) NOT NULL,
  `otop_image3` varchar(255) NOT NULL,
  `otop_image4` varchar(255) NOT NULL,
  `otop_image5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otop`
--

INSERT INTO `otop` (`otop_id`, `otop_name`, `otop_description`, `otop_image`, `otop_track`, `otop_description2`, `otop_location`, `otop_location_name`, `otop_rating`, `otop_image1`, `otop_image2`, `otop_image3`, `otop_image4`, `otop_image5`) VALUES
(1, 'ปลาส้ม', 'ปลาส้มกลายเป็นผลิตภัณฑ์ OTOP \r\nที่มีความสำคัญต่อเศรษฐกิจ เนื่องจากมีการผลิตเพื่อเป็นการค้ามากขึ้น \r\nทำให้ผู้บริโภคสามารถเลือกซื้อผลิตภัณฑ์ได้หลากหลาย ซึ่งผลิตภัณฑ์ปลาส้มที่มีคุณภาพ \r\nและเป็นที่ต้องการของผู้บริโภค', 'Image/pic_otop3.jpg', 'otop_inside.php', 'ผลิตภัณฑ์ที่ทำจากปลาที่ผ่านกรรมวิธีการหมักด้วยเกลือ ข้าวเจ้าหรือข้าวเหนียวนึ่งอาจเติมส่วนผสมอื่น \r\nเช่น กระเทียม พริกไทย จนมีรสเปรี้ยว \r\nนับเป็นภูมิปัญญาท้องถิ่นในการถนอมอาหารชนิดหนึ่ง การผลิตส่วนใหญ่เป็นการผลิตแบบอุตสาหกรรมในครอบครัว \r\nอาศัยเทคนิควิธีที่ถ่ายทอดสืบต่อกันมา \r\nทำให้ปลาส้มในแต่ละพื้นที่มีรสชาติ หรือคุณภาพแตกต่างกัน ขึ้นอยู่กับสูตรการผลิต', 'https://maps.app.goo.gl/t8oFLrwusrweFpN96', 'ตำบล ไผ่ขวาง อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '4.9 ❤️️❤️️❤️️❤️', 'Image/otop1.1.jpg', 'Image/otop1.2.jpg', 'Image/otop1.3.jpg', 'Image/otop1.4.jpg', ''),
(2, 'เครื่องเงิน', '“เครื่องเงิน” คือหนึ่งในเอกลักษณ์ของชาติที่มีการสืบสานมาตั้งแต่บรรพบุรุษ กระทั่งยืนยาวมาจนรุ่นลูกหลานในแต่ละพื้นถิ่น', 'Image/pic_otop.png', 'otop_inside.php', 'ชื่อผู้ผลิต/ผู้ประกอบการ : นางเอมอร สุวรรณรัตน์\r\nจุดเริ่มต้นของเครื่องเงินโบราณนั้นมีมาตั้งแต่สมัยสุโขทัย\r\nและนิยมกันมากในช่วงอยุธยาโดยนิยม\r\nเป็นเครื่องประดับของชนชั้นกลางเนื่องจากราคาไม่สูงเท่าทอง \r\nส่วนเครื่องเงินที่เป็นของชนชั้นสูงนั้นจะเป็นภาชนะใส่ของเท่านั้น \r\nจากช่างทองในสมัยนั้นเปิดสอนวิธีการทำทองให้แก่ชาวบ้าน', 'https://maps.app.goo.gl/t8oFLrwusrweFpN96', 'ตำบล ไผ่ขวาง อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '3.9 ❤️️❤️️❤️️', '', '', '', '', ''),
(3, 'น้ำมะนาว', 'น้ำมะนาว ที่มีรสชาติเฉพาะตัวมีเอกลักษณ์ทั้งกลิ่น สี และรสชาติ เป็นของฝากจากตำบล ไผ่ขวาง ที่ผู้รับชื่นชอบทุกเพศ ทุกวัย', 'Image/otop3.1.jpg', 'otop_inside.php', 'น้ำมะนาว คั้นสดด้วยเครื่องคั้นน้ำมะนาวที่ได้มาตรฐาน ผ่านกรรมวิธีที่สะอาด \r\nใช้ปรุงอาหารได้เหมือนน้ำมะนาวที่บีบจากลูก \r\nสะดวกในการปรุงอาหาร เหมาะสำหรับร้านอาหาร \r\nหรือซื้อไว้ใช้กินในครัวเรือนก็ดี \r\nสามารถเก็บในตู้เย็นได้ ของสดใหม่แน่นอน', 'https://maps.app.goo.gl/t8oFLrwusrweFpN96', 'ตำบล ไผ่ขวาง อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '4.4 ❤️️❤️️❤️️❤️', 'Image/otop3.2.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `tourist_id` int(11) NOT NULL,
  `tourist_name` varchar(255) NOT NULL,
  `tourist_description` text NOT NULL,
  `tourist_image` varchar(255) NOT NULL,
  `tourist_track` varchar(255) NOT NULL,
  `tourist_description2` text NOT NULL,
  `tourist_location` varchar(255) NOT NULL,
  `tourist_location_name` varchar(255) NOT NULL,
  `tourist_rating` varchar(255) NOT NULL,
  `tourist_image1` varchar(255) NOT NULL,
  `tourist_image2` varchar(255) NOT NULL,
  `tourist_image3` varchar(255) NOT NULL,
  `tourist_image4` varchar(255) NOT NULL,
  `tourist_image5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`tourist_id`, `tourist_name`, `tourist_description`, `tourist_image`, `tourist_track`, `tourist_description2`, `tourist_location`, `tourist_location_name`, `tourist_rating`, `tourist_image1`, `tourist_image2`, `tourist_image3`, `tourist_image4`, `tourist_image5`) VALUES
(1, 'วัดดอนกลาง', '\'วัดดอนกลาง เป็นวัดที่ได้รับการแต่งตั้งเป็นหน่วยอบรมประชาชนประจำตำบล \r\nซึ่งหลวงพ่อเจ้าอาวาสรูปปัจจุบัน คือพระอธิการทรงภณ กนฺตสีโล ', 'Image/pic_cul14.png', 'tourist_inside.php', 'วัดดอนกลาง เป็นวัดที่ได้รับการแต่งตั้งเป็นหน่วยอบรมประชาชนประจำตำบล \r\nซึ่งหลวงพ่อเจ้าอาวาสรูปปัจจุบัน คือพระอธิการทรงภณ กนฺตสีโล \r\nได้ทำการแจกข้าวสารอาหารแห้ง สิ่งของต่างๆ ให้กับชาวบ้านใกล้เคียงอยู่เป็นประจำ \r\nซึ่งเป็นกิจการงานหนึ่งในแปดด้านของหน่วยอบรมประชาชนประจำตำบล \r\nวัดดอนกลางในปัจจุบันนี้มีความเจริญทางด้านสิ่งก่อสร้างซึ่งถือว่าเป็นสมบัติของวัดอย่างมากมาย \r\nด้วยเจ้าอาวาสปัจจุบันได้ริเริ่มก่อสร้างสาธารณูปการหลายอย่าง \r\nเพื่อความสะดวกของญาติธรรมที่เข้ามาทำบุญในวัด', 'https://maps.app.goo.gl/7h7JpHiJpCxm7ToA7', 'ตั้งอยู่ตำบลไผ่ขวาง เขตปกครองคณะสงฆ์ตำบลดอนมะสังข์ อำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุรี ', '4.7 ❤️️❤️️❤️️❤️', 'Image/tour1.1.jpg', 'Image/tour1.2.jpg', 'Image/tour1.3.jpg', 'Image/tour1.4.jpg', 'Image/tour1.5.jpg'),
(2, 'วัดธรรมมงคล', 'วัดธรรมมงคล มีพระประธานประจำอุโบสถคือพระพุทธชินราช และยังมีวิหารหลวงพ่อโต สูง ๙ ศอก \r\nมีพระยืนขนาด ๙ เมตร และวิหารหลวงพ่อเฉลย รตนโชโต \r\nอดีตเจ้าอาวาสรูปแรก เดิมวัดธรรมมงคล ใช้ชื่อว่า “วัดใหม่เจริญราษฎร์” \r\nและได้เปลี่ยนมาเป็นวัดธรรมมงคล', 'Image/tour2.2.jpg', 'tourist_inside.php', 'วัดธรรมมงคล สังกัดมหานิกาย อยู่ในเขตปกครองของคณะสงฆ์ภาค ๑๔ \r\nที่ดินตั้งวัดมีเนื้อที่ทั้งหมด ๑๑ ไร่ ๓ งาน ๙๑ ตารางวา มีปูชนียวัตถุ \r\nและมีพระประธานประจำอุโบสถคือพระพุทธชินราช และยังมีวิหารหลวงพ่อโต สูง ๙ ศอก \r\nมีพระยืนขนาด ๙ เมตร และวิหารหลวงพ่อเฉลย รตนโชโต อดีตเจ้าอาวาสรูปแรก \r\nเดิมวัดธรรมมงคล ใช้ชื่อว่า “วัดใหม่เจริญราษฎร์” และได้เปลี่ยนมาเป็นวัดธรรมมงคล \r\nประทานนามโดย สมเด็จพระอริยวงศาคตญาณ สมเด็จพระสังฆราช \r\nพระนามเดิม ปุ่น สุขเจริญ ฉายา ปุณฺณสิริ เป็นสมเด็จพระสังฆราชพระองค์ที่ ๑๗ \r\nแห่งกรุงรัตนโกสินทร์ สถิต ณ วัดพระเชตุพนวิมลมังคลารามราชวรมหาวิหาร \r\nทรงพระราชทานนามวัดเมื่อวันที่ ๑๖ กันยายน พ.ศ.๒๕๑๕\r\nเริ่มก่อตั้งเมื่อวันที่ ๔ สิงหาคม พ.ศ.๒๕๑๑ \r\nตามที่นายทองคำ พร้อมสุข พร้อมด้วย ครูบุญลือ วันทอง ครูตุ๊ รอดสถิต นายอำนาจ (เม้ง) ผิวขาว \r\nนายปาน สุดโต นายฟัก ภู่เหมา นายเหรียญ ภู่เหมา นายจำลอง ประเสริฐ นายประเทือง คำพุฒ นายเงิน บุญมา นายช่ำ บุญโต และนายจำเนียร มาลาวงษ์ \r\nได้ทำเรื่องขออนุญาตสร้างวัดนั้น ผู้รับอนุญาตได้สร้างเสนาสนะขึ้นสมควรเป็นที่พำนักของภิกษุสงฆ์ได้แล้ว จึงอาศัยความตามข้อ ๔ แห่งกระทรวง \r\nฉบับที่ ๑ (พ.ศ.๒๕๐๗) ออกตามความในพระราชบัญญัติคณะสงฆ์ พ.ศ. ๒๕๐๕ \r\nและด้วยความเห็นชอบของมหาเถรสมาคม \r\nกระทรวงศึกษาธิการจึงประกาศตั้งเป็นวัดขึ้นในพระศาสนา \r\nตั้งแต่วันที่ ๑๙ มกราคม ๒๕๑๖ เป็นต้นมา \r\nโดยมีนายเจริญ นางชื่น ทัศนพันธุ์ พร้อมบุตรธิดา \r\nได้ยกที่ดินให้สร้างวัดจำนวน ๕ ไร่ ๓ งาน ๖๖ ตารางวา นางไม้ ทิพย์ชัย ยกที่ดินให้จำนวน ๘๐ ตารางวา นายสาย นางอ่ำ สุดเส็งพันธุ์ \r\nยกที่ดินให้จำนวน ๖๐ ตารางวา นายปิ่น นางผ่อน ทิพย์ชัย \r\nยกที่ดินให้จำนวน ๒๑ ตารางวา นางพุก ทิพย์ชัย ยกที่ดินให้อีก ๒ งาน ๓๐ ตารางวา \r\nต่อมาในปี พ.ศ. ๒๕๒๙ พุทธศาสนิกชน ร่วมกันบริจาคเงินเพื่อซื้อที่ดินเพิ่มอีก ๒ ไร่ ๓ งาน \r\nและทางวัดได้ทำการจัดซื้อเพิ่มเติม รวมเป็น ๑๑ ไร่ ๓ งาน ๙๑ ตารางวา', 'https://maps.app.goo.gl/ww1rLdCyzqhrzatN7', 'ตั้งอยู่ที่บ้านรางกะทุ่ม เลขที่ ๔/๓ หมูที่ ๕ ตำบลไผ่ขวาง อำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุ', '4.6 ❤️️❤️️❤️️❤️', 'Image/tour2.1.jpg', 'Image/tour2.3.jpg', 'Image/tour2.4.jpg', 'Image/tour2.5.jpg', 'Image/tour2.6.jpg'),
(3, 'สถาบันพัฒนาฝีมือแรงงาน ๒', 'สถาบันพัฒนาฝีมือแรงงาน ๒ สุพรรณบุรี  \r\nเป็นหน่วยงานบริหารราชการส่วนกลางที่ตั้งอยู่ในภูมิภาค  สังกัดกรมพัฒนาฝีมือแรงงาน  กระทรวงแรงงาน  \r\nเริ่มดำเนินการในชื่อ  สถาบันพัฒนาฝีมือแรงงานภาคตะวันตกตอนบน  จังหวัดสุพรรณบุรี  \r\nมีการก่อตั้งในปีงบประมาณ พ.ศ. ๒๕๓๖  \r\nภายใต้โครงการจัดตั้งสถาบันพัฒนาฝีมือแรงงานภาคตะวันตกตอนบน  จังหวัดสุพรรณบุรี  \r\nเฉลิมพระเกียรติฉลองสิริราชสมบัติครบ  ๕๐  ปี  \r\nโดย ฯพณฯ บรรหาร  ศิลปอาชา  นายกรัฐมนตรีคนที่ ๒๑', 'Image/tour3.6.png', 'tourist_inside.php', 'สถาบันพัฒนาฝีมือแรงงาน ๒ สุพรรณบุรี เป็นหน่วยงานบริหารราชการส่วนกลางที่ตั้งอยู่ในภูมิภาค  \r\nสังกัดกรมพัฒนาฝีมือแรงงาน  กระทรวงแรงงาน มีการก่อตั้งในปีงบประมาณ พ.ศ. ๒๕๓๖  \r\nภายใต้โครงการจัดตั้งสถาบันพัฒนาฝีมือแรงงานภาคตะวันตกตอนบน  จังหวัดสุพรรณบุรี  \r\nเฉลิมพระเกียรติฉลองสิริราชสมบัติครบ  ๕๐  ปี  โดย ฯพณฯ บรรหาร  ศิลปอาชา  \r\nนายกรัฐมนตรีคนที่ ๒๑  ให้การสนับสนุนในการจัดตั้งเมื่อปี  พ.ศ. ๒๕๓๖  \r\nมีการประสานงานกับกรมการปกครองเพื่อขอใช้ที่ดินสาธารณประโยชน์  \r\nจำนวน ๔๗ ไร่ ณ หมู่ ๔ บ้านหนองตาลกาบ ตำบลไผ่ขวาง อำเภอเมือง จังหวัดสุพรรณบุรี  \r\nเพื่อใช้เป็นสถานที่ตั้งของสถาบันพัฒนาฝีมือแรงงานภาคตะวันตกตอนบน จังหวัดสุพรรณบุรี  \r\nโดยมีหน้าที่ในการพัฒนาฝีมือแรงงานให้กับประชาชนในเขตพื้นที่ความรับผิดชอบ \r\nปัจจุบันมีอาคารตึกอำนวยการ จำนวน ๑ หลัง  อาคารปฏิบัติงานช่าง จำนวน ๗ หลัง  \r\nอาคารฝึกอบรม ๓ ชั้น จำนวน ๑ หลัง \r\nอาคารพัสดุกลาง จำนวน ๑ หลัง  \r\nอาคารหอพักผู้รับการฝึก จำนวน ๒ หลัง  \r\nอาคารโรงอาหาร จำนวน ๑ หลัง  \r\nอาคารจอดรถยนต์ จำนวน ๑ หลัง  \r\nบ้านพักเจ้าหน้าที่ จำนวน ๒๕ หลัง  \r\nเสาธง จำนวน ๑ ต้น \r\nป้อมยาม จำนวน ๑ หลัง\r\nห้องน้ำคนพิการ จำนวน ๑ หลัง  \r\nถังสูงเก็บน้ำ โรงปั๊มน้ำ ถังเก็บน้ำใต้ดิน \r\nบ่อกรองน้ำ รั้วคอนกรีตบล็อก \r\nศาลพระพรหม และมีศาลาพระพุทธรูปบริเวณด้านหน้าหน่วยงาน\r\nพ.ศ. ๒๕๖๕ โดยกำหนดให้สถาบันพัฒนาฝีมือแรงงาน ๒ สุพรรณบุรี ทำหน้าที่ ความรับผิดชอบด้านการพัฒนาฝีมือแรงงานในพื้นที่จังหวัดสุพรรณบุรี  \r\nและสนับสนุนการดำเนินการพัฒนาฝีมือแรงงานให้กับสำนักงานพัฒนาฝีมือแรงงานชัยนาท  \r\nและสำนักงานพัฒนาฝีมือแรงงานสิงห์บุรี ', 'https://maps.app.goo.gl/fYn5XQHkMBjwyHZp7', 'ตั้งอยู่ที่  ๑๓/๑  หมู่ ๔  ตำบลไผ่ขวาง  อำเภอเมือง  จังหวัดสุพรรณบุรี', '4.8 ❤️️❤️️❤️️❤️', 'Image/tour3.1.png', 'Image/tour3.2.png', 'Image/tour3.3.png', 'Image/tour3.4.png', 'Image/tour3.5.png'),
(4, 'วัดไผ่ขวาง', 'วัดไผ่ขวาง เป็นวัดที่มีความเป็นเอกลักษณ์และมีความสำคัญในพื้นที่จังหวัดสุพรรณบุรี', 'Image/tour4.1.png', 'tourist_inside.php', 'วัดไผ่ขวาง เป็นวัดที่มีความเป็นเอกลักษณ์และมีความสำคัญในพื้นที่จังหวัดสุพรรณบุรี ประเทศไทย \r\nมีลักษณะสถาปัตยกรรมที่น่าสนใจและเป็นศิลปะที่มีความเชื่อมโยงกับวัฒนธรรมไทยอย่างล้ำค่า', 'https://maps.app.goo.gl/mBz65fPCzD2sd9kN7', '3 Soi Ongkan Borihan Suan, ตำบล ไผ่ขวาง อำเภอเมืองสุพรรณบุรี สุพรรณบุรี 72000', '4.0 ❤️️❤️️❤️️❤️', 'Image/tour4.5.png', 'Image/tour4.2.png', 'Image/tour4.3.png', 'Image/tour4.4.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_ID`);

--
-- Indexes for table `culture`
--
ALTER TABLE `culture`
  ADD PRIMARY KEY (`culture_id`);

--
-- Indexes for table `food_and_drink`
--
ALTER TABLE `food_and_drink`
  ADD PRIMARY KEY (`Food_ID`);

--
-- Indexes for table `otop`
--
ALTER TABLE `otop`
  ADD PRIMARY KEY (`otop_id`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`tourist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `culture`
--
ALTER TABLE `culture`
  MODIFY `culture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_and_drink`
--
ALTER TABLE `food_and_drink`
  MODIFY `Food_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otop`
--
ALTER TABLE `otop`
  MODIFY `otop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `tourist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `leaning`
--
CREATE DATABASE IF NOT EXISTS `leaning` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `leaning`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `email`) VALUES
(1, 'user', 'user1@gmail.com'),
(2, 'user2', 'user2@gmail.com'),
(3, 'user3', 'user3@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"leaning\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-03 12:02:25', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shoping`
--
CREATE DATABASE IF NOT EXISTS `shoping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shoping`;

-- --------------------------------------------------------

--
-- Table structure for table `sp_product`
--

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_product`
--

INSERT INTO `sp_product` (`id`, `name`, `img`, `price`, `description`, `type`) VALUES
(1, 'สส', 'วสว', 222, 'msdlvmsdvsdvmsd', 'food'),
(2, 'dbfdh', 'dbdb', 222222, 'grg', 'food'),
(3, 'gr', 'gg', 44, 'gdrhr', 'food');

-- --------------------------------------------------------

--
-- Table structure for table `sp_transaction`
--

CREATE TABLE `sp_transaction` (
  `id` int(11) NOT NULL,
  `transid` int(11) DEFAULT NULL,
  `orderrlist` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `netamount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_product`
--
ALTER TABLE `sp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_product`
--
ALTER TABLE `sp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tourist_otop_db`
--
CREATE DATABASE IF NOT EXISTS `tourist_otop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tourist_otop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `highlight_info` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `category` enum('tourist','restaurant','otop') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `location`, `highlight_info`, `image_name`, `category`, `created_at`) VALUES
(1, 'วัดพระธาตุ (วัดธาตุนอก)', 'โบราณสถานสำคัญประจำตำบลศาลาขาว มีพระปรางค์เก่าแก่ที่สร้างขึ้นในสมัยอยุธยาตอนกลาง เป็นศูนย์รวมจิตใจและจุดศึกษาประวัติศาสตร์ของชุมชน', 'หมู่ 2 ต.ศาลาขาว อ.เมือง จ.สุพรรณบุรี', 'กราบไหว้พระปรางค์โบราณ', '1787999776.webp', 'tourist', '2026-08-29 10:17:47'),
(2, 'วัดศาลาขาว', 'วัดเก่าแก่คู่ชุมชน บรรยากาศร่มรื่น สงบเงียบ เหมาะแก่การปฏิบัติธรรมและทำบุญในวันสำคัญทางศาสนา', 'หมู่ 1 ต.ศาลาขาว อ.เมือง จ.สุพรรณบุรี', 'ทำบุญ ไหว้พระ ขอพร', '1787999797.jpg', 'tourist', '2026-08-29 10:17:47'),
(3, 'ศูนย์เรียนรู้เกษตรทฤษฎีใหม่', 'ศูนย์เรียนรู้เกษตรทฤษฎีใหม่ สัมผัสวิถีชีวิตชาวนาศาลาขาว ศึกษาการทำเกษตรแบบผสมผสาน', 'หมู่ 4 ต.ศาลาขาว อ.เมือง จ.สุพรรณบุรี', 'เดินชมแปลงเกษตร ถ่ายรูปธรรมชาติ', '1787999812.jpg', 'tourist', '2026-08-29 10:17:47'),
(4, 'จุดชมวิวทุ่งนาข้าวศาลาขาว', 'พื้นที่เกษตรกรรมที่กว้างใหญ่ เมื่อถึงฤดูทำนาจะเห็นทุ่งข้าวสีเขียวขจี และเปลี่ยนเป็นสีทองในฤดูเก็บเกี่ยว', 'พื้นที่ราบลุ่ม ต.ศาลาขาว', 'ปั่นจักรยานชมวิวทุ่งนา', '1787999819.jpg', 'tourist', '2026-08-29 10:17:47'),
(5, 'ร้านก๋วยเตี๋ยวป้าเพ็ญ', 'ร้านก๋วยเตี๋ยวหมูตุ๋นรสเด็ด น้ำซุปเข้มข้น เปิดขายมานานกว่า 20 ปี ขวัญใจชาวชุมชนศาลาขาว', 'หน้าวัดศาลาขาว ต.ศาลาขาว', 'ก๋วยเตี๋ยวหมูตุ๋น, ลูกชิ้นปิ้ง', '1788000101.webp', 'restaurant', '2026-08-29 10:17:47'),
(6, 'ครัวริมคลอง ศาลาขาว', 'ร้านอาหารตามสั่งบรรยากาศบ้านๆ ริมคลองชลประทาน ใช้วัตถุดิบสดใหม่จากในชุมชน', 'ริมคลอง หมู่ 3 ต.ศาลาขาว', 'ผัดกะเพราเป็ด, ต้มยำปลาหมอ', '1788000110.webp', 'restaurant', '2026-08-29 10:17:47'),
(7, 'ส้มตำเจ๊จอย ศาลาขาว', 'ร้านส้มตำรสแซ่บจัดจ้าน ปลาร้านัวๆ ไก่ย่างเตาถ่านหอมกรุ่น ราคาเป็นกันเอง', 'ปากทางเข้าหมู่บ้าน ต.ศาลาขาว', 'ส้มตำปูปลาร้า, ไก่ย่างเตาถ่าน', '1788000116.jpg', 'restaurant', '2026-08-29 10:17:47'),
(8, 'คาเฟ่ชายทุ่ง ศาลาขาว', 'ร้านกาแฟสดเล็กๆ ริมทุ่งนา บรรยากาศชิลๆ นั่งจิบกาแฟชมวิวพระอาทิตย์ตกดิน', 'ริมถนนสายหลัก ต.ศาลาขาว', 'กาแฟสด, อิตาเลียนโซดา', '1788000123.jpg', 'restaurant', '2026-08-29 10:17:47'),
(9, 'ไข่เค็มใบเตย ศาลาขาว', 'ไข่เค็มพอกด้วยดินจอมปลวกผสมใบเตยหอม ทำให้ไข่มีกลิ่นหอม รสชาติไม่เค็มจัด ไข่แดงมันเยิ้ม', 'กลุ่มแม่บ้านเกษตรกร ต.ศาลาขาว', 'กล่องละ 50 บาท (บรรจุ 4 ฟอง)', '1788000131.webp', 'otop', '2026-08-29 10:17:47'),
(10, 'ข้าวหอมมะลิอินทรีย์', 'ข้าวหอมมะลิปลูกด้วยวิธีธรรมชาติในพื้นที่ศาลาขาว ปลอดสารพิษ 100% เมล็ดสวย หุงขึ้นหม้อ', 'วิสาหกิจชุมชน ต.ศาลาขาว', 'กิโลกรัมละ 60 บาท', '1788000138.jfif', 'otop', '2026-08-29 10:17:47'),
(11, 'งานจักสานไม้ไผ่ชุมชน', 'ตะกร้า กระบุง สุ่มจับปลา งานฝีมือประณีตจากผู้สูงอายุในชุมชน มีความทนทานใช้งานได้นาน', 'กลุ่มหัตถกรรม ต.ศาลาขาว', 'เริ่มต้นที่ 150 บาท', '1788000143.webp', 'otop', '2026-08-29 10:17:47'),
(12, 'น้ำพริกตาแดงสูตรโบราณ', 'น้ำพริกตาแดงรสจัดจ้าน ตำมือด้วยสูตรโบราณของบรรพบุรุษ ไม่ใส่สารกันบูด', 'กลุ่มสตรี ต.ศาลาขาว', 'กระปุกละ 35 บาท (3 กระปุก 100)', '1788000148.webp', 'otop', '2026-08-29 10:17:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
