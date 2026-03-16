-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2026 at 09:29 AM
-- Wersja serwera: 8.4.7
-- Wersja PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `struktura`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mieszkancy`
--

DROP TABLE IF EXISTS `mieszkancy`;
CREATE TABLE IF NOT EXISTS `mieszkancy` (
  `id_mieszkanca` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nazwisko` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adres` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_mieszkanca`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpady`
--

DROP TABLE IF EXISTS `odpady`;
CREATE TABLE IF NOT EXISTS `odpady` (
  `id_odpadu` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typ` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci,
  `id_zlecenia` int DEFAULT NULL,
  PRIMARY KEY (`id_odpadu`),
  KEY `id_zlecenia` (`id_zlecenia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

DROP TABLE IF EXISTS `pojazdy`;
CREATE TABLE IF NOT EXISTS `pojazdy` (
  `id_pojazdu` int NOT NULL AUTO_INCREMENT,
  `marka` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejestracja` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_pojazdu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
CREATE TABLE IF NOT EXISTS `pracownicy` (
  `id_pracownika` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nazwisko` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stanowisko` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_pracownika`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zlecenia`
--

DROP TABLE IF EXISTS `zlecenia`;
CREATE TABLE IF NOT EXISTS `zlecenia` (
  `id_zlecenia` int NOT NULL AUTO_INCREMENT,
  `adres` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `id_pracownika` int DEFAULT NULL,
  `id_pojazdu` int DEFAULT NULL,
  PRIMARY KEY (`id_zlecenia`),
  KEY `id_pracownika` (`id_pracownika`),
  KEY `id_pojazdu` (`id_pojazdu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
