-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2020 at 09:03 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Career', '2020-12-01 09:55:44', '2020-12-02 07:08:46'),
(4, 'Laravel', '2020-12-02 05:52:26', '2020-12-02 05:52:26'),
(5, 'C++', '2020-12-02 05:52:35', '2020-12-02 05:52:35'),
(6, 'Tutorials', '2020-12-02 05:52:55', '2020-12-02 05:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2020_11_29_102410_create_posts_table', 1),
(30, '2020_11_29_102810_create_categories_table', 1),
(31, '2020_11_30_122520_create_tags_table', 1),
(32, '2020_11_30_123715_create_post_tag_table', 1),
(33, '2020_12_01_061612_create_profiles_table', 1),
(34, '2020_12_01_121514_create_settings_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Working With A lot of effort', 'post-one', '<div style=\"color: rgb(212, 212, 212); background-color: rgb(30, 30, 30); font-family: Consolas, &quot;Courier New&quot;, monospace; line-height: 22px; white-space: pre;\">Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Cum&nbsp;obcaecati&nbsp;aperiam,&nbsp;laboriosam&nbsp;nostrum&nbsp;itaque&nbsp;asperiores&nbsp;tenetur&nbsp;minus&nbsp;voluptas&nbsp;quasi&nbsp;autem&nbsp;consectetur,&nbsp;suscipit,&nbsp;dolorem&nbsp;doloribus&nbsp;quaerat&nbsp;expedita&nbsp;quam&nbsp;tempora&nbsp;mollitia&nbsp;molestias&nbsp;sunt&nbsp;soluta&nbsp;nihil&nbsp;dolorum&nbsp;libero&nbsp;quia&nbsp;ipsa.&nbsp;Sint&nbsp;qui&nbsp;reiciendis&nbsp;recusandae&nbsp;blanditiis&nbsp;fuga,&nbsp;asperiores&nbsp;quasi&nbsp;quam&nbsp;sapiente&nbsp;repellendus&nbsp;doloremque&nbsp;sequi&nbsp;nemo&nbsp;tenetur&nbsp;corrupti&nbsp;saepe&nbsp;assumenda&nbsp;autem&nbsp;maiores&nbsp;accusantium&nbsp;totam.&nbsp;Quia&nbsp;impedit&nbsp;necessitatibus,&nbsp;nulla&nbsp;atque&nbsp;doloremque,&nbsp;laborum&nbsp;corrupti&nbsp;nisi&nbsp;soluta&nbsp;laudantium&nbsp;ex&nbsp;error&nbsp;dolor,&nbsp;id&nbsp;doloribus&nbsp;temporibus&nbsp;nemo&nbsp;voluptatem&nbsp;animi&nbsp;accusantium&nbsp;itaque&nbsp;fugiat&nbsp;modi.&nbsp;Id,&nbsp;quia.&nbsp;Commodi&nbsp;modi&nbsp;debitis&nbsp;quam&nbsp;nesciunt&nbsp;consequatur&nbsp;minima&nbsp;totam&nbsp;nobis,&nbsp;voluptate&nbsp;illum&nbsp;itaque&nbsp;quo&nbsp;accusamus&nbsp;asperiores!</div>', 3, 'uploads/posts/1606896479CODE-1.jpg', NULL, '2020-12-02 06:07:59', '2020-12-02 06:14:09'),
(2, 'Installing New Plugin in Wordpress', 'installing-new-plugin-in-wordpress', '<div style=\"color: rgb(212, 212, 212); background-color: rgb(30, 30, 30); font-family: Consolas, &quot;Courier New&quot;, monospace; line-height: 22px; white-space: pre;\">Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Cum&nbsp;obcaecati&nbsp;aperiam,&nbsp;laboriosam&nbsp;nostrum&nbsp;itaque&nbsp;asperiores&nbsp;tenetur&nbsp;minus&nbsp;voluptas&nbsp;quasi&nbsp;autem&nbsp;consectetur,&nbsp;suscipit,&nbsp;dolorem&nbsp;doloribus&nbsp;quaerat&nbsp;expedita&nbsp;quam&nbsp;tempora&nbsp;mollitia&nbsp;molestias&nbsp;sunt&nbsp;soluta&nbsp;nihil&nbsp;dolorum&nbsp;libero&nbsp;quia&nbsp;ipsa.&nbsp;Sint&nbsp;qui&nbsp;reiciendis&nbsp;recusandae&nbsp;blanditiis&nbsp;fuga,&nbsp;asperiores&nbsp;quasi&nbsp;quam&nbsp;sapiente&nbsp;repellendus&nbsp;doloremque&nbsp;sequi&nbsp;nemo&nbsp;tenetur&nbsp;corrupti&nbsp;saepe&nbsp;assumenda&nbsp;autem&nbsp;maiores&nbsp;accusantium&nbsp;totam.&nbsp;Quia&nbsp;impedit&nbsp;necessitatibus,&nbsp;nulla&nbsp;atque&nbsp;doloremque,&nbsp;laborum&nbsp;corrupti&nbsp;nisi&nbsp;soluta&nbsp;laudantium&nbsp;ex&nbsp;error&nbsp;dolor,&nbsp;id&nbsp;doloribus&nbsp;temporibus&nbsp;nemo&nbsp;voluptatem&nbsp;animi&nbsp;accusantium&nbsp;itaque&nbsp;fugiat&nbsp;modi.&nbsp;Id,&nbsp;quia.&nbsp;Commodi&nbsp;modi&nbsp;debitis&nbsp;quam&nbsp;nesciunt&nbsp;consequatur&nbsp;minima&nbsp;totam&nbsp;nobis,&nbsp;voluptate&nbsp;illum&nbsp;itaque&nbsp;quo&nbsp;accusamus&nbsp;asperiores!</div>', 6, 'uploads/posts/1606896576installplugins.png', NULL, '2020-12-02 06:09:36', '2020-12-02 06:09:36'),
(3, 'Laravel && VueJs in action', 'laravel-vuejs-in-action', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam hendrerit enim sed sem convallis, vitae pellentesque lacus cursus. Sed volutpat ligula eget interdum porttitor. Vivamus sit amet accumsan nulla. Vestibulum auctor, velit vel egestas suscipit, quam libero sollicitudin justo, sed laoreet tortor mi at nibh. Etiam elementum diam ipsum, a auctor leo malesuada ac. Vivamus aliquam leo non ipsum eleifend, blandit placerat quam efficitur. Donec sodales justo ut risus rutrum viverra. Donec quis orci augue. Fusce hendrerit sagittis arcu nec tempor. Morbi tincidunt pellentesque ex vitae imperdiet. Nullam tristique non sapien at gravida. In elementum et augue ut fringilla. Curabitur sed volutpat nunc. In hac habitasse platea dictumst.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Proin hendrerit ac lorem ac lobortis. Etiam tincidunt justo et dignissim finibus. Ut suscipit pharetra egestas. Donec pellentesque libero et ipsum varius laoreet. Morbi sollicitudin massa enim, at ultrices quam ullamcorper quis. Ut libero elit, pellentesque a iaculis vitae, consectetur et ligula. Nam sollicitudin nisl ornare, euismod ligula in, sagittis velit. Nulla tempor sollicitudin malesuada. Aliquam sit amet auctor quam. Donec bibendum nibh lorem. Proin malesuada felis eget libero interdum eleifend. Ut semper dolor feugiat nisl finibus, pharetra eleifend tellus consectetur. Fusce hendrerit tellus vitae orci condimentum egestas.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Fusce sit amet cursus quam. Nulla non blandit metus. Maecenas ornare non sapien sed mattis. Ut eu justo eleifend, dignissim ipsum nec, ultricies erat. Sed tristique magna pulvinar, tempus quam ac, tincidunt tortor. Integer fringilla sed diam eget faucibus. Sed posuere et lectus quis sagittis. Curabitur accumsan mi ac mauris auctor, in rhoncus felis gravida. Aenean viverra gravida sagittis. Mauris suscipit tristique felis, sed facilisis enim rhoncus sit amet. Curabitur fringilla auctor rutrum. Suspendisse potenti.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Sed auctor enim sed aliquam pretium. Aliquam et luctus lectus. Vivamus ex sem, venenatis quis feugiat sed, commodo id est. Duis gravida tortor ex, ut condimentum urna iaculis in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam consequat, augue sed imperdiet hendrerit, ante augue interdum turpis, ullamcorper euismod nibh neque sit amet velit. Praesent ut ex ac purus aliquam finibus eu vel massa. Nunc efficitur, enim id accumsan porttitor, purus lacus aliquet ligula, eu gravida felis elit eu purus. Sed vel metus eu lacus sollicitudin mattis in non lorem. Mauris sollicitudin commodo massa sed sodales.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vivamus volutpat lacus convallis odio malesuada pretium. Etiam pulvinar lorem eu lacus fermentum pellentesque. Aliquam suscipit mauris sem, sed hendrerit sem egestas sed. Maecenas id eros non odio mattis facilisis. Quisque maximus justo a iaculis ornare. Praesent semper elit erat, elementum vestibulum risus auctor a. Nunc condimentum massa eu dui scelerisque tristique. Vivamus quis dapibus libero. Etiam ut feugiat dui. Praesent accumsan nibh sem, sit amet sollicitudin turpis elementum quis.</p>', 3, 'uploads/posts/1606897411vue-spa-with-laravel.png', NULL, '2020-12-02 06:23:31', '2020-12-02 06:23:31'),
(4, 'Become a technology evangelist', 'become-a-technology-evangelist', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><li style=\"margin: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li style=\"margin: 0px; padding: 0px;\">Ut mattis lacus nec pharetra lobortis.</li><li style=\"margin: 0px; padding: 0px;\">Fusce in quam a risus maximus suscipit at quis tellus.</li><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Vestibulum aliquet ante hendrerit tempor sagittis.</li><li style=\"margin: 0px; padding: 0px;\">Mauris efficitur orci sit amet sagittis aliquam.</li><li style=\"margin: 0px; padding: 0px;\">Donec a urna dictum, laoreet tortor non, volutpat velit.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse venenatis enim vel risus imperdiet finibus.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Phasellus nec neque et magna placerat auctor.</li><li style=\"margin: 0px; padding: 0px;\">Aliquam nec sem id nibh lacinia eleifend.</li><li style=\"margin: 0px; padding: 0px;\">Sed ornare nulla eu nibh eleifend interdum.</li><li style=\"margin: 0px; padding: 0px;\">Nulla vel leo tristique, sodales magna eget, consectetur mauris.</li><li style=\"margin: 0px; padding: 0px;\">Vivamus iaculis mi vel odio efficitur, sit amet faucibus arcu iaculis.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">In sit amet ante commodo, venenatis ipsum id, posuere urna.</li><li style=\"margin: 0px; padding: 0px;\">Nunc feugiat est eu nisl dapibus congue.</li><li style=\"margin: 0px; padding: 0px;\">Donec ac est varius, interdum eros ut, dignissim justo.</li></ul></ul><p style=\"margin: 0px; padding: 0px;\"><br></p><p style=\"margin: 0px; padding: 0px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et lectus eu diam dapibus congue at et neque. Phasellus aliquam interdum tellus vitae interdum. Vivamus feugiat volutpat pellentesque. Nullam nisi ligula, euismod eget fringilla eget, sodales eget nibh. In id lorem varius, pharetra est eget, maximus dui. Etiam in libero nisi. Integer at dictum elit. Nulla nec egestas mi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Donec posuere lorem in quam volutpat, in porta nisi pulvinar. Sed gravida at erat eget scelerisque. Integer ex elit, vehicula eu ipsum eu, sodales mollis est. Fusce erat arcu, dapibus sit amet tellus sed, vulputate fermentum dolor. Morbi lacinia risus eu sapien convallis volutpat. Cras eleifend nulla urna, ac pulvinar arcu elementum et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer lectus ex, condimentum et aliquam id, sodales sed lorem. Nulla consequat odio sagittis molestie tempus. Morbi finibus risus at eros auctor mollis. Curabitur euismod enim eu odio varius, sit amet finibus nunc venenatis. Aenean vel laoreet lectus, eget pretium erat. Aliquam rutrum luctus eleifend. Mauris scelerisque tempor tincidunt. Morbi feugiat lectus dolor, et ultricies nulla dapibus ac. Vivamus sed mattis diam, non vulputate mauris. Sed fringilla euismod neque, ac iaculis leo gravida quis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nulla sed malesuada massa. Duis lobortis auctor erat. Maecenas at enim ante. Praesent pellentesque pretium efficitur. Mauris eget nisl quis dolor cursus mollis quis tincidunt tortor. Ut at nisi orci. Nam orci eros, imperdiet sed mauris a, rhoncus luctus tellus. Nulla lorem ante, tempor nec semper eu, cursus quis dui. Mauris molestie, nulla finibus tempor vulputate, purus justo elementum justo, in feugiat lacus nulla eu ipsum. Nulla rhoncus magna eros, tempor aliquam diam aliquam ac. Maecenas cursus sem vel nibh mattis, in tristique sapien iaculis.</p>', 6, 'uploads/posts/16068996601.png', NULL, '2020-12-02 07:01:00', '2020-12-02 07:01:00'),
(5, 'Dependency Injection in Laravel', 'dependency-injection-in-laravel', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et lectus eu diam dapibus congue at et neque. Phasellus aliquam interdum tellus vitae interdum. Vivamus feugiat volutpat pellentesque. Nullam nisi ligula, euismod eget fringilla eget, sodales eget nibh. In id lorem varius, pharetra est eget, maximus dui. Etiam in libero nisi. Integer at dictum elit. Nulla nec egestas mi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Donec posuere lorem in quam volutpat, in porta nisi pulvinar. Sed gravida at erat eget scelerisque. Integer ex elit, vehicula eu ipsum eu, sodales mollis est. Fusce erat arcu, dapibus sit amet tellus sed, vulputate fermentum dolor. Morbi lacinia risus eu sapien convallis volutpat. Cras eleifend nulla urna, ac pulvinar arcu elementum et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer lectus ex, condimentum et aliquam id, sodales sed lorem. Nulla consequat odio sagittis molestie tempus. Morbi finibus risus at eros auctor mollis. Curabitur euismod enim eu odio varius, sit amet finibus nunc venenatis. Aenean vel laoreet lectus, eget pretium erat. Aliquam rutrum luctus eleifend. Mauris scelerisque tempor tincidunt. Morbi feugiat lectus dolor, et ultricies nulla dapibus ac. Vivamus sed mattis diam, non vulputate mauris. Sed fringilla euismod neque, ac iaculis leo gravida quis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nulla sed malesuada massa. Duis lobortis auctor erat. Maecenas at enim ante. Praesent pellentesque pretium efficitur. Mauris eget nisl quis dolor cursus mollis quis tincidunt tortor. Ut at nisi orci. Nam orci eros, imperdiet sed mauris a, rhoncus luctus tellus. Nulla lorem ante, tempor nec semper eu, cursus quis dui. Mauris molestie, nulla finibus tempor vulputate, purus justo elementum justo, in feugiat lacus nulla eu ipsum. Nulla rhoncus magna eros, tempor aliquam diam aliquam ac. Maecenas cursus sem vel nibh mattis, in tristique sapien iaculis.</p>', 6, 'uploads/posts/16068997286.jpg', NULL, '2020-12-02 07:02:08', '2020-12-02 07:20:42'),
(6, 'Become a technology analyst', 'become-a-technology-analyst', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et lectus eu diam dapibus congue at et neque. Phasellus aliquam interdum tellus vitae interdum. Vivamus feugiat volutpat pellentesque. Nullam nisi ligula, euismod eget fringilla eget, sodales eget nibh. In id lorem varius, pharetra est eget, maximus dui. Etiam in libero nisi. Integer at dictum elit. Nulla nec egestas mi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Donec posuere lorem in quam volutpat, in porta nisi pulvinar. Sed gravida at erat eget scelerisque. Integer ex elit, vehicula eu ipsum eu, sodales mollis est. Fusce erat arcu, dapibus sit amet tellus sed, vulputate fermentum dolor. Morbi lacinia risus eu sapien convallis volutpat. Cras eleifend nulla urna, ac pulvinar arcu elementum et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer lectus ex, condimentum et aliquam id, sodales sed lorem. Nulla consequat odio sagittis molestie tempus. Morbi finibus risus at eros auctor mollis. Curabitur euismod enim eu odio varius, sit amet finibus nunc venenatis. Aenean vel laoreet lectus, eget pretium erat. Aliquam rutrum luctus eleifend. Mauris scelerisque tempor tincidunt. Morbi feugiat lectus dolor, et ultricies nulla dapibus ac. Vivamus sed mattis diam, non vulputate mauris. Sed fringilla euismod neque, ac iaculis leo gravida quis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Nulla sed malesuada massa. Duis lobortis auctor erat. Maecenas at enim ante. Praesent pellentesque pretium efficitur. Mauris eget nisl quis dolor cursus mollis quis tincidunt tortor. Ut at nisi orci. Nam orci eros, imperdiet sed mauris a, rhoncus luctus tellus. Nulla lorem ante, tempor nec semper eu, cursus quis dui. Mauris molestie, nulla finibus tempor vulputate, purus justo elementum justo, in feugiat lacus nulla eu ipsum. Nulla rhoncus magna eros, tempor aliquam diam aliquam ac. Maecenas cursus sem vel nibh mattis, in tristique sapien iaculis.</p>', 3, 'uploads/posts/16069009531.png', NULL, '2020-12-02 07:22:33', '2020-12-02 07:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 1, 2, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 3, 2, NULL, NULL),
(6, 4, 2, NULL, NULL),
(7, 5, 2, NULL, NULL),
(8, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/ava1.png', 1, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Unde soluta doloremque eius magnam sint expedita consequuntur, ad molestias, vero itaque aspernatur dolor voluptatum quo assumenda fugiat quisquam veniam possimus? Eveniet?', 'facebook.com', 'youtube.com', '2020-12-01 05:53:57', '2020-12-01 05:53:57'),
(2, 'uploads/avatars/1606821429ava2.png', 2, 'Hola', 'https://www.facebook.com', 'https://www.youtube.com', '2020-12-01 05:54:45', '2020-12-01 09:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Laravel\'s Blog', '+201140805605', 'mostafamedht98@gmail.com', 'Egypt, Cairo, Africa', '2020-12-01 11:41:28', '2020-12-02 05:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(2, 'programming', '2020-12-01 09:33:43', '2020-12-01 09:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mostafa Medht', 'mos@gmail.com', NULL, 1, '$2y$10$ybxY9vPkh.1H4g7vmFg2j.63eIOreA3XVoYleN2ZKFQBwMcobgwqK', NULL, '2020-12-01 05:53:57', '2020-12-01 05:53:57'),
(2, 'Emily Myers', 'emily@emily.com', NULL, 1, '$2y$10$6KY/KmmCbi/p.lEf/Ry3AOKLdkQU/LDeQ8wlmy3w99SZqvXSwAzIW', NULL, '2020-12-01 05:54:45', '2020-12-01 09:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
