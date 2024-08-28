-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 10:37 AM
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
-- Database: `cetis`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `ALUMNOS` (
  `ID` INT(11) NOT NULL,
  `NOMBRE` VARCHAR(100) NOT NULL,
  `EDAD` INT(11) NOT NULL,
  `GRUPO` VARCHAR(10) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_BIN;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `ALUMNOS` (
  `ID`,
  `NOMBRE`,
  `EDAD`,
  `GRUPO`
) VALUES (
  1,
  'Miguel',
  15,
  '1AV'
),
(
  2,
  'jESUS',
  15,
  '1AV'
);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `EMPLEADOS` (
  `ID` INT(11) NOT NULL,
  `NOMBRE` VARCHAR(100) NOT NULL,
  `ESPECIALIDAD` VARCHAR(30) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_BIN;

--
-- Dumping data for table `empleados`
--

INSERT INTO `EMPLEADOS` (
  `ID`,
  `NOMBRE`,
  `ESPECIALIDAD`
) VALUES (
  1,
  'Luis carlos',
  'Programacion'
),
(
  2,
  'Rochin',
  'Programacion'
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `ALUMNOS` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `EMPLEADOS` ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `ALUMNOS` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `EMPLEADOS` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;