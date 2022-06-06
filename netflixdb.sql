-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2022 at 04:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflixdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Acted_In`
--

CREATE TABLE `Acted_In` (
  `MovieID` int(11) NOT NULL,
  `ActorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Acted_In`
--

INSERT INTO `Acted_In` (`MovieID`, `ActorID`) VALUES
(1, 55001),
(2, 55002),
(3, 55003),
(5, 55004),
(7, 55041),
(8, 55005),
(9, 55038),
(11, 55043),
(12, 55034);

-- --------------------------------------------------------

--
-- Table structure for table `Actor`
--

CREATE TABLE `Actor` (
  `ActorName` varchar(25) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ActorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Actor`
--

INSERT INTO `Actor` (`ActorName`, `Gender`, `ActorID`) VALUES
('Matthew McConaughey', 'Male', 55001),
('Lindsay Lohan', 'Female', 55002),
('Ryan Gosling', 'Male', 55003),
('Christian Bale', 'Male', 55004),
('Justin Timberlake', 'Male', 55005),
('Tom Hanks', 'Male', 55034),
('Miles Teller', 'Male', 55038),
('Zendaya', 'Female', 55041),
('Jennifer Lawrance', 'Female', 55043);

-- --------------------------------------------------------

--
-- Table structure for table `Directed`
--

CREATE TABLE `Directed` (
  `MovieID` int(11) NOT NULL,
  `DirID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Directed`
--

INSERT INTO `Directed` (`MovieID`, `DirID`) VALUES
(1, 82001),
(2, 82003),
(3, 82329),
(5, 82001),
(7, 83565),
(8, 85001),
(9, 82329),
(11, 83456),
(12, 84007);

-- --------------------------------------------------------

--
-- Table structure for table `Director`
--

CREATE TABLE `Director` (
  `DirectorName` varchar(25) DEFAULT NULL,
  `DirID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Director`
--

INSERT INTO `Director` (`DirectorName`, `DirID`) VALUES
('Christopher Nolan', 82001),
('Mark Waters', 82003),
('Damien Chazelle', 82329),
('Gary Ross', 83456),
('Denis Villeneuve', 83565),
('Frank Darabont', 84007),
('Andrew Niccol', 85001);

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`Name`) VALUES
('Adventure'),
('Comedy'),
('Comedy Drama'),
('Documentary'),
('Drama'),
('Horror'),
('Melodrama'),
('Musical'),
('Romantic Comedy'),
('Science Fiction'),
('Teen'),
('Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Of`
--

CREATE TABLE `Genre_Of` (
  `Name` varchar(20) NOT NULL,
  `MovieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre_Of`
--

INSERT INTO `Genre_Of` (`Name`, `MovieID`) VALUES
('Adventure', 1),
('Drama', 9),
('Drama', 12),
('Melodrama', 3),
('Musical', 3),
('Science Fiction', 1),
('Science Fiction', 5),
('Science Fiction', 6),
('Science Fiction', 7),
('Science Fiction', 8),
('Teen', 2),
('Thriller', 11);

-- --------------------------------------------------------

--
-- Table structure for table `Movie`
--

CREATE TABLE `Movie` (
  `MovieID` int(11) NOT NULL,
  `ReleaseDate` int(11) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Movie`
--

INSERT INTO `Movie` (`MovieID`, `ReleaseDate`, `Title`) VALUES
(1, 2014, 'Interstellar'),
(2, 2004, 'Mean Girls'),
(3, 2016, 'La La Land'),
(5, 2006, 'The Prestige'),
(6, 2010, 'Inception'),
(7, 2021, 'Dune'),
(8, 2011, 'In Time'),
(9, 2014, 'Whiplash'),
(11, 2012, 'The Hunger Games'),
(12, 1999, 'The Green Mile');

-- --------------------------------------------------------

--
-- Table structure for table `Participant`
--

CREATE TABLE `Participant` (
  `DateOfBirth` date DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Participant`
--

INSERT INTO `Participant` (`DateOfBirth`, `Username`, `UserID`) VALUES
('1998-12-14', 'fkaanyalcin', 25003),
('2000-05-31', 'valeriacasagrande', 26237),
('2000-03-26', 'edakarabudak', 26590),
('1999-09-07', 'ahsenihamza', 26636),
('2000-06-22', 'asumanasli', 26819),
('2001-03-03', 'yunustankerestecioglu', 28168);

-- --------------------------------------------------------

--
-- Table structure for table `Produced`
--

CREATE TABLE `Produced` (
  `MovieID` int(11) NOT NULL,
  `ProID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Produced`
--

INSERT INTO `Produced` (`MovieID`, `ProID`) VALUES
(1, 13023),
(2, 17777),
(3, 15039),
(5, 13023),
(6, 13023),
(7, 11002),
(8, 12002),
(9, 16754),
(11, 11093),
(12, 12345);

-- --------------------------------------------------------

--
-- Table structure for table `Producer`
--

CREATE TABLE `Producer` (
  `ProducerName` varchar(25) DEFAULT NULL,
  `ProID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Producer`
--

INSERT INTO `Producer` (`ProducerName`, `ProID`) VALUES
('Mary Parent', 11002),
('Nina Jacobson', 11093),
('Marc E. Platt', 12001),
('Andrew Niccol', 12002),
('David Valdes', 12345),
('Emma Thomas', 13023),
('Fred Berger', 15039),
('Denis Villeneuve', 16666),
('Jason Blum', 16754),
('Lorne Michaels', 17777);

-- --------------------------------------------------------

--
-- Table structure for table `Rate`
--

CREATE TABLE `Rate` (
  `UserID` int(11) NOT NULL,
  `NumericRating` double DEFAULT NULL,
  `MovieID` int(11) NOT NULL,
  `RateDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rate`
--

INSERT INTO `Rate` (`UserID`, `NumericRating`, `MovieID`, `RateDate`) VALUES
(25003, 3.3, 2, '2004-12-12'),
(25003, 3.4, 11, '2012-02-29'),
(26237, 5, 12, '1999-03-21'),
(26590, 4.5, 3, '2016-03-21'),
(26636, 4.9, 1, '2014-05-12'),
(26636, 4.7, 5, '2006-04-04'),
(26819, 4.8, 6, '2010-11-21'),
(26819, 3.2, 7, '2021-02-23'),
(28168, 4, 8, '2011-06-22'),
(28168, 2.2, 9, '2014-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `Rating`
--

CREATE TABLE `Rating` (
  `NumericRating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rating`
--

INSERT INTO `Rating` (`NumericRating`) VALUES
(0),
(0.1),
(0.2),
(0.3),
(0.4),
(0.5),
(0.6),
(0.7),
(0.8),
(0.9),
(1),
(1.1),
(1.2),
(1.3),
(1.4),
(1.5),
(1.6),
(1.7),
(1.8),
(1.9),
(2),
(2.1),
(2.2),
(2.3),
(2.4),
(2.5),
(2.6),
(2.7),
(2.8),
(2.9),
(3),
(3.1),
(3.2),
(3.3),
(3.4),
(3.5),
(3.6),
(3.7),
(3.8),
(3.9),
(4),
(4.1),
(4.2),
(4.3),
(4.4),
(4.5),
(4.6),
(4.7),
(4.8),
(4.9),
(5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Acted_In`
--
ALTER TABLE `Acted_In`
  ADD PRIMARY KEY (`MovieID`,`ActorID`),
  ADD KEY `ActorID` (`ActorID`);

--
-- Indexes for table `Actor`
--
ALTER TABLE `Actor`
  ADD PRIMARY KEY (`ActorID`);

--
-- Indexes for table `Directed`
--
ALTER TABLE `Directed`
  ADD PRIMARY KEY (`MovieID`,`DirID`),
  ADD KEY `DirID` (`DirID`);

--
-- Indexes for table `Director`
--
ALTER TABLE `Director`
  ADD PRIMARY KEY (`DirID`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `Genre_Of`
--
ALTER TABLE `Genre_Of`
  ADD PRIMARY KEY (`Name`,`MovieID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `Participant`
--
ALTER TABLE `Participant`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `Produced`
--
ALTER TABLE `Produced`
  ADD PRIMARY KEY (`MovieID`,`ProID`),
  ADD KEY `ProID` (`ProID`);

--
-- Indexes for table `Producer`
--
ALTER TABLE `Producer`
  ADD PRIMARY KEY (`ProID`);

--
-- Indexes for table `Rate`
--
ALTER TABLE `Rate`
  ADD PRIMARY KEY (`UserID`,`MovieID`),
  ADD KEY `NumericRating` (`NumericRating`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `Rating`
--
ALTER TABLE `Rating`
  ADD PRIMARY KEY (`NumericRating`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Actor`
--
ALTER TABLE `Actor`
  MODIFY `ActorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55044;

--
-- AUTO_INCREMENT for table `Director`
--
ALTER TABLE `Director`
  MODIFY `DirID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85002;

--
-- AUTO_INCREMENT for table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Participant`
--
ALTER TABLE `Participant`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28169;

--
-- AUTO_INCREMENT for table `Producer`
--
ALTER TABLE `Producer`
  MODIFY `ProID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17778;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Acted_In`
--
ALTER TABLE `Acted_In`
  ADD CONSTRAINT `acted_in_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`),
  ADD CONSTRAINT `acted_in_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `Actor` (`ActorID`);

--
-- Constraints for table `Directed`
--
ALTER TABLE `Directed`
  ADD CONSTRAINT `directed_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`),
  ADD CONSTRAINT `directed_ibfk_2` FOREIGN KEY (`DirID`) REFERENCES `Director` (`DirID`);

--
-- Constraints for table `Genre_Of`
--
ALTER TABLE `Genre_Of`
  ADD CONSTRAINT `genre_of_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `Genre` (`Name`),
  ADD CONSTRAINT `genre_of_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`);

--
-- Constraints for table `Produced`
--
ALTER TABLE `Produced`
  ADD CONSTRAINT `produced_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`),
  ADD CONSTRAINT `produced_ibfk_2` FOREIGN KEY (`ProID`) REFERENCES `Producer` (`ProID`);

--
-- Constraints for table `Rate`
--
ALTER TABLE `Rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Participant` (`UserID`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`NumericRating`) REFERENCES `Rating` (`NumericRating`),
  ADD CONSTRAINT `rate_ibfk_3` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
