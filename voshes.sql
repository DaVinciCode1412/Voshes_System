-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 04:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voshes`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_appointment`
--

CREATE TABLE `user_appointment` (
  `appointment_ID` int(10) UNSIGNED NOT NULL,
  `user_ID` varchar(8) NOT NULL,
  `counselor_id` varchar(8) NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_appointment`
--

INSERT INTO `user_appointment` (`appointment_ID`, `user_ID`, `counselor_id`, `appointment_date`, `appointment_time`) VALUES
(12, '19310079', '19310045', '2021-05-22', '09:00:00'),
(13, '19310079', '19310045', '2021-05-22', '10:30:00'),
(14, '19310079', '19310029', '2021-05-23', '13:00:00'),
(15, '19310079', '19310029', '2021-05-27', '09:00:00'),
(16, '19310079', '19310029', '2021-05-27', '13:00:00'),
(17, '19310079', '19310029', '2021-05-25', '10:30:00'),
(18, '19310079', '19310029', '2021-05-25', '09:00:00'),
(19, '19310079', '19310045', '2021-06-01', '09:00:00'),
(20, '19310079', '19310045', '2021-06-01', '14:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_comments`
--

CREATE TABLE `user_comments` (
  `comment_ID` int(11) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `reply_id` varchar(8) NOT NULL,
  `message` text NOT NULL,
  `reply_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_comments`
--

INSERT INTO `user_comments` (`comment_ID`, `post_id`, `reply_id`, `message`, `reply_date`) VALUES
(22, 34, '19310079', 'Hello to you Too.', '2021-05-04'),
(25, 34, '19310079', 'fdasfadf', '2021-05-04'),
(26, 37, '19310079', 'fadfadf', '2021-05-05'),
(27, 37, '19310079', 'fdasfd', '2021-05-05'),
(29, 34, '19310079', 'fdasf', '2021-05-05'),
(34, 41, '13910023', 'Yehey!', '2021-05-05'),
(35, 41, '13910023', 'Ok sir!', '2021-05-05'),
(37, 26, '13910023', 'fdaf', '2021-05-05'),
(38, 42, '13910023', 'fadfdf', '2021-05-06'),
(39, 43, '19310029', 'Oh ok', '2021-05-12'),
(40, 44, '19310029', 'Hello to You too..', '2021-05-12'),
(41, 45, '12345677', 'Test Reply', '2021-05-12'),
(42, 45, '12345677', 'Hello Test', '2021-05-12'),
(43, 56, '13910023', 'It really is a nice day!', '2021-05-21'),
(44, 26, '13910023', 'Hi, can you explain clearly what your concern is all about?', '2021-05-21'),
(46, 55, '13910023', 'haha to you too.', '2021-05-21'),
(47, 57, '19310029', 'What? I was hoping to meet my instructor to clarify some details in our application developement.', '2021-05-21'),
(48, 43, '19310029', 'Hi, for concerns like yours, just set up an appointment. So, we can discuss it more thorougly', '2021-05-21'),
(49, 43, '19310029', 'Ok sir!', '2021-05-21'),
(50, 58, '19310079', 'Uh, Okay. Thank you for the notice.', '2021-05-21'),
(51, 57, '19310079', 'Thank you very much Dean . I guess our presentation for tomorrow will be moved on a later date hahaha ', '2021-05-21'),
(52, 58, '12345677', 'Okay...', '2021-05-22'),
(53, 67, '19310079', 'ok Maam!', '2021-05-23'),
(54, 70, '19310079', 'sample message', '2021-05-23'),
(55, 71, '19310079', 'Hello to you too!', '2021-05-23'),
(56, 72, '19310079', 'Hi', '2021-05-23'),
(57, 73, '19310079', 'Hi', '2021-05-23'),
(58, 71, '13910023', 'fdja;kf', '2021-05-23'),
(59, 74, '19310079', 'sample Reply!', '2021-05-23'),
(60, 74, '19310079', 'Sample Message hahaha', '2021-05-23'),
(61, 75, '19310079', 'hi, sample messages', '2021-05-23'),
(62, 76, '19310079', 'Hi', '2021-05-23'),
(63, 77, '13910023', 'ok', '2021-05-23'),
(64, 70, '13910023', 'hi, this is a sample respond by the dean', '2021-05-23'),
(65, 77, '19310029', 'Ok, this is also a sample response', '2021-05-23'),
(66, 73, '19310029', 'Hi, this is also a sample response  fro your', '2021-05-23'),
(67, 79, '12345677', 'response by the admin', '2021-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `user_events`
--

CREATE TABLE `user_events` (
  `event_ID` int(10) UNSIGNED NOT NULL,
  `user_ID` varchar(8) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_events`
--

INSERT INTO `user_events` (`event_ID`, `user_ID`, `event_name`, `description`, `date`) VALUES
(15, '19310029', 'GTC Day', 'test', '2021-04-16'),
(48, '12345677', 'Christmas Day', 'fdasfaf', '2021-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` varchar(8) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `position` enum('admin','counselor','dean','student') NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `email` varchar(45) NOT NULL,
  `type` enum('PENDING','APPROVED','','') NOT NULL,
  `status` enum('NORMAL','ARCHIVED','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `username`, `password`, `position`, `profile_pic`, `email`, `type`, `status`) VALUES
('12345677', 'Jane', 'Palatan', '12345677', 'password', 'admin', 'april.png', 'email2@gmail.com', 'APPROVED', 'NORMAL'),
('12944109', 'sample', 'cousenlor', '12944109', 'password', 'counselor', '', 'sampleEmail@gmail.com', 'APPROVED', 'NORMAL'),
('13810023', 'Michael', 'Gregorio', '13810023', '12345678', 'student', '', 'ryan.gregorio@gmail.com', 'APPROVED', 'NORMAL'),
('13910023', 'Noel', 'Yap', '13910023', 'password', 'dean', 'marv.png', 'noelYap@gmail.com', 'APPROVED', 'NORMAL'),
('19310023', 'april', 'aquilino', '19310023', 'test student', 'student', 'compact-disk.png', 'aprilAquilino@gmail.com', 'APPROVED', 'NORMAL'),
('19310027', 'Joseph', 'Gregorio', '19310027', 'ASDFASDF', 'student', '', 'josephGregorio@gmail.com', 'APPROVED', 'NORMAL'),
('19310029', 'Joseph', 'Dela Crus', '19310029', 'asdfjkl;', 'counselor', 'user.png', 'joseph23@gmail.com', 'APPROVED', 'NORMAL'),
('19310038', 'Chabelita', 'Sanches', '19310038', 'password', 'student', '', 'chabelitaSanchez@gmail.com', 'APPROVED', 'NORMAL'),
('19310045', 'Afrianne ', 'Camiso', '19310045', 'password', 'counselor', 'marv.png', 'afrianneCamiso@gmail.com', 'APPROVED', 'NORMAL'),
('19310065', 'Sandara', 'Gregorio', '19310065', '12345678', 'student', '', 'sandygregory@gmail.com', 'APPROVED', 'NORMAL'),
('19310071', 'John', 'Doe', '19310071', '12345678', 'student', '', 'johnDoe@gmail.com', 'APPROVED', 'NORMAL'),
('19310078', 'Salve Ann', 'Austria', '19310078', 'teststudent', 'student', '', 'salveAustria@gmail.com', 'APPROVED', 'NORMAL'),
('19310079', 'Marvin', 'Gregorio', '19310079', 'asdfjkl;', 'student', 'marv.png', 'email4@gmail.com', 'APPROVED', 'NORMAL'),
('19310082', 'Jonathan', 'Reyes', '19310082', '12345678', 'counselor', '', 'jonathanreyes@gmail.com', 'APPROVED', 'NORMAL'),
('19410028', 'sample student', 'satudent', '19410028', 'password', 'student', 'boss.jpg', 'sandygregory@gmail.com', 'APPROVED', 'NORMAL');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `postTbl_ID` int(10) UNSIGNED NOT NULL,
  `post_ID` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `category` enum('guidance','dean','announcement','') NOT NULL,
  `dated_post` date DEFAULT NULL,
  `post_time` time NOT NULL,
  `status` enum('ACTIVE','ARCHIVED','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`postTbl_ID`, `post_ID`, `message`, `category`, `dated_post`, `post_time`, `status`) VALUES
(22, '19310079', 'Hi dean!', 'dean', '2021-04-30', '12:01:11', 'ACTIVE'),
(26, '19310079', 'Hello Po Dean!', 'dean', '2021-05-04', '06:57:21', 'ACTIVE'),
(27, '19310079', 'Hello Dean', 'dean', '2021-05-04', '07:07:11', 'ACTIVE'),
(28, '19310079', 'haha', 'dean', '2021-05-04', '07:10:25', 'ACTIVE'),
(31, '19310079', 'Hi!', 'dean', '2021-05-04', '03:13:07', 'ACTIVE'),
(32, '19310079', 'Hello', 'dean', '2021-05-04', '15:19:24', 'ACTIVE'),
(33, '19310079', 'haha', 'dean', '2021-05-04', '15:23:34', 'ACTIVE'),
(34, '19310079', 'hi\r\n', 'dean', '2021-05-04', '15:25:26', 'ACTIVE'),
(37, '19310079', 'Hi?!', 'guidance', '2021-05-05', '15:35:01', 'ACTIVE'),
(40, '13910023', 'Hello everyone we regret to inform to you that all class starting tomorrow will be suspended!!!!', 'guidance', '2021-05-05', '22:52:22', 'ACTIVE'),
(41, '13910023', 'no class tomorrow!!!', 'announcement', '2021-05-05', '22:53:55', 'ACTIVE'),
(42, '13910023', 'Hello!', 'announcement', '2021-05-06', '11:19:31', 'ACTIVE'),
(43, '19310079', 'Hi! I just want to ask about x? Thank your for your time...', 'guidance', '2021-05-12', '11:48:57', 'ACTIVE'),
(44, '19310029', 'Hello CCS students', 'announcement', '2021-05-12', '12:07:35', 'ACTIVE'),
(45, '12345677', 'Hello CCS Students!!!', 'announcement', '2021-05-12', '13:19:31', 'ACTIVE'),
(46, '12345677', 'Hi!', 'announcement', '2021-05-13', '03:59:38', 'ACTIVE'),
(51, '12345677', 'Hi!!!!!!!!!', 'announcement', '2021-05-13', '04:08:56', 'ACTIVE'),
(55, '12345677', 'Hello haha', 'announcement', '2021-05-13', '05:31:42', 'ACTIVE'),
(56, '12345677', 'Good Day to all CCS Students!!!', 'announcement', '2021-05-21', '12:13:01', 'ACTIVE'),
(57, '13910023', 'To all students of Columban College. I am informing you that there will be no classes starting tomorrow. Continuation of classes will be posted at a later date.', 'announcement', '2021-05-21', '12:39:00', 'ACTIVE'),
(58, '19310029', 'Notice to all CCS students : all counseling appointment for tomorrow will be cancelled to give way for the celebration of the school 55th Founding Anniversary. ', 'announcement', '2021-05-21', '13:00:41', 'ACTIVE'),
(60, '19310079', 'Hi', 'dean', '2021-05-21', '13:39:15', 'ACTIVE'),
(62, '19310079', 'Good day Dean Can you please inform Mr X of his unusual hygiene as our class cat take it anymore', 'dean', '2021-05-21', '13:41:56', 'ACTIVE'),
(63, '19310079', 'Hi, can you help me with my problem', 'guidance', '2021-05-21', '13:43:52', 'ACTIVE'),
(65, '13910023', 'You\'re so beautiful\r\n', 'announcement', '2021-05-21', '14:08:41', 'ACTIVE'),
(66, '12345677', 'Notice to all CCS Students : The system will be down for tomorrow 12:00 noon ', 'announcement', '2021-05-22', '12:17:53', 'ACTIVE'),
(67, '12345677', 'To all CCS students there will be no classes tomorrow due to the rising cases of Covid-19 in Olongapo', 'announcement', '2021-05-22', '12:19:48', 'ACTIVE'),
(68, '19310023', 'Good day! Yesterday I have seen a suspicious person loitering around the CCS Lab at 10:30 am\r\n', 'dean', '2021-05-22', '19:49:50', 'ACTIVE'),
(69, '19310023', 'Hi! just disregard this message, i just want to test the functionality of this system', 'guidance', '2021-05-22', '19:51:02', 'ACTIVE'),
(70, '19310079', 'Hi Dean I just want to thank you!', 'dean', '2021-05-23', '12:03:49', 'ACTIVE'),
(71, '13910023', 'Hieello', 'announcement', '2021-05-23', '12:07:38', 'ACTIVE'),
(72, '19310079', 'Hi dean!', 'dean', '2021-05-23', '12:11:40', 'ACTIVE'),
(73, '19310079', 'Hi, sample message~', 'guidance', '2021-05-23', '12:12:37', 'ACTIVE'),
(74, '13910023', 'sample Message!', 'announcement', '2021-05-23', '12:16:21', 'ACTIVE'),
(75, '19310079', 'Hi, this is just a sample message sent to the dean.', 'dean', '2021-05-23', '12:23:49', 'ACTIVE'),
(76, '19310079', 'hi, i want to ask about x, is it possible?', 'guidance', '2021-05-23', '12:25:06', 'ACTIVE'),
(77, '13910023', 'Hi, this is a sample announcement by the CCS Dean', 'announcement', '2021-05-23', '12:28:53', 'ACTIVE'),
(78, '19310029', 'sample announcement by the Guidance', 'announcement', '2021-05-23', '12:33:10', 'ACTIVE'),
(79, '12345677', 'sample post announcment by the admin', 'announcement', '2021-05-23', '12:39:02', 'ACTIVE'),
(80, '12345677', 'sample message again', 'announcement', '2021-05-23', '12:40:23', 'ACTIVE'),
(81, '12345677', 'another message by the admin', 'announcement', '2021-05-23', '12:40:57', 'ACTIVE'),
(82, '12345677', 'creating a new message again.', 'announcement', '2021-05-23', '12:41:32', 'ACTIVE'),
(84, '12345677', 'sample message', 'announcement', '2022-05-03', '12:41:53', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `user_schedule`
--

CREATE TABLE `user_schedule` (
  `schedule_ID` int(10) UNSIGNED NOT NULL,
  `user_ID` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_appointment`
--
ALTER TABLE `user_appointment`
  ADD PRIMARY KEY (`appointment_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `counselor_id` (`counselor_id`),
  ADD KEY `counselor_id_2` (`counselor_id`);

--
-- Indexes for table `user_comments`
--
ALTER TABLE `user_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `reply_id` (`reply_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_events`
--
ALTER TABLE `user_events`
  ADD PRIMARY KEY (`event_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `name` (`first_name`),
  ADD KEY `user_info_ibfk_1` (`position`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postTbl_ID`),
  ADD KEY `category_post` (`category`),
  ADD KEY `post_ID` (`post_ID`);

--
-- Indexes for table `user_schedule`
--
ALTER TABLE `user_schedule`
  ADD PRIMARY KEY (`schedule_ID`),
  ADD KEY `schedule` (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_appointment`
--
ALTER TABLE `user_appointment`
  MODIFY `appointment_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_comments`
--
ALTER TABLE `user_comments`
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_events`
--
ALTER TABLE `user_events`
  MODIFY `event_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_post`
--
ALTER TABLE `user_post`
  MODIFY `postTbl_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user_schedule`
--
ALTER TABLE `user_schedule`
  MODIFY `schedule_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_comments`
--
ALTER TABLE `user_comments`
  ADD CONSTRAINT `user_comments_ibfk_1` FOREIGN KEY (`reply_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_post` (`postTbl_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_events`
--
ALTER TABLE `user_events`
  ADD CONSTRAINT `user_ID` FOREIGN KEY (`user_ID`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`post_ID`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_schedule`
--
ALTER TABLE `user_schedule`
  ADD CONSTRAINT `schedule` FOREIGN KEY (`user_ID`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
