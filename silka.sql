-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 21, 2023 at 08:36 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaj_karnety`
--

CREATE TABLE `rodzaj_karnety` (
  `id_karnet` int(10) NOT NULL,
  `nazwa` varchar(30) NOT NULL,
  `cena` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rodzaj_karnety`
--

INSERT INTO `rodzaj_karnety` (`id_karnet`, `nazwa`, `cena`) VALUES
(1, 'karnet_1mies', 200.00),
(2, 'karnet_3mies', 500.00),
(3, 'karnet_6mies', 900.00),
(4, 'karnet_1rok', 1600.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Olga', 'Ieresh', '666777888', '0la@gmail.com'),
(2, 'Nastka', 'Ieresh', '6784562000', 'nas@edu.pl'),
(3, 'olga', 'kowalokp', '666777877', 'nied@gmail.com'),
(4, 'olga', 'kowalokp', '666777877', 'nied@gmail.com'),
(5, 'olga', 'kowalokp', '666777877', 'nied@gmail.com'),
(6, 'olga', 'kowalokp', '666777877', 'nied@gmail.com'),
(7, 'olga', 'kowalokp', '666777877', 'nied@gmail.com'),
(8, 'olga', 'kowalokp', '666777877', 'nied@gmail.com'),
(9, '', '', '', ''),
(10, '', '', '', ''),
(11, '', '', '', ''),
(12, '', '', '', ''),
(13, '', '', '', ''),
(14, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(15, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(16, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(17, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(18, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(19, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(20, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(21, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(22, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(23, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(24, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(25, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(26, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(27, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(28, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(29, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(30, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(31, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(32, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(33, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(34, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(35, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(36, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(37, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(38, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(39, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(40, 'niedziela', 'niedz', '6784562000', 'marok@l.pl'),
(41, 'niedziela', 'niedz', '6784562000', 'marok@l.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakupy`
--

CREATE TABLE `zakupy` (
  `id_zakupu` int(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_karnet` int(11) NOT NULL,
  `data_zakupu` date NOT NULL,
  `data_waznosci` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zakupy`
--

INSERT INTO `zakupy` (`id_zakupu`, `id_user`, `id_karnet`, `data_zakupu`, `data_waznosci`) VALUES
(1, 1, 1, '2023-10-19', '0000-00-00'),
(2, 2, 2, '2023-10-19', '0000-00-00'),
(3, 3, 3, '2023-10-19', '2024-04-19'),
(4, 4, 3, '2023-10-19', '2024-04-19'),
(5, 5, 3, '2023-10-19', '2024-04-19'),
(6, 6, 3, '2023-10-19', '2024-04-19'),
(7, 7, 3, '2023-10-19', '2024-04-19'),
(8, 8, 3, '2023-10-19', '2024-04-19'),
(9, 14, 4, '2023-10-19', '0000-00-00'),
(10, 15, 1, '2023-10-19', '2023-11-19'),
(11, 16, 1, '2023-10-19', '2023-11-19'),
(12, 17, 1, '2023-10-19', '2023-11-19'),
(13, 18, 1, '2023-10-19', '2023-11-19'),
(14, 19, 1, '2023-10-19', '2023-11-19'),
(15, 20, 1, '2023-10-19', '2023-11-19'),
(16, 21, 1, '2023-10-19', '2023-11-19'),
(17, 22, 1, '2023-10-19', '2023-11-19'),
(18, 23, 1, '2023-10-19', '2023-11-19'),
(19, 24, 1, '2023-10-19', '2023-11-19'),
(20, 25, 1, '2023-10-19', '2023-11-19'),
(21, 26, 1, '2023-10-19', '2023-11-19'),
(22, 27, 1, '2023-10-19', '2023-11-19'),
(23, 28, 1, '2023-10-19', '2023-11-19'),
(24, 29, 1, '2023-10-19', '2023-11-19'),
(25, 30, 1, '2023-10-19', '2023-11-19'),
(26, 31, 1, '2023-10-19', '2023-11-19'),
(27, 32, 1, '2023-10-19', '2023-11-19'),
(28, 33, 1, '2023-10-19', '2023-11-19'),
(29, 34, 1, '2023-10-19', '2023-11-19'),
(30, 35, 1, '2023-10-19', '2023-11-19'),
(31, 36, 1, '2023-10-19', '2023-11-19'),
(32, 37, 1, '2023-10-19', '2023-11-19'),
(33, 38, 1, '2023-10-19', '2023-11-19'),
(34, 39, 1, '2023-10-19', '2023-11-19'),
(35, 40, 1, '2023-10-19', '2023-11-19'),
(36, 41, 1, '2023-10-20', '2023-11-20');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rodzaj_karnety`
--
ALTER TABLE `rodzaj_karnety`
  ADD PRIMARY KEY (`id_karnet`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeksy dla tabeli `zakupy`
--
ALTER TABLE `zakupy`
  ADD PRIMARY KEY (`id_zakupu`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_karnet` (`id_karnet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rodzaj_karnety`
--
ALTER TABLE `rodzaj_karnety`
  MODIFY `id_karnet` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `zakupy`
--
ALTER TABLE `zakupy`
  MODIFY `id_zakupu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zakupy`
--
ALTER TABLE `zakupy`
  ADD CONSTRAINT `zakupy_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `zakupy_ibfk_2` FOREIGN KEY (`id_karnet`) REFERENCES `rodzaj_karnety` (`id_karnet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
