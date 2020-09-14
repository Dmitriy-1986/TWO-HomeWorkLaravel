-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 12 2020 г., 14:33
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop92`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(3, 'repellat nihil', 'repellat-nihil', '/uploads/Тфегку mountains.jfif', '2020-07-04 05:17:22', '2020-07-25 08:27:36'),
(4, 'dolor eos qui', 'dolor-eos-qui', NULL, '2020-07-04 05:17:22', '2020-07-04 05:17:22'),
(5, 'asperiores id enim', 'asperiores-id-enim', NULL, '2020-07-04 05:17:22', '2020-07-04 05:17:22'),
(6, 'alias dignissimos cupiditate', 'alias-dignissimos-cupiditate', 'https://loremflickr.com/320/240', '2020-07-04 05:17:22', '2020-07-04 05:17:22'),
(7, 'nobis aliquam modi', 'nobis-aliquam-modi', NULL, '2020-07-04 05:17:22', '2020-07-04 05:17:22'),
(8, 'expedita occaecati quo', 'expedita-occaecati-quod', '/uploads/nature sea.jfif', '2020-07-04 05:17:22', '2020-07-25 08:27:18'),
(9, 'voluptas veritatis at', 'voluptas-veritatis-at', 'https://loremflickr.com/320/240', '2020-07-04 05:17:22', '2020-07-04 05:17:22'),
(10, 'saepe voluptate aut', 'saepe-voluptate-aut', NULL, '2020-07-04 05:17:22', '2020-07-04 05:17:22'),
(29, 'Nature sea', 'nature-sea', '/uploads/nature sea.jfif', '2020-07-25 06:49:11', '2020-07-25 06:49:11'),
(30, 'Nature river', 'nature-river', '/uploads/nature.jfif', '2020-07-25 06:49:31', '2020-07-25 06:49:31'),
(31, 'Nature forest', 'nature-forest', '/uploads/nature forest.jfif', '2020-07-25 06:53:46', '2020-07-25 06:53:46'),
(32, 'Nature mountai', 'nature-mountain', '/uploads/Тфегку mountains.jfif', '2020-07-25 06:54:55', '2020-07-25 07:55:51'),
(34, 'Test Name 111', 'test-name-111', NULL, '2020-07-25 09:45:42', '2020-07-25 09:45:42'),
(35, 'Test Name123', 'test-name123', NULL, '2020-07-25 09:58:10', '2020-07-25 09:58:10');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2020_07_04_062335_create_categories_table', 1),
(16, '2020_07_04_083038_create_products_table', 2),
(17, '2014_10_12_100000_create_password_resets_table', 3),
(18, '2020_07_18_062209_add_role_users', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `recomended` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `img`, `price`, `recomended`, `category_id`, `created_at`, `updated_at`, `description`) VALUES
(1, 'est iste blanditiis', 'est-iste-blanditiis', 'https://loremflickr.com/320/240', 7315.00, 0, 4, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(2, 'nostrum enim voluptatum', 'nostrum-enim-voluptatum', NULL, 805.29, 0, NULL, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(3, 'aut nemo vitae', 'aut-nemo-vitae', NULL, 2069.68, 1, 10, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(4, 'sed consequuntur maiores', 'sed-consequuntur-maiores', 'https://loremflickr.com/320/240', 9779.63, 1, 6, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(5, 'aut et suscipit', 'aut-et-suscipit', 'https://loremflickr.com/320/240', 7608.50, 1, 6, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(6, 'et perspiciatis rem', 'et-perspiciatis-rem', NULL, 5542.57, 1, 9, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(7, 'minima nihil adipisci', 'minima-nihil-adipisci', 'https://loremflickr.com/320/240', 9420.21, 1, 7, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(8, 'et maxime odit', 'et-maxime-odit', 'https://loremflickr.com/320/240', 1265.21, 0, NULL, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(9, 'cumque quo corrupti', 'cumque-quo-corrupti', 'https://loremflickr.com/320/240', 3538.49, 0, 7, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL),
(10, 'ipsam perspiciatis dolores', 'ipsam-perspiciatis-dolores', 'https://loremflickr.com/320/240', 7275.14, 1, 5, '2020-07-04 06:05:49', '2020-07-04 06:05:49', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Dima', 'dovgal.dima.86@gmail.com', NULL, '$2y$10$L6jiOJB9jD/RDB9MQVCQ0ulhhDyfhm5CxDez9bfRYNQSRSSUZX/4S', 'oNcupWTNxzu4vxmQKOigFD1Vwin8MBTSLLziFFRp3gUebIEN9NXOql6FekR3', '2020-07-11 05:06:37', '2020-07-11 05:06:37', 'admin'),
(2, 'Test', 'test@mail.com', NULL, '$2y$10$vU7wHOtEy7NWHHEAiJ60Y.pJEouUzqLyuhQG5E5FARAbdBsNRd1sG', NULL, '2020-07-11 05:37:54', '2020-07-11 05:37:54', NULL),
(3, 'Dima', 'ddd@gmail.com', NULL, '$2y$10$Soq5yhNObruM50mvlJ9J6ONLOq7EzGZiNBqF0Hzpdsgr73P4mpYTW', NULL, '2020-07-18 03:29:08', '2020-07-18 03:29:08', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
