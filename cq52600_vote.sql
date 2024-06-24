-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 24 2024 г., 08:34
-- Версия сервера: 5.7.44-48
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cq52600_vote`
--

-- --------------------------------------------------------

--
-- Структура таблицы `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FIO` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `candidate`
--

INSERT INTO `candidate` (`id`, `FIO`) VALUES
(1, 'Путин В.В.'),
(2, 'Навальный А.А.'),
(3, 'Жириновский В.В.'),
(4, 'Собчак К.А.'),
(5, 'Против всех'),
(6, 'Недействительный голос');

-- --------------------------------------------------------

--
-- Структура таблицы `polling_station`
--

CREATE TABLE IF NOT EXISTS `polling_station` (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_region` int(8) UNSIGNED NOT NULL,
  `station_number` int(8) UNSIGNED NOT NULL,
  `voter_number` int(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `polling_station`
--

INSERT INTO `polling_station` (`id`, `id_region`, `station_number`, `voter_number`) VALUES
(1, 1, 777777, 13638),
(2, 2, 128567, 15502),
(3, 3, 101010, 64213),
(4, 4, 999999, 18560),
(5, 5, 648234, 18903),
(6, 6, 845287, 31001),
(7, 7, 762893, 19766),
(8, 8, 654321, 15676),
(9, 9, 101010, 29809),
(10, 10, 123456, 20067),
(11, 9, 987654, 12345),
(12, 10, 456789, 13765);

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'Еврейская АО'),
(2, 'Ханты-Мансийский АО'),
(3, 'Ямало-Ненецкий АО'),
(4, 'Москововская обл.'),
(5, 'Ленинградская обл.'),
(6, 'Свердловская обл.'),
(7, 'Краснодарский кр.'),
(8, 'Крым респ.'),
(9, 'Москва'),
(10, 'Санкт-Петербург');

-- --------------------------------------------------------

--
-- Структура таблицы `vote_results`
--

CREATE TABLE IF NOT EXISTS `vote_results` (
  `id_polling_station` int(8) UNSIGNED NOT NULL,
  `id_candidate` int(8) UNSIGNED NOT NULL,
  `vote_number` int(8) UNSIGNED NOT NULL,
  KEY `id_polling_station` (`id_polling_station`),
  KEY `id_candidate` (`id_candidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `vote_results`
--

INSERT INTO `vote_results` (`id_polling_station`, `id_candidate`, `vote_number`) VALUES
(1, 2, 7000),
(3, 4, 5000),
(4, 1, 8000),
(5, 2, 9000),
(6, 4, 8000),
(7, 1, 8000),
(8, 2, 6700),
(9, 4, 18900),
(10, 4, 12000),
(1, 3, 3475),
(1, 4, 0),
(1, 5, 123),
(1, 6, 7),
(1, 1, 33),
(3, 1, 32),
(3, 2, 235),
(3, 3, 708),
(3, 5, 45774),
(3, 6, 3465),
(4, 2, 523),
(4, 3, 3567),
(4, 4, 23),
(4, 5, 685),
(4, 6, 12),
(5, 1, 0),
(5, 3, 1),
(5, 4, 12),
(5, 5, 124),
(5, 6, 4366),
(6, 1, 1542),
(6, 2, 2531),
(6, 3, 66),
(6, 5, 6345),
(6, 6, 9767),
(7, 2, 324),
(7, 3, 1245),
(7, 4, 7685),
(7, 5, 436),
(7, 6, 76),
(8, 1, 537),
(8, 3, 83),
(8, 4, 3568),
(8, 5, 34),
(8, 6, 754),
(9, 1, 5467),
(9, 2, 94),
(9, 3, 346),
(9, 5, 568),
(9, 6, 34),
(10, 1, 1),
(10, 2, 4326),
(10, 3, 758),
(10, 5, 56),
(10, 6, 77),
(2, 1, 2356),
(2, 2, 6598),
(2, 3, 356),
(2, 4, 2349),
(2, 5, 234),
(2, 6, 543),
(11, 1, 5657),
(11, 2, 345),
(11, 3, 234),
(11, 4, 577),
(11, 5, 456),
(11, 6, 34),
(12, 1, 2986),
(12, 2, 3467),
(12, 3, 17),
(12, 4, 3677),
(12, 5, 76),
(12, 6, 32);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `polling_station`
--
ALTER TABLE `polling_station`
  ADD CONSTRAINT `polling_station_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);

--
-- Ограничения внешнего ключа таблицы `vote_results`
--
ALTER TABLE `vote_results`
  ADD CONSTRAINT `vote_results_ibfk_1` FOREIGN KEY (`id_polling_station`) REFERENCES `polling_station` (`id`),
  ADD CONSTRAINT `vote_results_ibfk_2` FOREIGN KEY (`id_candidate`) REFERENCES `candidate` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
