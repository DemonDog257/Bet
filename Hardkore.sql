-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 28 2020 г., 15:51
-- Версия сервера: 5.7.20-log
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Hardkore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(3, 'Dog', '$2y$10$0K.zwE/Hz7roLYKEUt/V.eTiLlonif1RH367yKxcbqaCZm3ckX/FK');

-- --------------------------------------------------------

--
-- Структура таблицы `cof`
--

CREATE TABLE `cof` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cof` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cof`
--

INSERT INTO `cof` (`id`, `name`, `cof`) VALUES
(1, '_BLAKC_HuNT3R_', 3.1),
(2, 'ferkin_naumov', 3.1),
(3, 'FruitVanilo_', 3.1),
(4, 'HeNGbro', 3.1),
(5, 'DidYouMuch_1337', 1.4),
(6, 'Omega_Lord_', 1.4),
(7, 'pro_pvp_spam_228', 2.2),
(8, 'BANd1t_ru', 2.2),
(9, 'GlebImmortal01', 3.17),
(10, '_Cheloveks_', 3.1),
(11, 'AshleyJamesy', 3.1),
(12, 'ArtemMarder', 2.2),
(13, 'killmaster65', 3.1),
(14, 'Binnerdone___', 1.4),
(15, 'Frommy_', 2.2),
(16, 'Ishmurat', 1.4),
(17, '4sing', 2.2),
(18, 'spam_original', 2.2),
(19, 'StepanBandera', 1.4),
(20, '_ty4kaWin', 2.2),
(21, '_Kiper_', 3.1),
(22, 'CABBAGE_20Fps', 2.2),
(23, 'Maks_KMS', 2.2),
(24, 'Darktalon9', 2.2),
(25, 'Ancin2007', 2.2),
(26, 'Hares900', 2.2),
(27, 'Legendary_Kankal', 2.2),
(28, 'RaZLeN_', 2.2),
(29, 'spam_orignal', 3.1),
(30, '_ArBuZ1K_', 3.17),
(31, 'turbokryser', 2.2),
(32, 'ramzik_aga', 2.2),
(33, '_ILYTO', 2.2),
(34, 'Binnerdone__', 2.2),
(35, 'Love_Tea', 3.1),
(36, 'WHITNAGE', 2.2),
(37, 'Kanntay', 3.1),
(38, 'ImbuedWithYouth', 2.2),
(39, 'Annclin', 3.1),
(40, '_RaZLeN_', 2.2),
(41, '_kewi_', 1.4),
(42, 'WexQ', 3.1),
(43, 'Nelicurne', 3.1),
(44, 'Kanntyk', 3.1),
(45, 'FivFiv888', 2.2),
(46, 'Bohomol', 3.1),
(47, 'Kyrlikas', 3.1),
(48, 'Ravil_', 3.1),
(49, 'Binerdone___', 2.2),
(50, '_Yuko_Chan_', 3.1),
(51, '__G0lub__', 3.1),
(52, 'BlisstyNoHan_TAC0BELL_', 3.1),
(53, 'CanadianPepsi', 3.1),
(54, 'Raftor_Loh', 3.1),
(55, 'ochristman', 3.1),
(56, 'PateWy', 3.1),
(57, '_TAC0BELL_', 3.1),
(58, 'BlisstyNoHan', 3.1),
(59, 'turbocryser', 3.1),
(60, '_SHED_', 3.1),
(61, 'User_X_pro', 3.1),
(62, 'Zer300789', 3.1),
(63, 'zMaTTyIcEx', 3.1);

-- --------------------------------------------------------

--
-- Структура таблицы `gamer`
--

CREATE TABLE `gamer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `game` int(11) NOT NULL,
  `victory` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `gamer`
--

INSERT INTO `gamer` (`id`, `name`, `game`, `victory`) VALUES
(75, '_BLAKC_HuNT3R_', 11, 0),
(76, 'Darktalon9', 8, 0),
(77, 'Dmitry_Danger', 1, 0),
(78, 'Finch_16', 1, 0),
(79, 'GlebImmortal01', 10, 3),
(80, 'H1S3R', 1, 0),
(81, 'Maks_KMS', 8, 0),
(82, 'ramzik_aga', 4, 0),
(83, '_Cheloveks_', 7, 0),
(84, 'ILYTO', 1, 0),
(85, 'Binerdone___', 3, 0),
(86, 'DidYouMuch_1337', 8, 1),
(87, 'ferkin_naumov', 11, 0),
(88, 'HeNGbro', 9, 0),
(89, 'Ishmurat', 13, 1),
(90, 'Legendary_Kankal', 2, 0),
(91, 'Love_Tea', 10, 0),
(92, 'Omega_Lord_', 11, 1),
(93, 'Raftor_Loh', 4, 0),
(94, 'RekkoFunny', 1, 0),
(95, 'SelenaSanDevil', 1, 0),
(96, 'spam_original', 4, 0),
(97, 'Heress900', 1, 0),
(98, '_ArBuZ1K_', 10, 3),
(101, '_ILYTO', 1, 0),
(102, 'turbokryser', 1, 0),
(103, 'spam_orignal', 6, 0),
(104, 'RaZLeN_', 1, 0),
(105, 'Hares900', 1, 0),
(106, 'Binnerdone___', 6, 1),
(107, 'Ancin2007', 1, 0),
(108, '_kewi_', 8, 1),
(109, '_RaZLeN_', 1, 0),
(110, 'Annclin', 4, 0),
(111, 'AshleyJamesy', 10, 0),
(112, 'BANd1t_ru', 3, 0),
(113, 'Frommy_', 5, 0),
(114, 'FruitVanilo_', 8, 0),
(115, 'ImbuedWithYouth', 3, 0),
(116, 'Kanntay', 8, 1),
(117, 'killmaster65', 10, 0),
(118, 'StepanBandera', 7, 1),
(119, 'WHITNAGE', 1, 0),
(120, '_Kiper_', 6, 0),
(121, '_ty4kaWin', 1, 0),
(122, 'ArtemMarder', 1, 0),
(123, 'CABBAGE_20Fps', 4, 0),
(124, 'pro_pvp_spam_228', 1, 0),
(125, '4sing', 2, 0),
(126, 'Nelicurne', 3, 0),
(127, 'WexQ', 6, 0),
(128, '__G0lub__', 5, 0),
(129, 'Chenz_', 2, 0),
(130, 'Sosow80', 1, 0),
(131, 'Repka_Pipka', 1, 0),
(132, '_Saxorok_', 1, 0),
(133, '_Yuko_Chan_', 5, 0),
(134, 'Ravil_', 2, 0),
(135, 'Kyrlikas', 5, 0),
(136, 'Bohomol', 4, 0),
(137, 'FivFiv888', 1, 0),
(138, 'Kanntyk', 2, 0),
(139, 'ochristman', 3, 0),
(140, 'CanadianPepsi', 4, 0),
(142, 'BlisstyNoHan', 1, 0),
(143, '_TAC0BELL_', 3, 0),
(144, 'PateWy', 2, 0),
(145, 'zMaTTyIcEx', 1, 0),
(146, 'Zer300789', 2, 0),
(147, 'User_X_pro', 2, 0),
(148, '_SHED_', 2, 0),
(149, 'turbocryser', 2, 0),
(150, 'WhiteBeef', 11, 0),
(151, 'ArBuZ1K', 1, 0),
(152, 'GimmeAspirine', 1, 0),
(153, '_YukoChan', 1, 0),
(154, 'Kiper', 1, 0),
(155, 'Pony_vtampone', 1, 0),
(156, 'Frommy', 1, 0),
(157, 'kewi', 1, 0),
(158, 'TAC0BELL', 1, 0),
(159, 'Cheloveks', 1, 0),
(160, '_BLAKCHuNT3R', 1, 0),
(161, 'Deatel', 1, 0),
(162, 'G0lub', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kill`
--

CREATE TABLE `kill` (
  `id` int(11) UNSIGNED NOT NULL,
  `money` int(11) UNSIGNED DEFAULT NULL,
  `kill` int(11) UNSIGNED DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `stavki`
--

CREATE TABLE `stavki` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `money` int(11) UNSIGNED DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `money` float DEFAULT NULL,
  `varefait` int(11) UNSIGNED DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `number`, `money`, `varefait`, `token`) VALUES
(2, 'SpeedDog_Show', '$2y$10$5kkQGaxcMItaA4Id3xlWbOxZZ4VI1G4.ZzLaEDBQklZuNi49QMjLy', 'bieliksergi@gmail.com', '0995051688', 1000, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `vidnoshenya`
--

CREATE TABLE `vidnoshenya` (
  `nickname` varchar(255) NOT NULL,
  `vidn` float NOT NULL DEFAULT '0',
  `nikname` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `vidsotok`
--

CREATE TABLE `vidsotok` (
  `id` int(11) NOT NULL,
  `nikname` varchar(255) NOT NULL,
  `vidsotok` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `vives`
--

CREATE TABLE `vives` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pubdata` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `vives`
--

INSERT INTO `vives` (`id`, `name`, `pubdata`) VALUES
(7, 'GlebImmortal01', '2020-06-08'),
(10, '_ArBuZ1K_', '2020-06-08'),
(11, '_ArBuZ1K_', '2020-06-08'),
(12, 'GlebImmortal01', '2020-06-08'),
(13, 'DidYouMuch_1337', '2020-06-08'),
(14, '_kewi_', '2020-06-08'),
(15, 'StepanBandera', '2020-06-08'),
(16, 'Binnerdone___', '2020-06-08'),
(17, 'Omega_Lord_', '2020-06-08'),
(18, 'Ishmurat', '2020-06-09'),
(19, '_ArBuZ1K_', '2020-06-09'),
(20, 'GlebImmortal01', '2020-06-09'),
(21, 'Kanntay', '2020-06-09');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cof`
--
ALTER TABLE `cof`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gamer`
--
ALTER TABLE `gamer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kill`
--
ALTER TABLE `kill`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stavki`
--
ALTER TABLE `stavki`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vidsotok`
--
ALTER TABLE `vidsotok`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vives`
--
ALTER TABLE `vives`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `cof`
--
ALTER TABLE `cof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `gamer`
--
ALTER TABLE `gamer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT для таблицы `kill`
--
ALTER TABLE `kill`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `stavki`
--
ALTER TABLE `stavki`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `vidsotok`
--
ALTER TABLE `vidsotok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vives`
--
ALTER TABLE `vives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
