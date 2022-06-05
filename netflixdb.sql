-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 05 Haz 2022, 18:36:41
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `netflixdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Acted_In`
--

CREATE TABLE `Acted_In` (
  `MovieID` int(11) NOT NULL,
  `ActorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Actor`
--

CREATE TABLE `Actor` (
  `ActorName` varchar(25) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ActorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Directed`
--

CREATE TABLE `Directed` (
  `MovieID` int(11) NOT NULL,
  `DirID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Director`
--

CREATE TABLE `Director` (
  `DirectorName` varchar(25) DEFAULT NULL,
  `DirID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Genre`
--

CREATE TABLE `Genre` (
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Genre_Of`
--

CREATE TABLE `Genre_Of` (
  `Name` varchar(20) NOT NULL,
  `MovieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Movie`
--

CREATE TABLE `Movie` (
  `MovieID` int(11) NOT NULL,
  `ReleaseDate` int(11) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `Movie`
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
-- Tablo için tablo yapısı `Participant`
--

CREATE TABLE `Participant` (
  `DateOfBirth` date DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Produced`
--

CREATE TABLE `Produced` (
  `MovieID` int(11) NOT NULL,
  `ProID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Producer`
--

CREATE TABLE `Producer` (
  `ProducerName` varchar(25) DEFAULT NULL,
  `ProID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Rate`
--

CREATE TABLE `Rate` (
  `UserID` int(11) NOT NULL,
  `NumericRating` double DEFAULT NULL,
  `MovieID` int(11) NOT NULL,
  `RateDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Rating`
--

CREATE TABLE `Rating` (
  `NumericRating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `Acted_In`
--
ALTER TABLE `Acted_In`
  ADD PRIMARY KEY (`MovieID`,`ActorID`),
  ADD KEY `ActorID` (`ActorID`);

--
-- Tablo için indeksler `Actor`
--
ALTER TABLE `Actor`
  ADD PRIMARY KEY (`ActorID`);

--
-- Tablo için indeksler `Directed`
--
ALTER TABLE `Directed`
  ADD PRIMARY KEY (`MovieID`,`DirID`),
  ADD KEY `DirID` (`DirID`);

--
-- Tablo için indeksler `Director`
--
ALTER TABLE `Director`
  ADD PRIMARY KEY (`DirID`);

--
-- Tablo için indeksler `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`Name`);

--
-- Tablo için indeksler `Genre_Of`
--
ALTER TABLE `Genre_Of`
  ADD PRIMARY KEY (`Name`,`MovieID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Tablo için indeksler `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`MovieID`);

--
-- Tablo için indeksler `Participant`
--
ALTER TABLE `Participant`
  ADD PRIMARY KEY (`UserID`);

--
-- Tablo için indeksler `Produced`
--
ALTER TABLE `Produced`
  ADD PRIMARY KEY (`MovieID`,`ProID`),
  ADD KEY `ProID` (`ProID`);

--
-- Tablo için indeksler `Producer`
--
ALTER TABLE `Producer`
  ADD PRIMARY KEY (`ProID`);

--
-- Tablo için indeksler `Rate`
--
ALTER TABLE `Rate`
  ADD PRIMARY KEY (`UserID`,`MovieID`),
  ADD KEY `NumericRating` (`NumericRating`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Tablo için indeksler `Rating`
--
ALTER TABLE `Rating`
  ADD PRIMARY KEY (`NumericRating`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `Actor`
--
ALTER TABLE `Actor`
  MODIFY `ActorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `Director`
--
ALTER TABLE `Director`
  MODIFY `DirID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `Movie`
--
ALTER TABLE `Movie`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `Participant`
--
ALTER TABLE `Participant`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `Producer`
--
ALTER TABLE `Producer`
  MODIFY `ProID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `Acted_In`
--
ALTER TABLE `Acted_In`
  ADD CONSTRAINT `acted_in_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`),
  ADD CONSTRAINT `acted_in_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `Actor` (`ActorID`);

--
-- Tablo kısıtlamaları `Directed`
--
ALTER TABLE `Directed`
  ADD CONSTRAINT `directed_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`),
  ADD CONSTRAINT `directed_ibfk_2` FOREIGN KEY (`DirID`) REFERENCES `Director` (`DirID`);

--
-- Tablo kısıtlamaları `Genre_Of`
--
ALTER TABLE `Genre_Of`
  ADD CONSTRAINT `genre_of_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `Genre` (`Name`),
  ADD CONSTRAINT `genre_of_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`);

--
-- Tablo kısıtlamaları `Produced`
--
ALTER TABLE `Produced`
  ADD CONSTRAINT `produced_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`),
  ADD CONSTRAINT `produced_ibfk_2` FOREIGN KEY (`ProID`) REFERENCES `Producer` (`ProID`);

--
-- Tablo kısıtlamaları `Rate`
--
ALTER TABLE `Rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Participant` (`UserID`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`NumericRating`) REFERENCES `Rating` (`NumericRating`),
  ADD CONSTRAINT `rate_ibfk_3` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
