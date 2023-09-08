-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mydatabase:3306
-- Generation Time: Sep 08, 2023 at 12:18 PM
-- Server version: 8.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camagru_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `subject_book`
--

CREATE TABLE `subject_book` (
  `id` int NOT NULL,
  `book_id_fk` int NOT NULL,
  `subject_id_fk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subject_book`
--
ALTER TABLE `subject_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id_fk` (`book_id_fk`),
  ADD KEY `subject_id_fk` (`subject_id_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject_book`
--
ALTER TABLE `subject_book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subject_book`
--
ALTER TABLE `subject_book`
  ADD CONSTRAINT `subject_book_ibfk_1` FOREIGN KEY (`book_id_fk`) REFERENCES `books` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_book_ibfk_2` FOREIGN KEY (`subject_id_fk`) REFERENCES `subject` (`subjec_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
