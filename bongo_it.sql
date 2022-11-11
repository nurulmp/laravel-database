-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2022 at 01:08 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bongo_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutlist`
--

CREATE TABLE `aboutlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_id` bigint(20) UNSIGNED DEFAULT NULL,
  `aboutlist_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutlist`
--

INSERT INTO `aboutlist` (`id`, `about_id`, `aboutlist_title`, `slug`, `list_description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'Our Mission', 'our-mission', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', 'public/files/aboutlist/our-mission.png', NULL, NULL),
(2, 1, 'Our Vision', 'our-vision', 'Lorem, ipsum dolor sit amet consectetur, adipisicing elit. Neque repellat officiis ad.', 'public/files/aboutlist/our-vision.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `childtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `person_job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `slug`, `subtitle`, `childtitle`, `thumbnail`, `person_name`, `description`, `person_job`, `created_at`, `updated_at`) VALUES
(1, 'ABOUT US', 'about-us', 'Solutions Your', 'Company Future', 'public/files/about/about-us.png', 'Nurul Islam', '<p>Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas \r\nquam laboriosam illum aspernatur eum commodi dolor. Corporis \r\ndignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum \r\nlaboriosam illum vero.</p><p></p>', 'CEO & Founder', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `child_title`, `subtitle`, `thumbnail`, `description`, `video`, `status`, `created_at`, `updated_at`) VALUES
(5, 'BEST IT SOLUTION', 'we-provide-the-best-it', 'For Business', 'We Provide Best IT', 'public/files/banner/we-provide-the-best-it.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper', 'watch?v=6zsr22OeF2I', 1, NULL, NULL),
(6, 'Total IT Solution', 'it-solutions-for-your', 'Company', 'IT Solutions For Your', 'public/files/banner/it-solutions-for-your.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorperLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper', 'watch?v=6zsr22OeF2I', 1, NULL, NULL),
(7, 'BEST IT COMPANY', 'best-it-solution-agency-for', 'your Business', 'Best IT solution for', 'public/files/banner/best-it-solution-agency-for.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorperLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper', 'watch?v=6zsr22OeF2I', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner_twos`
--

CREATE TABLE `banner_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_twos`
--

INSERT INTO `banner_twos` (`id`, `title`, `slug`, `status`, `subtitle`, `child_title`, `description`, `video`, `image`, `created_at`, `updated_at`) VALUES
(1, 'BEST IT SOLUTION', 'we-care-your-any-it', 1, 'We Care Your any IT', 'Solution', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper Ut elit tellus, luctus nec ullamcorper', 'watch?v=6zsr22OeF2I', 'public/files/banner2/we-care-your-any-it.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbanil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `section_id`, `user_name`, `title`, `slug`, `description`, `thumbanil`, `status`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'Admin', 'Ut Sagittis Consectetur Ante t Tincidunt Autem in', 'ut-sagittis-consectetur-ante-t-tincidunt-autem-in', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .', 'ut-sagittis-consectetur-ante-t-tincidunt-autem-in.jpg', '1', '18,September,2022', NULL, NULL),
(2, 2, 7, 'Admin', 'Amet consectetur adipisicing elit. Autem in', 'amet-consectetur-adipisicing-elit-autem-in', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .', 'amet-consectetur-adipisicing-elit-autem-in.jpg', '1', '18,September,2022', NULL, NULL),
(3, 3, 7, 'Admin', 'Deleniti eos perspiciatis, minima iure eius', 'deleniti-eos-perspiciatis-minima-iure-eius', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .', 'deleniti-eos-perspiciatis-minima-iure-eius.jpg', '1', '18,September,2022', NULL, NULL),
(4, 4, 7, 'Admin', 'Ipsum officia impedit iusto quas eara.', 'ipsum-officia-impedit-iusto-quas-eara', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .', 'ipsum-officia-impedit-iusto-quas-ea.jpg', '1', '24,September,2022', NULL, NULL),
(5, 5, 7, 'Admin', 'Corporis dignissimos, debitis fuga ut veritatis qu', 'corporis-dignissimos-debitis-fuga-ut-veritatis-qu', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', 'corporis-dignissimos-debitis-fuga-ut-veritatis-qu.jpg', '1', '18,September,2022', NULL, NULL),
(6, 2, 7, 'Admin', 'Experience Design  Dolor, obcaecati magni similique', 'experience-design-dolor-obcaecati-magni-similique', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedLorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia impedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a, deleniti eos perspiciatis, minima iure eius dolores ipsum officia imped', 'experience-design-dolor-obcaecati-magni-similique.jpg', '1', '20,September,2022', NULL, NULL),
(7, 4, 7, 'Admin', 'Autem in a, deleniti eos perspiciatis, minima iure eius', 'autem-in-a-deleniti-eos-perspiciatis-minima-iure-eius', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .</p><p></p>', 'autem-in-a-deleniti-eos-perspiciatis-minima-iure-eius.jpg', '1', '25,September,2022', NULL, NULL),
(8, 3, 7, 'Admin', 'Cosectetur adipisicing elit. Autem in a, deleniti eos', 'cosectetur-adipisicing-elit-autem-in-a-deleniti-eos', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur \r\nadipisicing elit. Autem in a, deleniti eos perspici</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur \r\nadipisicing elit. Autem in a, deleniti eos perspici</p>', 'cosectetur-adipisicing-elit-autem-in-a-deleniti-eos.jpg', '1', '25,September,2022', NULL, NULL),
(9, 1, 7, 'Admin', 'minima iure eius dolores ipsum officia impedit', 'minima-iure-eius-dolores-ipsum-officia-impedit', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur \r\nadipisicing elit. Autem in a, deleniti eos perspici</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .Lorem ipsum dolor sit, amet consectetur \r\nadipisicing elit. Autem in a, deleniti eos perspici</p><p></p>', 'minima-iure-eius-dolores-ipsum-officia-impedit.jpg', '1', '25,September,2022', NULL, NULL),
(10, 2, 7, 'Admin', 'laravel met consectetur adipisicing elit autem', 'laravel-met-consectetur-adipisicing-elit-autem', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem in a,\r\n deleniti eos perspiciatis, minima iure eius dolores ipsum officia \r\nimpedit iusto quas ea .</p><p></p>', 'laravel-met-consectetur-adipisicing-elit-autem.jpg', '1', '25,September,2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(6, 'Baliresort', 'baliresort', 'public/files/brand/baliresort.png', 1, NULL, NULL),
(7, 'mira', 'mira', 'public/files/brand/mira.png', 1, NULL, NULL),
(8, 'Real state', 'real-state', 'public/files/brand/real-state.png', 1, NULL, NULL),
(9, 'blue center', 'blue-center', 'public/files/brand/blue-center.png', 1, NULL, NULL),
(10, '20-study', '20-study', 'public/files/brand/20-study.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `home_page`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress', 'wordpress', 1, NULL, NULL),
(2, 'Laravel', 'laravel', 1, NULL, NULL),
(3, 'Apps Development', 'apps-development', 1, NULL, NULL),
(4, 'UI/UX Design', 'uiux-design', 1, NULL, NULL),
(5, 'Application', 'application', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cntdetails`
--

CREATE TABLE `cntdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cntdetails`
--

INSERT INTO `cntdetails` (`id`, `title`, `subtitle`, `description`, `thumbnail`, `created_at`, `updated_at`) VALUES
(4, 'Consult Your Business with IT', 'Solutions', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero optio \r\nneque voluptatibus voluptas officia eum,sit amet consectetur adipisicing\r\n elit. Libero optio neque voluptatibus voluptas officia Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero optio \r\nneque voluptatibus voluptas officia eum,sit amet consectetur adipisicing\r\n elit. Libero optio neque voluptatibus voluptas officia </p>', 'public/files/cntdetail/consult-your-business-with-it.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'web desging', 'nurul@gmail.com', 'sicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.\r\nOffice Address', NULL, NULL),
(11, 'web desging', 'nurul@gmail.com', 'dfdgd fgfd fhgf f', NULL, NULL),
(12, 'web desging', 'nurul@gmail.com', 'dfdgd fgfd fhgf f', NULL, NULL),
(13, 'Rakibul Hasan', 'rakib@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium i', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `title`, `count`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Happy Customer', 300, 'public/files/counter/happy-customer.png', NULL, NULL),
(2, 'Project Completed', 36, 'public/files/counter/project-completed.png', NULL, NULL),
(3, 'Ongoing projects', 40, 'public/files/counter/ongoing-projects.png', NULL, NULL),
(4, 'Experienced Staff', 800, 'public/files/counter/experienced-staff.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featureds`
--

CREATE TABLE `featureds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_childtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ft_subtitle` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured_page` int(255) DEFAULT NULL,
  `choose` int(255) DEFAULT NULL,
  `working` int(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featureds`
--

INSERT INTO `featureds` (`id`, `section_title`, `slug`, `section_subtitle`, `section_childtitle`, `section_description`, `thumbnail`, `ft_subtitle`, `created_at`, `updated_at`, `featured_page`, `choose`, `working`, `status`) VALUES
(4, 'What we do', 'what-we-do', 'Our Featured', 'Service', '<p>Lorem ipsum dolor, sit amet consectetur, adipisicing elit. Dolor, obcaecati magni similique earea dolor.</p><p></p>', 'what-we-do.jpg', '[\"Experience Design\",\"Data Security\",\"System Integration\",\"IT Management\",\"Network & Access Point\",\"Servers & Storage\",\"Experience Development\",\"Experience  Management\"]', NULL, NULL, 1, NULL, NULL, 1),
(5, 'WHY CHOOSE US', 'why-choose-us', 'Safeguard your brand with', 'Solutions', '<p>Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor.</p><p></p>', 'why-choose-us.jpg', '[\"Managed IT Service\",\"IT Security Services\",\"Apps Management\",\"Practice IT Management\",\"Perfect Desgin\",\"Perfect Development\"]', NULL, NULL, NULL, 1, NULL, 1),
(7, 'Our Experience', 'our-experience', '10 Years of Experience ', 'Working', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero \r\noptio neque voluptatibus voluptas officia eum,sit amet consectetur \r\nadipisicing elit. Libero optio neque voluptatibus voluptas officia </p><p></p>', 'our-experience.png', '[\"Experience Design\",\"System Integration\",\"Data Security\"]', NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `category_id`, `section_id`, `name`, `slug`, `thumbnail`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 'It Mangenment', 'it-mangenment', 'public/files/gallery/it-mangenment.jpg', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', '15 September,2022', NULL, NULL),
(2, 3, 4, 'Softwer', 'softwer', 'public/files/gallery/softwer.jpg', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', '15 September,2022', NULL, NULL),
(3, 3, 4, 'Apps Development', 'apps-development', 'public/files/gallery/apps-development.jpg', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', '15 September,2022', NULL, NULL),
(4, 2, 4, 'Development', 'development', 'public/files/gallery/development.jpg', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', '15 September,2022', NULL, NULL),
(5, 4, 4, 'ui/ux design', 'uiux-design', 'public/files/gallery/uiux-design.jpg', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', '15 September,2022', NULL, NULL),
(6, 5, 4, 'Desgin', 'desgin', 'public/files/gallery/desgin.jpg', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', '15 September,2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_08_24_181249_create_categories_table', 2),
(5, '2022_08_25_093958_create_banners_table', 3),
(6, '2022_08_26_105014_create_services_table', 4),
(7, '2022_08_27_050340_create_featureds_table', 5),
(8, '2022_08_29_144606_create_tagslist_table', 6),
(9, '2022_09_03_115923_create_abouts_table', 7),
(10, '2022_09_03_153811_create_aboutlist_table', 8),
(11, '2022_09_03_161637_create_aboutlist_table', 9),
(12, '2022_09_03_165618_create_aboutlist_table', 10),
(13, '2022_09_03_170539_create_abouts_table', 11),
(14, '2022_09_08_045647_create_counters_table', 12),
(15, '2022_09_08_142614_create_settings_table', 13),
(16, '2022_09_08_165736_create_cntdetails_table', 14),
(17, '2022_09_09_160720_create_pricings_table', 15),
(18, '2022_09_09_180833_create_price_tables_table', 16),
(19, '2022_09_10_054418_create_pricing_tables_table', 17),
(20, '2022_09_10_055209_create_price_tables_table', 18),
(21, '2022_09_11_081819_create_gallery_table', 19),
(22, '2022_09_16_162321_create_teammates_table', 20),
(23, '2022_09_17_162607_create_blogs_table', 21),
(24, '2022_09_18_055638_create_testimonials_table', 22),
(25, '2022_09_19_153454_create_newsletters_table', 23),
(26, '2022_09_19_165742_create_pages_table', 24),
(27, '2022_09_21_135329_create_contacts_table', 25),
(28, '2022_09_22_032343_create_bands_table', 26),
(29, '2022_09_22_042140_create_brands_table', 27),
(30, '2022_09_24_072227_create_abouts_table', 28),
(31, '2022_09_25_050651_create_banner_twos_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'nurulislam@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms & Conditions', 'terms-conditions', 'Terms & Conditions', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', NULL, NULL),
(2, 1, 'Privacy & Policy', 'privacy-policy', 'Privacy & Policy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', NULL, NULL),
(3, 2, 'Career', 'career', 'Career', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', NULL, NULL),
(4, 1, 'Career', 'career', 'Career', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', NULL, NULL),
(5, 1, 'Data Analysis', 'data-analysis', 'Data Analysis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', NULL, NULL),
(6, 1, 'Service', 'service', 'Service', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_tables`
--

CREATE TABLE `price_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pr_section_id` bigint(20) UNSIGNED NOT NULL,
  `pr_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pr_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pr_subamount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pr_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pr_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_tables`
--

INSERT INTO `price_tables` (`id`, `pr_section_id`, `pr_title`, `pr_amount`, `pr_subamount`, `pr_time`, `pr_subtitle`, `created_at`, `updated_at`) VALUES
(1, 1, 'Startup', '$10', '99', 'month', '[\"\\u2713 Project Management\",\"\\u2713 Unlimited Projects\",\"\\u2713 Personal Use\",\"\\u2717 27\\/7 Support\",\"\\u2717 Basic support on Github\",\"\\u2717 Help center access\"]', NULL, NULL),
(2, 1, 'Standard', '$20', '99', 'month', '[\"\\u2713 Personal Use\",\"\\u2713 Project Management\",\"\\u2713 Unlimited Projects\",\"\\u2713 27\\/7 Support\",\"\\u2717 Basic support on Github\",\"\\u2717 Help center access\"]', NULL, NULL),
(4, 1, 'Premium', '$40', '99', 'month', '[\"\\u2713 Personal Use\",\"\\u2713 Project Management\",\"\\u2713 Unlimited Projects\",\"\\u2713 27\\/7 Support\",\"\\u2713 Basic support on Github\",\"\\u2713 Help center access\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_childtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_description` text COLLATE utf8mb4_unicode_ci,
  `pricing` int(10) DEFAULT NULL,
  `gallery` int(10) DEFAULT NULL,
  `team` int(10) DEFAULT NULL,
  `testimonials` int(10) DEFAULT NULL,
  `news` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `section_title`, `section_subtitle`, `section_childtitle`, `section_description`, `pricing`, `gallery`, `team`, `testimonials`, `news`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PRICING PLAN', 'Choose Your', 'Plan', '<p>Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam\r\n laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, \r\ndebitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum \r\nvero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam\r\n laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, \r\ndebitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum \r\nvero.</p>', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'OUR GALLERY', 'Our Works', 'Showcase', '<p>Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam\r\n laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, \r\ndebitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum \r\nvero.</p>', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL),
(5, 'EXPERT TEAM', 'Meet Our', 'Team', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL),
(6, 'TESTIMONIALS', 'What Says', 'Client', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia eum,sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL),
(7, 'RECENT NEWS', 'Latest News For', 'Us', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'public/files/service/web-design.png', 'Web Design', 'web-design', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Repellendus, eos.', NULL, NULL),
(2, 'public/files/service/development.png', 'Development', 'development', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL),
(3, 'public/files/service/application.png', 'Application', 'application', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL),
(4, 'public/files/service/consulation.png', 'Consulation', 'consulation', 'Consulation Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL),
(5, 'public/files/service/apps-development.png', 'Apps Development', 'apps-development', 'Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL),
(6, 'public/files/service/uiux-design.png', 'UI/UX Design', 'uiux-design', 'UI/UX Design Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Voluptas quam laboriosam illum aspernatur eum commodi dolor. Corporis dignissimos, debitis fuga ut veritatis quo alias, ex, cum laborum laboriosam illum vero.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `description`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, '+4321-7654543', '+4321-7654544', 'exampple@mail.com', 'info@mail.com', 'public/files/setting/631a0a2647418.png', 'public/files/setting/631a0a2651af0.png', 'Flat 20, Reynolds Neck, North Hele naville, FV77 8WS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, porro saepe facilis. Harum ipsam accusantium id dolorum.', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instragram.com/', 'https://www.linkedin.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tagslist`
--

CREATE TABLE `tagslist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagslist`
--

INSERT INTO `tagslist` (`id`, `name`, `created_at`, `updated_at`) VALUES
(18, 'Apps Development', NULL, NULL),
(19, 'Development', NULL, NULL),
(20, 'ui/ux design', NULL, NULL),
(21, 'web design', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teammates`
--

CREATE TABLE `teammates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_postion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teammates`
--

INSERT INTO `teammates` (`id`, `section_id`, `name`, `job_postion`, `image`, `facebook`, `instragram`, `twitter`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 5, 'Abdur Jobbar', 'web designer', 'public/files/team/abdur-jobbar.jpg', 'https://www.facebook.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(2, 5, 'Abdur Rajjak', 'apps developer', 'public/files/team/abdur-rajjak.jpg', 'https://www.facebook.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(3, 5, 'Abdur Rahim', 'apps developer', 'public/files/team/abdur-rahim.jpg', 'https://www.facebook.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `section_id`, `name`, `job_position`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 6, 'Nurul Hasan', 'Php Dveloper', 'Lorem ipsum dolor sit, amet consectetur, adipisicing elit. Quod distinctio magni perspiciatis eius molestiae voluptas ea dicta dolore maxime officiis excepturi assumenda eligendi praesentium deserunt, quasi dolores', 'public/files/testimonial/nurul-hasan.jpg', NULL, NULL),
(2, 6, 'Rakibul Hasan', 'Web Designer', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia eum,sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia', 'public/files/testimonial/rakibul-hasan.jpg', NULL, NULL),
(3, 6, 'Abdur Rajjak', 'UX/UI Designer', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia eum,sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia', 'public/files/testimonial/abdur-rajjak.jpg', NULL, NULL),
(4, 6, 'Abir Hasan', 'Apps Developer', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia eum,sit amet consectetur adipisicing elit. Libero optio neque voluptatibus voluptas officia', 'public/files/testimonial/abir-hasan.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$AyosTLk/agacvfjYxrE3NulgkTNn2cwrkApE6qIsAa8EK5mTZPf/q', '-1744326741', 1, NULL, '2022-08-24 08:06:20', '2022-08-24 08:06:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutlist`
--
ALTER TABLE `aboutlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_twos`
--
ALTER TABLE `banner_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cntdetails`
--
ALTER TABLE `cntdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featureds`
--
ALTER TABLE `featureds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_category_id_foreign` (`category_id`),
  ADD KEY `gallery_section_id_foreign` (`section_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `price_tables`
--
ALTER TABLE `price_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_tables_pr_section_id_foreign` (`pr_section_id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagslist`
--
ALTER TABLE `tagslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teammates`
--
ALTER TABLE `teammates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teammates_section_id_foreign` (`section_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_section_id_foreign` (`section_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutlist`
--
ALTER TABLE `aboutlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banner_twos`
--
ALTER TABLE `banner_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cntdetails`
--
ALTER TABLE `cntdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featureds`
--
ALTER TABLE `featureds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `price_tables`
--
ALTER TABLE `price_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tagslist`
--
ALTER TABLE `tagslist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teammates`
--
ALTER TABLE `teammates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gallery_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `pricings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `price_tables`
--
ALTER TABLE `price_tables`
  ADD CONSTRAINT `price_tables_pr_section_id_foreign` FOREIGN KEY (`pr_section_id`) REFERENCES `pricings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teammates`
--
ALTER TABLE `teammates`
  ADD CONSTRAINT `teammates_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `pricings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `pricings` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
