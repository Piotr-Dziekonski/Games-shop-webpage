-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Gru 2015, 08:44
-- Wersja serwera: 5.6.26
-- Wersja PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `database`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE IF NOT EXISTS `gry` (
  `idGry` int(6) NOT NULL,
  `tytul` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `gatunek` varchar(16) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `dataPremiery` date NOT NULL,
  `ocena` varchar(16) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `platforma` varchar(16) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `gry`
--

INSERT INTO `gry` (`idGry`, `tytul`, `gatunek`, `dataPremiery`, `ocena`, `platforma`, `obrazek`, `cena`) VALUES
(1, 'Fallout 4', 'RPG', '2015-11-10', '8.5/10', 'PC', 'img/fallout4pccover.jpg', 119.99),
(2, 'Fifa 16', 'Sportowe', '2015-09-22', '7/10', 'XBOXONE', 'img/fifa16cover.jpg', 119.99),
(3, 'Star Wars Battlefront', 'Akcji', '2015-11-19', '8/10', 'PS4', 'img/starwarsbattlefrontps4cover.jpg', 159.99),
(4, 'Dark Souls 2', 'RPG', '2014-04-25', '9/10', 'PS3', 'img/darksouls2ps3cover.jpg', 59.99),
(5, 'Mirror''s Edge Catalyst', 'Akcji', '2016-05-26', '-/10', 'PS4', 'img/mirrorsedgecatalystps4cover.jpg', 169.99),
(6, 'GRID 2', 'Wyścigowe', '2013-05-31', '8/10', 'PS3', 'img/grid2ps3cover.jpg', 39.99),
(7, 'The Wolf Among Us', 'Przygodowe', '2013-10-11', '8/10', 'PC', 'img/thewolfamonguspccover.jpg', 79.99),
(8, 'Wiedźmin 3 Dziki Gon', 'Akcji', '2015-05-19', '9/10', 'PC', 'img/wiedzmin3dzikigonpccover.jpg', 159.99),
(9, 'Assassin''s Creed Syndicate', 'Akcji', '2015-10-23', '9/10', 'XBOXONE', 'img/assasinscreedsyndicatexboxonecover.jpg', 159.99),
(10, 'Fallout 4', 'RPG', '2015-11-10', '8.5/10', 'PS4', 'img/fallout4ps4cover.jpg', 119.99),
(11, 'Call of Duty Black Ops 3', 'Akcji', '2015-11-06', '7/10', 'PC', 'img/callofdutyblackops3pccover.jpg', 119.99),
(12, 'Just Cause 3', 'Akcji', '2015-12-01', '8.5/10', 'PC', 'img/justcause3pccover.jpg', 159.99),
(13, 'LEGO Marvel''s Avengers', 'Dla dzieci', '2016-01-29', '-/10', 'XBOX360', 'img/legomarvelsavengersxbox360cover.jpg', 169.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL,
  `imie` varchar(11) CHARACTER SET latin1 NOT NULL,
  `nazwisko` varchar(11) CHARACTER SET latin1 NOT NULL,
  `login` varchar(11) CHARACTER SET latin1 NOT NULL,
  `haslo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ulica` varchar(11) CHARACTER SET latin1 NOT NULL,
  `nrDomu` varchar(11) CHARACTER SET latin1 NOT NULL,
  `nrMieszkania` varchar(11) CHARACTER SET latin1 NOT NULL,
  `miasto` varchar(11) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`idUser`, `imie`, `nazwisko`, `login`, `haslo`, `ulica`, `nrDomu`, `nrMieszkania`, `miasto`) VALUES
(3, 'Bartek', 'Kasiura', 'bkasiura', '05ba3e06daf48c3836c05c1330443f7f', 'Jaka?tam', '4', '6', 'Wroc?aw'),
(4, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE IF NOT EXISTS `zamowienia` (
  `idZam` int(10) NOT NULL,
  `przedmioty` varchar(600) COLLATE utf8_bin NOT NULL,
  `cena` float NOT NULL,
  `user` varchar(50) CHARACTER SET latin1 NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`idZam`, `przedmioty`, `cena`, `user`, `data`) VALUES
(1, 'Call of Duty Black Ops 3//', 119.99, 'bkasiura', '2015-12-18 08:01:21');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`idGry`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`idZam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `gry`
--
ALTER TABLE `gry`
  MODIFY `idGry` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `idZam` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
