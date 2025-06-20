SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Table for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `admin` (`id`, `full_name`, `username`, `password`) VALUES
(2, 'abc', 'admin', '21232f297a57a5a743894a0e4a801fc3');


-- Table for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Hamburger', 'Food_Category_436.jpg', 'Yes', 'Yes'),
(2, 'Pizza', 'Food_Category_649.jpg', 'Yes', 'Yes'),
(3, 'Momo', 'Food_Category_552.jpg', 'Yes', 'Yes');

-- Table for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(1, 'Pizza 1', '', '5', 'Food-Name-9982.jpg', 2, 'Yes', 'Yes'),
(2, 'Hamburger 1', '', '6', 'Food-Name-9425.jpg', 1, 'Yes', 'Yes'),
(3, 'Momo 1', '', '4', 'Food-Name-3140.jpg', 3, 'Yes', 'Yes');


-- Table for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Indexes for table `admin`

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `category`

ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `food`

ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


-- AUTO_INCREMENT for table `food`

ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


-- AUTO_INCREMENT for table `order`

ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

