-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 09:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filedata` longblob NOT NULL,
  `uploadtime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `path`, `image`, `description`, `category`) VALUES
(3, 'movie1', 'uploads/1745260122863_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745260122856_fastf.jpg', 'trending movie', 'action'),
(4, 'comedy1', 'uploads/1745260250801_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745260250799_hancock.jpg', 'comedy movie', 'comedy'),
(5, 'comedy2', 'uploads/1745263367499_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745263367497_comedy2.jpg', 'a comedy movie', 'comedy'),
(6, 'thriller1', 'uploads/1745263399323_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745263399321_thirller1.png', 'thriller', 'horror'),
(7, 'drama1', 'uploads/1745263468339_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745263468332_deadpool.jpg', 'drama movie', 'drama');

-- --------------------------------------------------------

--
-- Table structure for table `premiumusers`
--

CREATE TABLE `premiumusers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premiumusers`
--

INSERT INTO `premiumusers` (`id`, `username`, `email`) VALUES
(1, 'saransh', 'skaushik463@rku.ac.in'),
(2, 'Harsh', 'hkumar12@rku.ac.in'),
(3, 'Disha', 'd@mail.com'),
(4, 'Gautam', 'grahul195@rku.ac.in'),
(5, 'test', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pre_movies`
--

CREATE TABLE `pre_movies` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pre_movies`
--

INSERT INTO `pre_movies` (`id`, `title`, `path`, `image`) VALUES
(1, 'interstellar', 'uploads/1745262343505_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745262343507_interstellar.jpg'),
(2, 'deadpool', 'uploads/1745262659607_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745262659609_deadpool.jpg'),
(3, 'spiderman', 'uploads/1745262722243_The 7 basic emotions - Do you recognise all facial expressions_.mp4', 'uploads/1745262722247_spiderman.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'saransh', 'skaushik463@rku.ac.in', '1234'),
(2, 'Harsh', 'hkumar12@rku.ac.in', '1234'),
(5, 'Disha', 'd@mail.com', '1234'),
(6, 'Gautam', 'grahul195@rku.ac.in', '1234'),
(7, 'test', 'test@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premiumusers`
--
ALTER TABLE `premiumusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_movies`
--
ALTER TABLE `pre_movies`
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
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `premiumusers`
--
ALTER TABLE `premiumusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pre_movies`
--
ALTER TABLE `pre_movies`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
