-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 16 2020 г., 01:14
-- Версия сервера: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `find_object`
--

CREATE TABLE `find_object` (
  `ID` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `detect_object` char(20) DEFAULT NULL,
  `position_start_x` int(11) DEFAULT NULL,
  `position_start_y` int(11) DEFAULT NULL,
  `position_end_x` int(11) DEFAULT NULL,
  `position_end_y` int(11) DEFAULT NULL,
  `time_stamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `find_object`
--

INSERT INTO `find_object` (`ID`, `file_name`, `detect_object`, `position_start_x`, `position_start_y`, `position_end_x`, `position_end_y`, `time_stamp`) VALUES
(1, 'sitylink_test image1.png', 'traffic light', 2962, 541, 3007, 660, 1605478168),
(2, 'sitylink_test image1.png', 'car', 14, 961, 91, 1040, 1605478168),
(3, 'sitylink_test image1.png', 'traffic light', 3112, 610, 3152, 689, 1605478168),
(4, 'sitylink_test image1.png', 'traffic light', 3754, 1008, 3797, 1064, 1605478168),
(5, 'sitylink_test image1.png', 'car', 3194, 1186, 3265, 1240, 1605478168),
(6, 'sitylink_test image1.png', 'car', 1427, 912, 1536, 959, 1605478168),
(7, 'sitylink_test image1.png', 'car', 566, 927, 667, 982, 1605478168),
(8, 'sitylink_test image1.png', 'car', 2990, 1045, 3142, 1159, 1605478168),
(9, 'sitylink_test image1.png', 'car', 3595, 1330, 3724, 1417, 1605478168),
(10, 'sitylink_test image1.png', 'car', 2720, 1031, 2824, 1102, 1605478168),
(11, 'sitylink_test image1.png', 'car', 1796, 908, 1918, 970, 1605478168),
(12, 'sitylink_test image10.png', 'person', 737, 33, 751, 66, 1605478169),
(13, 'sitylink_test image10.png', 'person', 169, 205, 199, 262, 1605478170),
(14, 'sitylink_test image10.png', 'car', 168, 62, 212, 101, 1605478170),
(15, 'sitylink_test image10.png', 'car', 123, 51, 167, 84, 1605478170),
(16, 'sitylink_test image10.png', 'car', 14, 1, 44, 22, 1605478170),
(17, 'sitylink_test image10.png', 'person', 364, 383, 383, 432, 1605478170),
(18, 'sitylink_test image10.png', 'traffic light', 774, 585, 807, 632, 1605478170),
(19, 'sitylink_test image10.png', 'car', 198, 77, 256, 119, 1605478170),
(20, 'sitylink_test image10.png', 'car', 285, 149, 376, 211, 1605478170),
(21, 'sitylink_test image10.png', 'car', 254, 95, 321, 142, 1605478170),
(22, 'sitylink_test image10.png', 'car', 239, 30, 292, 62, 1605478170),
(23, 'sitylink_test image10.png', 'car', 112, 95, 212, 154, 1605478170),
(24, 'sitylink_test image10.png', 'car', 256, 675, 448, 766, 1605478170),
(25, 'sitylink_test image10.png', 'car', 212, 122, 286, 181, 1605478170),
(26, 'sitylink_test image10.png', 'car', 334, 107, 418, 158, 1605478170),
(27, 'sitylink_test image2.png', 'truck', 1213, 183, 1302, 239, 1605478171),
(28, 'sitylink_test image2.png', 'car', 834, 670, 878, 738, 1605478171),
(29, 'sitylink_test image2.png', 'car', 900, 262, 949, 295, 1605478171),
(30, 'sitylink_test image2.png', 'car', 663, 526, 748, 595, 1605478171),
(31, 'sitylink_test image2.png', 'car', 832, 745, 873, 768, 1605478171),
(32, 'sitylink_test image2.png', 'car', 596, 671, 724, 749, 1605478171),
(33, 'sitylink_test image2.png', 'car', 635, 616, 719, 677, 1605478171),
(34, 'sitylink_test image2.png', 'car', 660, 561, 745, 631, 1605478171),
(35, 'sitylink_test image2.png', 'train', 1, 213, 236, 690, 1605478171),
(36, 'sitylink_test image2.png', 'car', 674, 496, 754, 548, 1605478171),
(37, 'sitylink_test image2.png', 'car', 791, 408, 840, 451, 1605478171),
(38, 'sitylink_test image2.png', 'car', 876, 383, 940, 419, 1605478171),
(39, 'sitylink_test image2.png', 'car', 834, 520, 871, 588, 1605478171),
(40, 'sitylink_test image3.png', 'traffic light', 137, 48, 153, 78, 1605478172),
(41, 'sitylink_test image3.png', 'person', 872, 334, 900, 376, 1605478172),
(42, 'sitylink_test image3.png', 'car', 1332, 286, 1363, 306, 1605478172),
(43, 'sitylink_test image3.png', 'car', 1140, 249, 1186, 295, 1605478172),
(44, 'sitylink_test image3.png', 'traffic light', 67, 51, 88, 80, 1605478172),
(45, 'sitylink_test image3.png', 'car', 1136, 226, 1161, 250, 1605478172),
(46, 'sitylink_test image3.png', 'traffic light', 115, 48, 131, 80, 1605478172),
(47, 'sitylink_test image3.png', 'bicycle', 831, 331, 900, 375, 1605478172),
(48, 'sitylink_test image3.png', 'traffic light', 43, 50, 66, 81, 1605478172),
(49, 'sitylink_test image3.png', 'car', 808, 243, 909, 295, 1605478172),
(50, 'sitylink_test image3.png', 'stop sign', 357, 340, 409, 456, 1605478172),
(51, 'sitylink_test image3.png', 'car', 845, 270, 953, 328, 1605478172),
(52, 'sitylink_test image4.png', 'car', 350, 174, 397, 214, 1605478173),
(53, 'sitylink_test image4.png', 'traffic light', 298, 49, 313, 81, 1605478173),
(54, 'sitylink_test image4.png', 'car', 1180, 267, 1210, 293, 1605478173),
(55, 'sitylink_test image4.png', 'car', 330, 235, 370, 268, 1605478173),
(56, 'sitylink_test image4.png', 'traffic light', 682, 180, 696, 202, 1605478173),
(57, 'sitylink_test image4.png', 'car', 423, 209, 463, 245, 1605478173),
(58, 'sitylink_test image4.png', 'car', 1310, 197, 1357, 225, 1605478173),
(59, 'sitylink_test image4.png', 'car', 999, 138, 1028, 155, 1605478173),
(60, 'sitylink_test image4.png', 'car', 367, 226, 418, 262, 1605478173),
(61, 'sitylink_test image4.png', 'car', 36, 343, 68, 371, 1605478173),
(62, 'sitylink_test image4.png', 'car', 900, 113, 934, 136, 1605478173),
(63, 'sitylink_test image4.png', 'traffic light', 317, 50, 340, 81, 1605478173),
(64, 'sitylink_test image4.png', 'car', 340, 131, 368, 152, 1605478174),
(65, 'sitylink_test image4.png', 'car', 1118, 256, 1173, 294, 1605478174),
(66, 'sitylink_test image4.png', 'car', 1242, 228, 1288, 254, 1605478174),
(67, 'sitylink_test image4.png', 'car', 452, 186, 490, 213, 1605478174),
(68, 'sitylink_test image4.png', 'car', 367, 602, 530, 684, 1605478174),
(69, 'sitylink_test image4.png', 'car', 773, 661, 972, 761, 1605478174),
(70, 'sitylink_test image5.png', 'person', 1016, 6, 1101, 143, 1605478174),
(71, 'sitylink_test image6.png', 'umbrella', 963, 0, 1059, 31, 1605478175),
(72, 'sitylink_test image6.png', 'handbag', 1047, 102, 1072, 151, 1605478175),
(73, 'sitylink_test image6.png', 'person', 948, 14, 1016, 173, 1605478175),
(74, 'sitylink_test image6.png', 'person', 997, 6, 1064, 173, 1605478175),
(75, 'sitylink_test image7.png', 'person', 293, 62, 359, 140, 1605478175),
(76, 'sitylink_test image7.png', 'person', 474, 45, 489, 77, 1605478175),
(77, 'sitylink_test image7.png', 'person', 404, 46, 418, 78, 1605478175),
(78, 'sitylink_test image7.png', 'person', 273, 201, 464, 715, 1605478175),
(79, 'sitylink_test image7.png', 'person', 301, 67, 329, 140, 1605478175),
(80, 'sitylink_test image7.png', 'person', 284, 67, 314, 143, 1605478175),
(81, 'sitylink_test image7.png', 'person', 330, 57, 356, 139, 1605478175),
(82, 'sitylink_test image8.png', 'person', 344, 63, 380, 157, 1605478176),
(83, 'sitylink_test image8.png', 'person', 247, 83, 281, 189, 1605478176),
(84, 'sitylink_test image8.png', 'person', 573, 71, 671, 353, 1605478176),
(85, 'sitylink_test image8.png', 'person', 288, 116, 370, 344, 1605478176),
(86, 'sitylink_test image8.png', 'person', 364, 85, 445, 327, 1605478176),
(87, 'sitylink_test image8.png', 'person', 444, 84, 523, 325, 1605478176),
(88, 'sitylink_test image9.png', 'person', 251, 81, 279, 180, 1605478177),
(89, 'sitylink_test image9.png', 'surfboard', 692, 150, 786, 280, 1605478177),
(90, 'sitylink_test image9.png', 'person', 348, 66, 382, 155, 1605478177),
(91, 'sitylink_test image9.png', 'person', 491, 94, 600, 407, 1605478177),
(92, 'sitylink_test image9.png', 'person', 717, 89, 825, 481, 1605478177),
(93, 'sitylink_test image9.png', 'person', 378, 98, 490, 410, 1605478177),
(94, 'sitylink_test image9.png', 'person', 273, 139, 384, 446, 1605478177);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `find_object`
--
ALTER TABLE `find_object`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `find_object`
--
ALTER TABLE `find_object`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
