-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Sty 2019, 21:47
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `odzera`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odzera`
--

CREATE TABLE `odzera` (
  `Numer` int(11) NOT NULL,
  `Nr` text COLLATE utf8_polish_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `date` text COLLATE utf8_polish_ci NOT NULL,
  `currency` text COLLATE utf8_polish_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_polish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `odzera`
--

INSERT INTO `odzera` (`Numer`, `Nr`, `cat_id`, `date`, `currency`, `cover`) VALUES
(10, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(14, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(18, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(19, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(20, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(21, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(23, 'Sebek', 8, 'szok', 'ciÄ™zkie                        ', '0'),
(24, 'zenek', 8, 'Historia ustroju', '     arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       \"                       ', 'cover_594434a462f09.png'),
(25, 'jablon', 3, 'Okey', 'Dobre ale za krótkie ', '0'),
(27, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(28, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(29, 'Kazimierz', 3, 'Muzyka duszy i ciaÅ‚a', ' Bez nadziejne                        \"                       ', '0'),
(30, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(31, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(32, '123', 3, 'sdsad', '    sdsadds                    ', '0'),
(33, 'sdsds', 8, 'sds', '              sdsds          ', '0'),
(34, 'dsfdsf', 1, 'sdsds', 'sdsds', '0'),
(35, 'sdsd', 7, 'sdsdsdsd', 'ghytgfd', '0'),
(36, 'sdsd', 3, 'sdsds', 'sdsdsd', '0'),
(37, 'ololiu', 8, 'lklkl', '     lklkl                   ', '0'),
(38, 'klklkllklkllkkl', 8, 'klklklkl', '             lklklkl           ', '0'),
(39, 'John w.', 8, 'CiÄ™Å¼arki z plasteliny', 'This is it. Yea!!                     ', '0'),
(40, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(41, 'iiiiiii', 8, 'iiiii', '     iiii                   ', '0'),
(42, '0000', 1, '0000', '     00000000                   ', '0'),
(43, 'Jan W.', 1, 'KAnapki', 'Nowa pozycja na rynku          ', '0'),
(44, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(45, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(46, '0000', 1, '0000', '     00000000                   ', '0'),
(47, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(48, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(49, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(50, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(51, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(52, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(53, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(54, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(55, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(56, 'Sebek', 8, 'szok', 'ciÄ™zkie                        ', '0'),
(57, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(59, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(60, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(61, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(62, 'Kazimierz', 3, 'Muzyka duszy i ciaÅ‚a', ' Bez nadziejne                        \"                       ', '0'),
(63, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(64, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(65, '123', 3, 'sdsad', '    sdsadds                    ', '0'),
(66, 'sdsds', 8, 'sds', '              sdsds          ', '0'),
(67, 'dsfdsf', 4, 'sdsds', ' sdsds\"                       ', '0'),
(68, 'sdsd', 7, 'sdsdsdsd', 'ghytgfd', '0'),
(69, 'sdsd', 3, 'sdsds', 'sdsdsd', '0'),
(70, 'ololiu', 8, 'lklkl', '     lklkl                   ', '0'),
(72, 'cccccc', 8, 'cccccc', '      ccccc                  ', '0'),
(73, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(74, 'iiiiiii', 8, 'iiiii', '     iiii                   ', '0'),
(75, '0000', 1, '0000', '     00000000                   ', '0'),
(76, 'qqqqqqqq', 1, 'qqqqqqqq', '     qqqqqqqqq                   ', '0'),
(77, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(79, '0000', 1, '0000', '     00000000                   ', '0'),
(80, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(81, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(82, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(83, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(84, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(85, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(86, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(87, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(88, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(89, 'Sebek', 8, 'szok', 'ciÄ™zkie                        ', '0'),
(90, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(91, 'jablon', 3, 'wewee', '          eeeeeedddddddddddddddddddddddddd                   \"                       \"                       \"                       \"                       \"                       ', '0'),
(92, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(93, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(94, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(95, 'Kazimierz', 3, 'Muzyka duszy i ciaÅ‚a', ' Bez nadziejne                        \"                       ', '0'),
(96, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(97, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(98, '123', 3, 'sdsad', '    sdsadds                    ', '0'),
(99, 'sdsds', 8, 'sds', '              sdsds          ', '0'),
(100, 'dsfdsf', 1, 'sdsds', 'sdsds', '0'),
(101, 'sdsd', 7, 'sdsdsdsd', 'ghytgfd', '0'),
(102, 'sdsd', 3, 'sdsds', 'sdsdsd', '0'),
(103, 'ololiu', 8, 'lklkl', '     lklkl                   ', '0'),
(104, 'klklkllklkllkkl', 8, 'klklklkl', '             lklklkl           ', '0'),
(105, 'cccccc', 8, 'cccccc', '      ccccc                  ', '0'),
(106, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(107, 'iiiiiii', 8, 'iiiii', '     iiii                   ', '0'),
(108, '0000', 1, '0000', '     00000000                   ', '0'),
(110, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(111, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(112, '0000', 1, '0000', '     00000000                   ', '0'),
(113, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(114, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(115, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(116, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(117, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(118, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(119, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(120, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(121, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(122, 'Sebek', 8, 'szok', 'ciÄ™zkie                        ', '0'),
(123, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(124, 'Jarek OgÃ³rek', 7, 'PociÄ…g', 'Moze byÄ‡. Ale gÅ‚Ã³wny bohater jest tendencyjny.                  ', '0'),
(125, 'sdsd', 7, 'sdsdsdsd', 'ghytgfd', '0'),
(126, 'sdsd', 3, 'sdsds', 'sdsdsd', '0'),
(127, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(128, 'iiiiiii', 8, 'iiiii', '     iiii                   ', '0'),
(132, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', '  super k ...kkk                       \"                       \"                       ', '0'),
(133, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(134, 'jablon', 3, 'wewee', 'Moze byÄ‡. Ale gÅ‚Ã³wny bohater jest tendencyjny.                 \"                       \"                       \"                       \"                       \"                       \"                       ', '0'),
(135, 'dsfdsf', 1, 'sdsds', 'sdsds', '0'),
(136, 'sdsd', 7, 'sdsdsdsd', 'ghytgfd', '0'),
(137, 'sdsd', 3, 'sdsds', 'sdsdsd', '0'),
(138, 'ololiu', 8, 'lklkl', '     lklkl                   ', '0'),
(139, 'klklkllklkllkkl', 8, 'klklklkl', '             lklklkl           ', '0'),
(140, 'cccccc', 8, 'cccccc', '      ccccc                  ', '0'),
(141, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(142, 'iiiiiii', 8, 'iiiii', '     iiii                   ', '0'),
(143, '0000', 1, '0000', '     00000000                   ', '0'),
(144, 'qqqqqqqq', 1, 'qqqqqqqq', '     qqqqqqqqq                   ', '0'),
(148, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(149, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(150, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(151, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(152, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(153, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(154, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(155, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(156, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(157, 'Sebek', 8, 'szok', 'ciÄ™zkie                        ', '0'),
(158, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(159, 'Dablon E.', 3, 'Bajki', 'WartoÅ›ciowe         ', '0'),
(160, '0000', 1, '0000', '     00000000                   ', '0'),
(162, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(163, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(164, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(165, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(166, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(167, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(168, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(169, 'Jablon Andrzej', 3, 'Szachy', 'Moze byÄ‡. Ale gÅ‚Ã³wny bohater jest tendencyjny.                   \"                       \"                       \"                       \"                       \"                       \"                       ', '0'),
(170, '0000', 1, '0000', '     00000000                   ', '0'),
(171, 'qqqqqqqq', 1, 'qqqqqqqq', '     qqqqqqqqq                   ', '0'),
(172, ',,,,,,,,,', 1, ',,,,,,,,,,', '    ,,,,,,,,,,,,                    ', '0'),
(173, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(174, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(175, ',,,,,,,,,dfdf', 1, ',,,,,,,,,,dfdfdf', '    ,,,,,,,,,,,,                    ', '0'),
(176, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(177, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(178, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(179, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(180, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(181, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(182, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(183, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(184, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(186, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(187, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(188, 'jablon', 3, 'wewee', 'Dobre                 ', '0'),
(189, '0000', 1, '0000', '     00000000                   ', '0'),
(190, 'Anna', 1, 'Straszne', '  Szok     ', '0'),
(191, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(192, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(193, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(194, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(195, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(196, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(197, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(198, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(199, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(200, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(201, 'Kazimierz', 3, 'Muzyka duszy i ciaÅ‚a', ' Bez nadziejne                        \"                       ', '0'),
(202, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(203, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(207, 'sdsd', 7, 'sdsdsdsd', 'ghytgfd', '0'),
(212, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(214, '0000', 1, '0000', '     00000000                   ', '0'),
(215, '0000', 1, '0000', '     00000000                   ', '0'),
(216, 'qqqqqdqqq', 1, 'dqqqqqqqq', '     qqqqqqqqq                   ', '0'),
(217, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(218, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', ' super k ...                        \"                       ', '0'),
(219, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(220, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(221, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(222, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(223, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(224, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(225, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(226, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(227, 'Kazimierz', 3, 'Muzyka duszy i ciaÅ‚a', ' Bez nadziejne                        \"                       ', '0'),
(228, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(229, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(230, '123', 3, 'sdsad', '    sdsadds                    ', '0'),
(231, 'sdsds', 8, 'sds', '              sdsds          ', '0'),
(232, 'dsfdsf', 1, 'sdsds', 'sdsds', '0'),
(235, 'ololiu', 8, 'lklkl', '     lklkl                   ', '0'),
(236, 'klklkllklkllkkl', 8, 'klklklkl', '             lklklkl           ', '0'),
(238, 'ggggg', 4, 'gggg', '      ggggg                  ', '0'),
(239, 'iiiiiii', 8, 'iiiii', '     iiii                   ', '0'),
(241, '0000', 1, '0000', '     00000000                   ', '0'),
(242, 'Marian Wolny', 1, 'AK47', 'Nuda, starta czasu', '0'),
(243, 'kop', 4, 'prÄ…d elektryczny', '   dobre ale bez przykÅ‚adÃ³w\"                       \"                       \"                       ', '0'),
(244, '5a', 3, 'cos tam cos i jeszcze', '  moÅ¼e byÄ‡ ale za drogie bezrobocie przeciÅ¼ jest\"                       \r\n                       \r\n                       \"                       ', '0'),
(245, 'John Sincl', 3, 'English', 'The book of the year            ', '0'),
(246, 'PaweÅ‚ Pawelski', 4, 'Nowa jakoÅ›Ä‡', '  super nowoÅ›Ä‡                        \"                       \"                       ', '0'),
(247, 'elvis', 1, 'Opowiadania socjologiczne', '   sÅ‚aba ale niedrogie                        \"   ale dobre                    \"                       \"                       ', '0'),
(248, 'lola ola', 4, 'Dance with crew', '  Dobry poradnik dla poczÄ…tkujÄ…cych                        \"                       \"                       ', '0'),
(249, 'Sebek', 8, 'szok', 'ciÄ™zkie                        ', '0'),
(250, 'zenek', 8, 'Historia ustroju', '    arczo powaÅ¼ne                        \"                       \"                       \"                       \"                       ', '0'),
(251, 'jablon', 3, 'wewee', 'Trudno siÄ™ wypowiedzieÄ‡                                                                                                                                       ', '0'),
(252, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(253, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(254, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(255, 'Kazimierz', 3, 'Muzyka duszy i ciaÅ‚a', ' Bez nadziejne                        \"                       ', '0'),
(256, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(257, 'JÃ³zef W.', 1, 'Bajki', 'Nowa pozycja w katalogu           ', '0'),
(269, 'Zenek W.', 8, 'Historia ustroju', 'TrochÄ™ nie na temat                                       ', '0'),
(270, 'Monika Oko-Wak', 8, 'Przepisy', '    Mocne                                                               ', '0'),
(271, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(272, 'JÃ³zef', 1, 'bajki', ' Dla maÅ‚ych dni                       \"                       ', '0'),
(273, 'Jankowski', 7, 'Sprawa Leszczaka', '  Z pozoru dobre                        \"                       \"                       ', '0'),
(274, 'Monika Oko-Wak', 8, 'Pzepisy', '   Mocne                        \"                       \"                       \"                       ', '0'),
(275, 'Jacek', 8, 'PrzyszÅ‚oÅ›Ä‡', '  WaÅ¼na pozycja                        \"                       \"                       ', '0'),
(277, 'KozÅ‚owska', 4, 'Big world', 'MiÅ‚e bardzo                       ', '0'),
(278, 'JÃ³zef', 1, 'bajki', '  Dla maÅ‚ych dni                       \"                       \"                       ', 'cover_59444d6642d62.png'),
(280, 'Marchewka', 7, 'DziaÅ‚ka', ' Praktyczne pordy                    \"                       ', '0'),
(285, 'Bojanowski', 8, 'Kable i wtyczki', 'SÅ‚abe nieaktualne        ', '0'),
(291, 'J.K. Ewren', 1, 'Zima ', 'Bardzo dobre, nieoczekiwane zakoÅ„czenie.                                   ', '0'),
(296, 'Kowal', 7, 'Guns and power', '  DoskonaÅ‚a pozycja na zimowe wieczory.                                ', 'cover_59443560acdbb.png'),
(297, 'Roman', 8, 'Programowanie', ' Pozycja obowiÄ…zkowa dla kaÅ¼dego                                     ', '0'),
(298, 'A. WÄ™giel', 3, 'Dobranoc', 'Okkkkkkkkkkkey           ', '0'),
(300, 'Janek Dzbanek', 1, 'Czytanka', ' OK           \"                       ', 'cover_59443288339a0.png'),
(301, 'Nowy Jan', 3, 'Czas na rower', '  WaÅ¼na pozycja                        \"                       \"                       ', 'cover_5944326d71ba6.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `odzera`
--
ALTER TABLE `odzera`
  ADD PRIMARY KEY (`Numer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `odzera`
--
ALTER TABLE `odzera`
  MODIFY `Numer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
