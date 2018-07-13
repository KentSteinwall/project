-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 05:05 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nsbm_new`
--
CREATE DATABASE IF NOT EXISTS `nsbm_new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nsbm_new`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` varchar(5) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `is_super_admin` varchar(20) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `user_name`, `is_super_admin`) VALUES
('a01', 'admin1', 'admin'),
('a02', 'admin2', 'admin'),
('a03', 'admin3', 'super admin');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_marks`
--

CREATE TABLE IF NOT EXISTS `assignment_marks` (
  `id` int(10) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `assignment_number` int(5) NOT NULL,
  `marks` varchar(5) NOT NULL,
  PRIMARY KEY (`id`,`sub_id`,`assignment_number`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_marks`
--

INSERT INTO `assignment_marks` (`id`, `sub_id`, `assignment_number`, `marks`) VALUES
(1, 's01', 1, 'A'),
(1, 's01', 2, 'C-'),
(1, 's01', 3, 'B+'),
(2, 's03', 3, 'C+'),
(4, 'b01', 3, 'B'),
(5, 's03', 1, 'A'),
(10, 's05', 2, 'C-'),
(19, 'b11', 3, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `d_id` varchar(10) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`d_id`, `d_name`) VALUES
('d01', 'BSc in Human Resource Management'),
('d02', 'BSc in Logistics Management'),
('d03', 'BSc in Project Management'),
('d04', 'BSc in Industrial Management'),
('d05', 'BA in Business Communication'),
('d06', 'BM in Accounting & Finance'),
('d07', 'Bachelor of Interior Design'),
('d08', 'BSc Management Information Systems'),
('d09', 'BSc in Software Engineering'),
('d10', 'BSc in Multimedia'),
('d11', 'BSc in Computer Science'),
('d12', 'BSc Engineering in Computer Systems Engineering'),
('d13', 'Postgraduate Diploma in Human Resource Management'),
('d14', 'Postgraduate Diploma in Business Management'),
('d15', 'Master of Business Administration'),
('d16', 'Postgraduate Diploma in Computer Networks');

-- --------------------------------------------------------

--
-- Table structure for table `degree_subject`
--

CREATE TABLE IF NOT EXISTS `degree_subject` (
  `d_id` varchar(10) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  PRIMARY KEY (`d_id`,`sub_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `f_id` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `name`) VALUES
('f01', 'School of Business'),
('f02', 'School of Computing '),
('f03', 'School of Engineering ');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `ins_id` varchar(10) NOT NULL,
  `ins_name` varchar(30) NOT NULL,
  PRIMARY KEY (`ins_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`ins_id`, `ins_name`) VALUES
('i01', 'Mr A B Silva'),
('i02', 'Mis R W C Perera'),
('i04', 'Mr  G L siriwardana'),
('io5', 'Mr S Perera');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_subject`
--

CREATE TABLE IF NOT EXISTS `instructor_subject` (
  `ins_id` varchar(10) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  PRIMARY KEY (`ins_id`,`sub_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `lec_id` varchar(10) NOT NULL,
  `lec_name` varchar(30) NOT NULL,
  `Room_No` int(5) NOT NULL,
  PRIMARY KEY (`lec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lec_id`, `lec_name`, `Room_No`) VALUES
('l01', 'Dr A C Perera', 5),
('l02', 'Dr D T silva', 2),
('l03', 'Dr J A Gonathilaka', 10),
('l04', 'Dr N S D Piris', 4),
('l06', 'Dr kasun jayakodi', 0),
('l07', 'Dr K P Steinwall', 7),
('l09', 'Dr B Fernando', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_subject`
--

CREATE TABLE IF NOT EXISTS `lecturer_subject` (
  `lec_id` varchar(10) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  PRIMARY KEY (`lec_id`,`sub_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(10) NOT NULL,
  `subject_1_id` varchar(10) NOT NULL,
  `subject_2_id` varchar(10) NOT NULL,
  `subject_3_id` varchar(10) NOT NULL,
  `subject_4_id` varchar(10) NOT NULL,
  `subject_1_marks` varchar(10) NOT NULL,
  `subject_2_marks` varchar(10) NOT NULL,
  `subject_3_marks` varchar(10) NOT NULL,
  `subject_4_marks` varchar(10) NOT NULL,
  `GPA` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_2_id` (`subject_2_id`),
  KEY `subject_3_id` (`subject_3_id`),
  KEY `subject_4_id` (`subject_4_id`),
  KEY `subject_1_id` (`subject_1_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `subject_1_id`, `subject_2_id`, `subject_3_id`, `subject_4_id`, `subject_1_marks`, `subject_2_marks`, `subject_3_marks`, `subject_4_marks`, `GPA`) VALUES
(1, 's01', 's02', 's03', 's04', 'A+', 'A-', 'B', 'C+', '3.000'),
(3, 's01', 's02', 's03', 's05', 'B', 'B', 'B', 'B', '2.745'),
(4, 'b01', 'b02', 'b03', 'b04', 'A', 'A', 'A', 'A', '3.500'),
(19, 'b11', 'b12', 'b13', 'b14', 'B', 'B+', 'B-', 'A-', '3.200');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(10) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `date`) VALUES
(1, 13500, 12112018),
(2, 15500, 3042018),
(3, 14000, 4042018),
(4, 13500, 2072018),
(5, 13500, 23012018),
(8, 20000, 3042018),
(19, 14500, 7072018);

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate_students`
--

CREATE TABLE IF NOT EXISTS `postgraduate_students` (
  `id` int(10) NOT NULL,
  `qualification_type` varchar(40) NOT NULL,
  `institute` varchar(40) NOT NULL,
  `year_of_completion` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postgraduate_students`
--

INSERT INTO `postgraduate_students` (`id`, `qualification_type`, `institute`, `year_of_completion`) VALUES
(3, 'Bsc', 'university of colombo', 2020),
(9, 'Msc', 'University of Colombo', 2018),
(11, 'Bsc', 'University of Jaffna', 2020),
(12, 'Bsc', 'NSBM', 2021),
(17, 'Msc', 'University of Colombo', 2023),
(18, 'Bsc', 'NSBM', 2022),
(19, 'Bsc', 'NSBM', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `f_id` varchar(20) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `intake` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `password` (`password`),
  KEY `f_id` (`f_id`),
  KEY `d_id` (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `f_name`, `l_name`, `dob`, `gender`, `f_id`, `contact_no`, `email`, `address`, `password`, `intake`, `course`, `d_id`) VALUES
(1, 'kent', 'steinwall', '3071996', 'Male', 'f03', 774739464, 'kentsteinwall', 'No 40', 'kent', 'february', 'Bachelor ', 'd01'),
(2, 'frank', 'steinwall', '112018', 'Male', 'f02', 774178475, 'franksteinwall', 'N0 40', 'frank', 'july', 'Bachelor', 'd03'),
(3, 'dinuka', 'mendis', '112018', 'Male', 'f01', 774978273, 'dinukamendis', 'N0 12', 'dinuka', 'july', 'Bachelor', 'd05'),
(4, 'pasindu', 'siriwardana', '112018', 'Male', 'f01', 779978279, 'pasindu', 'N0 34', 'pasindu', 'july', 'Bachelor', 'd02'),
(5, 'ishan', 'perera', '112018', 'Male', 'f02', 776543287, 'ishanperera', 'No 65', 'ishan', 'july', 'Bachelor', 'd14'),
(8, 'lahiru', 'perera', '112018', 'Female', 'f02', 773456782, 'lahiru', 'No 234', 'lahiru', 'july', 'Bachelor', 'd01'),
(9, 'nilshan', 'silva', '2561996', 'Male', 'f03', 773456923, 'nilshan@gmail.com', 'No 2', 'nilshan', 'july', 'Master ', 'd16'),
(10, 'pasindu', 'senerath', '112018', 'Male', 'f01', 773456789, 'pasindu@gmail.com', 'NO 56', 'kojja', 'february', 'Bachelor', 'd01'),
(11, 'nimal', 'perera', '112018', 'Male', 'f01', 778943219, 'nimal@gmail.com', 'No 78', 'nimal', 'july', 'Master ', 'd01'),
(12, 'malith', 'jayawira', '471997', 'Male', 'f01', 774567892, 'malith@gmail.com', 'No 49,dehiwala', 'malith', 'february', 'Master ', 'd15'),
(13, 'lahiru', 'madushan', '771997', 'Male', 'f03', 771256890, 'madushan@gmail.com', 'No 89', 'madushan', 'february', 'Master ', 'd14'),
(14, 'sunil', 'silva', '112018', 'Male', 'f01', 773456789, 'sunil@gmail.com', 'No 90', 'sunil', 'february', 'Bachelor', 'd01'),
(15, 'dinith', 'chanuka', '681998', 'Male', 'f03', 778909876, 'dinith@gmail.com', 'N0 7', 'dinith', 'july', 'Bachelor', 'd06'),
(16, 'achintha', 'perera', '112000', 'Male', 'f02', 778990090, 'achintha@gmail.com', 'No 56', 'achintha', 'july', 'Bachelor', 'd01'),
(17, 'kamala', 'perera', '112018', 'Female', 'f01', 774091322, 'kamala@gmail.com', 'No 90', 'kamala', 'february', 'Bachelor', 'd01'),
(18, 'rajitha', 'perera', '112018', 'Male', 'f02', 771234560, 'banda@gmail.com', 'No 3', 'banda', 'february', 'Master ', 'd15'),
(19, 'malith', 'fernando', '712000', 'Male', 'f01', 774567892, 'malith@gmail.com', 'No 49,dehiwala', 'malith1', 'july', 'Master ', 'd06');

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE IF NOT EXISTS `student_subjects` (
  `id` int(10) NOT NULL,
  `year` int(5) NOT NULL,
  `semester` int(5) NOT NULL,
  `subject_1_id` varchar(10) NOT NULL,
  `subject_2_id` varchar(10) NOT NULL,
  `subject_3_id` varchar(10) NOT NULL,
  `subject_4_id` varchar(10) NOT NULL,
  `no_of_credits` int(20) NOT NULL,
  `full_payment` int(20) NOT NULL,
  PRIMARY KEY (`id`,`year`,`semester`),
  KEY `subject_1_id` (`subject_1_id`),
  KEY `subject_2_id` (`subject_2_id`),
  KEY `subject_3_id` (`subject_3_id`),
  KEY `subject_4_id` (`subject_4_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `year`, `semester`, `subject_1_id`, `subject_2_id`, `subject_3_id`, `subject_4_id`, `no_of_credits`, `full_payment`) VALUES
(1, 1, 1, 'e01', 'e03', 'e04', 'e05', 11, 14000),
(2, 1, 1, 's01', 's02', 's03', 's05', 9, 14000),
(3, 1, 1, 'b01', 'b02', 'b03', 'b04', 10, 13000),
(4, 1, 1, 'b01', 'b02', 'b03', 'b04', 10, 13000),
(10, 1, 1, 'b02', 'b03', 'b04', 'b05', 9, 11500),
(19, 2, 1, 'b11', 'b12', 'b13', 'b14', 11, 14500);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `sub_id` varchar(10) NOT NULL,
  `sub_name` varchar(40) NOT NULL,
  `credits` int(5) NOT NULL,
  `fee` int(15) NOT NULL,
  `year` int(5) NOT NULL,
  `semester` int(5) NOT NULL,
  `f_id` varchar(10) NOT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `f_id` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `credits`, `fee`, `year`, `semester`, `f_id`) VALUES
('b01', 'Management Process', 3, 4000, 1, 1, 'f01'),
('b02', 'Business Communication', 3, 3500, 1, 1, 'f01'),
('b03', 'Financial Accounting', 2, 3000, 1, 1, 'f01'),
('b04', 'Economics for Managers', 2, 2500, 1, 1, 'f01'),
('b05', 'Business Mathematics and Statistics', 2, 2500, 1, 1, 'f01'),
('b06', 'Managerial accounting', 3, 4000, 1, 2, 'f01'),
('b07', 'Information and Communication Technology', 3, 3500, 1, 2, 'f01'),
('b08', 'Business Environment', 3, 3000, 1, 2, 'f01'),
('b09', 'Introduction to Project Management', 2, 2500, 1, 2, 'f01'),
('b10', 'Critical Enabling Skills Training', 3, 4000, 1, 2, 'f01'),
('b11', 'Organizational Behaviour', 3, 4000, 2, 1, 'f01'),
('b12', 'Professional Development', 3, 4000, 2, 1, 'f01'),
('b13', 'Marketing Management', 3, 3500, 2, 1, 'f01'),
('b14', 'Advanced Financial accounting', 2, 3000, 2, 2, 'f01'),
('b15', 'Logistics Management', 2, 2500, 2, 1, 'f01'),
('b16', 'Financial Management', 3, 4000, 2, 2, 'f01'),
('b17', 'Human Resource Management', 3, 4000, 2, 2, 'f01'),
('b18', 'Quality Management', 3, 3500, 2, 2, 'f01'),
('b19', 'Introduction to Operations Management', 2, 2500, 2, 2, 'f01'),
('b20', 'Industrial Relations', 2, 2500, 2, 2, 'f01'),
('e01', 'Engineering Mathematics I', 3, 4000, 1, 1, 'f03'),
('e02', 'Programming Fundamentals', 3, 3500, 1, 1, 'f03'),
('e03', 'Fundamentals of Electrical Engineering', 3, 4000, 1, 1, 'f03'),
('e04', 'Electronics I', 3, 3500, 1, 1, 'f03'),
('e05', 'Computer Aided Design', 2, 2500, 1, 1, 'f03'),
('e06', 'Instrumentation and Control Principles', 3, 400, 1, 2, 'f03'),
('e07', 'Communication Systems & Networks', 3, 3000, 1, 2, 'f03'),
('e08', 'Engineering Materials', 3, 3000, 1, 2, 'f03'),
('e09', 'Computer Architecture and Organization', 2, 2500, 1, 2, 'f03'),
('e10', 'Introductory Mechanics and Fluids', 2, 2500, 1, 2, 'f03'),
('s01', 'Algorithm & data structures I', 3, 4000, 1, 1, 'f02'),
('s02', 'programming I', 3, 4000, 1, 1, 'f02'),
('s03', 'database I', 2, 3500, 1, 1, 'f02'),
('s04', 'mathematics I', 3, 4000, 1, 1, 'f02'),
('s05', 'laboratory I', 1, 2500, 1, 1, 'f02'),
('s06', 'Algorithm & data structures II', 3, 4000, 1, 2, 'f02'),
('s07', 'programming II', 3, 3500, 1, 2, 'f02'),
('s08', 'database II', 2, 3000, 1, 2, 'f02'),
('s09', 'computer network I', 3, 3000, 1, 2, 'f02'),
('s10', 'fundamental of computer science', 1, 3000, 1, 2, 'f02'),
('s11', 'Algorithm & data structures III', 3, 3500, 2, 1, 'f02'),
('s12', 'programming III', 3, 4000, 2, 1, 'f02'),
('s13', 'database III', 3, 3000, 2, 1, 'f02'),
('s14', 'computer network II', 3, 3500, 2, 1, 'f02'),
('s15', 'mathematics II', 3, 3500, 2, 1, 'f02');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_student`
--

CREATE TABLE IF NOT EXISTS `undergraduate_student` (
  `id` int(10) NOT NULL,
  `subject_1` varchar(30) NOT NULL,
  `subject_1_result` varchar(5) NOT NULL,
  `subject_2` varchar(30) NOT NULL,
  `subject_2_result` varchar(5) NOT NULL,
  `subject_3` varchar(30) NOT NULL,
  `subject_3_result` varchar(5) NOT NULL,
  `subject_4` varchar(30) NOT NULL,
  `subject_4_result` varchar(5) NOT NULL,
  `rank` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate_student`
--

INSERT INTO `undergraduate_student` (`id`, `subject_1`, `subject_1_result`, `subject_2`, `subject_2_result`, `subject_3`, `subject_3_result`, `subject_4`, `subject_4_result`, `rank`) VALUES
(1, 'maths', 'A', 'physics', 'C', 'chemistry', 'B', 'english', 'A', '200'),
(3, 'maths', 'A', 'chemistry', 'B', 'physics', 'B', 'english', 'A', '50'),
(4, 'maths', 'A', 'chemisty', 'C', 'phyics', 'B', 'engilsh', 'A', '100'),
(14, 'maths', 'A', 'chemistry', 'A', 'physics', 'A', 'english', 'A', '2'),
(15, 'maths', 'A', 'chemistry', 'B', 'physics', 'B', 'english', 'B', '90'),
(16, 'maths', '', 'chemistry', '', 'phycics', '', 'english', '', '1.543');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment_marks`
--
ALTER TABLE `assignment_marks`
  ADD CONSTRAINT `assignment_marks_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignment_marks_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `degree_subject`
--
ALTER TABLE `degree_subject`
  ADD CONSTRAINT `degree_subject_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `degree` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `degree_subject_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `instructor_subject`
--
ALTER TABLE `instructor_subject`
  ADD CONSTRAINT `instructor_subject_ibfk_1` FOREIGN KEY (`ins_id`) REFERENCES `instructor` (`ins_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `instructor_subject_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lecturer_subject`
--
ALTER TABLE `lecturer_subject`
  ADD CONSTRAINT `lecturer_subject_ibfk_1` FOREIGN KEY (`lec_id`) REFERENCES `lecturer` (`lec_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lecturer_subject_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`subject_1_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`subject_2_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_4` FOREIGN KEY (`subject_3_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_5` FOREIGN KEY (`subject_4_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `postgraduate_students`
--
ALTER TABLE `postgraduate_students`
  ADD CONSTRAINT `postgraduate_students_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `degree` (`d_id`);

--
-- Constraints for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_subjects_ibfk_2` FOREIGN KEY (`subject_1_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_subjects_ibfk_3` FOREIGN KEY (`subject_2_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_subjects_ibfk_4` FOREIGN KEY (`subject_3_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_subjects_ibfk_5` FOREIGN KEY (`subject_4_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `undergraduate_student`
--
ALTER TABLE `undergraduate_student`
  ADD CONSTRAINT `undergraduate_student_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
