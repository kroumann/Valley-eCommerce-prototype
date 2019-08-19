--
-- Dumping data for table `user`
--
INSERT INTO `user` (`id`, `email`, `name`, `password_hash`, `username`) VALUES
(1, 'sory.kourouma@gmail.com', 'sory', '$2a$10$uOROP5u.wkJQhpTKKe4c8O2VWaRJcu.PebzBFm7gCwlFIfdik1lwi', 'sorykroum'),
(2, 'admin@proto.com', 'kroum', '$2a$10$Dy69AUpjzZrcYSsewxpTV.9xA8GhbAQOCjCLvRAIRHJE3N7/esrxG', 'administrator');

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `roles`) VALUES
(1, 'ADMIN'),
(2, 'USER');

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'HP'),
(2, 'LG'),
(3, 'SAMSUNG'),
(4, 'APPLE'),
(5, 'EPSON'),
(6, 'CANON'),
(7, 'SONY'),
(8, 'SANDISK'),
(9, 'CORSAIR'),
(10, 'INTEL'),
(11, 'PHANTEK'),
(12, 'DELL'),
(13, 'HUAWAI'),
(14, 'WINNOVE'),
(15, 'ASUS'),
(16, 'LENOVO');


--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Company X'),
(2, 'Company Y'),
(3, 'Company Z');

INSERT INTO `store` (`store_type`, `id`, `name`, `status`, `address`, `store_owner_user_id`) VALUES
('physical', 1, 'eProto', 'ACCEPTED', 'eProto address', 1),
('physical', 2, 'Company X', 'ACCEPTED', 'x address', 1),
('physical', 3, 'Company Y', 'ACCEPTED', 'y address', 1),
('physical', 4, 'Company Z', 'ACCEPTED', 'z address', 1);

INSERT INTO `store_owner` (`user_id`) VALUES
(1);


INSERT INTO `admin` (`user_id`, `superior_user_id`) VALUES
(1, 1);


INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(1, 979, '2019-08-18 07:18:16', 'Telephone portable', 1, 4, 1),
(2, 650, '2019-08-18 15:31:48', 'Ordinateur de bureau LG', 2, 2, 1),
(3, 850, '2019-08-18 15:32:48', 'HP WorkStation Z220 SFF (slim)', 3, 1, 2),
(4, 930, '2019-08-18 15:33:15', ' HP 22-c0052nf', 4, 1, 1),
(5, 587, '2019-08-18 15:33:55', 'HP Pavilion 24-xa0017nf', 5, 1, 1),
(6, 850, '2019-08-18 15:34:25', 'HP 22-b003ns', 6, 1, 1),
(7, 850, '2019-08-18 15:35:02', ' HP All-in-One PC 24-f0038nl', 7, 1, 1),
(8, 450, '2019-08-18 15:36:01', 'Medion AKOYA e23401 All-in-One PC', 8, 1, 1),
(9, 870, '2019-08-18 15:36:24', 'Apple iMac', 9, 4, 1),
(10, 740, '2019-08-18 15:36:59', 'Megaport Super Mega Pack', 10, 1, 1),
(11, 870, '2019-08-18 15:36:24', 'Apple iMac 2', 11, 4, 1),
(12, 870, '2019-08-18 15:36:24', 'Apple iMac 3', 12, 4, 1),
(13, 870, '2019-08-18 15:36:24', 'Apple iMac 4', 13, 4, 1),
(14, 870, '2019-08-18 15:36:24', 'Apple iMac 5', 14, 4, 1),
(15, 870, '2019-08-18 15:36:24', 'Apple iMac 6', 15, 4, 1),
(16, 870, '2019-08-18 15:36:24', 'Apple iMac 7', 16, 4, 1),
(17, 870, '2019-08-18 15:36:24', 'Apple iMac 8', 17, 4, 1),
(18, 870, '2019-08-18 15:36:24', 'Apple iMac 9', 18, 4, 1),
(19, 870, '2019-08-18 15:36:24', 'Apple iMac 10', 19, 4, 1),
(20, 870, '2019-08-18 15:36:24', 'Apple iMac 11', 20, 4, 1),
(21, 870, '2019-08-18 15:36:24', 'Apple iMac 12', 21, 4, 1),
(22, 870, '2019-08-18 15:36:24', 'Apple iMac 13', 22, 4, 1),
(23, 870, '2019-08-18 15:36:24', 'Apple iMac 14', 23, 4, 1),
(24, 870, '2019-08-18 15:36:24', 'Apple iMac 15', 24, 4, 1),
(25, 870, '2019-08-18 15:36:24', 'Apple iMac 16', 25, 4, 1),
(26, 870, '2019-08-18 15:36:24', 'Apple iMac 17', 26, 4, 1),
(27, 870, '2019-08-18 15:36:24', 'Apple iMac 18', 27, 4, 1),
(28, 870, '2019-08-18 15:36:24', 'Apple iMac 19', 28, 4, 1),
(29, 870, '2019-08-18 15:36:24', 'Apple iMac 20', 29, 4, 1),
(30, 870, '2019-08-18 15:36:24', 'Apple iMac 21', 30, 4, 1),
(31, 870, '2019-08-18 15:36:24', 'Apple iMac 22', 31, 4, 1),
(32, 870, '2019-08-18 15:36:24', 'Apple iMac 23', 32, 4, 1),
(33, 870, '2019-08-18 15:36:24', 'Apple iMac 24', 33, 4, 1),
(34, 870, '2019-08-18 15:36:24', 'Apple iMac 25', 34, 4, 1),
(35, 870, '2019-08-18 15:36:24', 'Apple iMac 26', 35, 4, 1);

INSERT INTO `virtual_product` (`serial`, `id`) VALUES
('101', 1),
('102', 2),
('103', 3),
('104', 4),
('105', 5),
('106', 6),
('107', 7),
('108', 8),
('109', 9),
('110', 10),
('111', 11),
('112', 12),
('113', 13),
('114', 14),
('115', 15),
('116', 16),
('117', 17),
('118', 18),
('119', 19),
('120', 20),
('121', 21),
('122', 22),
('123', 23),
('124', 24),
('125', 25),
('126', 26),
('127', 27),
('128', 28),
('129', 29),
('130', 30),
('131', 31),
('132', 32),
('133', 33),
('134', 34),
('135', 35);

INSERT INTO `store_product` (`description`, `name`, `price`, `views`, `product_id`, `store_id`) VALUES
('Store 1 description for: Telephone portable', 'Telephone portable', 650, 50, 1, 1),
('Store 1 description for: Ordinateur de bureau LG', 'Ordinateur de bureau LG', 750, 50, 2, 1),
('Store 1 description for: HP WorkStation Z220 SFF (slim)', 'HP WorkStation Z220 SFF (slim)', 690, 50, 3, 1),
('Store 1 description for: HP 22-c0052nf', 'HP 22-c0052nf', 790, 50, 4, 1),
('Store 1 description for: HP Pavilion 24-xa0017nf', 'HP Pavilion 24-xa0017nf', 990, 50, 5, 1),
('Store 1 description for: HP 22-b003ns', 'HP 22-b003ns', 690, 50, 6, 1),
('Store 1 description for: HP All-in-One PC 24-f0038nl', 'HP All-in-One PC 24-f0038nl', 590, 50, 7, 1),
('Store 1 description for: Medion AKOYA e23401 All-in-One PC', 'Medion AKOYA e23401 All-in-One PC', 790, 50, 8, 1),
('Store 1 description for: Apple iMac', 'Apple iMac', 800, 50, 9, 1),
('Store 1 description for: Megaport Super Mega Pack', 'Megaport Super Mega Pack', 820, 50, 10, 1),
('Store 1 description for: Apple iMac 2', 'Apple iMac 2', 810, 50, 11, 1);
/*
INSERT INTO `store_product_history` (`old_description`, `old_name`, `old_product_price`, `product_id`, `store_id`, `store_productid`) VALUES
('Store 1 old description for: Telephone portable', 'Telephone portable old', 650, 50, 1, 1);
*/
--
-- Dumping data for table `brand`
--

COMMIT;