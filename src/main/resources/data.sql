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



INSERT INTO `product` (`id`, `average_price`, `date_time`, `name`, `views`, `brand_id`, `company_id`) VALUES
(1, 979, '2019-08-18 07:18:16', 'Telephone portable', 1, 4, 1);


--
-- Dumping data for table `brand`
--

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
(12, 'DELL');


--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Company X'),
(2, 'Company Y'),
(3, 'Company Z');