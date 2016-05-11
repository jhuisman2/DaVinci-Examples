-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 mei 2016 om 11:06
-- Serverversie: 5.7.9
-- PHP-versie: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_cms`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paginas`
--

DROP TABLE IF EXISTS `paginas`;
CREATE TABLE IF NOT EXISTS `paginas` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `tekst` text NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_alt_tekst` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `paginas`
--

INSERT INTO `paginas` (`id`, `url`, `titel`, `tekst`, `banner_url`, `banner_alt_tekst`) VALUES
(1, 'bobbelpop', 'Dit is bobbelpop', '<h1>Hello World</h1>\r\n<p>Dit is een zinloze tekst.</p>', 'http://www.mooivakanties.nl/images/impressie/malediven/malediven-ari-atol-a.jpg', ''),
(2, 'newUrl', 'Dit is een nieuwe pagina ', '<h1>Dit is een nieuwe pagina</h1>\r\n<p>Test test tset test </p>', 'https://www.leukerecepten.nl/wp-content/uploads/2013/03/appel_roomvlaai.jpg', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
