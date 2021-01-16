-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 01:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES
(2, 'akash', '', 'k', 'Male', 2015, 5, 'akash@sample.com', 'IBM', '', 1, '2021-01-15'),
(8, 'Adarsh', 's', 'shetty', 'Male', 2014, 4, 'adarshshetty@yahoo.com', 'Dell', '1610728200_Bossbaby.png', 1, '2021-01-15'),
(9, 'Ramesh', 'k', 'Poojary', 'Male', 2013, 8, 'rameshpj@gmail.com', 'TATA Motors', '1610728320_Pikachu.png', 1, '2021-01-15'),
(10, 'sam', '', 'Lewis', 'Male', 2014, 8, 'samlewis@yahoo.com', 'TATA Motors', '1610728440_Boya.jpg', 1, '2021-01-15'),
(11, 'Joswin', '', 'Peter', 'Male', 2019, 5, 'peterjos@ETC.com', 'Unemployed', '1610728560_minion.jpg', 0, '2021-01-15'),
(12, 'Sohan', '', 'S', 'Male', 2019, 5, 'ssohan@sample.com', 'BEL', '1610770800_shinchan.jpg', 0, '2021-01-16'),
(13, 'Ramya', 'K', 'Rao', 'Female', 2015, 6, 'raork@yahoo.com', 'NAVAYUGA Highway Ltd', '1610772660_17d83f0f0936dc2547667cf40c9e0ecd.jpg', 0, '2021-01-16'),
(14, 'Sara', '', 'Khan', 'Female', 2012, 7, 'khansara@outlook.com', 'Air India ', '1610772900_original (1).jpg', 0, '2021-01-16'),
(15, 'Kirthi', '', 'Shetty', 'Female', 2020, 3, 'shettykirthi@yahho.com', 'Infosys', '1610773020_3a745d3dcba72feb73e44e399ec97bea.jpg', 0, '2021-01-16'),
(16, 'Divya', '', 'R', 'Female', 2019, 9, 'divyar@gmail.com', 'HouseWife', '1610773140_original (1).jpg', 0, '2021-01-16'),
(17, 'Allen', '', 'Peter', 'Male', 2020, 4, 'peterallen@outlook.com', 'HP', '1610773320_download.jpg', 0, '2021-01-16'),
(18, 'Kavyashree', '', 'K', 'Female', 2019, 3, 'kavyashree@gmail.com', 'Infosys', '1610773800_65-6.png', 0, '2021-01-16'),
(19, 'Sudarshan', '', 'P', 'Male', 2015, 8, 'sudarshan@yahoo.com', 'Mahindra Group', '1610774160_cartoon-drawing-male-man-cartoon.jpg', 0, '2021-01-16'),
(20, 'Ashitha', '', 'K', 'Female', 2019, 3, 'kashitha@yahoo.com', 'HP', '1610774340_original.jpg', 1, '2021-01-16'),
(21, 'Jnanesh', 'R', 'Aradhya ', 'Male', 2014, 9, 'jnanesharadhya@gmail.com', 'Google', '1610797440_380-3806145_stylish-.png', 0, '2021-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(1, 'IT Company', 'Home-Based', 'Web Developer', '&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 3, '2020-10-15 14:14:27'),
(2, 'Texida', 'Chennai', 'IT Specialist', '&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(68, 68, 68); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 16px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Looking for a specialist who can helpout the team.&lt;/p&gt;', 1, '2020-10-15 15:05:37'),
(3, 'IBM', 'Mumbai', 'Junior Designer', 'Just follow your project manager and Don&amp;#x2019;t Mess Up!!!', 1, '2021-01-14 23:40:25'),
(4, 'Apple', 'Bangalore', 'Public Relations Officer', 'Just Smile and speak gibberish in English. That&amp;#x2019;s how we do it.', 1, '2021-01-15 21:15:32'),
(5, 'Google', 'Mumbai', 'Summer Interns', 'Get your summer time internships done at google. Crack the Google hash code to win an Internship and other exiting Prizes.', 8, '2021-01-15 21:33:04'),
(6, 'HP', 'Hebri', 'Intership', 'We provide you better internship. Here you can improve you skills in coding language.', 21, '2021-01-16 11:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(3, 'Computer Science', ''),
(4, 'Information Science', ''),
(5, 'Electronics and Communication', ''),
(6, 'Civil Engineering', ''),
(7, 'Aeronautical Engineering ', ''),
(8, 'Mechanical Engineering', ''),
(9, 'MBA', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(1, 'Alumni Meet', '&lt;p&gt;Calling all alumni who have been part of our MITE family, to once again get back into the golden days of your youth. To relive some of your unforgettable moments with your gangs, roam around the college and have nostalgia take you back in time. So we host this event to give you, our students to come and have a formal event.&lt;br&gt;&lt;/p&gt;&lt;p&gt;CO-ORDINATORS: Mr. Guruprasad (Dept. of CSE)&lt;/p&gt;', '2021-10-16 10:00:00', '1610722740_auditorium.jpg', '2020-10-16 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(5, 0, '', 1, '2020-10-16 09:49:34'),
(6, 1, 'Yes sir. Rules are meant to be broken.', 8, '2021-01-15 21:33:39'),
(7, 1, 'No, Admin does not want these rules to be broken.', 6, '2021-01-15 21:34:48'),
(8, 1, 'ok sir', 10, '2021-01-16 10:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(2, 'Sample Topic 2', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/span&gt;', 3, '2020-10-15 15:20:51'),
(3, 'Sample Topic 3', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Vivamus gravida nunc orci. Proin ut tristique odio. Nulla suscipit ipsum arcu, a luctus lorem vulputate et. Maecenas magna lorem, tempor id ultrices id, vehicula eu diam. Aliquam erat volutpat. Praesent in sem tincidunt, mattis odio nec, ultrices justo. Vivamus sit amet sapien ornare tortor porttitor congue vel et lorem. In interdum eget metus ut sagittis. In accumsan nec purus vel ornare. Quisque non scelerisque libero, et aliquam risus. Mauris tincidunt ullamcorper efficitur. Nullam venenatis in massa et elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In mollis, tortor sed pellentesque ultrices, sem sem interdum lectus, a laoreet nulla lacus at risus. Ut placerat orci at enim fermentum, eget pretium ante pharetra. Nam id nunc congue augue feugiat egestas.&lt;/span&gt;', 3, '2020-10-15 15:22:30'),
(4, 'FORUM Regulations:', '&lt;p&gt;&lt;/p&gt;&lt;h5&gt;Please do not share rubbish on the forum.&lt;/h5&gt;This is lobby for interaction between students and the alumnus .&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Do not miss-use the platform for personnel matters.&lt;/p&gt;&lt;p&gt;Respect your elders and seniors. They have more experience than you have age.&lt;/p&gt;&lt;pre&gt;PS: HTML would have been better i guess.&lt;/pre&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 1, '2020-10-16 08:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(6, 'College Main Block', '2021-01-15 20:30:40'),
(7, 'Mite Entrance', '2021-01-15 20:31:14'),
(8, 'Library', '2021-01-15 20:31:32'),
(9, 'Data Structure Lab(Computer Science Department) ', '2021-01-15 20:32:25'),
(10, 'civil Lab', '2021-01-15 20:33:06'),
(11, 'Hostel', '2021-01-15 20:33:27'),
(13, 'MESS', '2021-01-15 20:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Alumni Management System', 'infoalumni@mite.in', '+91 944 826 5634', '1610724540_miteHOME.jpg', '&lt;h2 style=&quot;box-sizing: inherit; color: rgb(34, 34, 34); font-size: 28px; font-family: Roboto, sans-serif; font-weight: 700; line-height: 31px; margin-bottom: 15px; clear: both;&quot;&gt;Offering truly Global Education since 13 years&lt;/h2&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 0px; font-family: Montserrat, sans-serif; font-size: 15px; line-height: 26px; color: rgb(68, 68, 68); text-align: justify !important;&quot;&gt;Mangalore Institute of Technology &amp;amp; Engineering (MITE) established in the year 2007 today stands tall with 3000+ students, 180+ Faculty, offering 8 Undergraduate Programs in Engineering, 2 Post Graduate Programs in Engineering, Master of Business Administration (MBA) and 7 Research Programs. The institution is recognized by All India Council for Technical Education(AICTE), New Delhi and is affiliated to one of India&rsquo;s largest technical university, Visvesvaraya Technological University (VTU), Belagavi.&lt;/p&gt;&lt;p class=&quot;wpb_column vc_column_container vc_col-sm-12&quot; style=&quot;width: 1170px; position: relative; min-height: 1px; padding-left: 0px; padding-right: 0px; float: left;&quot;&gt;&lt;h2&gt;&lt;h3&gt;&lt;h3&gt;&lt;h2&gt;&lt;h2&gt;&lt;h2&gt;&lt;b style=&quot;width: 1170px; position: relative; min-height: 1px; padding-left: 0px; padding-right: 0px; float: left; font-size: 22px;&quot;&gt;&lt;span style=&quot;font-family: Montserrat, sans-serif; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important; font-size: 24px;&quot;&gt;&lt;span style=&quot;font-size:28px;font-family: Montserrat, sans-serif; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;&lt;span style=&quot;font-size:28px;font-family: Montserrat, sans-serif; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:28px;font-family: Montserrat, sans-serif; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;Mission&lt;/span&gt;&lt;/b&gt;&lt;/h2&gt;&lt;p style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; box-sizing: inherit; margin-bottom: 0px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; margin-bottom: 0px; font-family: Montserrat, sans-serif; font-size: 15px; line-height: 26px; color: rgb(0, 0, 0); text-align: justify !important;&quot;&gt;&ldquo;To establish world class educational institutions in their respective domains, which shall be&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245); color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: rgb(245, 245, 245); box-sizing: inherit; color: rgb(0, 0, 0);&quot;&gt;centers of excellence&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245); color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245); color: rgb(0, 0, 0);&quot;&gt;in their Stated and Implied sense. To achieve this objective we dedicate ourselves to meet the Challenges of becoming&lt;/span&gt;&lt;span style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245); color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: rgb(245, 245, 245); box-sizing: inherit; margin-bottom: 0px; color: rgb(0, 0, 0);&quot;&gt;&lt;b style=&quot;background-color: rgb(245, 245, 245); box-sizing: inherit; margin-bottom: 0px; color: rgb(0, 0, 0);&quot;&gt;Visionary and Realistic, Sensitive and Demanding, Innovative and Practical and Theoretical and Pragmatic&lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Montserrat, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245); color: rgb(0, 0, 0);&quot;&gt;; All at the same time&rdquo;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px; font-weight: 700; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px; font-weight: 700; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px; font-weight: 700; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px; font-weight: 700; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px; font-weight: 700; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Roboto, sans-serif; font-size: 28px; font-weight: 700; text-align: center; background: transparent; position: relative; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(7, 'akash k', 'akash@sample.com', '677738b969d6037efce2c328c6814580', 3, '', 6),
(9, 'Adarsh shetty', 'adarshshetty@yahoo.com', '677738b969d6037efce2c328c6814580', 3, '', 8),
(10, 'Ramesh Poojary', 'rameshpj@gmail.com', '677738b969d6037efce2c328c6814580', 3, '', 9),
(11, 'sam Lewis', 'samlewis@yahoo.com', 'd24ff3644ba3aa759239e5dbc6d316aa', 3, '', 10),
(12, 'Joswin Peter', 'peterjos@ETC.com', '677738b969d6037efce2c328c6814580', 3, '', 11),
(13, 'Sohan S', 'ssohan@sample.com', 'e3b7b59debc94ba7f7928ce037b70a50', 3, '', 12),
(14, 'Ramya Rao', 'raork@yahoo.com', 'c084ab2bd6fb3d6567a28807cc234a41', 3, '', 13),
(15, 'Sara Khan', 'khansara@outlook.com', 'cb2f12be24b46a3a1406650b0ad8b0c7', 3, '', 14),
(16, 'Kirthi Shetty', 'shettykirthi@yahho.com', 'e8aaa7895b86d8f7513bde2949e6e86a', 3, '', 15),
(17, 'Divya R', 'divyar@gmail.com', '7d26e12c634a4e029def074d2dd417cf', 3, '', 16),
(18, 'Allen Peter', 'peterallen@outlook.com', 'e78be90841a8ba65ab0ae6bd1a60a32a', 3, '', 17),
(19, 'Kavyashree K', 'kavyashree@gmail.com', '0afdece236ba8d8a6bb284f242ad7ee8', 3, '', 18),
(20, 'Sudarshan P', 'sudarshan@yahoo.com', '487b60ebb9c28065e46ea6d0a3362606', 3, '', 19),
(21, 'Ashitha K', 'kashitha@yahoo.com', '47d0dffbd99095ded6e2e76cf112ce87', 3, '', 20),
(22, 'Jnanesh Aradhya ', 'jnanesharadhya@gmail.com', '5b94fa7a392c2351593265ff30d777d1', 3, '', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
