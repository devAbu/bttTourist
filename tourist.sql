-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2019 at 06:52 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
CREATE TABLE IF NOT EXISTS `apartment` (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `apartment_title` varchar(30) COLLATE utf8_bin NOT NULL,
  `owner_ID` int(30) NOT NULL,
  `start_date` varchar(30) COLLATE utf8_bin NOT NULL,
  `end_date` varchar(30) COLLATE utf8_bin NOT NULL,
  `address` varchar(30) COLLATE utf8_bin NOT NULL,
  `city` varchar(30) COLLATE utf8_bin NOT NULL,
  `size` int(5) NOT NULL,
  `size2` int(5) NOT NULL,
  `rooms` int(5) NOT NULL,
  `floors` int(5) NOT NULL,
  `heating` varchar(20) COLLATE utf8_bin NOT NULL,
  `floor` varchar(20) COLLATE utf8_bin NOT NULL,
  `price` int(10) NOT NULL,
  `price_offseason` int(10) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `washing_machine` int(5) NOT NULL,
  `dryer` int(5) NOT NULL,
  `toilet_paper` int(5) NOT NULL,
  `towels` int(5) NOT NULL,
  `bidet` int(5) NOT NULL,
  `bathtub` int(5) NOT NULL,
  `cabin` int(5) NOT NULL,
  `wc` int(5) NOT NULL,
  `wardrobe_or_closet` int(5) NOT NULL,
  `closet` int(5) NOT NULL,
  `kitchen_table` int(5) NOT NULL,
  `detergents` int(5) NOT NULL,
  `cooking_plate` int(5) NOT NULL,
  `oven` int(5) NOT NULL,
  `kitchen_accessories` int(5) NOT NULL,
  `microwave_oven` int(5) NOT NULL,
  `refrigerator` int(5) NOT NULL,
  `sofa_bed` int(5) NOT NULL,
  `sound_insulation` int(5) NOT NULL,
  `private_entrance` int(5) NOT NULL,
  `safe` int(5) NOT NULL,
  `iron` int(5) NOT NULL,
  `ironing_board` int(5) NOT NULL,
  `river_view` int(5) NOT NULL,
  `city_view` int(5) NOT NULL,
  `mountain_view` int(5) NOT NULL,
  `garden_view` int(5) NOT NULL,
  `pets` int(5) NOT NULL,
  `dining_room` int(5) NOT NULL,
  `couch` int(5) NOT NULL,
  `seating_area` int(5) NOT NULL,
  `tv` int(5) NOT NULL,
  `flat_screen` int(5) NOT NULL,
  `satellite` int(5) NOT NULL,
  `cable` int(5) NOT NULL,
  `internet` int(5) NOT NULL,
  `lowered_washbin` int(5) NOT NULL,
  `object_adapted` int(5) NOT NULL,
  `elevator` int(5) NOT NULL,
  `parking` int(5) NOT NULL,
  `garage` int(5) NOT NULL,
  `childrens_tv` int(5) NOT NULL,
  `safety_for_babies` int(5) NOT NULL,
  `ac` int(5) NOT NULL,
  `has_heating` int(5) NOT NULL,
  `family_room` int(5) NOT NULL,
  `nonsmoking_room` int(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`ID`, `apartment_title`, `owner_ID`, `start_date`, `end_date`, `address`, `city`, `size`, `size2`, `rooms`, `floors`, `heating`, `floor`, `price`, `price_offseason`, `image`, `washing_machine`, `dryer`, `toilet_paper`, `towels`, `bidet`, `bathtub`, `cabin`, `wc`, `wardrobe_or_closet`, `closet`, `kitchen_table`, `detergents`, `cooking_plate`, `oven`, `kitchen_accessories`, `microwave_oven`, `refrigerator`, `sofa_bed`, `sound_insulation`, `private_entrance`, `safe`, `iron`, `ironing_board`, `river_view`, `city_view`, `mountain_view`, `garden_view`, `pets`, `dining_room`, `couch`, `seating_area`, `tv`, `flat_screen`, `satellite`, `cable`, `internet`, `lowered_washbin`, `object_adapted`, `elevator`, `parking`, `garage`, `childrens_tv`, `safety_for_babies`, `ac`, `has_heating`, `family_room`, `nonsmoking_room`) VALUES
(49, 'test two', 12, '2019-04-04', '2019-04-13', 'vrancici 63', 'a', 50, 50, 5, 5, 'Central Heating', 'Tiles', 4, 801, '0', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `owner_ID` int(30) NOT NULL,
  `hotel_title` varchar(20) COLLATE utf8_bin NOT NULL,
  `start_date` varchar(30) COLLATE utf8_bin NOT NULL,
  `end_date` varchar(30) COLLATE utf8_bin NOT NULL,
  `stars` int(1) NOT NULL,
  `hotel_address` varchar(30) COLLATE utf8_bin NOT NULL,
  `city` varchar(30) COLLATE utf8_bin NOT NULL,
  `zip` int(8) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL,
  `main_bed_type` varchar(30) COLLATE utf8_bin NOT NULL,
  `sec_bed_type` varchar(30) COLLATE utf8_bin NOT NULL,
  `number_of_main_beds` int(2) NOT NULL,
  `number_of_sec_beds` int(2) NOT NULL,
  `number_of_people` int(2) NOT NULL,
  `type_of_room` varchar(30) COLLATE utf8_bin NOT NULL,
  `smoking` varchar(10) COLLATE utf8_bin NOT NULL,
  `number_of_rooms` int(2) NOT NULL,
  `size_of_room` int(5) NOT NULL,
  `hotel_price` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `discount_value` varchar(5) COLLATE utf8_bin NOT NULL,
  `discountUnit` varchar(5) COLLATE utf8_bin NOT NULL,
  `internet` varchar(20) COLLATE utf8_bin NOT NULL,
  `internet_available` varchar(20) COLLATE utf8_bin NOT NULL,
  `internet_type` varchar(20) COLLATE utf8_bin NOT NULL,
  `internet_price` int(5) NOT NULL,
  `parking` varchar(20) COLLATE utf8_bin NOT NULL,
  `parking_type` varchar(20) COLLATE utf8_bin NOT NULL,
  `reservation_needed` varchar(10) COLLATE utf8_bin NOT NULL,
  `parking_price` int(5) NOT NULL,
  `breakfast` varchar(20) COLLATE utf8_bin NOT NULL,
  `breakfast_type` varchar(20) COLLATE utf8_bin NOT NULL,
  `breakfastPrice` int(5) NOT NULL,
  `bhs` int(1) NOT NULL,
  `english` int(1) NOT NULL,
  `german` int(1) NOT NULL,
  `turkish` int(1) NOT NULL,
  `arabian` int(1) NOT NULL,
  `swedish` int(1) NOT NULL,
  `other` int(1) NOT NULL,
  `languages_other` varchar(50) COLLATE utf8_bin NOT NULL,
  `restaurant` int(1) NOT NULL,
  `room_service` int(1) NOT NULL,
  `bar` int(1) NOT NULL,
  `reception247` int(1) NOT NULL,
  `sauna` int(1) NOT NULL,
  `fitness_center` int(1) NOT NULL,
  `yard` int(1) NOT NULL,
  `terrace` int(1) NOT NULL,
  `nonsmoking_rooms` int(1) NOT NULL,
  `airport_ride` int(1) NOT NULL,
  `skiing` int(1) NOT NULL,
  `family_rooms` int(1) NOT NULL,
  `spa_center` int(1) NOT NULL,
  `jacuzzi` int(1) NOT NULL,
  `ac` int(1) NOT NULL,
  `water_park` int(1) NOT NULL,
  `pool` int(1) NOT NULL,
  `beach` int(1) NOT NULL,
  `clothes_hanger` int(1) NOT NULL,
  `clothes_dryer` int(1) NOT NULL,
  `sofa` int(1) NOT NULL,
  `closet` int(1) NOT NULL,
  `carpet` int(1) NOT NULL,
  `long_bed` int(1) NOT NULL,
  `room_fan` int(1) NOT NULL,
  `fireplace` int(1) NOT NULL,
  `merged_rooms` int(1) NOT NULL,
  `iron` int(1) NOT NULL,
  `bug_net` int(1) NOT NULL,
  `private_entrance` int(1) NOT NULL,
  `safe` int(1) NOT NULL,
  `sound_isolation` int(1) NOT NULL,
  `sitting_room` int(1) NOT NULL,
  `paved_marble_floor` int(1) NOT NULL,
  `wooden_floor` int(1) NOT NULL,
  `working_desk` int(1) NOT NULL,
  `toilet_paper` int(1) NOT NULL,
  `bath` int(1) NOT NULL,
  `bidet` int(1) NOT NULL,
  `shower_cabin` int(1) NOT NULL,
  `bathrobe` int(1) NOT NULL,
  `private_bathroom` int(1) NOT NULL,
  `free_bathroom_supplies` int(1) NOT NULL,
  `fan` int(1) NOT NULL,
  `hydromassaging_bath` int(1) NOT NULL,
  `shared_bathroom` int(1) NOT NULL,
  `slippers` int(1) NOT NULL,
  `wc` int(1) NOT NULL,
  `computer` int(1) NOT NULL,
  `nitendo_wii` int(1) NOT NULL,
  `ps2` int(1) NOT NULL,
  `ps3` int(1) NOT NULL,
  `xbox360` int(1) NOT NULL,
  `laptop` int(1) NOT NULL,
  `ipad` int(1) NOT NULL,
  `cable_tv` int(1) NOT NULL,
  `cd_dvd_reader` int(1) NOT NULL,
  `fax_machine` int(1) NOT NULL,
  `flat_screen_tv` int(1) NOT NULL,
  `pay_per_view_channels` int(1) NOT NULL,
  `radio` int(1) NOT NULL,
  `satellite_tv` int(1) NOT NULL,
  `phone` int(1) NOT NULL,
  `tv` int(1) NOT NULL,
  `blu_ray_reader` int(1) NOT NULL,
  `dining_room` int(1) NOT NULL,
  `barbecue` int(1) NOT NULL,
  `cooking_plates` int(1) NOT NULL,
  `toaster` int(1) NOT NULL,
  `kettle` int(1) NOT NULL,
  `outside_dinning_space` int(1) NOT NULL,
  `minibar` int(1) NOT NULL,
  `kitchenware` int(1) NOT NULL,
  `microwave` int(1) NOT NULL,
  `fridge` int(1) NOT NULL,
  `coffee_machine` int(1) NOT NULL,
  `children_seats` int(1) NOT NULL,
  `alarm` int(1) NOT NULL,
  `room_wake_up_service` int(1) NOT NULL,
  `bedclothes` int(1) NOT NULL,
  `towels` int(1) NOT NULL,
  `balcony` int(1) NOT NULL,
  `paved_yard` int(1) NOT NULL,
  `city_view` int(1) NOT NULL,
  `garden_view` int(1) NOT NULL,
  `lake_view` int(1) NOT NULL,
  `mountain_view` int(1) NOT NULL,
  `pool_view` int(1) NOT NULL,
  `river_view` int(1) NOT NULL,
  `sea_view` int(1) NOT NULL,
  `room_is_on_the_ground_floor` int(1) NOT NULL,
  `accessible_to_people_in_wheelchairs` int(1) NOT NULL,
  `upper_floors_accessible_with_elevators` int(1) NOT NULL,
  `toilet_with_handles` int(1) NOT NULL,
  `safe_for_babies` int(1) NOT NULL,
  `games` int(1) NOT NULL,
  `books_dvds_or_music` int(1) NOT NULL,
  `socket_protection` int(1) NOT NULL,
  `pets` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`ID`, `owner_ID`, `hotel_title`, `start_date`, `end_date`, `stars`, `hotel_address`, `city`, `zip`, `country`, `main_bed_type`, `sec_bed_type`, `number_of_main_beds`, `number_of_sec_beds`, `number_of_people`, `type_of_room`, `smoking`, `number_of_rooms`, `size_of_room`, `hotel_price`, `discount`, `discount_value`, `discountUnit`, `internet`, `internet_available`, `internet_type`, `internet_price`, `parking`, `parking_type`, `reservation_needed`, `parking_price`, `breakfast`, `breakfast_type`, `breakfastPrice`, `bhs`, `english`, `german`, `turkish`, `arabian`, `swedish`, `other`, `languages_other`, `restaurant`, `room_service`, `bar`, `reception247`, `sauna`, `fitness_center`, `yard`, `terrace`, `nonsmoking_rooms`, `airport_ride`, `skiing`, `family_rooms`, `spa_center`, `jacuzzi`, `ac`, `water_park`, `pool`, `beach`, `clothes_hanger`, `clothes_dryer`, `sofa`, `closet`, `carpet`, `long_bed`, `room_fan`, `fireplace`, `merged_rooms`, `iron`, `bug_net`, `private_entrance`, `safe`, `sound_isolation`, `sitting_room`, `paved_marble_floor`, `wooden_floor`, `working_desk`, `toilet_paper`, `bath`, `bidet`, `shower_cabin`, `bathrobe`, `private_bathroom`, `free_bathroom_supplies`, `fan`, `hydromassaging_bath`, `shared_bathroom`, `slippers`, `wc`, `computer`, `nitendo_wii`, `ps2`, `ps3`, `xbox360`, `laptop`, `ipad`, `cable_tv`, `cd_dvd_reader`, `fax_machine`, `flat_screen_tv`, `pay_per_view_channels`, `radio`, `satellite_tv`, `phone`, `tv`, `blu_ray_reader`, `dining_room`, `barbecue`, `cooking_plates`, `toaster`, `kettle`, `outside_dinning_space`, `minibar`, `kitchenware`, `microwave`, `fridge`, `coffee_machine`, `children_seats`, `alarm`, `room_wake_up_service`, `bedclothes`, `towels`, `balcony`, `paved_yard`, `city_view`, `garden_view`, `lake_view`, `mountain_view`, `pool_view`, `river_view`, `sea_view`, `room_is_on_the_ground_floor`, `accessible_to_people_in_wheelchairs`, `upper_floors_accessible_with_elevators`, `toilet_with_handles`, `safe_for_babies`, `games`, `books_dvds_or_music`, `socket_protection`, `pets`) VALUES
(1, 12, 'hotel btt', '2019-04-02', '2019-04-04', 1, 'vrancici 63', 'hadzici', 6, 'bih', 'One person bed/90-130 cm', 'One person bed/90-130 cm', 4, 5, 4, '', 'Yes', 3, 0, 4, 0, '0', '%', 'Yes, it is free', 'Shared spaces', 'Wi-Fi', 0, 'Yes, it is free', 'Within the hotel', 'Needs to b', 0, 'Yes, it is free', 'Continental', 0, 1, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 14, 'NEWsi paKHotel', '', '', 5, 'Ahatovicka 106', 'sarajevo', 71000, 'bih', 'One person bed/90-130 cm', 'One person bed/90-130 cm', 1, 1, 2, '', 'Yes', 4, 0, 80, 0, '0', '%', 'Yes, it is free', 'Shared spaces', 'Wi-Fi', 0, 'Yes, it is free', 'Within the hotel', 'Needs to b', 0, 'Yes, it is free', 'Continental', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `phone` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `phone`, `password`, `code`, `status`) VALUES
(12, 'sanida', 'sa@ni.da', '062', '$2y$10$Y3utozNt0XhWUKtScj9yo.wv.kzeZF8eW1MvIdKfO6diAEG38P61u', '$2y$10$RlyUcbULi2DeWVaws6035ejmP1rf9LLSDOqs6H5FeTW', '1'),
(13, 'sanida fatic', 'sanida@gmail.com', '061400718', '$2y$10$skH58Hjr/Mjxrnfo1Glut.uzJTFjO41JeD.f.RkrWU.Gy8WUPamja', '$2y$10$TE1Zf89gcW3Xd2WDR6wfbuZFzSzFaUlP44wYDSDVeo4', '1'),
(14, 'Adin', 'adinresic666@gmail.com', '0615155554', '$2y$10$aPxhRnBzop0wMZyB4or0OOp9fYikpcichp1BKN62oDRQZkyipVqU.', '$2y$10$I0jJRyIEKnX4YpnWaGRttOKqN2xclJBzGLKpnxpmaDY', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `owner_ID` int(30) NOT NULL,
  `start_date` varchar(30) COLLATE utf8_bin NOT NULL,
  `end_date` varchar(30) COLLATE utf8_bin NOT NULL,
  `vehicle_brand` varchar(30) COLLATE utf8_bin NOT NULL,
  `vehicle_model` varchar(30) COLLATE utf8_bin NOT NULL,
  `vehicle_year` int(4) NOT NULL,
  `seats` int(2) NOT NULL,
  `max_people` int(2) NOT NULL,
  `max_bags` int(2) NOT NULL,
  `ac` int(1) NOT NULL,
  `baby_seat` int(1) NOT NULL,
  `insurance` varchar(20) COLLATE utf8_bin NOT NULL,
  `theft_protection` varchar(20) COLLATE utf8_bin NOT NULL,
  `driver` varchar(20) COLLATE utf8_bin NOT NULL,
  `address` varchar(30) COLLATE utf8_bin NOT NULL,
  `price_driver` int(5) NOT NULL,
  `price_season` int(6) NOT NULL,
  `price_off_season` int(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`ID`, `owner_ID`, `start_date`, `end_date`, `vehicle_brand`, `vehicle_model`, `vehicle_year`, `seats`, `max_people`, `max_bags`, `ac`, `baby_seat`, `insurance`, `theft_protection`, `driver`, `address`, `price_driver`, `price_season`, `price_off_season`) VALUES
(3, 12, '2019-05-02', '2019-05-15', 'BMW', 'M5', 2015, 3, 3, 3, 0, 0, 'nn', 'nn', 'No', 'nn', 0, 5, 5),
(4, 14, '2019-04-02', '2019-04-05', 'BMW', 'X6', 2018, 4, 4, 2, 1, 0, 'aferim opet', 'hahah aferim', 'Yes, driver is avail', '', 0, 100, 100);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
