-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2017 at 06:10 PM
-- Server version: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.13-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekruitasi_rg`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`) VALUES
('1103130119', 'Eriza Tri Abdi N'),
('1103130122', 'Muhammad Fahmi Nugraha'),
('1103130123', 'Delvine Natalie Caroline'),
('1103130282', 'Daud Sandy Christianto'),
('1103134312', 'David Winalda'),
('1103134354', 'Maulisye Audina Ulfa'),
('1103134388', 'Yodie Prasastya D'),
('1103134395', 'Nanda Budi Prayuga'),
('1103134405', 'Tiara Annisa Dionti'),
('1301140250', 'Gina Andini Putri'),
('1301140287', 'Jallu Wahyu M'),
('1301141358', 'Amalia Elma Sari'),
('1301144048', 'Matias Alvin Setianto'),
('1301144064', 'Diska Andini'),
('1301144118', 'Muhammad Habib Fikri Sundayana'),
('1301144178', 'Saepul Bahri Santoso'),
('1301144245', 'Fatima Nurshafarani'),
('1301144350', 'Putu Eka Budi Pradnyana'),
('1301144406', 'REZA AMELIA'),
('1301150052', 'Muhammad Satrio Wicaksono'),
('1301152427', 'Afnizar Hilmi Nur Ghifari'),
('1301154170', 'Ade Kurnia Alam'),
('1301154238', 'I Kadek Ananda Prana Widya'),
('1301154325', 'Helmi Satria Nugraha'),
('1301154455', 'Ayla Puteri Yanza'),
('1301154674', 'Briananda Adianti C'),
('1301158668', 'Aas Suhendar'),
('6701152146', 'ayidha elvira syam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
