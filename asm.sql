-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: asm
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `p_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `p_qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `Pro_img` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `user_fk` (`username`),
  KEY `abc` (`p_id`),
  CONSTRAINT `abc` FOREIGN KEY (`p_id`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `user_fk` FOREIGN KEY (`username`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'admin','P001',1,'2022-05-05','product-1.jpg');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Cat_ID` varchar(10) NOT NULL,
  `Cat_Name` varchar(30) NOT NULL,
  `Gallery` varchar(50) NOT NULL,
  `Cat_Des` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Cat_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('C001','T-shirt','gallery-1-1.jpg','P001'),('C002','T-shirt','gallery-1-2.jpg','P001'),('C003','T-shirt','gallery-1-3.jpg','P001'),('C004','T-shirt','gallery-1-4.jpg','P001'),('C005','T-shirt','gallery-2-1.jpg','P002'),('C006','T-shirt','gallery-2-2.jpg','P002'),('C007','T-shirt','gallery-2-3.jpg','P002'),('C008','T-shirt','gallery-2-4.jpg','P002'),('C009','T-shirt','gallery-3-1.jpg','P003'),('C010','T-shirt','gallery-3-2.jpg','P003'),('C011','T-shirt','gallery-3-3.jpg','P003'),('C012','T-shirt','gallery-3-4.jpg','P003'),('C013','T-shirt','gallery-4-1.jpg','P004'),('C014','T-shirt','gallery-4-2.jpg','P004'),('C015','T-shirt','gallery-4-3.jpg','P004'),('C016','T-shirt','gallery-4-4.jpg','P004'),('C017','T-shirt','gallery-5-1.jpg','P005'),('C018','T-shirt','gallery-5-2.jpg','P005'),('C019','T-shirt','gallery-5-3.jpg','P005'),('C020','T-shirt','gallery-5-4.jpg','P005'),('C021','T-shirt','gallery-6-1.jpg','P006'),('C022','T-shirt','gallery-6-2.jpg','P006'),('C023','T-shirt','gallery-6-3.jpg','P006'),('C024','T-shirt','gallery-6-4.jpg','P006'),('C025','T-shirt','gallery-7-1.jpg','P007'),('C026','T-shirt','gallery-7-2.jpg','P007'),('C027','T-shirt','gallery-7-3.jpg','P007'),('C028','T-shirt','gallery-7-4.jpg','P007'),('C029','T-shirt','gallery-8-1.jpg','P008'),('C030','T-shirt','gallery-8-2.jpg','P008'),('C031','T-shirt','gallery-8-3.jpg','P008'),('C032','T-shirt','gallery-8-4.jpg','P008');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `gender` int(11) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CusDate` int(11) NOT NULL,
  `CusMonth` int(11) NOT NULL,
  `CusYear` int(11) NOT NULL,
  `SSN` varchar(10) DEFAULT NULL,
  `ActiveCode` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('admin','202cb962ac59075b964b07152d234b70','admin',0,'VietNam','0823456788','admin@store.com',12,12,1990,NULL,'111',1),('Finn','e10adc3949ba59abbe56e057f20f883e','Finn Doe',0,'Can Tho','0903100550','finn.doe@gmail.com',31,8,1980,'','',1),('minh','81dc9bdb52d04dc20036dbd8313ed055','minh',0,'CT','0123456987','minhvvn@gmail.com',17,12,2002,NULL,'123',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderID` varchar(6) NOT NULL,
  `OrderDate` date NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `Address` varchar(200) NOT NULL,
  `Payment` int(11) NOT NULL DEFAULT 0,
  `status` varchar(10) DEFAULT 'packing',
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `username` (`username`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('O111','2022-05-03','2022-05-02','scfsdc',1056,'packing','Finn'),('O112','2022-05-03',NULL,'Can Tho',1204,'packing','Finn'),('O113','2022-05-04',NULL,'Can Tho city',1000,'packing','Finn'),('O114','2022-05-05',NULL,'',2000,'packing','Finn');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_detail` (
  `OrderDetail_ID` varchar(6) CHARACTER SET utf8 NOT NULL,
  `Order_ID` varchar(6) CHARACTER SET utf8 NOT NULL,
  `Product_ID` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Pro_Qty` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`OrderDetail_ID`,`Order_ID`),
  KEY `order_fk` (`Order_ID`),
  KEY `product_fk` (`Product_ID`),
  CONSTRAINT `order_fk` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `product_fk` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES ('1','O114','P002',5,200,1000),('3','O113','P002',1,200,200),('3','O114','P006',1,1000,1000);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Product_ID` varchar(10) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `oldPrice` decimal(12,2) DEFAULT NULL,
  `SmallDesc` varchar(1000) DEFAULT NULL,
  `DetailDesc` text NOT NULL,
  `ProDate` date NOT NULL,
  `Pro_qty` int(11) NOT NULL,
  `Pro_image` varchar(200) NOT NULL,
  `Cat_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `Cat_ID` (`Cat_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`Cat_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P001','Men Red & Black Brand Logo Printed Casual T-shirt',50,0.00,'','Red and black Tshirt for men <br>\r\nBrand logo printed<br>\r\nRegular length<br>\r\nRound neck<br>\r\nShort, regular sleeves<br>\r\nKnitted cotton fabric<br>','2020-07-01',29,'product-1.jpg','C001'),('P002','Men Grey & White Neymar Jr. Evostripe Printed T-Shirt',200,0.00,'','Grey & White T-shirt for men <br>\r\nBrand logo Printed<br>\r\nRegular Length<br>\r\nRound neck<br>\r\nShort regular sleeves<br>\r\nKnitted cotton fabric<br>','2020-07-01',10,'product-2.jpg','C002'),('P003','Women Yellow Downtown Graphic Cotton T-shirt',50,NULL,'','Yellow Tshirt for women <br>\r\nSolid printed<br>\r\nRegular length<br>\r\nRound neck<br>\r\nShort, regular sleeves<br>\r\nKnitted cotton fabric<br>','2022-03-01',100,'product-3.jpg','C002'),('P004','Women Teal Green And Center Logo T-shirt ',50,NULL,'','Teal Green Tshirt for women<br>\r\nSolid<br>\r\nRegular length<br>\r\nRound neck<br>\r\nShort, regular sleeves<br>\r\nKnitted cotton fabric<br>','2022-03-01',100,'product-4.jpg','C002'),('P005','Men Yellow ESS Logo Print Pure Cotton T-Shirt',50,NULL,'','Yellow printed T-shirt<br>\r\nHas a round neck<br>\r\nShort sleeves<br>','2022-03-04',100,'product-5.jpg','C001'),('P006','Men Black Graphic 17 Brand Logo Printed T-shirt',50,NULL,'','Black Tshirt for men<br>\r\nBrand logo printed<br>\r\nRegular length<br>\r\nRound neck<br>\r\nShort, regular sleeves<br>\r\nKnitted cotton fabric<br>','2022-03-01',100,'product-6.jpg','C001'),('P007','Women Pink & White Logo Printed Cotton T-shirt',50,NULL,NULL,'Pink and white Tshirt for women<br>\r\nBrand logo printed<br>\r\nRegular length<br>\r\nRound neck<br>\r\nShort, regular sleeves<br>\r\nKnitted pure cotton fabric <br>\r\n\r\n','2022-03-01',100,'product-7.jpg','C002'),('P008','Women Blue Brand Logo Printed Relaxed Fit T-shirt',50,NULL,'','Blue Tshirt for women <br>\r\nBrand logo printed <br>\r\nRegular length<br>\r\nRound neck<br>\r\nShort, regular sleeves<br>\r\nKnitted polyester fabric<br>','2022-03-01',100,'product-8.jpg','C002');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14  9:09:30
