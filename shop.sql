-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2022 at 11:01 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `Price` float NOT NULL DEFAULT '0',
  `Image` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Description`, `Price`, `Image`) VALUES
(1, 'แก้วน้ำสุญญากาศ My Melody', 'แก้วน้ำสุญญากาศ My Melody จากแบรนด์ SANRIO แก้วน้ำ Stainless เก็บอุณหภูมิ 6-8ชั่วโมง วัสดุ Stainless เกรด 304 แข็งแรงทนทาน ใช้งานได้นาน\r\n', 399, 'https://backend.central.co.th/media/catalog/product/c/d/cds87795004-1.jpg?impolicy=resize&width=553'),
(2, 'SANRIO แก้วน้ำสุญญากาศ Hello Kitty', 'แก้วน้ำสุญญากาศ Hello Kitty จากแบรนด์ SANRIO แก้วน้ำ Stainless เก็บอุณหภูมิ 6-8ชั่วโมง วัสดุ Stainless เกรด304 แข็งแรงทนทาน ใช้งานได้นาน', 399, 'https://backend.central.co.th/media/catalog/product/c/d/cds87794991-1.jpg?impolicy=resize&width=553'),
(3, 'SANRIO แก้วน้ำสเตนเลสพร้อมหลอด Hello Kitty', 'เติมความสดชื่นให้คุณได้ตลอดเวลาด้วย แก้วน้ำ ด้วยวัสดุคุณภาพดี มาพร้อมดีไซน์คาแรคเตออร์ สีสันสดใสน่ารักน่าชัง จากแบรนด์ SANRIO', 595, 'https://backend.central.co.th/media/catalog/product/c/d/cds84745576-1.jpg?impolicy=resize&width=553'),
(4, 'SANRIO แก้วน้ำสเตนเลสพร้อมหลอด Cinnamoroll', 'เติมความสดชื่นให้คุณได้ตลอดเวลาด้วย แก้วน้ำ ด้วยวัสดุคุณภาพดี มาพร้อมดีไซน์คาแรคเตออร์ สีสันสดใสน่ารักน่าชัง จากแบรนด์ SANRIO', 595, 'https://backend.central.co.th/media/catalog/product/c/d/cds84745569-1.jpg?impolicy=resize&width=553'),
(5, 'SANRIO ผ้าขนหนู Aggretsuko HAPPY DAY', 'ผ้าเช็ดหน้าขนหนูที่ให้คุณสัมผัสความนุ่มสบาย จากแบรนด์ SANRIO มาพร้อมคาแรคเตอร์ สุดน่ารัก ด้วยเนื้อผ้าคอตตอนคุณภาพเยี่ยม ซึมซับน้ำได้ดีเยี่ยม สามารถเช็ดทำความสะอาดได้อย่างสะอาดหมดจด', 450, 'https://backend.central.co.th/media/catalog/product/c/d/cds89621530-1.jpg?impolicy=resize&width=553'),
(6, 'SANRIO ผ้าขนหนู Hangyodon HAPPY DAY ', 'ผ้าเช็ดหน้าขนหนูที่ให้คุณสัมผัสความนุ่มสบาย จากแบรนด์ SANRIO มาพร้อมคาแรคเตอร์ สุดน่ารัก ด้วยเนื้อผ้าคอตตอนคุณภาพเยี่ยม ซึมซับน้ำได้ดีเยี่ยม สามารถเช็ดทำความสะอาดได้อย่างสะอาดหมดจด', 450, 'https://backend.central.co.th/media/catalog/product/c/d/cds89621509-1.jpg?impolicy=resize&width=553'),
(7, 'SANRIO พวงกุญแจ Hangyodon', 'พวงกุญแจจากแบรนด์ SANRIO ผลิตจากวัสดุคุณภาพดี', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds90670398-1.jpg?impolicy=resize&width=553'),
(8, 'SANRIO พวงกุญแจ Hello Kitty', 'พวงกุญแจจากแบรนด์ SANRIO ผลิตจากวัสดุคุณภาพดี', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds90670343-1.jpg?impolicy=resize&width=553'),
(9, 'SANRIO ขวดน้ำ Little Twin Stars Spray', 'ขวดน้ำ จากแบรนด์ SANRIO ขนาด 550ml. ทรงสปอร์ต ด้านบนสามารถเปิดฝาเล็กเพื่อดื่มน้ำจากกระบอกได้ มีหัวพ่นสเปร์ย เพื่อเพิ่มความชุ่มชื่นให้กันการออกกำลังกาย หรือ การเดินทาง ผลิตจากวัสดุ Tritan คุณภาพดี ทนทาน ', 395, 'https://backend.central.co.th/media/catalog/product/c/d/cds83773822-1.jpg?impolicy=resize&width=553'),
(10, 'SANRIO ขวดน้ำ Cinnamoroll Lemon Spray', 'ขวดน้ำ จากแบรนด์ SANRIO ขนาด 550ml. ทรงสปอร์ต ด้านบนสามารถเปิดฝาเล็กเพื่อดื่มน้ำจากกระบอกได้ มีหัวพ่นสเปร์ย เพื่อเพิ่มความชุ่มชื่นให้กันการออกกำลังกาย หรือ การเดินทาง ผลิตจากวัสดุ Tritan คุณภาพดี ทนทาน ', 395, 'https://backend.central.co.th/media/catalog/product/c/d/cds83773815-1.jpg?impolicy=resize&width=553'),
(11, 'SANRIO ซองใส่ดินสอ Gudetama', 'จัดเก็บเดินสอของคุณไว้อยู่รวมกันด้วย ซองใส่ดินสอ จากแบรนด์ SANRIO ที่มาพร้อมลาย  Gudetama สุดน่ารัก ตัวแฟ้มผลิตจากวัสดุคุณภาพดี มีน้ำหนักเบา สามารถพกพาได้อย่างสะดวก', 99, 'https://backend.central.co.th/media/catalog/product/c/d/cds19787800a.jpg?impolicy=resize&width=553'),
(12, 'SANRIO ซองใส่ดินสอ Cinnamoroll Snack', 'หวังว่าเพื่อนๆ คงจะถูกใจกับซองใส่ดินสอแบบนี้วางอยู่บนโต๊ะ ที่มาพร้อมดีไซน์ลาย Cinnamoroll น่ารักน่าชัง จาก แบรนด์ SANRIO', 99, 'https://backend.central.co.th/media/catalog/product/c/d/cds21559129-1_1.jpg?impolicy=resize&width=553'),
(13, 'SANRIO ชุดปากกา 2 ชิ้น Cinnamoroll', 'ชุดปากกา 2 ชิ้น แบรนด์ SANRIO ดีไซน์ที่แสนน่ารัก สีสันสดใส มาพร้อมกับคาแรคเตอร์สุดโปรดที่คุณหนู ๆ จะต้องชื่นชอบ', 276, 'https://backend.central.co.th/media/catalog/product/c/d/cds90853012-1.jpg?impolicy=resize&width=553'),
(14, 'SANRIO ชุดปากกา 2 ชิ้น My Melody', 'ชุดปากกา 2 ชิ้น แบรนด์ SANRIO ดีไซน์ที่แสนน่ารัก สีสันสดใส มาพร้อมกับคาแรคเตอร์สุดโปรดที่คุณหนู ๆ จะต้องชื่นชอบ', 276, 'https://backend.central.co.th/media/catalog/product/c/d/cds90853005-1.jpg?impolicy=resize&width=553'),
(15, 'SANRIO ชุดปากกา 2 ชิ้น Hangyodon', 'ชุดปากกา 2 ชิ้น แบรนด์ SANRIO ดีไซน์ที่แสนน่ารัก สีสันสดใส มาพร้อมกับคาแรคเตอร์สุดโปรดที่คุณหนู ๆ จะต้องชื่นชอบ', 276, 'https://backend.central.co.th/media/catalog/product/c/d/cds90853036-1.jpg?impolicy=resize&width=553'),
(16, 'SANRIO แก้วน้ำ Cinnamoroll', 'แก้วน้ำจากแบรนด์ SANRIO ผลิตจากวัสดุคุณภาพดี', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds90670206-1.jpg?impolicy=resize&width=553'),
(17, 'SANRIO แก้วน้ำ Hello Kitty', 'แก้วน้ำจากแบรนด์ SANRIO ผลิตจากวัสดุคุณภาพดี', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds90670183-1.jpg?impolicy=resize&width=553'),
(18, 'SANRIO ขวดน้ำสุญญากาศ Bad Badtz-Maru', 'ขวดน้ำสุญญากาศ Bad Badtz-Maru จากแบรนด์ SANRIO ขวดน้ำ Stainless เก็บอุณหภูมิ 6-8ชั่วโมง วัสดุ Stainless เกรด304 แข็งแรงทนทาน ใช้งานได้นาน', 650, 'https://backend.central.co.th/media/catalog/product/c/d/cds87794984-1.jpg?impolicy=resize&width=553'),
(19, 'SANRIO ขวดน้ำสุญญากาศ My Melody', 'ขวดน้ำสุญญากาศ My Melodyจากแบรนด์ SANRIO ขวดน้ำ Stainless เก็บอุณหภูมิ 6-8ชั่วโมง วัสดุ Stainless เกรด304 แข็งแรงทนทาน ใช้งานได้นาน', 650, 'https://backend.central.co.th/media/catalog/product/c/d/cds87794960_1_.jpg?impolicy=resize&width=553'),
(20, 'SANRIO กิ๊ฟติดผม Hello Kitty', 'อัปเดตแฟชั่นสำหรับทรงผมของคุณด้วยชุดกิ๊บติดผม จากแบรนด์ SANRIO มาพร้อมกับตัวละครสุดน่ารักจาก SANRIO เพิ่มความน่ารักให้กับชุดของคุณ', 242, 'https://backend.central.co.th/media/catalog/product/c/d/cds81335565-1.jpg?impolicy=resize&width=553'),
(21, 'SANRIO กิ๊ฟหนีบผม My Melody', 'อัปเดตแฟชั่นสำหรับทรงผมของคุณด้วยชุดกิ๊บติดผม จากแบรนด์ SANRIO มาพร้อมกับตัวละครสุดน่ารักจาก SANRIO เพิ่มความน่ารักให้กับชุดของคุณ', 242, 'https://backend.central.co.th/media/catalog/product/c/d/cds83822209-1.jpg?impolicy=resize&width=553'),
(22, 'SANRIO ชุดกระเป๋า4ชิ้น Pom Pom Purin', 'กระเป๋าใส่ของ คุณภาพดี จากแบรนด์ SANRIO พร้อมการันตีกับความน่ารัก 100%!!! ด้วยลายตัวการ์ตูนยอดนิยมของแบรนด์ที่ครองใจหลายๆคนได้อย่างอยู่หมัด', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds91379375-1.jpg?impolicy=resize&width=553'),
(23, 'SANRIO ชุดกระเป๋า4ชิ้น Cinnamoroll', 'กระเป๋าใส่ของ คุณภาพดี จากแบรนด์ SANRIO พร้อมการันตีกับความน่ารัก 100%!!! ด้วยลายตัวการ์ตูนยอดนิยมของแบรนด์ที่ครองใจหลายๆคนได้อย่างอยู่หมัด', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds91379382-1.jpg?impolicy=resize&width=553'),
(24, 'SANRIO ชุดกระเป๋า4ชิ้น My Melody', 'กระเป๋าใส่ของ คุณภาพดี จากแบรนด์ SANRIO พร้อมการันตีกับความน่ารัก 100%!!! ด้วยลายตัวการ์ตูนยอดนิยมของแบรนด์ที่ครองใจหลายๆคนได้อย่างอยู่หมัด', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds91379368-1.jpg?impolicy=resize&width=553'),
(25, 'SANRIO รองเท้าเด็กแบบสวม My Melody Basic', 'รองเท้าเด็กแบบสวม My Melody Basic จากแบรนด์ SANRIO มาพร้อมคาแรคเตอร์ สุดน่ารัก ผลิตจากวัสดุคุณภาพดี เคลื่อนไหวได้อย่างคล่องตัว สะดวกสบายทุกครั้งทำได้สวมใส่', 329, 'https://backend.central.co.th/media/catalog/product/c/d/cds89242988-1.jpg?impolicy=resize&width=553'),
(26, 'SANRIO รองเท้าเด็กแบบสวม Hello kitty Basic', 'รองเท้าเด็กแบบสวม Hello kitty Basic จากแบรนด์ SANRIO มาพร้อมคาแรคเตอร์ สุดน่ารัก ผลิตจากวัสดุคุณภาพดี เคลื่อนไหวได้อย่างคล่องตัว สะดวกสบายทุกครั้งทำได้สวมใส่', 329, 'https://backend.central.co.th/media/catalog/product/c/d/cds89242933-1.jpg?impolicy=resize&width=553'),
(27, 'SANRIO พวงกุญแจ Hello Kitty Key Chain W/Clip', 'พวงกุญแจ จากแบรนด์ SANRIO', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds91379184-1.jpg?impolicy=resize&width=553'),
(28, 'SANRIO พวงกุญแจ My Melody Key Chain W/Clip', 'พวงกุญแจ จากแบรนด์ SANRIO', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds91379191-1.jpg?impolicy=resize&width=553'),
(29, 'SANRIO ปากกา Mascot B-Point Hello Kitty', 'ปากกา จากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่ถูกออกแบบมาอย่างพิถีพิถัน ผลิตจากวัสดุคุณภาพดี แข็งแรงทนทาน สามารถใช้งานได้อย่างยาวนาน', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds89443095-1.jpg?impolicy=resize&width=553'),
(30, 'SANRIO ปากกา Mascot B-Point Pochacco', 'ปากกา จากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่ถูกออกแบบมาอย่างพิถีพิถัน ผลิตจากวัสดุคุณภาพดี แข็งแรงทนทาน สามารถใช้งานได้อย่างยาวนาน', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds89443149-1.jpg?impolicy=resize&width=553'),
(31, 'SANRIO พวงกุญแจ Kawaik Kuromi', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์ที่แสนน่ารัก สีสันสดใส มาพร้อมกับคาแรคเตอร์สุดโปรดที่คุณหนู ๆ จะต้องชื่นชอบ', 420, 'https://backend.central.co.th/media/catalog/product/c/d/cds90670787-1.jpg?impolicy=resize&width=553'),
(32, 'SANRIO พวงกุญแจ Kawaik My Melody', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์ที่แสนน่ารัก สีสันสดใส มาพร้อมกับคาแรคเตอร์สุดโปรดที่คุณหนู ๆ จะต้องชื่นชอบ', 420, 'https://backend.central.co.th/media/catalog/product/c/d/cds90670756-1.jpg?impolicy=resize&width=553'),
(33, 'SANRIO แฟ้มกระดุม Clear My Melody', 'แฟ้มกระดุม Clear My Melody จากแบรนด์ SANRIO ใช้เก็บเอกสารให้เป็นระเบียบ', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds86042192-1.jpg?impolicy=resize&width=553'),
(34, 'SANRIO แฟ้มกระดุม Clear Cinnamoroll', 'แฟ้มกระดุม Clear Cinnamoroll จากแบรนด์ SANRIO ใช้เก็บเอกสารให้เป็นระเบียบ', 212, 'https://backend.central.co.th/media/catalog/product/c/d/cds86042208-1.jpg?impolicy=resize&width=553'),
(35, 'SANRIO สมุดโน้ต Cinnamoroll', 'สมุดโน้ต Cinnamoroll จากแบรนด์ SANRIO สินค้าทำจากกระดาษปอนด์ วัสดุคุณภาพดี เนื้อในกระดาษถนอมสายตาได้ดี ลายคมชัด ใช้งานง่าย ทนทาน แข็งแรง', 129, 'https://backend.central.co.th/media/catalog/product/c/d/cds85938670-1.jpg?impolicy=resize&width=553'),
(36, 'SANRIO สมุดโน้ต Hello Kitty', 'สมุดโน้ต Hello Kitty จากแบรนด์ SANRIO สินค้าทำจากกระดาษปอนด์ วัสดุคุณภาพดี เนื้อในกระดาษถนอมสายตาได้ดี ลายคมชัด ใช้งานง่าย ทนทาน แข็งแรง', 129, 'https://backend.central.co.th/media/catalog/product/c/d/cds85938663-1.jpg?impolicy=resize&width=553'),
(37, 'SANRIO พวงกุญแจ W/Mascot: Tulip Kuromi', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 590, 'https://backend.central.co.th/media/catalog/product/c/d/cds89955208-1.jpg?impolicy=resize&width=553'),
(38, 'SANRIO พวงกุญแจ W/Mascot: Bad Badtz-Maru', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 590, 'https://backend.central.co.th/media/catalog/product/c/d/cds89955260-1.jpg?impolicy=resize&width=553'),
(39, 'SANRIO พวงกุญแจ W/Mascot: Tulip My Melody', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 590, 'https://backend.central.co.th/media/catalog/product/c/d/cds89955192-1.jpg?impolicy=resize&width=553'),
(40, 'SANRIO พวงกุญแจ Flower Mascot: Hello Kitty', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 361, 'https://backend.central.co.th/media/catalog/product/c/d/cds90087912-1.jpg?impolicy=resize&width=553'),
(41, 'SANRIO พวงกุญแจ Flower Mascot: Kuromi', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 361, 'https://backend.central.co.th/media/catalog/product/c/d/cds90087950-1.jpg?impolicy=resize&width=553'),
(42, 'SANRIO พวงกุญแจ Flower Mascot: Pompompurin', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 361, 'https://backend.central.co.th/media/catalog/product/c/d/cds90087936-1.jpg?impolicy=resize&width=553'),
(43, 'SANRIO พวงกุญแจ Flower Mascot: My Melody', 'พวงกุญแจจากแบรนด์ SANRIO ดีไซน์น่ารัก สีสันสดใส ที่มาพร้อมกับคาแรคเตอร์แสนน่ารักที่เหล่าสาวกซานริโอ้จะต้องถูกใจ ผลิตจากวัสดุที่มีคุณภาพ ตอบโจทย์การใช้งานได้หลากหลายตามสไตล์การใช้ชีวิตของคุณ', 361, 'https://backend.central.co.th/media/catalog/product/c/d/cds90087929-1.jpg?impolicy=resize&width=553'),
(44, 'SANRIO กระเป๋าใส่กล่องข้าว Mewkledreamy Rainbow Lunch', 'กระเป๋าใส่กล่องข้าวจากแบรนด์ SANRIO ที่มาพร้อมกับดีไซน์น่ารัก ลวดลายตัวการ์ตูนขวัญใจคุณหนู ๆ และยังเต็มไปด้วยฟังก์ชันการใช้งานที่ครบครัน ตอบโจทย์การใช้งานได้อย่างลงตัว', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds89442869-1.jpg?impolicy=resize&width=553'),
(45, 'SANRIO กระเป๋าใส่กล่องข้าว My Melody Face Lunch', 'กระเป๋าใส่กล่องข้าวจากแบรนด์ SANRIO ที่มาพร้อมกับดีไซน์น่ารัก ลวดลายตัวการ์ตูนขวัญใจคุณหนู ๆ และยังเต็มไปด้วยฟังก์ชันการใช้งานที่ครบครัน ตอบโจทย์การใช้งานได้อย่างลงตัว', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds89442845-1.jpg?impolicy=resize&width=553'),
(46, 'SANRIO กระเป๋าใส่กล่องข้าว Hello Kitty Face Lunch', 'กระเป๋าใส่กล่องข้าวจากแบรนด์ SANRIO ที่มาพร้อมกับดีไซน์น่ารัก ลวดลายตัวการ์ตูนขวัญใจคุณหนู ๆ และยังเต็มไปด้วยฟังก์ชันการใช้งานที่ครบครัน ตอบโจทย์การใช้งานได้อย่างลงตัว', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds89442838-1.jpg?impolicy=resize&width=553'),
(47, 'SANRIO กระเป๋าใส่กล่องข้าว Cinnamoroll Face Lunch', 'กระเป๋าใส่กล่องข้าวจากแบรนด์ SANRIO ที่มาพร้อมกับดีไซน์น่ารัก ลวดลายตัวการ์ตูนขวัญใจคุณหนู ๆ และยังเต็มไปด้วยฟังก์ชันการใช้งานที่ครบครัน ตอบโจทย์การใช้งานได้อย่างลงตัว', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds89442852-1.jpg?impolicy=resize&width=553'),
(48, 'SANRIO พวงกุญแจมีไฟ Pompompurin', 'พวงกุญแจมีไฟ จากแบรนด์ SANRIO มีด้ามจับและแบตเตอรี่ สามารถแสดงเป็นไฟขนาดเล็กได้ รวมแบตเตอรี่เปลี่ยนได้ ลายน่ารัก ใช้งานง่ายพกพาสะดวกไปได้ทุกที่', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds88783666-1.jpg?impolicy=resize&width=553'),
(49, 'SANRIO พวงกุญแจมีไฟ Hello Kitty', 'พวงกุญแจมีไฟ จากแบรนด์ SANRIO มีด้ามจับและแบตเตอรี่ สามารถแสดงเป็นไฟขนาดเล็กได้ รวมแบตเตอรี่เปลี่ยนได้ ลายน่ารัก ใช้งานง่ายพกพาสะดวกไปได้ทุกที่', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds88783635-1.jpg?impolicy=resize&width=553'),
(50, 'SANRIO พวงกุญแจมีไฟ My Melody', 'พวงกุญแจมีไฟ จากแบรนด์ SANRIO มีด้ามจับและแบตเตอรี่ สามารถแสดงเป็นไฟขนาดเล็กได้ รวมแบตเตอรี่เปลี่ยนได้ ลายน่ารัก ใช้งานง่ายพกพาสะดวกไปได้ทุกที่', 297, 'https://backend.central.co.th/media/catalog/product/c/d/cds88783642-1.jpg?impolicy=resize&width=553');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
