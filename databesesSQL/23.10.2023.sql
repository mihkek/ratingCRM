-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 23 2023 г., 19:59
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `photo_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `surname`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Оводков', 'Андрей', 'Юрьевич', 'ovod@example.com', '2023-09-24 06:42:44', '$2y$10$m4By779zElLoTIoTv4WjqOjsz3hEmJEAUY4MqqpAkjyMSTX9WtBce', 1, NULL, 2, '78fCkIRxhZ', '2023-09-24 06:42:44', '2023-09-24 06:42:44', NULL),
(2, 'Марченко', 'Алексей', 'Валентинович', 'vlad@example.com', '2023-09-24 06:42:44', '$2y$10$o/j8tithKecyn4EmCstuEe//S6kBuTA5mpFpLQIBxGrcZs.rEpQfy', 1, NULL, 3, 'UyT9NGd43U', '2023-09-24 06:42:44', '2023-09-24 06:42:44', NULL),
(3, 'Костин', 'Сергей', 'Владиславович', 'johndoe@example.com', '2023-09-24 06:42:44', '$2y$10$HmrjmfUgQ.BjDc4nIgue2O6kfMz2pPrBZsibqnRB36AaLnM9ZyqFu', 1, NULL, 1, 'QHijh1NCt050UgipMbJz5Kbl2xw0ykoVdiXGhLqYq5Z1GOziqeUCVQE8GGe8', '2023-09-24 06:42:44', '2023-09-24 06:42:44', NULL),
(4, 'student', 'student', 'student', 'student@example.com', '2023-09-24 06:42:44', '$2y$10$v5bya1jS4L5XZ6QgzMU6p.c4lcPnDvPMMjv1pyd5QsQ9bsi02xwfS', 1, NULL, 3, 'QHijh1NCt050UgipMbJz5Kbl2xw0ykoVdiXGhLqYq5Z1GOziqeUCVQE8GGe8', '2023-09-24 06:42:44', '2023-09-24 06:42:44', NULL);

--
-- Индексы сохранённых таблиц
--

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
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
