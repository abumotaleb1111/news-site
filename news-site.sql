-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 09:07 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(39, 'Entertainment', 0),
(38, 'Sports', 1),
(37, 'Business', 2),
(36, 'Education', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(48, 'bKash introduces reward points with transaction', 'Now bKash customers can earn reward points with transaction to their own accounts. They can avail different offers including cashback using those reward points afterwards. The more transactions will be made, the more bKash Rewards points will be added to account, making customers experience affordable and exciting.\r\n\r\nbKash always strives to introduce new and innovative services for its customers. On that core principle, it has introduced another unique service bKash Rewards which is the first of its kind in the countrys mobile financial services MFS sector.', '37', '28 Aug, 2021', 39, '1630154174-mfs.jpg'),
(47, 'University reopening likely from Oct 15', 'Universities across the country are likely to reopen and resume in-person classes from October 15 only after all students and teachers have been vaccinated.\r\n\r\nThe government cleared the reopening of campuses during a Ministry of Education and Ministry of Primary and Mass Education virtual meeting yesterday evening.\r\n\r\nHowever, there is still a chance that the reopening may be deferred if all students are not vaccinated before that date', '36', '28 Aug, 2021', 40, '1630153995-tsc-1630056550186.jpg'),
(46, 'Resurgent Pujara leads Indias resistance at Headingley', 'Cheteshwar Pujara orchestrated Indias spirited resistance with an unbeaten career-reviving 91 but England remained on course for a series-levelling victory in the third test at Headingley on Friday.\r\n\r\nUnder pressure to save his place in the side, Pujara added 82 runs with Rohit Sharma and 99 with Virat Kohli to steer India to 215-2 when bad light stopped third days play.\r\n\r\nIndia are still 139 runs behind but it was a much-improved performance by the tourists who had wilted for 78 in their first innings to be on the back foot.', '38', '28 Aug, 2021', 40, '1630153876-2021-08-26t154542z_200155839_up1eh8q17s52f_rtrmadp_3_cricket-test-eng-ind.jpg'),
(45, 'Tokyo stocks close higher on US rallies', 'Tokyo stocks closed higher Tuesday as investors continued buying back following recent declines, taking heart from rallies on Wall Street.\r\n\r\nThe benchmark Nikkei 225 index rose 0.87 percent, or 237.86 points, to 27,732.10, while the broader Topix index gained 1.00 percent, or 19.06 points, to 1,934.20.\r\n\r\nIn Tokyo, chip-related shares gained ground. Chip-testing equipment maker Advantest jumped 1.79 percent to 9,050 yen with chip-making equipment manufacturer Tokyo Electron up 1.99 percent at 44,970 yen.', '37', '28 Aug, 2021', 40, '1630153716-prothomalo-english_2021-08_c5aa142a-05ec-4e87-9a9b-70e7bb678cbd_637541_01_02.jpg'),
(44, 'University set to reopen after mid-October', '                    The authorities at public and autonomous universities may reopen their respective institutions under their own management after 15 October, the education ministry has hinted.\r\n\r\nThe universities have remained shut since 17 March last year due to outbreak of coronavirus. \r\n\r\nHowever, students have to maintain health rules and they must be vaccinated. \r\n\r\nThe status of vaccination of the students has to be informed within a couple of days.\r\n\r\nVice chancellors were informed about such plans of reopening universities at a review meeting on reopening educational institutions on Thursday.                ', '36', '28 Aug, 2021', 39, '1630153609-ddbb5_1.jpg'),
(43, 'Schools, colleges to remain shut till 11 September', 'The education ministry on Thursday extended the closure of educational institutes up to higher secondary levels till 11 September.\r\n\r\nEducational institutes have remained shut since 17 March last year due to the coronavirus situation. \r\n\r\nThe closure was until 31 August according to the last announcement. \r\n\r\nA UNICEF report published on Tuesday said Bangladesh has experienced second-longest school closure in the world due to coronavirus. \r\n\r\nExtended closure has hampered the education life of over 45 million students up to the highest level.', '36', '28 Aug, 2021', 40, '1630153446-File_Photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'NEWS', 'news.jpg', '© Copyright 2020 News | Powered by <a href=\"https://www.news.net\">Yahoo Baba News</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(40, 'Ahsan', 'Zakir', 'ahsan', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(39, 'Abu', 'Motaleb', 'motaleb', '81dc9bdb52d04dc20036dbd8313ed055', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
