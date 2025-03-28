-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 12:18 PM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '7815696ecbf1c96e6894b779456d330e', '2025-03-27 07:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 443108139, 'amikt12@gmail.com', 2, '2024-06-08', '2024-06-10', 'I want booking', 1, '2024-06-05 05:32:39', '2024-06-05 05:34:08'),
(2, 881420167, 'test@gmail.com', 3, '2025-03-26', '2025-03-27', 'dsadas', 1, '2025-03-26 15:15:48', '2025-03-26 15:16:18'),
(3, 830801140, 'rj@gmail.com', 21, '2025-03-27', '2025-03-28', 'Pay cash', 1, '2025-03-27 07:15:12', '2025-03-27 07:21:47'),
(4, 107148742, 'pt.licup@gmail.com', 20, '2025-04-17', '2025-04-22', 'Elyu Trip!', 2, '2025-03-28 10:35:42', '2025-03-28 10:36:00'),
(5, 287634498, 'pt.licup@gmail.com', 19, '2025-04-10', '2025-04-17', 'Ilocos Norte Trip', 1, '2025-03-28 10:36:42', '2025-03-28 10:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2025-03-24 16:24:34', '2025-03-28 10:28:24'),
(3, 'Audi', '2025-03-24 16:24:38', '2025-03-28 10:29:02'),
(4, 'Nissan', '2025-03-23 16:23:32', '2025-03-28 10:29:36'),
(5, 'Toyota', '2025-03-25 16:24:42', '2025-03-28 10:30:04'),
(8, 'Honda', '2025-03-26 17:09:23', NULL),
(9, 'Mitsubishi', '2025-03-26 17:11:05', NULL),
(10, 'BYD', '2025-03-27 07:18:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'McArthur Highway, Angeles City, Pampanga', 'cyberrentals@gmail.com', '09122387287');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2024-06-04 09:34:51', 1),
(2, 'Rommel Ronquillo', 'rj@gmail.com', '312312312', 'Test', '2025-03-27 07:22:45', 1),
(3, 'Patricia Licup', 'pt.licup@gmail.com', '0912349239', 'I need the manager since the website is great!\r\n', '2025-03-28 10:33:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font></strong></font></p><p align=\"justify\"><span style=\"font-size: small;\">Welcome to Cyber Rental Co. (\"Cyber Rental Co.\", \"we\", or \"us\"). We provide our car rental services (\"Service\") to you subject to the following Terms and Conditions (\"T&amp;C\"), which may be updated by us from time to time without prior notice. You can review the most current version of the T&amp;C at any time on our official website. By using our Service, you agree to comply with these terms. If you do not agree with any part of these terms, you should not use our Service.</span><font size=\"2\"><strong><br></strong></font></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(2) BOOKING AND PAYMENT</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">All rentals must be booked in advance through our website, phone, or at our branch. Once a booking is confirmed, you will receive a receipt and booking ID. Payment is required in full and upfront at the time of vehicle pickup. We do not accept online payments or credit cards.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(3) RENTAL ELIGIBILITY</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">Renters must be at least 21 years old and present a valid driver’s license. A government-issued ID must also be provided at the time of pickup. Some vehicles may require a minimum age of 25 years old to rent.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(4) SECURITY DEPOSIT</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">A refundable security deposit is required upon pickup. The deposit amount depends on the vehicle type and rental duration. The deposit will be refunded upon returning the vehicle in the same condition it was rented.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(5) PICKUP AND RETURN</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">All vehicles must be picked up and returned at our branch. We do not offer delivery or pickup services. The vehicle must be returned at the agreed time. Late returns may result in additional charges.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(6) USE OF VEHICLE</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">The rented vehicle may only be used within approved areas. Traveling outside the city or province requires prior approval. The vehicle must not be used for illegal activities, off-road driving, racing, or towing. The renter is responsible for any traffic violations, toll fees, or parking fines incurred during the rental period.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(7) INSURANCE AND LIABILITY</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">All vehicles include basic insurance coverage. Additional coverage may be available upon request. The renter is responsible for any damages not covered by insurance, including negligence or improper use.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(8) ACCIDENTS AND BREAKDOWNS</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">In case of an accident, the renter must notify local authorities and inform Cyber Rental Co. immediately. If the vehicle breaks down due to mechanical issues, we provide roadside assistance. If the breakdown is due to negligence, repair costs may be charged to the renter.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(9) CANCELLATION AND REFUND POLICY</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">Cancellations must be made at least 24 hours before the scheduled pickup to avoid penalties. No refunds will be provided for early returns or unused rental days.</span></p><p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">(10) MODIFICATION OF TERMS</font></strong></p><p align=\"justify\"><span style=\"font-size: small;\">Cyber Rental Co. reserves the right to modify these Terms and Conditions at any time without prior notice. Continued use of our services constitutes acceptance of any updated terms.</span></p><p align=\"justify\"><span style=\"font-size: small;\">By renting a vehicle from Cyber Rental Co., you agree to comply with these Terms and Conditions. If you have any questions, please contact our customer service team.</span></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p>Cyber Rental Co. values your privacy and is committed to protecting your personal information. We collect and use your data solely for processing bookings, verifying identities, and improving our services. Your information is kept secure and will not be shared with third parties except as required by law or for essential service providers, such as insurance and security verification. By using our services, you consent to our data collection and usage practices. For any concerns regarding your privacy, you may contact our customer support team.</p>'),
(3, 'About Us ', 'aboutus', '<div><p data-start=\"20\" data-end=\"292\" class=\"\">At Cyber Rental Co., we make car rentals <strong data-start=\"64\" data-end=\"103\">simple, affordable, and hassle-free</strong>. As a <strong data-start=\"110\" data-end=\"126\">pickup-based</strong> rental service, we offer a wide range of well-maintained vehicles to suit your travel needs—whether it’s for daily commutes, business trips, or long road journeys.</p>\r\n<p data-start=\"294\" data-end=\"635\" class=\"\">Our booking process is <strong data-start=\"317\" data-end=\"336\">straightforward</strong>: reserve your car online or by phone, receive a booking ID, and visit our branch to <strong data-start=\"421\" data-end=\"472\">pay upfront and provide the necessary documents</strong>—no credit card required. We prioritize <strong data-start=\"512\" data-end=\"567\">convenience, reliability, and customer satisfaction</strong>, ensuring that you get a smooth and worry-free rental experience.</p>\r\n<p data-start=\"637\" data-end=\"824\" class=\"\">With a growing base of satisfied customers, we continue to provide <strong data-start=\"704\" data-end=\"768\">quality vehicles, transparent pricing, and excellent service</strong>. Rent with us today and hit the road with confidence!</p></div>\r\n										'),
(11, 'FAQs', 'faqs', '										<h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">1. How do I book a rental car?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">You can book a car through our website, phone, or by visiting our branch. Once your booking is confirmed, you will receive a receipt and a booking ID.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">2. How do I pay for my rental?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">Payment is made in person at our branch when you pick up the car. We do not accept online payments or credit cards—just bring your booking ID and receipt to complete the transaction.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">3. What documents do I need to bring?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">You must provide a valid driver’s license and a government-issued ID when picking up the car.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">4. Is there an age requirement to rent a car?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">Yes, renters must be at least 21 years old. Some vehicle categories may require a minimum age of 25.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">5. Do you require a security deposit?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">Yes, a refundable security deposit is required upon pickup. The amount varies depending on the vehicle type and rental duration.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">6. Can I rent a car for long-term use?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">Yes, we offer daily, weekly, and monthly rental options. Long-term rentals may come with discounted rates.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">7. Do you offer car delivery or pick-up services?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">No, all rentals must be picked up at our branch. Customers must present their booking ID, pay upfront, and provide the required documents before receiving the vehicle.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">8. What happens if I return the car late?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">Late returns may result in additional charges. Please inform us in advance if you need an extension to avoid penalties.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">9. Can I drive the rental car outside the city or province?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">Yes, but you must inform us beforehand. Additional charges or restrictions may apply depending on the destination.</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\"><br></span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-weight: bold; font-family: helvetica;\">10. What should I do in case of an accident or breakdown?</span></h4><h4 data-start=\"58\" data-end=\"99\" class=\"\"><span style=\"font-family: helvetica;\">In case of an accident, contact local authorities and inform us immediately. For breakdowns, we provide roadside assistance to help resolve the issue.</span></h4>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'harish@gmail.com', '2024-06-01 09:26:21'),
(5, 'kunal@gmail.com', '2024-05-31 09:35:07'),
(7, 'pt.licup@gmail.com', '2025-03-28 10:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', '*\"Cyber Rental Co. made my trip so much easier! The booking process was simple, and I loved that I didn’t need a credit card to rent a car. The vehicle was clean, well-maintained, and ready for pickup as promised. The staff was friendly and professional, making the whole experience smooth and hassle-free. I will definitely rent from them again!\"* – **Mark D.**', '2025-03-26 18:57:23', 0),
(2, 'test@gmail.com', 'Cyber Rental Co. made my trip so much easier! The booking process was simple, and I loved that I didn’t need a credit card to rent a car. The vehicle was clean, well-maintained, and ready for pickup as promised. The staff was friendly and professional, making the whole experience smooth and hassle-free. I will definitely rent from them again!', '2025-03-26 18:58:57', 1),
(3, 'test@gmail.com', 'Cyber Rental Co. made my trip so much easier! The booking process was simple, and I loved that I didn’t need a credit card to rent a car. The vehicle was clean, well-maintained, and ready for pickup as promised. The staff was friendly and professional, making the whole experience smooth and hassle-free. I will definitely rent from them again!', '2025-03-26 18:59:37', NULL),
(4, 'rj@gmail.com', 'Renting a car from this website was a breeze! The booking process was quick and hassle-free, and the vehicle was in perfect condition. The customer service team was also very responsive and helpful. I highly recommend them for a smooth and reliable car rental experience!', '2025-03-27 06:36:44', 1),
(5, 'pt.licup@gmail.com', 'This is the best website everrrr!\r\n', '2025-03-28 10:33:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', '7815696ecbf1c96e6894b779456d330e', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2024-05-01 14:00:49', '2025-03-27 05:59:46'),
(2, 'Amit', 'amikt12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '1425365214', NULL, NULL, NULL, NULL, '2024-06-05 05:31:05', NULL),
(3, 'Rommel Ronquillo', 'rj@gmail.com', '7815696ecbf1c96e6894b779456d330e', '0912225558', '09/27/2001', 'Sto. Rosario Street', 'Angeles City', 'Angeles City', '2025-03-27 06:33:40', '2025-03-27 07:21:25'),
(4, 'Patricia Licup', 'pt.licup@gmail.com', '76d80224611fc919a5d54f0ff9fba446', '0923239494', NULL, NULL, NULL, NULL, '2025-03-28 10:31:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(2, 'BMW 5 Series', 2, 'The BMW 5-Series is a luxury sedan that combines elegant design, powerful performance, and advanced technology. With a range of efficient yet dynamic engines, a spacious and premium interior, and cutting-edge safety features, it offers a smooth and refined driving experience. Known for its comfort and precision handling, the 5-Series is a top choice for executive travel, personal use, or high-end rentals.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2025-03-26 17:58:35'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 2500, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2025-03-26 17:59:33'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 1000, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2025-03-26 17:59:12'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(9, 'Toyota Vios', 5, 'The Toyota Vios is a reliable, fuel-efficient, and affordable sedan, perfect for daily commutes or long trips. With a 1.3L or 1.5L engine, it offers a smooth ride, a spacious interior, and modern safety features. Easy to maintain and budget-friendly, it\'s a smart choice for personal use or rentals.', 1500, 'Petrol', 2024, 5, 'vios1.jpg', 'vios2.jpg', 'vios3.jpg', 'vios4.jpg', 'vios5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-03-26 17:17:58', NULL),
(10, 'Toyota Innova', 5, 'The Toyota Innova is a versatile and spacious MPV, ideal for families and group travel. With a fuel-efficient 2.8L diesel engine, it offers a smooth ride, comfortable seating for up to eight passengers, and modern safety features. Known for its durability and low maintenance costs, the Innova is a practical choice for both personal and rental use.', 2000, 'Diesel', 2024, 8, 'innova1.jpg', 'innova2.jpg', 'innova3.jpg', 'innova4.jpg', 'innova5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-03-26 17:21:58', NULL),
(11, 'Toyota Hiace', 5, 'The Toyota Hiace is a reliable and spacious van designed for transporting passengers or cargo. With a powerful 2.8L diesel engine, it offers a smooth ride, ample seating for up to 15 passengers, and modern safety features. Known for its durability and comfort, the Hiace is a popular choice for businesses, travel services, and group transportation.', 3000, 'Diesel', 2023, 15, 'hiace1.jpg', 'hiace2.jpg', 'hiace3.jpg', 'hiace4.jpg', 'hiace5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:24:30', NULL),
(12, 'Honda City', 8, 'The Honda City 2025 is a stylish and fuel-efficient sedan designed for comfort and performance. With a refined 1.5L engine, a spacious interior, and advanced safety features, it offers a smooth and reliable driving experience. Known for its modern design and low maintenance costs, the Honda City is a great choice for daily commutes, family use, or rentals.', 1800, 'Petrol', 2025, 5, 'city1.jpg', 'city2.jpg', 'city3.jpg', 'city4.jpg', 'city5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-03-26 17:28:47', NULL),
(13, 'Honda CR-V', 8, 'The Honda CR-V is a versatile and fuel-efficient SUV known for its comfort, reliability, and advanced features. With a powerful yet efficient engine, a spacious interior, and modern safety technology, it provides a smooth and enjoyable ride. Ideal for families, road trips, and rentals, the CR-V offers a perfect balance of performance and practicality.', 2000, 'Petrol', 2025, 7, 'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg', 'c5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:32:08', NULL),
(14, 'Mitsubishi Mirage', 9, 'The Mitsubishi Mirage is a compact and fuel-efficient hatchback, perfect for city driving and daily commutes. With a 1.2L engine, a spacious interior for its size, and modern safety features, it offers a smooth and budget-friendly ride. Known for its affordability and low maintenance costs, the Mirage is a great choice for personal use or rentals.', 1000, 'Petrol', 2025, 5, 'm1.jpg', 'm2.jpg', 'm3.jpg', 'm4.jpg', 'm5.jpg', 1, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-03-26 17:35:23', NULL),
(15, 'Mitsubishi L300', 9, 'The Mitsubishi L300 is a durable and versatile utility van, ideal for business, cargo transport, and passenger use. Equipped with a reliable 2.2L diesel engine, it offers excellent fuel efficiency, a spacious cabin, and a strong build for heavy-duty tasks. Known for its affordability and low maintenance, the L300 remains a top choice for commercial and rental use.', 2000, 'Diesel', 2022, 15, 'l1.jpg', 'l2.jpg', 'l3.jpg', 'l4.jpg', 'l5.jpg', 1, NULL, 1, 1, NULL, 1, 1, 1, 1, 1, NULL, NULL, '2025-03-26 17:41:22', NULL),
(16, 'Mitsubishi Triton', 9, 'The Mitsubishi Triton is a tough and reliable pickup truck, built for both work and adventure. With a powerful diesel engine, strong towing capacity, and advanced safety features, it delivers excellent performance on and off the road. Known for its durability and fuel efficiency, the Triton is a great choice for businesses, outdoor trips, and rental services.', 2200, 'Diesel', 2025, 5, 't1.jpg', 't2.jpg', 't3.jpg', 't4.jpg', 't5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:44:01', NULL),
(17, 'Toyota Hilux', 5, 'The Toyota Hilux is a powerful and durable pickup truck known for its reliability and off-road capability. With a strong diesel engine, high towing capacity, and advanced safety features, it delivers excellent performance for both work and adventure. Its tough build, fuel efficiency, and low maintenance costs make it a top choice for businesses, outdoor activities, and rentals.', 2500, 'Diesel', 2025, 5, 'h1.jpg', 'h2.jpg', 'h3.jpg', 'h4.jpg', 'h5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:45:41', NULL),
(18, 'Nissan Almera', 4, 'The Nissan Almera is a sleek and fuel-efficient sedan, perfect for city driving and long trips. With a 1.0L turbocharged engine, a spacious interior, and modern safety features, it offers a smooth and comfortable ride. Known for its affordability and reliability, the Almera is a great choice for personal use or rental services.', 1000, 'Petrol', 5, 5, 'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg', 'a5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:48:33', NULL),
(19, 'Nissan Navarra', 4, 'The Nissan Navara is a tough and versatile pickup truck built for both work and adventure. With a powerful diesel engine, high towing capacity, and advanced safety features, it delivers strong performance on any terrain. Known for its durability, fuel efficiency, and comfortable ride, the Navara is a great choice for businesses, off-road trips, and rentals.', 2000, 'Diesel', 2025, 5, 'n1.jpg', 'n2.jpg', 'n3.jpg', 'n4.jpg', 'n5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-26 17:50:12', NULL),
(20, 'Nissan Urvan', 4, 'The Nissan NV350 Urvan is a spacious and reliable van designed for passenger and cargo transport. With a fuel-efficient 2.5L diesel engine, comfortable seating for up to 15 passengers, and modern safety features, it provides a smooth and practical ride. Known for its durability and low maintenance costs, the NV350 Urvan is ideal for businesses, travel services, and rentals.', 3000, 'Diesel', 2025, 15, 'u1.jpg', 'u2.jpg', 'u3.jpg', 'u4.jpg', 'u5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:51:59', NULL),
(21, 'Toyota Avanza', 5, 'The Toyota Avanza is a versatile and fuel-efficient MPV, perfect for families and group travel. With a spacious interior, a reliable 1.3L or 1.5L engine, and modern safety features, it offers a comfortable and smooth ride. Known for its affordability and low maintenance costs, the Avanza is a great choice for personal use, business, or rentals.', 2000, 'Diesel', 2021, 7, 'avan1.jpg', 'avan2.jpg', 'avan3.jpg', 'avan4.jpg', 'avan5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:55:54', NULL),
(22, 'Honda Civic Type R', 8, 'The Honda Civic Type R is a high-performance sports sedan known for its aggressive design, turbocharged 2.0L engine, and track-ready capabilities. With advanced aerodynamics, responsive handling, and a driver-focused interior, it delivers an exhilarating driving experience. Combining power, precision, and modern technology, the Civic Type R is a top choice for enthusiasts and premium rentals.', 1900, 'Petrol', 2025, 5, 'r1.jpg', 'r2.jpg', 'r3.jpg', 'r4.jpg', 'r5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-26 17:57:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
