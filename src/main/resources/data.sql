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
(1, 'STORE_OWNER'),
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
(14, 'WINNOVO'),
(15, 'ASUS'),
(16, 'LENOVO'),
(17, 'ASUSTEK'),
(18, 'MEGAPORT'),
(19, 'MEDION'),
(20, 'PIXMA'),
(21, 'BROTHER'),
(22, 'SERVICES');


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




--Desktop
INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(1,  979, '2019-08-18 07:18:16', 'Ordinateur de bureau LG', 1, 2, 1),
(2,  650, '2019-08-18 15:31:48', 'HP WorkStation Z220 SFF (slim)', 2, 1, 1),
(3,  850, '2019-08-18 15:32:48', 'HP 22-c0052nf', 3, 1, 2),
(4,  930, '2019-08-18 15:33:15', 'HP Pavilion 24-xa0017nf', 4, 1, 1),
(5,  587, '2019-08-18 15:33:55', 'HP 22-b003ns', 5, 1, 1),
(6,  850, '2019-08-18 15:34:25', 'HP All-in-One PC 24-f0038nl', 6, 1, 1),
(7,  850, '2019-08-18 15:35:02', 'Medion AKOYA e23401 All-in-One PC', 7, 19, 1),
(8,  450, '2019-08-18 15:36:01', 'Apple iMac', 8, 4, 1),
(9,  870, '2019-08-18 15:36:24', 'Megaport Super Mega Pack', 9, 18, 1),
(10, 740, '2019-08-18 15:36:59', 'Asustek V221IDUK-BA114T', 10, 17, 1);

-- Formulaires
INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(11,  0, '2019-09-21 08:45:15', 'Formulaire de déclaration (Dévises)', 1, 22, 1),
(12,  0, '2019-08-21 08:44:10', 'Mes Démandes', 1, 22, 1);

 --laptops
 INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(101, 870, '2019-08-18 15:36:24', 'HUAWEI MateBook D 15.6\"', 101, 13, 1),
(102, 870, '2019-08-18 15:36:24', 'HP 15-da0106nf', 102, 1, 1),
(103, 870, '2019-08-18 15:36:24', 'Winnovo V146 Notebook', 103, 14, 1),
(104, 870, '2019-08-18 15:36:24', 'ASUS ZenBook 14 UX410UA-GV410T', 104, 15, 1),
(105, 870, '2019-08-18 15:36:24', 'Asus Vivobook E402WA GA062TS', 105, 15, 1),
(106, 870, '2019-08-18 15:36:24', 'Asus Vivobook S S512UA-EJ086T', 106, 15, 1),
(107, 870, '2019-08-18 15:36:24', 'Dell Inspiron 15-5570', 107, 12, 1),
(108, 870, '2019-08-18 15:36:24', 'Lenovo Idéapad D330', 108, 16, 1),
(109, 870, '2019-08-18 15:36:24', 'Apple MacBook Air',109, 4, 1),
(110, 870, '2019-08-18 15:36:24', 'HP 14-cm0023nf',110, 1, 1);

-- phones
INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(200, 870, '2019-08-18 15:36:24', 'Apple iPhone 6', 200, 4, 1),
(201, 870, '2019-08-18 15:36:24', 'Apple iPhone 6 plus', 201, 4, 1),
(202, 870, '2019-08-18 15:36:24', 'Apple iphone 8', 202, 4, 1),
(203, 870, '2019-08-18 15:36:24', 'Apple iphone 8 plus', 203, 4, 1),
(204, 870, '2019-08-18 15:36:24', 'Apple iphone X', 204, 4, 1),
(205, 870, '2019-08-18 15:36:24', 'Samsung Galaxy Note8', 205, 3, 1),
(206, 870, '2019-08-18 15:36:24', 'Samsung Galaxy S7', 206, 3, 1),
(207, 870, '2019-08-18 15:36:24', 'Samsung Galaxy S8', 207, 3, 1),
(208, 870, '2019-08-18 15:36:24', 'Samsung Galaxy S9', 208, 3, 1),
(209, 870, '2019-08-18 15:36:24', 'Samsung Galaxy S9 plus', 209, 3, 1),
(210, 870, '2019-08-18 15:36:24', 'Samsung Galaxy A10', 210, 3, 1),
(211, 870, '2019-08-18 15:36:24', 'Samsung-SM-G900V', 211, 3, 1);

--printers
INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(300, 870, '2019-08-18 15:36:24', 'Pixma Ts5050black MFP', 300, 20, 1),
(301, 870, '2019-08-18 15:36:24', 'HP Deskjet 2634', 301, 1, 1),
(302, 870, '2019-08-18 15:36:24', 'Brother MFC-L2710DW', 302, 21, 1),
(303, 870, '2019-08-18 15:36:24', 'HP Officejet 3833', 303, 1, 1),
(304, 870, '2019-08-18 15:36:24', 'HP Envy Photo 7830', 304, 1, 1),
(305, 870, '2019-08-18 15:36:24', 'HP Officejet Pro 8720', 305, 1, 1),
(306, 870, '2019-08-18 15:36:24', 'Brother MFC-J5330DW', 306, 21, 1),
(307, 870, '2019-08-18 15:36:24', 'HP Officejet Pro 7720', 307, 1, 1),
(308, 870, '2019-08-18 15:36:24', 'Brother DCP-J572DW', 308, 21, 1),
(309, 870, '2019-08-18 15:36:24', 'Epson Workforce WF-2630WF', 309, 5, 1),
(310, 870, '2019-08-18 15:36:24', 'HP Officejet Pro 8720 All-in-One', 310, 1, 1);


INSERT INTO `virtual_product` (`serial`, `id`) VALUES
('100000001', 1),
('100000002', 2),
('100000003', 3),
('100000004', 4),
('100000005', 5),
('100000006', 6),
('100000007', 7),
('100000008', 8),
('100000009', 9),
('100000010', 10),
('100000011', 11),
('100000012', 12),
('100000101', 101),
('100000102', 102),
('100000103', 103),
('100000104', 104),
('100000105', 105),
('100000106', 106),
('100000107', 107),
('100000108', 108),
('100000109', 109),
('100000110', 110),
('100000200', 200),
('100000201', 201),
('100000202', 202),
('100000203', 203),
('100000204', 204),
('100000205', 205),
('100000206', 206),
('100000207', 207),
('100000208', 208),
('100000209', 209),
('100000210', 210),
('100000211', 211),
('100000300', 300),
('100000301', 301),
('100000302', 302),
('100000303', 303),
('100000304', 304),
('100000305', 305),
('100000306', 306),
('100000307', 307),
('100000308', 308),
('100000309', 309),
('100000310', 310);

--Desktop
INSERT INTO `store_product` (`description`, `name`, `price`, `views`, `product_id`, `store_id`, `image_path`) VALUES
('desktop 1', 'Ordinateur de bureau LG', 650, 10, 2, 1, 'desktop/1'),
('desktop 2', 'HP WorkStation Z220 SFF (slim)', 730, 10, 2, 1, 'desktop/2'),
('desktop 3', 'HP 22-c0052nf', 760, 10, 3, 1, 'desktop/3'),
('desktop 4', 'HP Pavilion 24-xa0017nf', 420, 10, 4, 1, 'desktop/4'),
('desktop 5', 'HP 22-b003ns', 560, 10, 5, 1, 'desktop/5'),
('desktop 6', 'HP All-in-One PC 24-f0038nl', 470, 10, 6, 1, 'desktop/6'),
('desktop 7', 'Medion AKOYA e23401 All-in-One PC', 360,  10, 7, 1, 'desktop/7'),
('desktop 8', 'Apple iMac', 980, 10, 8, 1, 'desktop/8'),
('desktop 9', 'Megaport Super Mega Pack', 420, 10, 9, 1, 'desktop/9'),
('desktop 10', 'Asustek V221IDUK-BA114T', 490, 10, 10, 1, 'desktop/10');

-- Formulaires
INSERT INTO `store_product` (`description`, `name`, `price`, `views`, `product_id`, `store_id`, `image_path`) VALUES
(11,  0, '2019-09-21 08:45:15', 'Formulaire de déclaration (Dévises)', 1, 22, 1),
(12,  0, '2019-08-21 08:44:10', 'Mes Démandes', 1, 22, 1);

 --laptops
 INSERT INTO `store_product` (`description`, `name`, `price`, `views`, `product_id`, `store_id`, `image_path`) VALUES
('laptops 1', 'HUAWEI MateBook D 15.6\"', 690, 10, 101, 1, 'laptops/1'),
('laptops 2', 'HP 15-da0106nf', 720, 10, 102, 1, 'laptops/2'),
('laptops 3', 'Winnovo V146 Notebook',320, 10, 103, 1, 'laptops/3'),
('laptops 4', 'ASUS ZenBook 14 UX410UA-GV410T', 450, 10, 104, 1, 'laptops/4'),
('laptops 5', 'Asus Vivobook E402WA GA062TS', 500, 10, 105, 1, 'laptops/5'),
('laptops 6', 'Asus Vivobook S S512UA-EJ086T', 560, 10, 106, 1, 'laptops/6'),
('laptops 7', 'Dell Inspiron 15-5570', 460, 10, 107, 1, 'laptops/7'),
('laptops 8', 'Lenovo Idéapad D330', 580, 10, 108, 1, 'laptops/8'),
('laptops 9', 'Apple MacBook Air', 990, 10, 109, 1, 'laptops/9'),
('laptops 10', 'HP 14-cm0023nf', 650, 10, 110, 1, 'laptops/10');

-- phones
INSERT INTO `store_product` (`description`, `name`, `price`, `views`, `product_id`, `store_id`, `image_path`) VALUES
('phones 0', 'Apple iPhone 6', 620, 10, 200, 1, 'phones/1'),
('phones 1', 'Apple iPhone 6 plus', 830, 10, 201, 1, 'phones/2'),
('phones 2', 'Apple iphone 8', 730, 10,  202, 1, 'phones/3'),
('phones 3', 'Apple iphone 8 plus', 780, 10, 203, 1, 'phones/4'),
('phones 4', 'Apple iphone X', 999, 10, 204, 1, 'phones/5'),
('phones 5', 'Samsung Galaxy Note8', 980, 10, 205, 1, 'phones/6'),
('phones 6', 'Samsung Galaxy S7', 320, 10, 206, 1, 'phones/7'),
('phones 7', 'Samsung Galaxy S8', 450, 10, 207, 1, 'phones/8'),
('phones 8', 'Samsung Galaxy S9', 560, 10, 208, 1, 'phones/9'),
('phones 9', 'Samsung Galaxy S9 plus', 610, 10, 209, 1, 'phones/10'),
('phones 10', 'Samsung Galaxy A10', 320, 10, 210, 1, null),
('phones 11', 'Samsung-SM-G900V', 260, 10, 211, 1, 'phones/11');

-- printers
INSERT INTO `store_product` (`description`, `name`, `price`, `views`, `product_id`, `store_id`, `image_path`) VALUES
('printers 1', 'Pixma Ts5050black MFP',65, 10, 300, 1, 'printers/1'),
('printers 2', 'HP Deskjet 2634', 180, 10, 301, 1, 'printers/2'),
('printers 3', 'Brother MFC-L2710DW', 120, 10, 302, 1, 'printers/3'),
('printers 4', 'HP Officejet 3833', 130, 10, 303, 1, 'printers/4'),
('printers 5', 'HP Envy Photo 7830', 80, 10, 304, 1, 'printers/5'),
('printers 6', 'HP Officejet Pro 8720', 95, 10, 305, 1, 'printers/6'),
('printers 7', 'Brother MFC-J5330DW', 130, 10, 306, 1, 'printers/7'),
('printers 8', 'HP Officejet Pro 7720', 230, 10, 307, 1, 'printers/8'),
('printers 9', 'Brother DCP-J572DW',280, 10,  308, 1, 'printers/9'),
('printers 10', 'Epson Workforce WF-2630WF', 240, 10, 309, 1, 'printers/10'),
('printers 11', 'HP Officejet Pro 8720 All-in-One', 280, 10, 310, 1, null);

/*
('Store 1 description for: Telephone portable', 'Telephone portable', 650, 50, 1, 1, null),
('Store 1 description for: Ordinateur de bureau LG', 'Ordinateur de bureau LG', 750, 50, 2, 1, 'desktop/1'),
('Store 1 description for: HP WorkStation Z220 SFF (slim)', 'HP WorkStation Z220 SFF (slim)', 690, 50, 3, 1, null),
('Store 1 description for: HP 22-c0052nf', 'HP 22-c0052nf', 790, 50, 4, 1, null),
('Store 1 description for: HP Pavilion 24-xa0017nf', 'HP Pavilion 24-xa0017nf', 990, 50, 5, 1, null),
('Store 1 description for: HP 22-b003ns', 'HP 22-b003ns', 690, 50, 6, 1, null),
('Store 1 description for: HP All-in-One PC 24-f0038nl', 'HP All-in-One PC 24-f0038nl', 590, 50, 7, 1, null),
('Store 1 description for: Medion AKOYA e23401 All-in-One PC', 'Medion AKOYA e23401 All-in-One PC', 790, 50, 8, 1, null),
('Store 1 description for: Apple iMac', 'Apple iMac', 800, 50, 9, 1, null),
('Store 1 description for: Megaport Super Mega Pack', 'Megaport Super Mega Pack', 820, 50, 10, 1, null),
('Store 1 description for: Apple iMac 2', 'Apple iMac 2', 810, 50, 11, 1, null);

INSERT INTO `store_product_history` (`old_description`, `old_name`, `old_product_price`, `product_id`, `store_id`, `store_productid`) VALUES
('Store 1 old description for: Telephone portable', 'Telephone portable old', 650, 50, 1, 1);
*/
--
-- Dumping data for table `brand`
--

COMMIT;