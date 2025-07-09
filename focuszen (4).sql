-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2025 at 09:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `focuszen`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'red', '2025-05-18 14:06:48', '2025-05-18 14:06:48'),
(2, 2, 2, 'I use Notion to organize all my notes by subject and topic. Each class gets a page, and I use toggles, headings, and checkboxes to keep things clean. I link related topics and add embedded videos or diagrams to make revision easier.', '2025-05-19 03:50:22', '2025-05-19 03:50:22'),
(3, 2, 3, 'answer', '2025-05-27 09:01:55', '2025-05-27 09:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `badge_name`, `type`, `hours`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Focus Starter', 'Daily', 10, 1, NULL, NULL),
(2, 'Consistent Learner', 'Weekly', 60, 1, NULL, NULL),
(3, 'Study Master', 'Monthly', 200, 1, NULL, NULL),
(4, 'Zen Prodigy', 'Daily', 15, 1, NULL, NULL),
(5, 'Ultimate FocusZen', 'Monthly', 400, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('illuminate:queue:restart', 'i:1737130291;', 2052490291);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`id`, `name`, `description`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'faster', 'www', 'daily', 0, '2025-05-18 15:16:25', '2025-05-18 15:34:51'),
(2, 'Daily Study Boost', 'ommit to study for at least 5 hours a day for the next 7 days. Each day completed unlocks a badge and builds your streak. Miss a day? The challenge resets. Stay focused, win the streak!', 'Daily', 1, '2025-05-19 03:13:45', '2025-05-19 03:13:45'),
(3, 'Power Hour Challenge', 'Study for at least 1 hour every day for the next 14 days. Stay consistent — build the habit, not the hype!', 'Daily', 1, '2025-05-19 03:19:50', '2025-05-19 03:19:50'),
(4, 'Subject Sprint', 'Pick one subject and commit 10 hours of study into it over the next 7 days. Deep dive, no distractions.', 'Weekly', 1, '2025-05-19 03:21:40', '2025-05-26 22:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '79c97006-2342-4d15-bd55-52127fce332f', 'database', 'default', '{\"uuid\":\"79c97006-2342-4d15-bd55-52127fce332f\",\"displayName\":\"App\\\\Mail\\\\ReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ReminderEmail\\\":3:{s:8:\\\"reminder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Reminder\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"sanodyaj@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Reminder]. in E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:637\nStack trace:\n#0 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(109): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(62): App\\Mail\\ReminderEmail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(93): App\\Mail\\ReminderEmail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\ReminderEmail->__unserialize(Array)\n#4 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(98): unserialize(\'O:34:\"Illuminat...\')\n#5 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(61): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#18 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1205): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#26 {main}', '2025-01-17 10:19:24'),
(2, '9ce54017-df44-498e-801c-3b925904b285', 'database', 'default', '{\"uuid\":\"9ce54017-df44-498e-801c-3b925904b285\",\"displayName\":\"App\\\\Mail\\\\ReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ReminderEmail\\\":3:{s:8:\\\"reminder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Reminder\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"sanodyaj@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'InvalidArgumentException: View [view.name] not found. in E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#15 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#35 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1205): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#43 {main}', '2025-01-17 10:19:24'),
(3, '089ac67c-c2e5-42d6-bd8a-7ea17bef6bfc', 'database', 'default', '{\"uuid\":\"089ac67c-c2e5-42d6-bd8a-7ea17bef6bfc\",\"displayName\":\"App\\\\Mail\\\\ReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ReminderEmail\\\":3:{s:8:\\\"reminder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Reminder\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"sanodyav@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Trying to access array offset on value of type null in E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php:92\nStack trace:\n#0 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(281): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#1 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php(92): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#2 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(350): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\AbstractStream->readLine()\n#3 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(197): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->getFullResponse()\n#4 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(134): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#5 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(320): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#6 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(206): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->ping()\n#7 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#8 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#9 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(585): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#10 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(332): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#11 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.reminder\', Array, Object(Closure))\n#12 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#15 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#16 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#21 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#41 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1205): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-01-17 12:56:56'),
(4, 'a954652c-f0c6-4c68-85a5-529363c94adc', 'database', 'default', '{\"uuid\":\"a954652c-f0c6-4c68-85a5-529363c94adc\",\"displayName\":\"App\\\\Mail\\\\ReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ReminderEmail\\\":3:{s:8:\\\"reminder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Reminder\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"sanodyav@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Trying to access array offset on value of type null in E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php:92\nStack trace:\n#0 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(281): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#1 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php(92): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#2 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(350): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\AbstractStream->readLine()\n#3 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(197): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->getFullResponse()\n#4 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(134): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#5 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(320): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#6 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(206): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->ping()\n#7 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#8 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#9 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(585): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#10 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(332): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#11 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.reminder\', Array, Object(Closure))\n#12 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#15 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#16 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#21 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#41 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1205): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-01-17 13:15:57');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, '80e855aa-d92b-488c-89b2-66c8478fc904', 'database', 'default', '{\"uuid\":\"80e855aa-d92b-488c-89b2-66c8478fc904\",\"displayName\":\"App\\\\Mail\\\\ReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ReminderEmail\\\":3:{s:8:\\\"reminder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Reminder\\\";s:2:\\\"id\\\";i:56;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"sanodyav@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Trying to access array offset on value of type null in E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php:92\nStack trace:\n#0 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(281): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#1 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php(92): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#2 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(350): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\AbstractStream->readLine()\n#3 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(197): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->getFullResponse()\n#4 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(134): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#5 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(320): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#6 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(206): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->ping()\n#7 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#8 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#9 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(585): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#10 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(332): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#11 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.reminder\', Array, Object(Closure))\n#12 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#15 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#16 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#21 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#41 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1205): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-01-18 09:10:02'),
(6, 'fdc956a7-0c04-4bc7-9d70-d8b022afb0e8', 'database', 'default', '{\"uuid\":\"fdc956a7-0c04-4bc7-9d70-d8b022afb0e8\",\"displayName\":\"App\\\\Mail\\\\ReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ReminderEmail\\\":3:{s:8:\\\"reminder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Reminder\\\";s:2:\\\"id\\\";i:58;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"sanodyav@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Trying to access array offset on value of type null in E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php:92\nStack trace:\n#0 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(281): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#1 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php(92): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'E:\\\\DS degree\\\\se...\', 92)\n#2 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(350): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\AbstractStream->readLine()\n#3 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(197): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->getFullResponse()\n#4 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(134): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#5 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(320): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#6 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(206): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->ping()\n#7 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#8 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#9 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(585): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#10 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(332): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#11 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.reminder\', Array, Object(Closure))\n#12 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#15 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#16 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#21 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#41 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1205): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 E:\\DS degree\\second sem\\Capstone project\\FocusZen\\FocusZenWeb\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-01-18 09:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'P.M.Sanodya V. Jinadasa', 'sanodyaj@gmail.com', 'ee', '2025-05-18 16:01:48', '2025-05-18 16:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_todos`
--

CREATE TABLE `list_todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `todolist_id` int(11) NOT NULL,
  `todo` varchar(255) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_todos`
--

INSERT INTO `list_todos` (`id`, `todolist_id`, `todo`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(4, 3, 'calculas', 0, 1, '2025-02-05 11:11:47', '2025-02-05 11:11:47'),
(5, 3, 'os assigmnt', 0, 1, '2025-02-05 11:11:47', '2025-02-05 11:11:47'),
(6, 4, 'fht', 0, 1, '2025-02-05 11:14:10', '2025-02-05 11:14:10'),
(7, 5, 'hg', 1, 1, '2025-02-05 11:14:35', '2025-02-05 23:29:59'),
(8, 6, 'ofz works', 0, 1, '2025-02-16 22:20:29', '2025-02-17 10:25:40'),
(9, 6, 'focuzen project', 0, 0, '2025-02-16 22:20:29', '2025-02-16 22:23:34'),
(10, 7, 'short note', 0, 0, '2025-02-16 22:21:58', '2025-02-16 22:22:50'),
(11, 8, 'no lec', 0, 1, '2025-02-16 22:52:56', '2025-02-17 10:25:38'),
(12, 9, 'os assigmnt', 0, 0, '2025-02-16 22:53:12', '2025-02-16 23:17:27'),
(13, 10, 'calculas', 1, 0, '2025-05-15 10:33:26', '2025-05-15 10:33:40'),
(14, 11, 'ofz works', 1, 1, '2025-05-15 10:47:28', '2025-05-15 10:47:35'),
(15, 12, 'calculas', 1, 1, '2025-05-19 04:56:13', '2025-05-19 04:56:21'),
(16, 13, 'calculas', 1, 0, '2025-05-27 08:48:36', '2025-05-27 08:48:42'),
(17, 14, 'calculas', 1, 0, '2025-05-27 09:00:38', '2025-05-27 09:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_04_151529_create_reminders_table', 1),
(5, '2025_01_04_151627_create_badges_table', 1),
(6, '2025_01_04_151647_create_todolists_table', 1),
(7, '2025_01_04_151741_create_list_todos_table', 1),
(8, '2025_01_04_151841_create_study_infos_table', 1),
(9, '2025_02_05_105915_create_user_badges_table', 2),
(10, '2025_05_18_192533_create_questions_table', 3),
(11, '2025_05_18_192553_create_answers_table', 4),
(12, '2025_05_18_203833_create_challenges_table', 5),
(13, '2025_05_18_212104_create_feedback_table', 6),
(14, '2025_07_09_062830_create_study_articles_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 'What are your favorite techniques to stay focused during long study sessions?', '2025-05-18 14:05:36', '2025-05-18 14:05:36'),
(2, 2, 'How do you organize your study notes effectively?', '2025-05-18 14:05:55', '2025-05-18 14:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `reminder` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `user_id`, `date`, `time`, `reminder`, `status`, `created_at`, `updated_at`) VALUES
(68, 2, '2025-05-19', '15:24:00', 'Academic Notes', 1, '2025-05-19 04:22:05', '2025-05-19 04:22:05'),
(69, 4, '2025-05-20', '17:47:00', 'Academic Notes', 1, '2025-05-20 06:46:31', '2025-05-20 06:46:31'),
(70, 3, '2025-05-27', '09:22:00', 'meeting', 1, '2025-05-26 22:20:34', '2025-05-26 22:20:34'),
(71, 3, '2025-05-27', '19:50:00', 'meeting', 1, '2025-05-27 08:49:06', '2025-05-27 08:49:06'),
(72, 3, '2025-05-27', '20:03:00', 'meeting', 1, '2025-05-27 09:01:11', '2025-05-27 09:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ui9hzo0svQiwui7cK4Te7UGvrh611W5AWbdhhYwr', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQ1FxOVA3WFdqVFFjeTY1QjJiVzRZRDRzT3BEeGc5ZWlKc2lGQW55WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90b3AtZm9jdXplcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NTIwNDIyNzQ7fX0=', 1752047317);

-- --------------------------------------------------------

--
-- Table structure for table `study_articles`
--

CREATE TABLE `study_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_articles`
--

INSERT INTO `study_articles` (`id`, `title`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Rooster', 'https://talent.rooster.jobs/status', 0, '2025-07-09 01:51:48', '2025-07-09 02:03:44'),
(3, 'How to Stay Focused While Studying - Oxford Summer Courses', 'https://oxfordsummercourses.com/articles/how-to-stay-focused-while-studying', 1, '2025-07-09 02:00:30', '2025-07-09 02:00:30'),
(4, '9 Tips on How to Stay Focused While Studying - Outlier.org', 'https://articles.outlier.org/9-tips-on-how-to-stay-focused-while-studying', 1, '2025-07-09 02:00:44', '2025-07-09 02:00:44'),
(5, 'The Surprising Tricks to Help You Focus at Work - BBC Worklife', 'https://www.bbc.com/worklife/article/20170925-the-surprising-tricks-to-help-you-focus-at-work', 1, '2025-07-09 02:00:58', '2025-07-09 02:00:58'),
(6, 'How To Focus', 'https://www.nirandfar.com/focus-articles/', 1, '2025-07-09 02:01:10', '2025-07-09 02:01:10'),
(7, 'How to Focus on School Work and Studying', 'https://cambrilearn.com/blog/how-to-focus-on-school-work', 1, '2025-07-09 02:01:25', '2025-07-09 02:01:25'),
(8, 'The Surprising Tricks to Help You Focus at Work', 'https://jamesclear.com/focus', 1, '2025-07-09 02:01:37', '2025-07-09 02:01:37'),
(9, 'The Surprising Tricks to Help You Focus at Work - BBC Worklife', 'https://www.bbc.com/worklife/article/20170925-the-surprising-tricks-to-help-you-focus-at-work', 1, '2025-07-09 02:01:50', '2025-07-09 02:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `study_infos`
--

CREATE TABLE `study_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `hours` double(11,2) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_infos`
--

INSERT INTO `study_infos` (`id`, `user_id`, `hours`, `date`, `status`, `created_at`, `updated_at`) VALUES
(16, 3, 5.00, '2025-02-05', 1, '2025-02-05 09:11:23', '2025-02-05 09:11:23'),
(17, 3, 4.00, '2025-02-04', 1, '2025-02-05 10:38:22', '2025-02-05 10:38:22'),
(20, 3, 5.00, '2025-02-02', 1, '2025-02-05 10:41:41', '2025-02-05 10:41:41'),
(21, 3, 6.50, '2025-02-17', 1, '2025-02-16 22:06:54', '2025-02-16 22:42:05'),
(22, 2, 10.00, '2025-05-15', 1, '2025-05-15 10:32:45', '2025-05-15 10:32:45'),
(29, 2, 20.00, '2025-05-16', 1, '2025-05-16 08:07:32', '2025-05-16 08:19:32'),
(30, 2, 13.00, '2025-05-19', 1, '2025-05-19 04:55:45', '2025-05-19 04:57:44'),
(32, 3, 15.00, '2025-05-27', 1, '2025-05-27 08:48:13', '2025-05-27 08:48:13'),
(33, 3, 15.00, '2025-05-30', 1, '2025-05-29 19:16:04', '2025-05-29 19:16:04'),
(34, 2, 10.00, '2025-07-09', 1, '2025-07-09 01:01:42', '2025-07-09 01:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `todolists`
--

CREATE TABLE `todolists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todolists`
--

INSERT INTO `todolists` (`id`, `user_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, '2025-02-05', 1, '2025-02-05 11:11:47', '2025-02-05 11:11:47'),
(4, 3, '2025-02-05', 1, '2025-02-05 11:14:10', '2025-02-05 11:14:10'),
(5, 3, '2025-02-06', 1, '2025-02-05 11:14:35', '2025-02-05 11:14:35'),
(6, 3, '2025-02-17', 1, '2025-02-16 22:20:29', '2025-02-16 22:20:29'),
(7, 3, '2025-02-17', 1, '2025-02-16 22:21:58', '2025-02-16 22:21:58'),
(8, 3, '2025-02-17', 1, '2025-02-16 22:52:56', '2025-02-16 22:52:56'),
(9, 3, '2025-02-17', 1, '2025-02-16 22:53:12', '2025-02-16 22:53:12'),
(10, 2, '2025-05-15', 1, '2025-05-15 10:33:26', '2025-05-15 10:33:26'),
(11, 2, '2025-05-15', 1, '2025-05-15 10:47:28', '2025-05-15 10:47:28'),
(12, 2, '2025-05-19', 1, '2025-05-19 04:56:13', '2025-05-19 04:56:13'),
(13, 3, '2025-05-27', 1, '2025-05-27 08:48:36', '2025-05-27 08:48:36'),
(14, 3, '2025-05-27', 1, '2025-05-27 09:00:38', '2025-05-27 09:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-01-04 23:38:04', '$2y$12$jmJDwApX/I/I07ERK8ocael8Q/np4BzwpaYZY6L/xtGta/6P2RVoa', 1, 'BY5jaGLv5v', '2025-01-04 23:38:04', '2025-01-04 23:38:04'),
(2, 'P.M.Sanodya V. Jinadasa', 'sanodyaj@gmail.com', NULL, '$2y$12$V3bSKpDwsBwOHgg.YYrzEexGaX8e4SCHY1HZSxFAaQiUw70AW0LTu', 2, NULL, '2025-01-04 23:40:01', '2025-01-04 23:40:01'),
(3, 'Sanodya Vimukthi', 'sanodyav@gmail.com', NULL, '$2y$12$p3EMDPlb82U9QHbqTMeepe7OahPjFEtI/F.HdtBfiCVb9MjnUOwSi', 1, NULL, '2025-01-17 10:11:30', '2025-01-17 10:11:30'),
(4, 'Sankajith Jinasena', 'sankajithdjinasena@gmail.com', NULL, '$2y$12$YDyAHfVIyIaA3w2Nms4bpumDML2Yef0u0zstlthAk3eJxnV.1rDGG', 1, NULL, '2025-05-20 06:42:48', '2025-05-20 06:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` bigint(20) UNSIGNED NOT NULL,
  `awarded_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_badges`
--

INSERT INTO `user_badges` (`id`, `user_id`, `badge_id`, `awarded_at`, `status`, `created_at`, `updated_at`) VALUES
(21, 3, 4, '2025-02-05 09:11:23', 1, NULL, NULL),
(22, 3, 1, '2025-02-05 10:38:22', 1, NULL, NULL),
(23, 3, 4, '2025-02-05 10:41:41', 1, NULL, NULL),
(24, 3, 2, '2025-02-16 22:06:54', 1, NULL, NULL),
(25, 3, 2, '2025-02-16 22:36:08', 1, NULL, NULL),
(26, 3, 2, '2025-02-16 22:39:18', 1, NULL, NULL),
(27, 3, 2, '2025-02-16 22:39:31', 1, NULL, NULL),
(28, 3, 2, '2025-02-16 22:42:05', 1, NULL, NULL),
(29, 2, 4, '2025-05-15 10:32:45', 1, NULL, NULL),
(42, 2, 3, '2025-05-16 08:19:32', 1, NULL, NULL),
(43, 2, 1, '2025-05-19 04:57:44', 1, NULL, NULL),
(44, 2, 4, '2025-05-26 22:53:02', 1, NULL, NULL),
(45, 3, 4, '2025-05-27 09:00:22', 1, NULL, NULL),
(46, 3, 4, '2025-05-29 19:16:05', 1, NULL, NULL),
(47, 2, 1, '2025-07-09 01:01:43', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`),
  ADD KEY `answers_user_id_foreign` (`user_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_todos`
--
ALTER TABLE `list_todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_user_id_foreign` (`user_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `study_articles`
--
ALTER TABLE `study_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_infos`
--
ALTER TABLE `study_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todolists`
--
ALTER TABLE `todolists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `list_todos`
--
ALTER TABLE `list_todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `study_articles`
--
ALTER TABLE `study_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `study_infos`
--
ALTER TABLE `study_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `todolists`
--
ALTER TABLE `todolists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
