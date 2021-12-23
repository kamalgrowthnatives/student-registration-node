-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 02:43 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `cs_id` int(11) NOT NULL,
  `cs_name` varchar(20) NOT NULL,
  `cs_fee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`cs_id`, `cs_name`, `cs_fee`) VALUES
(1, 'Animation and Design', '50,000'),
(2, 'Commerce', '1,50,000'),
(3, 'Arts', '30,000'),
(4, 'Computer IT', '1,00,000'),
(5, 'Hospitality', '50,000');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sp_id` int(11) NOT NULL,
  `sp_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sp_id`, `sp_name`) VALUES
(4, 'BasketBall'),
(3, 'Carrom'),
(1, 'Cricket'),
(2, 'Football'),
(5, 'Hockey'),
(6, 'Table Tennis');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(11) NOT NULL,
  `st_name` varchar(20) NOT NULL,
  `st_phone` varchar(15) NOT NULL,
  `st_email` varchar(20) NOT NULL,
  `st_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `st_name`, `st_phone`, `st_email`, `st_city`) VALUES
(1, 'Subhapreet Kaur', '9088923433', 'subhapreet232@gail.c', 'Chandigarh'),
(2, 'Aahna', '8922903423', 'aahna#2@gmail.com', 'Jammu'),
(3, 'kamal', '9068883078', 'Kamalkmr081@gmail.co', 'Ambala'),
(4, 'kamal kashyap', '9068888307', 'kamal.kashyap@growth', 'Ambala Cantt'),
(8, 'Ahhna Vij', '9068088307', 'Ahhna.vij@growth.com', 'Jammu'),
(12, 'kamal kashyap', '9068213078', 'kamal.kasap@growthna', 'MOHALI'),
(15, 'aahna', '8708097654', 'aana.vij@growthnativ', 'MOHALI'),
(16, 'aahna', '8708097651', 'aana.vij@growthative', 'MOHALI'),
(18, 'aahna', '8708007653', 'aana.vijgrowtives.cm', 'MOHALI'),
(19, 'aahna', '8708007654', 'ana.vijgrowtives.cm', 'MOHALI'),
(21, 'shubham', '8708036429', 'shub@gmail.com', 'ambala'),
(22, 'shubham ak', '89000128888', 'yuyu@gmail.ocom', 'usa'),
(24, 'chirag', '87799008788', 'aahnna@1212gmail.com', 'MOHALI'),
(25, 'chirag dhuria', '87799008789', 'ahnna@1212gmail.com', 'MOHALI'),
(26, 'chirag dhuri', '87799008786', 'ahnna@1212gmail.co', 'MOHALI');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_map`
--

CREATE TABLE `student_course_map` (
  `sc_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course_map`
--

INSERT INTO `student_course_map` (`sc_id`, `st_id`, `cs_id`) VALUES
(1, 2, 1),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_sport_map`
--

CREATE TABLE `student_sport_map` (
  `ss_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_sport_map`
--

INSERT INTO `student_sport_map` (`ss_id`, `st_id`, `sp_id`) VALUES
(1, 2, 3),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `te_id` int(11) NOT NULL,
  `te_name` varchar(20) NOT NULL,
  `te_phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`te_id`, `te_name`, `te_phone`) VALUES
(1, 'Ashish', '9123432134'),
(2, 'Chhavinav', '9870098723'),
(3, 'Suresh', '98900223388');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course_map`
--

CREATE TABLE `teacher_course_map` (
  `tc_id` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `te_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_course_map`
--

INSERT INTO `teacher_course_map` (`tc_id`, `cs_id`, `te_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`cs_id`),
  ADD KEY `amt` (`cs_fee`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `sp_name` (`sp_name`),
  ADD KEY `sp_id` (`sp_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD UNIQUE KEY `st_phone` (`st_phone`),
  ADD UNIQUE KEY `st_email` (`st_email`),
  ADD KEY `st_phone_2` (`st_phone`);

--
-- Indexes for table `student_course_map`
--
ALTER TABLE `student_course_map`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `st_id` (`st_id`),
  ADD KEY `cs_id` (`cs_id`);

--
-- Indexes for table `student_sport_map`
--
ALTER TABLE `student_sport_map`
  ADD PRIMARY KEY (`ss_id`),
  ADD KEY `st_id` (`st_id`),
  ADD KEY `sp_id` (`sp_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`te_id`);

--
-- Indexes for table `teacher_course_map`
--
ALTER TABLE `teacher_course_map`
  ADD PRIMARY KEY (`tc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_course_map`
--
ALTER TABLE `student_course_map`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_sport_map`
--
ALTER TABLE `student_sport_map`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `te_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_course_map`
--
ALTER TABLE `teacher_course_map`
  MODIFY `tc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_course_map`
--
ALTER TABLE `student_course_map`
  ADD CONSTRAINT `student_course_map_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`),
  ADD CONSTRAINT `student_course_map_ibfk_2` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`),
  ADD CONSTRAINT `student_course_map_ibfk_3` FOREIGN KEY (`cs_id`) REFERENCES `courses` (`cs_id`);

--
-- Constraints for table `student_sport_map`
--
ALTER TABLE `student_sport_map`
  ADD CONSTRAINT `student_sport_map_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`),
  ADD CONSTRAINT `student_sport_map_ibfk_2` FOREIGN KEY (`sp_id`) REFERENCES `sports` (`sp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
