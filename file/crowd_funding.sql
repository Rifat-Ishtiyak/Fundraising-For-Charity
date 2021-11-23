-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 06:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crowd_funding`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `userId` int(10) NOT NULL,
  `eventId` int(10) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `description`, `userId`, `eventId`, `date`) VALUES
(2, 'sdvsfbgnbg', 7, 2, '28-06-2021-10-01'),
(3, 'afafwf', 7, 2, '28-06-2021-10-13'),
(4, 'nice event', 7, 2, '28-06-2021-10-48'),
(5, 'well done', 7, 1, '28-06-2021-10-49'),
(6, 'rifat ishtiyak', 7, 18, '28-06-2021-11-06'),
(7, 'hey there test commen !', 7, 3, '28-06-2021-11-14'),
(8, 'test comment 1234', 7, 18, '28-06-2021-12-47'),
(9, 'test comment 3', 8, 18, '28-06-2021-12-49'),
(11, 'nice', 7, 1, '28-06-2021-15-38'),
(12, 'tests comment', 7, 2, '28-06-2021-20-14'),
(13, 'aav', 7, 2, '29-06-2021-06-55'),
(14, 'gvuadcbihi', 7, 2, '29-06-2021-17-02'),
(15, 'hi...', 7, 2, '01-07-2021-20-59'),
(16, 'rifat', 7, 18, '02-07-2021-16-32');

-- --------------------------------------------------------

--
-- Table structure for table `eventdonations`
--

CREATE TABLE `eventdonations` (
  `eventDonationId` int(10) NOT NULL,
  `eventId` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `Amount` float NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventdonations`
--

INSERT INTO `eventdonations` (`eventDonationId`, `eventId`, `userId`, `Amount`, `date`) VALUES
(6, 18, 7, 1010, '28-06-2021-14-15'),
(8, 1, 7, 100, '28-06-2021-10-15'),
(9, 2, 7, 100, '29-06-2021-14-15'),
(10, 2, 7, 200, '29-06-2021-14-15'),
(11, 2, 7, 100, '29-06-2021-14-15'),
(12, 1, 7, 600, '30-06-2021-14-15'),
(13, 1, 7, 100, '01-07-2021-20-59'),
(14, 2, 7, 10, '01-07-2021-21-00'),
(15, 18, 7, 50, '02-07-2021-15-27'),
(16, 18, 7, 10, '02-07-2021-15-43'),
(17, 18, 7, 10, '02-07-2021-15-55'),
(18, 18, 7, 10, '02-07-2021-16-34'),
(19, 18, 7, 20, '03-07-2021-10-37'),
(20, 18, 6, 30, '03-07-2021-10-40'),
(21, 3, 7, 10, '03-07-2021-15-22'),
(22, 18, 7, 10, '04-07-2021-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eventId` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `description` text NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `userId` int(10) NOT NULL,
  `managerId` int(10) DEFAULT NULL,
  `targetAmount` float NOT NULL,
  `raisedAmount` float DEFAULT NULL,
  `commission` float DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventId`, `title`, `startDate`, `endDate`, `description`, `image`, `userId`, `managerId`, `targetAmount`, `raisedAmount`, `commission`, `status`) VALUES
(1, 'Save Africa!', '2020-03-11', '2021-06-01', 'Lorem Ipsum is simply dummy text of the printing ', 'orgEvent/default.jpg', 1, 5, 5000, 6800, 10, 0),
(2, 'Save patients!', '2021-06-11', '2021-06-29', 'Lorem Ipsum is simply dummy text of the printing.', 'orgEvent/default.jpg', 3, 5, 10000, 10410, 10, 1),
(3, 'Donate start-up', '2021-06-02', '2021-06-20', 'mlkssalflev vlksfklsf lsfm', 'orgEvent/default.jpg', 1, 5, 3000, 5010, 10, 0),
(4, 'Donate poor', '2021-05-02', '2021-05-20', 'Lorem Ipsum is simply dummy text of the printing ', 'orgEvent/default.jpg', 1, 5, 3000, 4300, 10, 0),
(18, 'Flooded People', '2021-06-17', '2021-07-22', 'aascdc  davjs jnac adv sdvjdovjsd', 'orgEvent/26-06-2021-18-08.jpg', 7, 5, 8000, 2150, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `fileId` int(10) NOT NULL,
  `filaName` varchar(1000) DEFAULT NULL,
  `eventId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notificationId` int(10) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `message` text NOT NULL,
  `userId` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `org`
--

INSERT INTO `org` (`id`, `name`, `email`, `gender`, `address`, `phone`, `password`, `image`) VALUES
(4, 'thor', 'thor@gmail.com', 'Male', '52s, Road 5F, Dhaka', '090876543', '9090', 'orgPic/25-06-2021-14-04.png'),
(5, 'Rifat Ishtiyak', 'rifat@gmail.com', 'Male', '51s, Road 5F, Dhaka', '0987765576', '1234', 'orgPic/26-06-2021-17-39.jpg'),
(6, 'test123', 'test@gmail.com', 'Male', '51s, Road 5F, Dhaka', '213456784567', '12345', 'asset/man.png'),
(7, 'Rifat Ishtiyak', 'test23@gmail.com', 'Male', '51s, Road 5F, Dhaka', '01786724845', '090909', 'asset/man.png');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `notificationId` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionId` int(10) NOT NULL,
  `totalAmount` float NOT NULL,
  `eventId` int(10) NOT NULL,
  `commissionAmount` float NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionId`, `totalAmount`, `eventId`, `commissionAmount`, `date`) VALUES
(1, 4500, 1, 500, '2021-06-24'),
(2, 2700, 3, 300, '2021-06-20'),
(3, 2700, 4, 300, '2021-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `email`, `password`, `status`, `type`) VALUES
(1, 'Asif', 'asif@gmail.com', 'Asif12345', 1, 'user'),
(2, 'Khan', 'khan@gmail.com', 'Khan12345', 1, 'user'),
(3, 'Imran', 'imran@gmail.com', 'Imran12345', 1, 'user'),
(4, 'Nehal', 'nehal@gmail.com', 'Nehal12345', 1, 'admin'),
(5, 'Jamil', 'jamil@gmail.com', 'Jamil12345', 1, 'manager'),
(6, 'thor', 'thor@gmail.com', '9090', 1, 'user'),
(7, 'Rifat Ishtiyak', 'rifat@gmail.com', '1234', 1, 'user'),
(8, 'test', 'test@gmail.com', '12345', 1, 'user'),
(9, 'Rifat Ishtiyak', 'test23@gmail.com', '090909', 1, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `FK_In_Events_Comments` (`eventId`),
  ADD KEY `FK_In_Users_Comments` (`userId`);

--
-- Indexes for table `eventdonations`
--
ALTER TABLE `eventdonations`
  ADD PRIMARY KEY (`eventDonationId`),
  ADD KEY `FK_In_Events_Donations` (`eventId`),
  ADD KEY `FK_In_Users_Donations` (`userId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eventId`),
  ADD KEY `FK_In_Users` (`userId`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`fileId`),
  ADD KEY `FK_In_Events_Files` (`eventId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notificationId`),
  ADD KEY `FK_In_Users_Notificatrions` (`userId`);

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD KEY `FK_In_Users_Receivers` (`userId`),
  ADD KEY `FK_In_Users_Notifications` (`notificationId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionId`),
  ADD KEY `FK_In_Events` (`eventId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `eventdonations`
--
ALTER TABLE `eventdonations`
  MODIFY `eventDonationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eventId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `fileId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notificationId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org`
--
ALTER TABLE `org`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_In_Events_Comments` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`),
  ADD CONSTRAINT `FK_In_Users_Comments` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `eventdonations`
--
ALTER TABLE `eventdonations`
  ADD CONSTRAINT `FK_In_Events_Donations` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`),
  ADD CONSTRAINT `FK_In_Users_Donations` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `FK_In_Users` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FK_In_Events_Files` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_In_Users_Notificatrions` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `receivers`
--
ALTER TABLE `receivers`
  ADD CONSTRAINT `FK_In_Users_Notifications` FOREIGN KEY (`notificationId`) REFERENCES `notifications` (`notificationId`),
  ADD CONSTRAINT `FK_In_Users_Receivers` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK_In_Events` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
