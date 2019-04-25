-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 10:03 PM
-- Server version: 5.7.14
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suizen`
--

-- --------------------------------------------------------

--
-- Table structure for table `chef_specials`
--

CREATE TABLE `chef_specials` (
  `id` int(10) UNSIGNED NOT NULL,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` decimal(5,2) NOT NULL,
  `Recommended` tinyint(1) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chef_specials`
--

INSERT INTO `chef_specials` (`id`, `OrderNumber`, `FoodName`, `HelpText`, `Price`, `Recommended`, `HeadDishes_Id`) VALUES
(1, '105', 'Traditional Cantonese Beef Brisket 广式牛腩 ', NULL, '5.80', 1, 23),
(2, '105.1', 'Beef Brisket Noodle Soup 牛腩汤面 ', NULL, '6.50', 1, 23),
(3, '105.2', 'Beef Brisket Curry 咖喱牛腩 ', NULL, '5.80', 0, 23),
(4, 'N/A', 'Salt & Pepper Beef 椒盐牛', NULL, '6.00', 0, 23),
(5, '1161.5', 'Sea-Spiced Aubergines 鱼香茄子 ', NULL, '5.80', 0, 23),
(6, '40a', 'Wat Tan Hor 滑蛋河 ', NULL, '6.50', 0, 23),
(7, '40b', 'Fukien Fried Rice 福州炒饭 ', NULL, '6.50', 1, 23),
(8, '41a', 'XO Seafood Udon/Fried Rice 海鲜炒乌冬/炒饭 ', 'Fish cakes, Prawns & Crabmeat Cooked With XO sauce. Very tasty and a little bit spicy!!!', '6.00', 1, 23),
(9, '41e', 'Roast Duck Rice BBQ 烧鸭饭(中式烧汁)', 'Roast Duck Dip With BBQ Sauce On Top Of The Egg Fried Rice', '6.50', 1, 23),
(10, '41f', 'Charsiu Rice BBQ 叉烧饭(中式烧汁) ', 'Char Siu Dip With BBQ Sauce On Top Of The Egg Fried Rice', '6.00', 0, 23),
(11, '1172a', 'MaPo Tofu 麻婆豆腐 ', 'Tofu Mixed With Minced Pork, Then Cooked With Spicy Sezchuan Sauce.', '5.80', 1, 23),
(12, '161h', 'Minced Pork with Green Bean 猪肉炒四季豆(辣)', 'Green Beans Cooked With Minced Pork, Then Mixed With A Delicious Spicy Sauce. ', '5.80', 1, 23),
(13, '1049ab', 'Sweet & Sour/Thai Style Fish 酸甜鱼', 'Battered Cod Fish Cooked With Sweet&Sour/Thai Style', '6.50', 0, 23),
(14, '1051', 'Chili & Salt Fish 椒盐鱼 ', NULL, '6.50', 0, 23),
(15, '1052', 'Braised Fish Tofu Rice 斑斓豆腐鱼 ', 'Battered Cod Fish Mixed With Tofu, Broccoli Then Cooked With Cantonese Oyster Sauce. Very Sweet and tasty!!! ', '6.50', 1, 23),
(16, '41g', 'Five Spices Roast Pork Ear/Belly 五香猪耳/猪肚 ', 'Pork Ear Or Pork Belly Cooked With Spicy Sauce & Then Mixed With Green Pepper & Onions. Very tasty If You Eat Pork!!!', '6.50', 1, 23),
(17, '105.4', 'Zhai Cai Shredded Pork Soup Noodle 榨菜肉丝汤面 ', NULL, '6.50', 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `head_dishes`
--

CREATE TABLE `head_dishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Dish_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `head_dishes`
--

INSERT INTO `head_dishes` (`id`, `Dish_Name`, `HelpText`, `created_at`, `updated_at`) VALUES
(1, 'Thai Menu', 'May Contains Bamboo Shoots & Water Chestnuts, Pineapple, Green Peppers, Tomatoes and Onions mixed with Sweet & Sour Hot Thai sauce ', NULL, NULL),
(2, 'VEGETARIAN DISHES 素菜類 ', 'May Contains Bamboo Shoots & Water Chestnuts, Beansprouts, Onions, Chinese  Cabbage Mushrooms, Carrots and Baby Corn ', NULL, NULL),
(3, 'Duckling Dishes 鸭肉', NULL, NULL, NULL),
(4, 'KING PRAWN DISHES 大蝦類 ', NULL, NULL, NULL),
(5, 'BEEF DISHES 牛類 ', NULL, NULL, NULL),
(6, 'CHICKEN DISHES 雞類', NULL, NULL, NULL),
(7, 'FRIED RICE DISHES 炒飯類 ', NULL, NULL, NULL),
(8, 'CHOP SUEY DISHES 炒蔬菜 ', NULL, NULL, NULL),
(9, 'Spare Ribs 排骨类', NULL, NULL, NULL),
(10, 'Pork 叉烧', NULL, NULL, NULL),
(11, 'CURRY DISHES 咖喱類 ', NULL, NULL, NULL),
(12, 'EGG FOO YUNG DISHES 芙蓉類 ', NULL, NULL, NULL),
(13, 'OMELETTE DISHES 煎蛋類', NULL, NULL, NULL),
(14, 'EXTRA PORTIONS ', NULL, NULL, NULL),
(15, 'SATAY DISHES 沙爹類 ', NULL, NULL, NULL),
(16, 'KUNG PO DISHES 宮保類(英式) ', 'Hot & Sweet Sauce Mixed with Cashewnuts, Onions, Green Peppers and Pineapples ', NULL, NULL),
(17, 'SWEET & SOUR 酸甜類 (Cantonese Style) ', 'Crispy Coated Pieces, Cooked in Sweet & Sour Sauce with Green Peppers, Onions and Pineapple', NULL, NULL),
(18, 'SWEET & SOUR 酸甜類 (Sauce are in separated container)', NULL, NULL, NULL),
(19, 'CAPITAL SAUCE DISHES 京汁類 ', 'Rich, Fruity, Sweet & Spicy Sauce', NULL, NULL),
(20, 'STARTERS  小菜', 'SMALL £3.50  LARGE £4.30', NULL, NULL),
(21, 'Soups 湯類 ', 'In Small Container 小碗', NULL, NULL),
(22, 'CHOW MEIN DISHES 炒面類', NULL, NULL, NULL),
(23, 'CHEF SPECIAL 特别介绍 ', NULL, NULL, NULL),
(24, 'Chinese Vegetables  各式菜类', 'Cooked in Garlic and Oyster Sauce 蒜蓉和蚝油做法', NULL, NULL),
(25, 'Set Meal 套餐 ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Spicyness` int(10) UNSIGNED NOT NULL,
  `Special` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `OrderNumber`, `FoodName`, `Price`, `HeadDishes_Id`, `HelpText`, `Spicyness`, `Special`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Crispy Shredded Beef(With Capital Sauce)香脆干牛丝', '5.50', NULL, NULL, 0, 1, NULL, NULL),
(2, 'B', 'Vietnamese Special Stir Fry 越南风味小炒', '5.50', NULL, '(King Prawn, Chicken, Beef, Char Siu (Pork), Assorted Vietnamese Vegetables In Vietnamese Sauce) ', 0, 1, NULL, NULL),
(3, 'C', ' Shanghai Special Stir Fry 上海风味小炒 ', '5.50', NULL, '(King Prawn, Chicken, Beef, Char Siu (Pork), Assorted Mixed Vegetables in Hot & Spicy Shanghai Sauce) ', 1, 1, NULL, NULL),
(4, '118', 'Four Seasons Roast Duck 四季鸭 ', '5.80', NULL, '(Duck, King Prawn, Chicken, Pork & Beef In Delicious Chinese Vegetables) ', 0, 1, NULL, NULL),
(5, 'T1', 'Thai Special Fried Noodles 泰式招牌炒面 ', '5.80', 1, NULL, 0, 0, NULL, NULL),
(6, 'T2', 'Thai Special Fried Rice 泰式招牌炒饭', '5.80', 1, NULL, 0, 0, NULL, NULL),
(7, 'T3', 'Thai Stir Fry Vegetables 泰式招牌素菜 ', '4.60', 1, NULL, 0, 0, NULL, NULL),
(8, 'T4', ' Thai Special Stir Fry Garlic & Spices泰式蒜辣小炒 ', '5.50', 1, NULL, 0, 0, NULL, NULL),
(9, 'T5', 'Thai Special Kprawn Garlic & Spices泰式蒜辣大虾', '5.30', 1, NULL, 0, 0, NULL, NULL),
(10, 'T6', 'Thai Style Beef Garlic & Spices泰式蒜辣炒牛肉 ', '5.30', 1, NULL, 0, 0, NULL, NULL),
(11, 'T7', 'Thai Style Chicken Garlic & Spices 泰式蒜辣炒鸡肉', '5.00', 1, NULL, 0, 0, NULL, NULL),
(12, 'T8', 'Roast Duck Thai Style 泰式蒜辣烤鸭', '6.00', 1, NULL, 0, 0, NULL, NULL),
(13, 'V1', 'Vegetables Chow Mein广式蔬菜炒面(干', '4.80', 2, NULL, 0, 0, NULL, NULL),
(14, 'V2', 'Vegetables Fried Rice 广式蔬菜炒饭(干) ', '4.60', 2, NULL, 0, 0, NULL, NULL),
(15, 'V3', 'Vegetables Satay沙爹蔬菜小炒 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(16, 'V4', 'Szechuan Vegetables 四川风味蔬菜小炒', '4.50', 2, NULL, 0, 0, NULL, NULL),
(17, 'V5', 'Fried Mushroom & Onion Mix 蘑菇炒洋葱', '3.50', 2, NULL, 0, 0, NULL, NULL),
(18, 'V6', 'Sweet & Sour Vegetables 酸甜蔬菜 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(19, 'V7', ' Kung Po Vegetables 宮保蔬菜 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(20, 'V8', 'Vegetables in Black Bean Sauce士椒蔬菜小炒 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(21, '1', 'Roast Duck with Mushrooms 鸭肉炒蘑菇', '5.00', 3, NULL, 0, 0, NULL, NULL),
(22, '2', 'Roast Duck Bamboo Shoots & Water Chestnuts ', '5.00', 3, NULL, 0, 0, NULL, NULL),
(23, '3', ' Roast Duck with Pineapple 鸭肉炒菠萝 ', '5.00', 3, NULL, 0, 0, NULL, NULL),
(24, '4', 'Roast Duck with Beausprouts 鸭肉炒芽菜 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(25, '5', 'Roast Duck in Black Bean Sauce 士椒鸭肉炒青椒 ', '5.00', 3, NULL, 0, 0, NULL, NULL),
(26, '6', 'King Prawn with Mushrooms 蘑菇大虾 ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(27, '7', 'Kprawn with Bamboo shoots & Water Chestnuts ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(28, '8', 'King Prawn with Pineapple 菠萝大虾 ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(29, '9', 'King Prawn with Beansprouts 芽菜大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(30, '10', 'King Prawn with Tomatoes 番茄大虾 ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(31, '11', 'King Prawn with Cashewnuts 腰果大虾 ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(32, '12', 'King Prawn with Onions 大虾炒洋葱 ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(33, '13', ' King Prawn in Black Bean Sauce士椒大虾炒青椒 ', '5.00', 4, NULL, 0, 0, NULL, NULL),
(34, '16', 'Beef with Mushrooms 牛肉炒蘑菇', '5.00', 5, NULL, 0, 0, NULL, NULL),
(35, '17', 'Beef with Bamboo Shoots & Water Chestnuts', '5.00', 5, NULL, 0, 0, NULL, NULL),
(36, '18', 'Beef with Pineapple 牛肉炒凤梨', '5.00', 5, NULL, 0, 0, NULL, NULL),
(37, '19', 'Beef with Beansprouts 牛肉炒芽菜 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(38, '20', 'Beef with Tomatoes 番茄牛肉 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(39, '22', 'Beef with Cashewnuts 腰果牛肉 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(40, '23', 'Beef with Onions 牛肉炒洋葱', '5.00', 5, NULL, 0, 0, NULL, NULL),
(41, '24', 'Beef in Black Bean Sauce 士椒牛肉炒青椒 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(42, '25', 'Chicken with Mushrooms鸡肉炒蘑菇 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(43, '26', 'Chicken with Bamboo Shoots & Water Chestnuts ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(44, '27', 'Chicken with Pineapple 鸡肉炒菠萝 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(45, '28', 'Chicken with Beansprouts (Crisp Chicken)鸡肉炒豆芽 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(46, '29', 'Chicken with Tomatoes 番茄鸡肉 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(47, '31', 'Chicken with Cashewnuts 腰果鸡肉 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(48, '32', 'Chicken with Onions 鸡肉炒洋葱 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(49, '33', 'Chicken in Black Bean Sauce 士椒鸡肉炒青椒 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(50, '46A', 'Special Fried Rice 广式招牌炒饭  ', '5.80', 7, 'DRY ', 0, 0, NULL, NULL),
(51, '46B', 'Special Fried Rice 广式招牌炒饭 ', '5.80', 7, '(A Mixture of Chicken, Beef, Duck, Char Siu (Pork), Prawn and Vegetables Cooked in  Delicious Sauce with a separate Egg Fried Rice On the Side (SAUCE) ) ', 0, 0, NULL, NULL),
(52, '47', 'King Prawn Fried Rice 大虾炒饭 ', '5.30', 7, NULL, 0, 0, NULL, NULL),
(53, '48', 'Chicken Fried  Rice 鸡丝炒饭', '5.00', 7, NULL, 0, 0, NULL, NULL),
(54, '49', 'Beef Fried Rice 牛肉炒饭 ', '5.00', 7, NULL, 0, 0, NULL, NULL),
(55, '50', 'Prawn/Shrimp Fried Rice 虾仁炒饭 ', '5.30', 7, NULL, 0, 0, NULL, NULL),
(56, '51', 'Yung Chow Fried Rice 扬州炒饭 ', '5.50', 7, NULL, 0, 0, NULL, NULL),
(57, '52', 'Singapore Fried Rice 星洲炒饭 ', '5.50', 7, '(A Mixture of Chicken, Prawn and Char Siu Cooked in Red Pepper Fried with Hot Chilli Oil DRY) ', 2, 0, NULL, NULL),
(58, '53', 'Char Siu Fried Rice 叉烧炒饭 ', '5.00', 7, NULL, 0, 0, NULL, NULL),
(59, '54', 'Mushroom Fried Rice 蘑菇炒饭 ', '4.50', 7, NULL, 0, 0, NULL, NULL),
(60, '55', 'Special Chop Suey 招牌蔬菜小炒 ', '5.50', 8, NULL, 0, 0, NULL, NULL),
(61, '56', 'King Prawn Chop Suey 大虾炒蔬菜', '5.00', 8, NULL, 0, 0, NULL, NULL),
(62, '57', 'Prawn/Shrimp Chop Suey 虾仁炒蔬菜 ', '5.00', 8, NULL, 0, 0, NULL, NULL),
(63, '58', 'Chicken Chop Suey 鸡肉炒蔬菜 ', '5.00', 8, NULL, 0, 0, NULL, NULL),
(64, '59', 'Beef Chop Suey 牛肉炒蔬菜', '5.00', 8, NULL, 0, 0, NULL, NULL),
(65, '60', 'Char Siu Chop Suey 叉烧炒蔬菜', '5.00', 8, NULL, 0, 0, NULL, NULL),
(66, '61', 'Mixed Vegetable Chop Suey 蔬菜小炒 ', '4.00', 8, NULL, 0, 0, NULL, NULL),
(67, '62', 'Spare Ribs in Black Bean Sauce 士椒排骨', '5.50', 9, NULL, 0, 0, NULL, NULL),
(68, '63', 'Spare Ribs Dry (with A Lemon Wedge)烤排骨配柠檬 ', '5.00', 9, NULL, 0, 0, NULL, NULL),
(69, '64', 'Spare Ribs in Barbecue Sauce 烧汁BBQ排骨 ', '5.50', 9, NULL, 0, 0, NULL, NULL),
(70, '65', 'Spare Ribs in Syrup 烤排骨配蜜糖 ', '5.30', 9, NULL, 0, 0, NULL, NULL),
(71, '65a', 'Small Portion Of Spare Ribs ', '4.50', 9, NULL, 0, 0, NULL, NULL),
(72, '80', 'Spare Ribs in Sweet & Sour Sauce 酸甜排骨 ', '5.50', 9, NULL, 0, 0, NULL, NULL),
(73, '171', 'Chili & Salt Spare Ribs 椒盐排骨', '5.50', 9, '(Delicious Hot & Spicy)', 2, 0, NULL, NULL),
(74, '172', 'Spare Ribs in Capital/Peking Sauce 京汁排骨 ', '5.50', 9, NULL, 0, 0, NULL, NULL),
(75, '66', 'Char Siu with Bamboo shoots & Water Chestnuts ', '5.00', 10, NULL, 0, 0, NULL, NULL),
(76, '67', 'Char Siu with Pineapple 叉烧炒菠萝 ', '5.00', 10, NULL, 0, 0, NULL, NULL),
(77, '68', 'Char Siu in Black Bean Sauce 士椒叉烧炒青椒 ', '5.00', 10, NULL, 0, 0, NULL, NULL),
(78, '69', 'Char Siu with Beansprouts 豆芽叉烧 ', '5.30', 10, NULL, 0, 0, NULL, NULL),
(79, '69a', 'Char Siu with Mushrooms 叉烧炒蘑菇 ', '6.00', 10, NULL, 0, 0, NULL, NULL),
(80, '70', 'Special Curry 招牌咖喱 ', '5.30', 11, 'A Mixture of Chicken, Beef, Duck, Char Siu (Pork), Prawn, Onion, Peas Cooked in  Delicious Curry Sauce  ', 0, 0, NULL, NULL),
(81, '71', 'Duck Curry 咖喱鸭', '5.00', 11, NULL, 0, 0, NULL, NULL),
(82, '72', 'King Prawn Curry 咖喱大虾 ', '5.00', 11, NULL, 0, 0, NULL, NULL),
(83, '73', 'Prawn/Shrimp Curry 咖喱虾仁 ', '5.00', 11, NULL, 0, 0, NULL, NULL),
(84, '74', 'Chicken Curry 咖喱鸡肉 ', '4.50', 11, NULL, 0, 0, NULL, NULL),
(85, '75', 'Beef Curry 咖喱牛肉 ', '4.50', 11, NULL, 0, 0, NULL, NULL),
(86, '76', 'Mutton Curry 咖喱羊肉 ', '4.80', 11, NULL, 0, 0, NULL, NULL),
(87, '77', 'Char Siu Curry 咖喱叉烧 ', '4.50', 11, NULL, 0, 0, NULL, NULL),
(88, '78', 'Mixed Vegetable Curry 咖喱蔬菜 ', '4.30', 11, NULL, 0, 0, NULL, NULL),
(89, '79', 'Mushroom Curry 咖喱蘑菇 ', '4.30', 11, NULL, 0, 0, NULL, NULL),
(90, '84', 'Special Foo Yung 招牌芙蓉 ', '5.50', 12, NULL, 0, 0, NULL, NULL),
(91, '85', 'King Prawn Foo Yung 大虾芙蓉', '5.50', 12, NULL, 0, 0, NULL, NULL),
(92, '86', 'Prawn/Shrimp Foo Yung 虾仁芙蓉 ', '5.50', 12, NULL, 0, 0, NULL, NULL),
(93, '87', 'Chicken Foo Yung 鸡肉芙蓉 ', '5.00', 12, NULL, 0, 0, NULL, NULL),
(94, '88', 'Mushroom Foo Yung 蘑菇芙蓉', '4.50', 12, NULL, 0, 0, NULL, NULL),
(95, '89', 'Special Omelette  招牌煎蛋 ', '5.50', 13, NULL, 0, 0, NULL, NULL),
(96, '91', 'King Prawn Omelette 大虾煎蛋 ', '5.40', 13, NULL, 0, 0, NULL, NULL),
(97, '92', 'Prawn/Shrimp Omelette 虾仁煎蛋 ', '5.40', 13, NULL, 0, 0, NULL, NULL),
(98, '93', 'Mushroom Omelette 蘑菇煎蛋 ', '4.70', 13, NULL, 0, 0, NULL, NULL),
(99, '95', 'Char Siu Omelette 叉烧煎蛋 ', '5.00', 13, NULL, 0, 0, NULL, NULL),
(100, '96', 'Chicken Omelette 鸡肉煎蛋', '5.00', 13, NULL, 0, 0, NULL, NULL),
(101, '98', 'Chips 薯条 ', '1.30', 14, NULL, 0, 0, NULL, NULL),
(102, '100', 'Egg Fried Rice 蛋炒饭', '1.90', 14, NULL, 0, 0, NULL, NULL),
(103, '101', 'Plain Boiled Rice 白饭 ', '1.70', 14, NULL, 0, 0, NULL, NULL),
(104, '102', 'Mushrooms 炒蘑菇 ', '2.20', 14, NULL, 0, 0, NULL, NULL),
(105, '103', 'Bamboo Shoots & Water Chestnuts 炒竹笋马蹄 ', '2.20', 14, NULL, 0, 0, NULL, NULL),
(106, '104', 'Beansprouts 炒芽菜', '2.20', 14, NULL, 0, 0, NULL, NULL),
(107, '105', 'Onions 炒洋葱', '2.20', 14, NULL, 0, 0, NULL, NULL),
(108, '106', 'Egg Noodle 炒面条', '2.80', 14, 'Thick Egg/ Thin Egg 粗/细蛋面', 0, 0, NULL, NULL),
(109, '107', 'Prawn Cracker 虾片 ', '1.20', 14, NULL, 0, 0, NULL, NULL),
(110, '108', 'Sauces ', '1.20', 14, '(Sweet & Sour/ Sweet & Chilli/ Curry/BBQ)', 0, 0, NULL, NULL),
(111, '109', 'Sauces', '1.50', 14, '(Satay/ Black Bean/ Szechuan/ Plum/ Lemon)', 0, 0, NULL, NULL),
(112, '110', 'Cashewnuts 腰果', '2.80', 14, NULL, 0, 0, NULL, NULL),
(113, '111', 'Banana or Pineapple Fritters 炸香蕉/炸菠萝', '2.50', 14, NULL, 0, 0, NULL, NULL),
(114, '112', 'Mixed Vegetables 蔬菜小炒', '2.70', 14, NULL, 0, 0, NULL, NULL),
(115, '119', 'Roast Duck Chinese Style 中式烤鸭 ', '5.80', 3, 'Crispy Duck on a bed of Beansprouts with a Touch of Soy Sauce', 0, 0, NULL, NULL),
(116, '120', 'Roast Duck In Plum Sauce 梅子烤鸭 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(117, '121', 'Roast Duck in Lemon Sauce 烤鸭配柠檬汁 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(118, '122', 'Roast Duck in Orange Sauce 烤鸭配橙汁 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(119, '123', 'Roast Duck Chinese Mushrooms 鸭肉炒冬菇 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(120, '124', 'Roast Duck with Straw Mushrooms 鸭肉炒草菇 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(121, '125', 'Roast Duck with Baby Corn 鸭肉炒朱笋 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(122, '126', 'Roast Duck with Pickled Ginger 子萝鸭肉 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(123, '127', 'Roast Duck with Oyster Sauce 广式(蚝油)鸭肉 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(124, '128', 'Roast Duck Spring Onions & Ginger 姜葱鸭肉 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(125, '129', 'King Prawn with Chilli & Salt 椒盐大虾', '5.80', 4, NULL, 2, 0, NULL, NULL),
(126, '130', 'King Prawn with Chinese Mushrooms 冬菇大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(127, '131', 'King Prawn with Straw Mushrooms大虾炒草菇 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(128, '132', 'King Prawn with Baby Corn大虾炒朱笋 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(129, '133', 'King Prawn with Pickled Ginger子萝大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(130, '134', 'Kprawn with Spring Onions & Ginger 姜葱大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(131, '135', 'King Prawn with Oyster Sauce 广式(蚝油)大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(132, '136', 'Hot & Sour King Prawn 酸辣大虾 ', '5.50', 4, NULL, 1, 0, NULL, NULL),
(133, '137', 'Szechuan King Prawn 四川口味大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(134, '138', 'Beef with Chinese Mushrooms 牛肉炒冬菇 ', '5.30', 5, NULL, 0, 0, NULL, NULL),
(135, '139', 'Beef with Straw Mushrooms 牛肉炒草菇 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(136, '140', 'Beef with Baby Corn 牛肉炒朱笋 ', '5.00', 5, '', 0, 0, NULL, NULL),
(137, '141', 'Beef with Pickled Ginger 子萝牛肉 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(138, '142', 'Beef with Spring Onions & Ginger 姜葱牛肉 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(139, '143', 'Beef with Oyster Sauce 广式(蚝油)牛肉 ', '5.30', 5, NULL, 0, 0, NULL, NULL),
(140, '144', 'Hot & Sour Beef 酸辣牛肉 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(141, '145', 'Szechuan Beef 四川牛肉 ', '5.30', 5, NULL, 2, 0, NULL, NULL),
(142, '146', 'Roast Chicken Chinese Style 中式炸鸡 ', '5.50', 6, '(Crispy Chicken Breast on a Bed of Mixed Vegetables with Touch of Soy Sauce) ', 0, 0, NULL, NULL),
(143, '147', 'Chicken with Chinese Mushrooms 鸡肉炒冬菇 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(144, '148', 'Chicken with Straw Mushrooms 鸡肉炒草菇 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(145, '149', 'Chicken with Baby Corn 鸡肉炒朱笋 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(146, '150', 'Chicken with Pickled Ginger 子萝鸡肉 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(147, '151', 'Chicken with Oyster Sauce 广式(蚝油)鸡肉 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(148, '152', 'Chicken with Spring Onions & Ginger 姜葱鸡 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(149, '153', 'Chicken with Lemon Sauce 柠檬炸鸡', '5.00', 6, NULL, 0, 0, NULL, NULL),
(150, '154', 'Hot & Sour Chicken 酸辣鸡(脆) ', '5.00', 6, NULL, 1, 0, NULL, NULL),
(151, '155', 'Szechuan Chicken 四川鸡 ', '5.00', 6, NULL, 0, 0, NULL, NULL),
(152, '156', 'Special Satay (A mixture of meats) 招牌沙爹 ', '5.50', 15, NULL, 0, 0, NULL, NULL),
(153, '157', 'Duck Satay 沙爹鸭 ', '5.30', 15, NULL, 0, 0, NULL, NULL),
(154, '158', 'King Prawn Satay 沙爹大虾 ', '5.20', 15, NULL, 0, 0, NULL, NULL),
(155, '159', 'Beef Satay 沙爹牛肉 ', '5.00', 15, NULL, 0, 0, NULL, NULL),
(156, '160', 'Chicken Satay 沙爹鸡肉 ', '5.00', 15, NULL, 0, 0, NULL, NULL),
(157, '161', 'Char Siu Satay 沙爹叉烧 ', '5.00', 15, NULL, 0, 0, NULL, NULL),
(158, '162', 'Special Kung Po 招牌宫保 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(159, '163', 'Kung Po Duck 宫保鸭 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(160, '164', 'Kung Po King Prawn 宫保大虾 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(161, '165', 'Kung Po Beef 宫保牛肉 ', '5.00', 16, NULL, 1, 0, NULL, NULL),
(162, '166', 'Kung Po Chicken 宫保鸡丁 ', '5.00', 16, NULL, 1, 0, NULL, NULL),
(163, '167', 'Kung Po Char Siu 宫保叉烧 ', '5.00', 16, NULL, 1, 0, NULL, NULL),
(164, '168', 'Sweet & Sour King Prawn 酸甜大虾 ', '5.50', 17, NULL, 0, 0, NULL, NULL),
(165, '169', 'Sweet & Sour Chicken 酸甜鸡(咕噜鸡) ', '5.50', 17, NULL, 0, 0, NULL, NULL),
(166, '170', 'Sweet & Sour Pork 酸甜猪肉 ', '5.50', 17, NULL, 0, 0, NULL, NULL),
(168, '81', 'Sweet & Sour King Prawn (Balls) 香脆大虾球配酸甜汁 ', '5.50', 18, 'Approx 10 King Prawn Balls ', 0, 0, NULL, NULL),
(169, '82', 'Sweet & Sour Chicken (Balls) 香脆鸡球配酸甜汁 ', '4.50', 18, 'Approx 10 Chicken Balls', 0, 0, NULL, NULL),
(170, '173', 'Beef with Capital Sauce 京汁牛肉 ', '5.30', 19, NULL, 1, 0, NULL, NULL),
(171, '174', 'Duck in Capital Sauce 京汁鸭肉 ', '5.30', 19, NULL, 1, 0, NULL, NULL),
(172, '175', 'Chicken in Capital Sauce 京汁鸡肉', '5.00', 19, NULL, 1, 0, NULL, NULL),
(173, '176', 'Char Siu in Capital Sauce 京汁叉烧 ', '5.00', 19, NULL, 1, 0, NULL, NULL),
(174, '177', 'King Prawn in Capital Sauce 京汁大虾 ', '5.50', 19, NULL, 1, 0, NULL, NULL),
(175, '34', 'Special Chow Mein (DRY) 广式招牌炒面(干炒) ', '5.50', 22, 'a Mixture of Meat & Vegetables Cooked with Noodles', 0, 0, NULL, NULL),
(176, '34a', 'Special Chow Mein (SAUCE) 广式招牌炒面(有汁) ', '5.80', 22, 'I personally recommend the DRY special chowmein, it taste better.', 0, 0, NULL, NULL),
(177, '35', 'Duck Chow Mein 广式鸭肉炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(178, '36', 'King Prawn Chow Mein 广式大虾炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(179, '37', 'Singapore Chow Mein 星洲炒面 ', '5.50', 22, 'Highly Recommended !!!', 1, 0, NULL, NULL),
(180, '37a', 'Singapore Vermicelli Chow Mein 星洲炒米粉 ', '5.50', 22, 'Highly Recommended!!!', 1, 0, NULL, NULL),
(181, '38', 'Beef Chow Mein 广式牛肉炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(182, '38a', 'Beef Dry HoFun Chow Mein 干炒牛河 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(183, '39', 'Chicken Chow Mein 广式鸡肉炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(184, '1161a', 'Broccoli 西兰花', '5.50', 24, NULL, 0, 0, NULL, NULL),
(185, '1161d', 'Pak Choi 小白菜 ', '5.50', 24, NULL, 0, 0, NULL, NULL),
(186, '1161f', 'Choi Sum 菜心 ', '5.50', 24, NULL, 0, 0, NULL, NULL),
(187, '1161g', 'Chinese Leaf 大白菜', '5.50', 24, NULL, 0, 0, NULL, NULL),
(188, '161g', 'Kai-Lan 芥蓝', '7.00', 24, 'Please check with the staff first if this order is available. Thanks', 0, 0, NULL, NULL),
(189, 'W9', 'Set Meal A 套餐A', '8.00', 25, '(Fried Tofu, Pak Choi, & Red-cooked pork with Rice) (炸豆腐+红烧肉+青菜+白饭)', 0, 0, NULL, NULL),
(190, 'W10', 'Set Meal B 套餐B ', '8.00', 25, '(Beef Brisket, Pak Choi, & Fried Fish with Rice) (牛腩+炸鱼+青菜+白饭) ', 0, 0, NULL, NULL),
(191, 'W11', 'Set Meal C 套餐C ', '8.00', 25, '(Roast Duck, Pak Choi, & Fried Fish with Rice) (中式汁鸭+炸鱼+青菜+白饭) ', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_02_20_223346_create_menus_table', 1),
(8, '2019_02_20_223925_create_head_dishes_table', 1),
(9, '2019_03_01_223740_create_starters_table', 2),
(10, '2019_03_01_225046_create_soups_table', 3),
(11, '2019_03_01_232558_create_chef_specials_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soups`
--

CREATE TABLE `soups` (
  `id` int(10) UNSIGNED NOT NULL,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Recommended` int(11) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soups`
--

INSERT INTO `soups` (`id`, `OrderNumber`, `FoodName`, `HelpText`, `Recommended`, `HeadDishes_Id`, `created_at`, `updated_at`) VALUES
(1, '1040', 'Hot & Sour Soup 酸辣汤', NULL, 0, 21, NULL, NULL),
(2, '1041', ' Seafood Soup/ Hot & Sour Seafood Soup 海鲜汤/海鲜酸辣汤 ', NULL, 0, NULL, NULL, NULL),
(3, '1041a', 'Seaweed Egg Soup 紫菜汤', NULL, 1, 21, NULL, NULL),
(4, '1042', 'Chicken & Sweetcorn Soup 鸡粒玉米汤 ', NULL, 1, 21, NULL, NULL),
(5, '1042a', 'Crabmeat & Sweetcorn Soup 蟹肉玉米汤', NULL, 1, 21, NULL, NULL),
(6, '1043', 'Wonton Soup 云吞汤 ', NULL, 0, 21, NULL, NULL),
(7, '1043a', 'Tomato Egg Soup 番茄蛋汤 ', NULL, 0, 21, NULL, NULL),
(8, '1044', 'Mixed Vegetables Soup 蔬菜汤 ', NULL, 0, 21, NULL, NULL),
(9, '1045', 'Chicken & Mushroom Soup 鸡丝蘑菇汤 ', NULL, 0, 21, NULL, NULL),
(10, '1046', 'Chicken & Noodle Soup 鸡丝面汤 ', NULL, 0, 21, NULL, NULL),
(11, '1047', 'Sliced Duck Soup 鸭丝汤 ', NULL, 0, 21, NULL, NULL),
(12, '1048', 'Hot & Sour Mixed Veg Soup 蔬菜酸辣汤 ', NULL, 0, 21, NULL, NULL),
(13, '1041a', 'Tom Yum Soup 冬阴功汤', 'This soup is good for you if you got cold during the winter!', 0, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `starters`
--

CREATE TABLE `starters` (
  `id` int(10) UNSIGNED NOT NULL,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Small` decimal(5,2) NOT NULL,
  `Large` decimal(5,2) NOT NULL,
  `Recommended` int(11) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `starters`
--

INSERT INTO `starters` (`id`, `OrderNumber`, `FoodName`, `HelpText`, `Small`, `Large`, `Recommended`, `HeadDishes_Id`, `created_at`, `updated_at`) VALUES
(1, '1010', 'Mini Spring Rolls with Vietnamese Sauce 酥炸蔬菜春卷 ', 'Mini Vegetables Spring Rolls Served with Garlic, Chilli & Lemon Sauce', '3.50', '4.30', 0, 20, NULL, NULL),
(2, '1011', 'Crispy Won Ton with Sweet Chilli Sauce 酥炸馄饨 ', 'Minced Chicken & Prawn Wrapped in Crispy Water Pastry Served with Sweet Chilli Sauce', '3.50', '4.30', 1, 20, NULL, NULL),
(3, '1012', 'Oriental King Prawn Rolls 酥炸大虾卷 ', 'Deep Fried Tail-On King Prawns, Wrapped in Authentic Oriental Pastry & Served with Sweet Chili Dip', '3.50', '4.30', 0, 20, NULL, NULL),
(4, '1013', 'Butterfly King Prawns 酥炸凤尾虾', 'Deep Fried King Prawns in a Light Crispy Batter Served with Sweet Chili Sauce', '3.50', '4.30', 0, 20, NULL, NULL),
(5, '1014', 'King Prawn Toast 酥炸下多士 ', 'King Prawn Paste Generously Spread on Toast, Topped with Sesame Seeds', '3.50', '4.30', 1, 20, NULL, NULL),
(6, '1015', 'Breaded Calamari Rings 酥炸鱿鱼圈 ', 'Deep Fried Calamari in a Light Crispy Batter Served with Sweet Chilli Sauce', '3.50', '4.30', 0, 20, NULL, NULL),
(7, '1017', 'Onion Rings 脆香洋葱圈 ', 'Deep Fried in a Light Crispy Batter Served with a Dip', '3.50', '4.30', 0, 20, NULL, NULL),
(8, '1018', 'Chicken Wings 炸鸡翅  ', '4-5 On Small Portions and 8-9 On Large Portions. Sauces: Chili & Salt / BBQ / Dry / Other. I recommend Chili & Salt - spicy.', '3.50', '4.30', 1, 20, NULL, NULL),
(9, '1020', 'Chilli & Salt Spicy Chips 椒盐薯条 ', 'Chips Spiced with Onions, Green Peppers & Fresh Chili', '3.50', '4.30', 0, 20, NULL, NULL),
(10, '1021', 'Salt & Peppers Squids 椒盐鱿鱼', 'Battered Squids Cooked with chili and salt.\r\nI highly recommend you go for the large portion.', '3.80', '5.50', 1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chef_specials`
--
ALTER TABLE `chef_specials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head_dishes`
--
ALTER TABLE `head_dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soups`
--
ALTER TABLE `soups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starters`
--
ALTER TABLE `starters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chef_specials`
--
ALTER TABLE `chef_specials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `head_dishes`
--
ALTER TABLE `head_dishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `soups`
--
ALTER TABLE `soups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `starters`
--
ALTER TABLE `starters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
