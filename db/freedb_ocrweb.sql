-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: sql.freedb.tech
-- Generation Time: Mar 15, 2024 at 10:23 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedb_ocrweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `surname` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `surname`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Himanshu', 'Dhameliya', 'tst@gmail.com', 'Regrading mivi daupods K5', 'Himanshu is very telented😎', '2024-03-13 07:55:25', '2024-03-14 07:08:58'),
(2, 'Harit', 'Tilawat', 'test@gmail.com', 'Project', 'project running very well', '2024-03-13 08:45:06', '2024-03-13 08:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `max_credit` int NOT NULL DEFAULT '10',
  `available_credit` int NOT NULL DEFAULT '5',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `user_id`, `max_credit`, `available_credit`, `created_at`, `updated_at`) VALUES
(0, 'f99193ea-371c-4a02-ae42-3a44824fee6a', 10, 10, '2024-03-02 07:06:49', '2024-03-14 06:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` varchar(100) NOT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `file_size` varchar(50) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ocr_text` text,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_archive` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `image_url`, `file_size`, `file_type`, `file_name`, `created_at`, `updated_at`, `ocr_text`, `is_deleted`, `is_archive`) VALUES
('062a3bc2-ba3e-4151-bda7-5aa2013a4089', '017c4731-1ba5-4f41-b512-d5573d9c25db', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-13 13:54:48', '2024-03-13 13:54:48', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 0),
('0e848c0f-635f-4e2d-8d48-3b493cf11c69', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/image1.jpg', '7402', 'image/jpeg', 'image1.jpg', '2024-03-12 11:58:50', '2024-03-15 05:19:36', 'It was the best of\ntimes, it was the worst\nof times, it was the age\nof wisdom, it was the\nage of foolishness...', 0, 1),
('2c858d4f-2c62-40cd-bd7c-68e723d936eb', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/invoice2.jpg', '23185', 'image/jpeg', 'invoice2.jpg', '2024-03-09 15:25:14', '2024-03-11 04:49:22', 'Stanford Plumbing & Heating				INVOICE\n123 Madison drive, Seattle, WA, 7829Q\nwww.plumbingstanford.com\n990-120-4560\n\nBILL TO									Invoice No:	#INV02081\nAllen Smith								Invoice Date:	11/11/18\n87 Private st, Seattle, WA							Due Date:	12/01/18\nallen@gmail.com\n990-302-1898\n\nDESCRIPTION			QTY/HR	UNIT PRICE	TOTAL\nInstalled new kitchen sink (hours)				3		50.00	150.00\nToto sink						1		500.00	500.00\nWorcester greenstar magnetic system filter			1		190.00	190.00\nNest smart thermostat					1		250.00	250.00\nWorcester Greenstar 30i					1		1500.00	1500.00\n\n	SUBTOTAL	2590.00\n\n	DISCOUNT	50.00\n	SUBTOTAL LESS DISCOUNT	2540.00\nTank you for your business!\n	TAX RATE	12.00%\n	TOTAL TAX	304.80\n	Balance Due $ 2,844.80\n\nTerms & Instructions\nPlease pay within 20 days by PayPal (bob@stanfordplumbing.com)\nInstalled products have 5 year warranty.', 1, 1),
('3003d369-045b-4c65-a141-3388275cf31f', '017c4731-1ba5-4f41-b512-d5573d9c25db', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-13 13:43:57', '2024-03-13 13:43:57', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 0),
('31adadee-3454-4dd1-884c-d6d2e9cc6c63', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-09 15:23:56', '2024-03-12 13:16:56', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 0),
('354a5615-5cad-4d36-9a75-be9f3072b58f', '017c4731-1ba5-4f41-b512-d5573d9c25db', '/uploads/files/dmart_invoice.png', '139406', 'image/png', 'dmart_invoice.png', '2024-03-09 15:07:29', '2024-03-14 04:44:02', 'D*Mart		Avenue E-Commerce Limited		TAX INVOICE\nAvenue E-Commerce Ltd. Survey No. 6, Hissa No. 15, Barave Village Near Godrej Hill,	AAD00820H0008975\nKhadakpada, Kalyan West, Thane Maharashtra -421301\n\nORDER NUMBER:	19881296	INVOICE DATE: 14/08/20	CUSTOMER NAME:	Mairaj Kaisar\n	MOBILE NUMBER:	7507099228\nORDER DATE:	12/08/20\n	DELIVERY MODE:	HOME DELIVERY\nDELIVERY DATE:	14/08/20\n	Panvelkar Aqua Marine,\n	DELIVERY ADDRESS:\nDELIVERY TIME:	10:00 AM - 5:00 PM						Marino-104Landmark: Tulsa\n	GardenChikholi Badlapur\nPAYMENT MODE:	PRE-PAID\n	421501\nTOTAL ITEMS:	10	TOTAL QUANTITY:	16\n\nSR	TAX\n	RATE	VALUE\nHSN				ITEM(S) PURCHASED			QTY\nNO.	CATEGORY\n	(Rs.)	(Rs.)\n\nCRATE ID: 00009595951010581663\n\n1.	19054000	2	Britannia Tostea Pro Bake Rusk - 400gm				1.0	38.00	38.00\n\n2.	34013090	4	Colgate Max Fresh Peppermint Ice 300 Gm				1.0	109.00	109.00\n\n3.	09042211	2	Everest Tikhalal Chilly Pwdr-200gm					2.0	68.00	136.00\n\n4.	12040090	2	Premia Alsi 100gm						3.0	10.00	30.00\n\n5.	07139010	1	Turdal Latur - 1kg						1.0	112.00	112.00\n\n6.	34054000	4	Vim Dishwash Bar(3X200gm) 600 gm					1.0	35.00	35.00\nCRATE ID:	00009595951010581666\n\n7.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID: 00009595951010581668\n\n8.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID:	00009595951010581670\n\n9.	4059020	3	Aabad Desi Cow Ghee Pouch 1L					1.0	369.00	369.00\n\n10.	15149920	2	Dhara Kachighani (Mustrd) Oil - 1L					2.0	134.00	268.00\n\n=\n11.	15121910	2	Fortune Sunlite Ref Sunflower Oil - 11					2.0	111.00	222.00', 0, 1),
('48ce959e-0d0f-4a43-bd82-f735e2f08fe4', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/examp-cg.png', '195981', 'image/png', 'examp-cg.png', '2024-03-12 11:55:37', '2024-03-15 05:19:45', 'SUTEX BANK COLLEGE OF COMPUTER APPLICATIONS & SCIENCE, AMROLI\n	T.Y.B.C.A. Programme\nINTERNAL EXAMINATION\n\nSemester: Sixth\n	Academic Year: 2022-23\nSubject: COMPUTER GRAPHICS (601)\n	Time: 2HRS\nMarks: 50\n\nQ1. Write answers of the following. [2 Marks of each]		[10]\n\n1.	Explain Computer Graphics standards: CGI and CGM\n2.	Name any two file formats that store both raster and vector graphics.\n3.	What is the need of homogeneous coordinates?\n4.	Explain DVST in detail.\n5.	What is Polygon? Define the types of Polygons.\n6.	What is frame buffer?\n7.	Define terms: Symmetric Matrix, Diagonal Matrix\nQ2. Answer the Following questions in brief. [Any 3]			[21]\n\n1. What is DDA algorithm? Explain Bresenham algorithm of line generation.\n2.	Discuss the inside test method which works efficiently with overlapped\npolygon.\n3.	What are the applications of computer graphics?\n4.	What is transformation? Derive matrix for rotation about origin 0°\nanticlockwise with explanation.\nQ3. Answer the following in detail. [Any 2]				[12]\n1. Write a short note on Color CRT.\n2.	Differentiate between Vector Scan display and Raster Scan display.\n3.	Explain Any of the polygon area filling algorithm.\nQ3. Do as directed.							[07]\n\n1.	Derive a 2X2 transformation matrix for scaling an object 3 timer larger [02]\nhorizontally and reduce half vertically.\n2. Derive a 2X2 transformation matrix for rotating an object in clockwise [02]\ndirection for П/2 degree (sin 90°=1, cos 90°=0)\n3. Derive the 3X3 homogenous coordinates transformation matrix for scaling the [03]\nobject thrice and rotating it anticlockwise direction by 90 degrees.\n	OR\n3.	Explain the reflection transformation with necessary examples.', 0, 1),
('5629e7c4-34e7-4c12-b1eb-7cf45eb4b786', '017c4731-1ba5-4f41-b512-d5573d9c25db', '/uploads/files/sample.pdf', '3028', 'application/pdf', 'sample.pdf', '2024-03-09 12:34:25', '2024-03-09 15:05:37', 'A Simple PDF File\n\nThis is a small demonstration .pdf file -\njust for use in the Virtual Mechanics tutorials. More text. And more\ntext. And more text. And more text. And more text.\n\nAnd more text. And more text. And more text. And more text. And more\ntext. And more text. Boring, zzzzz. And more text. And more text. And\nmore text. And more text. And more text. And more text. And more text.\nAnd more text. And more text.\n\nAnd more text. And more text. And more text. And more text. And more\ntext. And more text. And more text. Even more. Continued on page 2 ...\n\nSimple PDF File 2\n\n...continued from page 1. Yet more text. And more text. And more text.\nAnd more text. And more text. And more text. And more text. And more\ntext. Oh, how boring typing this stuff. But not as boring as watching\npaint dry. And more text. And more text. And more text. And more text.\nBoring. More, a little more text. The end, and just as well.', 0, 1),
('594849f1-f7ca-4cdb-9c07-5da5d4544402', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-12 11:46:53', '2024-03-15 05:19:48', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 1),
('672fa935-f107-417b-b443-334ebb3f5448', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-12 11:56:11', '2024-03-15 05:19:39', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 1),
('73e01f4f-7b2f-429a-b2aa-578ef2b3d43a', '017c4731-1ba5-4f41-b512-d5573d9c25db', '/uploads/files/test1.jpg', '136151', 'image/jpeg', 'test1.jpg', '2024-03-09 12:32:55', '2024-03-09 15:06:21', 'Name:\nSimple Present Test\n\n1. I		(study) English every day.\n2. We		(teach) English.\n3. He		(pay) me well.\n4. Danielle		(fly) to Paris once a year.\n5. She never		(do) her homework.\n6. This girl always		(push) somebody.\n7. They		(want) to do something special tonight.\n8. David never.		(mix) eggs and vinegar together.\n9. The room.		(to be) on fire.\n10. I usually.		(help) my mother cook.\n11. You still		(believe) in Santa Claus.\n12. My neighbour.	(have) a new car.\n13. My sister		(speak) Spanish.\n14. Frank		(go) to work every day.\n15. Martha and Paul		(swim) twice a week.\n16. John never.		(leave) the country.\n17. Summer		(be) hot.\n18. He		(miss) her a lot.\n19. I		(like) you.\n20. Stella		(sing) \"Let it go\".\n\nliveworksheets.com', 0, 1),
('751885d8-8853-4d20-ba0d-99afef4fb0fd', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-09 12:31:31', '2024-03-09 14:53:25', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 1, 1),
('763aaf0d-cc1e-46fc-b8b1-aecbcc1ed23b', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/test1.jpg', '136151', 'image/jpeg', 'test1.jpg', '2024-03-09 15:08:11', '2024-03-12 13:17:01', 'Name:\nSimple Present Test\n\n1. I		(study) English every day.\n2. We		(teach) English.\n3. He		(pay) me well.\n4. Danielle		(fly) to Paris once a year.\n5. She never		(do) her homework.\n6. This girl always		(push) somebody.\n7. They		(want) to do something special tonight.\n8. David never.		(mix) eggs and vinegar together.\n9. The room.		(to be) on fire.\n10. I usually.		(help) my mother cook.\n11. You still		(believe) in Santa Claus.\n12. My neighbour.	(have) a new car.\n13. My sister		(speak) Spanish.\n14. Frank		(go) to work every day.\n15. Martha and Paul		(swim) twice a week.\n16. John never.		(leave) the country.\n17. Summer		(be) hot.\n18. He		(miss) her a lot.\n19. I		(like) you.\n20. Stella		(sing) \"Let it go\".\n\nliveworksheets.com', 0, 0),
('76b28587-58c4-488a-ac5b-fde4433eb86f', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/invoice5.jpg', '36717', 'image/jpeg', 'invoice5.jpg', '2024-03-12 11:37:33', '2024-03-12 11:37:33', 'Ted\'s\n	Date:\n	Estimate Number:\n	Estimate For:\nSmall Business\n\nFrom									To\n\nTed\'s Small Business						Sally Yessler\n1324 Alameda St							301 W Spring St\nLos Angeles, California						Los Angeles, California\nUnited States							United States\n90015								90015\n(213) 123-4567							(213) 567-1234\n\nDescription			Unit Cost	Rate/Hr	Total\nBrand Logo					$2,000.00				$2,000.00\nWebsite Design					$3,450.00				$3,450.00\nWebsite Maintenance				$50.00/hr	30 hours	$1,500.00\nItem Name						$0.00		$0.00		$0.00\n\nItem Name						$0.00		$0.00		$0.00\nItem Name						$0.00		$0.00		$0.00\n\nItem Name						$0.00		$0.00		$0.00\n\nItem Name						$0.00		$0.00		$0.00\nItem Name						$0.00		$0.00		$0.00\n\nNotes\n\nSuch a pleasure working with you on this. Excited\nto start on the next project!\n	Subtotal	$6,950.00\n\n	Discount	$0.00\n	Subtotal (discount)	$0.00\n\n	Tax rate	$0.00\n\n	Total tax	$0.00\n\n	Total estimate	$6,950.00\n\nTemplate courtesy of TrulySmall.com', 0, 0),
('8ecaaf47-6f2d-4c56-bd5e-5b7babe199f7', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-12 12:01:54', '2024-03-15 05:19:29', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 1),
('96d940bd-1d7c-4909-87e9-adadada3eb69', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-12 11:45:50', '2024-03-15 05:19:54', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 1),
('9c88757d-ada4-409e-88a9-63f9fd5a4137', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/sql.jpg', '556432', 'image/jpeg', 'sql.jpg', '2024-03-09 12:31:54', '2024-03-09 14:53:58', 'Example\n\nBEGIN\nWHILE (SELECT MIN(emp_salary) FROM employee) < 80000\nBEGIN\nUPDATE employee SET emp_salary = emp_salary + 10000;\nPRINT \'Salary updated\';\nIF ( SELECT MIN(emp_salary) FROM employee) >= 80000\nPRINT \'Min. Salary is greater or equal to 80000.\';\nBREAK;\nEND\nEND', 1, 1),
('a673bd86-ece8-4907-9d3d-5b0c538ab1f2', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/test1.jpg', '136151', 'image/jpeg', 'test1.jpg', '2024-03-12 11:31:40', '2024-03-12 11:31:40', 'Name:\nSimple Present Test\n\n1. I		(study) English every day.\n2. We		(teach) English.\n3. He		(pay) me well.\n4. Danielle		(fly) to Paris once a year.\n5. She never		(do) her homework.\n6. This girl always		(push) somebody.\n7. They		(want) to do something special tonight.\n8. David never.		(mix) eggs and vinegar together.\n9. The room.		(to be) on fire.\n10. I usually.		(help) my mother cook.\n11. You still		(believe) in Santa Claus.\n12. My neighbour.	(have) a new car.\n13. My sister		(speak) Spanish.\n14. Frank		(go) to work every day.\n15. Martha and Paul		(swim) twice a week.\n16. John never.		(leave) the country.\n17. Summer		(be) hot.\n18. He		(miss) her a lot.\n19. I		(like) you.\n20. Stella		(sing) \"Let it go\".\n\nliveworksheets.com', 0, 0),
('ab991bf1-bbc4-4b35-b032-ecac5a9bd45b', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/getcurious-sample.png', '65178', 'image/png', 'getcurious-sample.png', '2024-03-09 12:32:17', '2024-03-12 13:17:06', 'لها\nReach your customers\nwhere they are, with\nvaluable user insights.\n\nWe worked with UserStudy team to\nunderstand the core drives and\nattributes of one our target cohorts.\nThey were able to recruit the right\nparticipants and get some interesting\nconversations going. I would\nrecommend UserStudy to product\nteams who are low on research\nbandwidth or starting out on the\nresearch path.\n\nHimanshu Vishwakarma\nProduct Designer, Simpl\nSimpl', 0, 0),
('b9a4b97a-cd52-4546-9d10-fc0a40736f9b', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/dmart_invoice.png', '139406', 'image/png', 'dmart_invoice.png', '2024-03-12 12:00:18', '2024-03-15 05:19:31', 'D*Mart		Avenue E-Commerce Limited		TAX INVOICE\nAvenue E-Commerce Ltd. Survey No. 6, Hissa No. 15, Barave Village Near Godrej Hill,	AAD00820H0008975\nKhadakpada, Kalyan West, Thane Maharashtra -421301\n\nORDER NUMBER:	19881296	INVOICE DATE: 14/08/20	CUSTOMER NAME:	Mairaj Kaisar\n	MOBILE NUMBER:	7507099228\nORDER DATE:	12/08/20\n	DELIVERY MODE:	HOME DELIVERY\nDELIVERY DATE:	14/08/20\n	Panvelkar Aqua Marine,\n	DELIVERY ADDRESS:\nDELIVERY TIME:	10:00 AM - 5:00 PM						Marino-104Landmark: Tulsa\n	GardenChikholi Badlapur\nPAYMENT MODE:	PRE-PAID\n	421501\nTOTAL ITEMS:	10	TOTAL QUANTITY:	16\n\nSR	TAX\n	RATE	VALUE\nHSN				ITEM(S) PURCHASED			QTY\nNO.	CATEGORY\n	(Rs.)	(Rs.)\n\nCRATE ID: 00009595951010581663\n\n1.	19054000	2	Britannia Tostea Pro Bake Rusk - 400gm				1.0	38.00	38.00\n\n2.	34013090	4	Colgate Max Fresh Peppermint Ice 300 Gm				1.0	109.00	109.00\n\n3.	09042211	2	Everest Tikhalal Chilly Pwdr-200gm					2.0	68.00	136.00\n\n4.	12040090	2	Premia Alsi 100gm						3.0	10.00	30.00\n\n5.	07139010	1	Turdal Latur - 1kg						1.0	112.00	112.00\n\n6.	34054000	4	Vim Dishwash Bar(3X200gm) 600 gm					1.0	35.00	35.00\nCRATE ID:	00009595951010581666\n\n7.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID: 00009595951010581668\n\n8.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID:	00009595951010581670\n\n9.	4059020	3	Aabad Desi Cow Ghee Pouch 1L					1.0	369.00	369.00\n\n10.	15149920	2	Dhara Kachighani (Mustrd) Oil - 1L					2.0	134.00	268.00\n\n=\n11.	15121910	2	Fortune Sunlite Ref Sunflower Oil - 11					2.0	111.00	222.00', 0, 1),
('b9e709df-0f19-433e-a22a-524196fc6c1d', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/dmart_invoice.png', '139406', 'image/png', 'dmart_invoice.png', '2024-03-12 12:01:49', '2024-03-15 05:19:42', 'D*Mart		Avenue E-Commerce Limited		TAX INVOICE\nAvenue E-Commerce Ltd. Survey No. 6, Hissa No. 15, Barave Village Near Godrej Hill,	AAD00820H0008975\nKhadakpada, Kalyan West, Thane Maharashtra -421301\n\nORDER NUMBER:	19881296	INVOICE DATE: 14/08/20	CUSTOMER NAME:	Mairaj Kaisar\n	MOBILE NUMBER:	7507099228\nORDER DATE:	12/08/20\n	DELIVERY MODE:	HOME DELIVERY\nDELIVERY DATE:	14/08/20\n	Panvelkar Aqua Marine,\n	DELIVERY ADDRESS:\nDELIVERY TIME:	10:00 AM - 5:00 PM						Marino-104Landmark: Tulsa\n	GardenChikholi Badlapur\nPAYMENT MODE:	PRE-PAID\n	421501\nTOTAL ITEMS:	10	TOTAL QUANTITY:	16\n\nSR	TAX\n	RATE	VALUE\nHSN				ITEM(S) PURCHASED			QTY\nNO.	CATEGORY\n	(Rs.)	(Rs.)\n\nCRATE ID: 00009595951010581663\n\n1.	19054000	2	Britannia Tostea Pro Bake Rusk - 400gm				1.0	38.00	38.00\n\n2.	34013090	4	Colgate Max Fresh Peppermint Ice 300 Gm				1.0	109.00	109.00\n\n3.	09042211	2	Everest Tikhalal Chilly Pwdr-200gm					2.0	68.00	136.00\n\n4.	12040090	2	Premia Alsi 100gm						3.0	10.00	30.00\n\n5.	07139010	1	Turdal Latur - 1kg						1.0	112.00	112.00\n\n6.	34054000	4	Vim Dishwash Bar(3X200gm) 600 gm					1.0	35.00	35.00\nCRATE ID:	00009595951010581666\n\n7.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID: 00009595951010581668\n\n8.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID:	00009595951010581670\n\n9.	4059020	3	Aabad Desi Cow Ghee Pouch 1L					1.0	369.00	369.00\n\n10.	15149920	2	Dhara Kachighani (Mustrd) Oil - 1L					2.0	134.00	268.00\n\n=\n11.	15121910	2	Fortune Sunlite Ref Sunflower Oil - 11					2.0	111.00	222.00', 0, 1),
('bde55bc9-aa06-4e42-97b0-12340b41ea4c', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/image1.jpg', '7402', 'image/jpeg', 'image1.jpg', '2024-03-12 11:15:21', '2024-03-12 11:15:21', 'It was the best of\ntimes, it was the worst\nof times, it was the age\nof wisdom, it was the\nage of foolishness...', 0, 0),
('c91402b6-6e3f-4c54-b8c5-659673146328', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-11 05:28:17', '2024-03-12 13:16:40', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 0),
('d6ffd682-b7d9-4eff-b9b6-42222335fba0', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/image1.jpg', '7402', 'image/jpeg', 'image1.jpg', '2024-03-12 11:59:30', '2024-03-15 05:19:50', 'It was the best of\ntimes, it was the worst\nof times, it was the age\nof wisdom, it was the\nage of foolishness...', 0, 1),
('d746c38f-51d5-4dd4-b723-97255245276e', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-12 11:32:16', '2024-03-12 11:32:16', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 0),
('d8f3beaf-6dc3-40df-b68e-41491569744a', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/dmart_invoice.png', '139406', 'image/png', 'dmart_invoice.png', '2024-03-12 11:54:44', '2024-03-15 05:19:56', 'D*Mart		Avenue E-Commerce Limited		TAX INVOICE\nAvenue E-Commerce Ltd. Survey No. 6, Hissa No. 15, Barave Village Near Godrej Hill,	AAD00820H0008975\nKhadakpada, Kalyan West, Thane Maharashtra -421301\n\nORDER NUMBER:	19881296	INVOICE DATE: 14/08/20	CUSTOMER NAME:	Mairaj Kaisar\n	MOBILE NUMBER:	7507099228\nORDER DATE:	12/08/20\n	DELIVERY MODE:	HOME DELIVERY\nDELIVERY DATE:	14/08/20\n	Panvelkar Aqua Marine,\n	DELIVERY ADDRESS:\nDELIVERY TIME:	10:00 AM - 5:00 PM						Marino-104Landmark: Tulsa\n	GardenChikholi Badlapur\nPAYMENT MODE:	PRE-PAID\n	421501\nTOTAL ITEMS:	10	TOTAL QUANTITY:	16\n\nSR	TAX\n	RATE	VALUE\nHSN				ITEM(S) PURCHASED			QTY\nNO.	CATEGORY\n	(Rs.)	(Rs.)\n\nCRATE ID: 00009595951010581663\n\n1.	19054000	2	Britannia Tostea Pro Bake Rusk - 400gm				1.0	38.00	38.00\n\n2.	34013090	4	Colgate Max Fresh Peppermint Ice 300 Gm				1.0	109.00	109.00\n\n3.	09042211	2	Everest Tikhalal Chilly Pwdr-200gm					2.0	68.00	136.00\n\n4.	12040090	2	Premia Alsi 100gm						3.0	10.00	30.00\n\n5.	07139010	1	Turdal Latur - 1kg						1.0	112.00	112.00\n\n6.	34054000	4	Vim Dishwash Bar(3X200gm) 600 gm					1.0	35.00	35.00\nCRATE ID:	00009595951010581666\n\n7.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID: 00009595951010581668\n\n8.	11010000	2	Fortune Chakki Fresh Atta- 10Kg					1.0	339.00	339.00\nCRATE ID:	00009595951010581670\n\n9.	4059020	3	Aabad Desi Cow Ghee Pouch 1L					1.0	369.00	369.00\n\n10.	15149920	2	Dhara Kachighani (Mustrd) Oil - 1L					2.0	134.00	268.00\n\n=\n11.	15121910	2	Fortune Sunlite Ref Sunflower Oil - 11					2.0	111.00	222.00', 0, 1),
('ddd6817e-719d-4174-833c-19790a36ae0a', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-09 12:30:00', '2024-03-12 13:46:13', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 0, 0),
('df0de012-8833-45f1-bab4-80fea51cf636', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/invoice1.jpg', '454818', 'image/jpeg', 'invoice1.jpg', '2024-03-09 13:14:02', '2024-03-12 13:17:04', 'Invoice No. 123456789				Contact\nInvoice Issue Date. 9 Jan 2021\nFinal Payment Date: 12 January 2021			Address:\n	Office Location, state, Country\nInvoice To,					Email:\n	mycompay@dema.com\nFull Name\n	Mobile :\ngtro\nDesignation					+123 456 789 001\nCompany Name					Web:\nMob: 123 456 789					www.company.com\nEamil: Demo@demo.com\n	Quante:\nWeb: www.comp.com			Amount Du	$ 1000.00\n	Amount\nItem Details	Price\n\nPhotoshop		$ 1000.00	01	$ 1000.00\n\n$ 1000.00	01	$1000.\n\nIndesign\n$ 1000.00	01\nOthers\n$ 1000.00	01	$ 1000.00\n	Sub Totals	$4000.00\nPayment Details\n	5% Vat Amt.	$ 0000.00\nEmail: youremail@demo.com\nDabit Card, Credit Card, payment card		10% Tax	$ 0000.00\nBank Account: 123654789\n	Graund Totals	$ 4000.00\nTrem & Condition				Director or Owner\nLorem ipsum dolor sit amet, consectetur			Lorem Ipsum\nadipiscing elit, sed do eiusmod tempor			Full Name Here\nincididunt ut labore et dolore magna\n\n	THANK FOR YOUR BUSINESS!\n	png\n	pngtree\n\npngtree\npngtre', 0, 0),
('e28def57-8099-4db0-b09c-2d043a2576e0', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/test1.jpg', '136151', 'image/jpeg', 'test1.jpg', '2024-03-09 15:00:22', '2024-03-09 15:02:31', 'Name:\nSimple Present Test\n\n1. I		(study) English every day.\n2. We		(teach) English.\n3. He		(pay) me well.\n4. Danielle		(fly) to Paris once a year.\n5. She never		(do) her homework.\n6. This girl always		(push) somebody.\n7. They		(want) to do something special tonight.\n8. David never.		(mix) eggs and vinegar together.\n9. The room.		(to be) on fire.\n10. I usually.		(help) my mother cook.\n11. You still		(believe) in Santa Claus.\n12. My neighbour.	(have) a new car.\n13. My sister		(speak) Spanish.\n14. Frank		(go) to work every day.\n15. Martha and Paul		(swim) twice a week.\n16. John never.		(leave) the country.\n17. Summer		(be) hot.\n18. He		(miss) her a lot.\n19. I		(like) you.\n20. Stella		(sing) \"Let it go\".\n\nliveworksheets.com', 1, 1),
('e4649105-7ad3-4a5c-a572-c2ad7af2e896', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/adhar1.jpg', '154636', 'image/jpeg', 'adhar1.jpg', '2024-03-12 12:02:19', '2024-03-13 13:29:51', 'भारत सरकार\nGovernment of India\nसत्यमेव जयते\nफुरकान		SAMPLE\nFurkan\nजन्म तिथि / DOB : 01/01/2002\nपुरुष / Male\n\n2280 6058\nमेरा आधार, मेरी पहचान', 1, 1),
('e5997d1b-bac1-4a6e-9e96-bc32e7719e95', 'f99193ea-371c-4a02-ae42-3a44824fee6a', '/uploads/files/sql.jpg', '556432', 'image/jpeg', 'sql.jpg', '2024-03-11 13:56:14', '2024-03-11 13:56:14', 'Example\n\nBEGIN\nWHILE (SELECT MIN(emp_salary) FROM employee) < 80000\nBEGIN\nUPDATE employee SET emp_salary = emp_salary + 10000;\nPRINT \'Salary updated\';\nIF ( SELECT MIN(emp_salary) FROM employee) >= 80000\nPRINT \'Min. Salary is greater or equal to 80000.\';\nBREAK;\nEND\nEND', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `rating`, `comment`, `created_at`) VALUES
(1, 1, 5, 'Great experience!', '2024-03-14 06:40:13'),
(2, 2, 4, 'Good service, but could be faster.', '2024-03-14 06:40:13'),
(3, 3, 3, 'Average experience.', '2024-03-14 06:40:13'),
(4, 4, 2, 'Needs improvement.', '2024-03-14 06:40:13'),
(5, 5, 1, 'Very disappointed with the service.', '2024-03-14 06:40:13'),
(6, 6, 5, 'Great expirence!!', '2024-03-14 16:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int NOT NULL,
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `maxUploads` int NOT NULL,
  `export_excel` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `plan_name`, `description`, `price`, `maxUploads`, `export_excel`, `created_at`, `updated_at`) VALUES
(1, 'Free', 'Free plan with limited features', 0.00, 10, 0, '2024-03-14 06:33:00', '2024-03-14 06:35:05'),
(2, 'Pro', 'Professional plan with advanced features', 399.00, 100, 1, '2024-03-14 06:33:00', '2024-03-14 06:43:35'),
(3, 'Premium', 'Premium plan with unlimited features', 699.00, -1, 1, '2024-03-14 06:33:00', '2024-03-14 06:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`) VALUES
(4, 'himanshu', 'himanshu@gmail.com'),
(5, 'himanshu', 'harsh@gmail.com'),
(6, 'bhbhbhjnkn', 'test@gmail.com'),
(7, 'himanshu', 'himanshu@gmail.com'),
(8, 'himanshu', 'himanshu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `lastname` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(50) NOT NULL DEFAULT 'USER',
  `last_login` datetime DEFAULT CURRENT_TIMESTAMP,
  `profile_img` varchar(1000) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `ref_code` varchar(50) NOT NULL,
  `country` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `username`, `email`, `password`, `created_at`, `updated_at`, `type`, `last_login`, `profile_img`, `is_active`, `ref_code`, `country`) VALUES
('017c4731-1ba5-4f41-b512-d5573d9c25db', 'jenil', NULL, 'jenil', 'jenil@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-05 12:58:32', '2024-03-05 12:58:32', 'USER', '2024-03-05 12:58:32', NULL, 0, '', 'India'),
('41f324db-976c-4671-b11d-0a1b4b416519', 'raj', NULL, 'raj', 'raj@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-11 18:35:14', '2024-03-11 18:35:14', 'USER', '2024-03-11 18:35:14', NULL, 0, 'OZYTQAMT', 'Germany'),
('f99193ea-371c-4a02-ae42-3a44824fee6a', 'Harit', NULL, 'harit', 'harit@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-02 07:06:40', '2024-03-02 07:06:40', 'ADMIN', '2024-03-02 07:06:40', NULL, 0, 'ABCDEF', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credits_fk` (`user_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`,`updated_at`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
