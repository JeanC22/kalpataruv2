-- -------------------------------------------------------------
-- TablePlus 4.5.2(402)
--
-- https://tableplus.com/
--
-- Database: kalpataruv2
-- Generation Time: 2022-02-24 16:18:09.8540
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `cursos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombreCurso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `deseos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` bigint NOT NULL DEFAULT '0',
  `usuario_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deseos_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `deseos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `curso_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_curso_id_foreign` (`curso_id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `valoracion_deseos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deseo_id` bigint unsigned NOT NULL,
  `usuario_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `valoracion_deseos_deseo_id_index` (`deseo_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `valoracion_deseos_ibfk_1` FOREIGN KEY (`deseo_id`) REFERENCES `deseos` (`id`),
  CONSTRAINT `valoracion_deseos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cursos` (`id`, `nombreCurso`, `created_at`, `updated_at`) VALUES
(1, '1 Bachillerato Cientifico-Tecnologico', NULL, NULL),
(2, '2 Bachillerato Cientifico-Tecnologico', NULL, NULL),
(3, '1 Bachillerato de Ciencias Sociales', NULL, NULL),
(4, '2 Bachillerato de Ciencias Sociales', NULL, NULL),
(5, '1 Formacion de Servicios Administrativos', NULL, NULL),
(6, '2 Formacion de Servicios Administrativos', NULL, NULL),
(7, '1 Grado medio de Sistemas Microinformaticos y Redes', NULL, NULL),
(8, ' 2 Bachillerato Cientifico-Tecnologico ', NULL, NULL),
(9, '1 Grado medio de Gestion Administrativa', NULL, NULL),
(10, '2 Grado medio de Gestion Administrativa', NULL, NULL),
(11, '1 Grado medio de Actividades Comerciales', NULL, NULL),
(12, '2 Grado medio de Actividades Comerciales', NULL, NULL),
(13, '1 Grado superior de Administracion de Sistemas Informaticos en Red', NULL, NULL),
(14, '2 Grado superior de Administracion de Sistemas Informaticos en Red', NULL, NULL),
(15, '1 Grado superior de Desarollo de Aplicaciones Web', NULL, NULL),
(16, '2 Grado superior de Desarollo de Aplicaciones Web', NULL, NULL),
(17, '1 Grado Superior de Administración y Finanzas es', NULL, NULL),
(18, '2 Grado Superior de Administracion y Finanzas es', NULL, NULL),
(19, '2 Grado Superior de Administracion y Finanzas eu', NULL, NULL),
(20, '1 Grado Superior de Marketing y Publicidad', NULL, NULL),
(21, '2 Grado Superior de Marketing y Publicidad', NULL, NULL),
(22, '1 Grado Superior de Integración Social', NULL, NULL),
(23, '2 Grado Superior de Integración Social', NULL, NULL);

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53');

INSERT INTO `deseos` (`id`, `texto`, `created_at`, `updated_at`, `estado`, `usuario_id`) VALUES
(4, 'Explicabo adipisci quo voluptatibus molestiae maxime. Quaerat quisquam voluptatem ipsa sint sit. Earum provident ab pariatur aliquid.', NULL, NULL, 0, 32),
(5, 'Nisi illo necessitatibus sed adipisci. Labore tempora et neque modi deleniti est. Fugiat eos rerum amet rerum sequi.', NULL, NULL, 1, 28),
(6, 'Aspernatur quis explicabo earum ab. Possimus aperiam sunt rem vel. Maxime nihil est eveniet voluptas et blanditiis doloribus.', NULL, NULL, 0, 19),
(7, 'Totam suscipit nihil et blanditiis. Dolor sint magni ducimus praesentium similique. Quibusdam alias sed et sit architecto. Tempora nostrum quaerat voluptas illum esse natus delectus.', NULL, NULL, 0, 26),
(8, 'Ipsum omnis ut quidem odio cum officiis. Inventore atque dolor quidem sequi quaerat fuga iste. Porro omnis velit reiciendis ut voluptas.', NULL, NULL, 1, 6),
(9, 'Sunt aspernatur aut tempora unde. Fugiat nemo quod dolore ut commodi molestiae consequatur. Ex aliquam et nesciunt ipsam est nulla itaque.', NULL, NULL, 1, 4),
(10, 'Aut aut consectetur ab debitis laboriosam. Earum sint libero iste est.', NULL, NULL, 1, 32),
(11, 'Vel delectus soluta unde animi eaque. Rerum et nobis numquam dolor provident. Aperiam nobis eveniet et quaerat ut adipisci eaque ipsam. Autem voluptas architecto nam eos repudiandae.', NULL, NULL, 0, 47),
(12, 'Esse laborum alias praesentium aliquam sit qui sint est. Nisi molestiae excepturi tempore tenetur aspernatur ut ut. Debitis pariatur aspernatur rerum aut sit aliquam aspernatur. Et adipisci dolorum rerum tempora modi.', NULL, NULL, 1, 14),
(13, 'Ex a ea non consequatur. Dolorem eos in non quas explicabo. Voluptatem fuga distinctio id ut unde corrupti. Autem quis amet quibusdam delectus perferendis ab et aspernatur.', NULL, NULL, 0, 32),
(14, 'Neque explicabo accusantium enim earum omnis ipsam pariatur. Ea inventore placeat voluptatem distinctio molestiae blanditiis dolorum. Quae qui quia eos suscipit nostrum ea. Quasi accusamus optio et rerum.', NULL, NULL, 0, 4),
(15, 'Ipsam nemo nihil consequatur sint. Quam voluptatem qui repellat voluptatem culpa. Culpa sed adipisci necessitatibus et suscipit eos voluptatem.', NULL, NULL, 0, 32),
(16, 'Et quibusdam nisi quo quibusdam illum. Dolore nostrum et ut iusto deserunt rerum itaque ab. Fugiat deleniti sit a mollitia. Eos voluptas assumenda beatae.', NULL, NULL, 0, 15),
(17, 'Et architecto animi eaque voluptatibus. Et voluptatum suscipit voluptates et.', NULL, NULL, 1, 8),
(18, 'Corporis sed occaecati ipsa non ab et. Et velit dolor debitis enim et ipsam vel. Vero perspiciatis tenetur quis.', NULL, NULL, 1, 7),
(19, 'Sed odio quia sint nulla. Ut et error et dicta ut maxime voluptate vitae. Eaque et autem id animi eius ut. Dolor sint qui itaque eum aut non ipsam.', NULL, NULL, 0, 43),
(20, 'Animi error autem voluptatem. Est sint est soluta quia eaque voluptates voluptatibus. Laborum architecto quas ut eum voluptate. Fuga et facilis perspiciatis ducimus quos qui reprehenderit.', NULL, NULL, 0, 32),
(21, 'Et voluptas id minima qui optio. Eos consequatur consequuntur aut.', NULL, NULL, 1, 16),
(22, 'Fugiat unde doloremque voluptatem nesciunt sit ratione excepturi. Laudantium et mollitia ratione exercitationem. Tempore dolorum dolor eveniet pariatur iste similique. Non ut velit alias ut at totam et.', NULL, NULL, 0, 17),
(23, 'Ea natus eos tempora porro alias. Voluptas qui delectus beatae sunt aut explicabo aut. Voluptatum voluptatem praesentium vel eos vel saepe. Nam expedita fugiat quo quo. Qui a facere eos consequatur quia nulla saepe.', NULL, NULL, 1, 8),
(24, 'Repudiandae ducimus recusandae eius dolores quae quo. Nihil numquam omnis velit temporibus et. Nemo autem earum dolor distinctio. Aut aliquid tempore quam assumenda sequi officiis cum.', NULL, NULL, 1, 32),
(25, 'Qui ex et eum. Totam consectetur soluta tempora repudiandae. Placeat est sed id quae et et nesciunt et.', NULL, NULL, 1, 7),
(26, 'Sunt sint sunt et corporis. Facere vel sint enim quo. Enim ullam aperiam voluptate ea sed qui dolores.', NULL, NULL, 1, 50),
(27, 'Placeat dignissimos placeat commodi voluptas adipisci. Cumque quia dolorem repellat similique mollitia nemo. Autem reiciendis eum natus saepe molestiae non sed.', NULL, NULL, 0, 23),
(28, 'Rerum numquam corporis esse. Aut enim aut quisquam dolorem rem quae.', NULL, NULL, 1, 26),
(29, 'Natus iste magni expedita commodi labore. Quia odit ut neque autem officiis atque.', NULL, NULL, 0, 29),
(30, 'Provident reiciendis atque magnam dolores. Unde tempore rem occaecati sunt totam dolorum nihil. Ut corrupti deserunt voluptatem voluptate magni molestiae. Facere quis vel ad ullam consequatur nesciunt magnam sed.', NULL, NULL, 1, 32),
(31, 'Quod incidunt minus a ut qui blanditiis quia. Molestiae quibusdam ea deserunt et adipisci aut. Rem omnis expedita quas fugit rerum.', NULL, NULL, 0, 30),
(32, 'Provident non officia aut vel nihil qui. Fugiat iusto laborum quaerat voluptatem sit. Vel earum consectetur totam saepe nostrum.', NULL, NULL, 1, 16),
(33, 'Doloremque molestias eveniet dolor alias cumque non. Voluptatibus accusamus quia maiores. Aliquid officia quia sunt fuga. Ex iusto dolores rem blanditiis beatae eos qui.', NULL, NULL, 0, 15),
(34, 'Totam blanditiis iste non deleniti impedit nemo occaecati. Distinctio dolorem voluptatibus dolorem dolores ab officiis. Officiis id quasi facilis ut ut placeat.', NULL, NULL, 0, 47),
(35, 'Autem ut sed quas ut ratione aperiam fugiat. Laborum voluptas facilis dolorum earum. Doloribus ratione non praesentium distinctio unde nihil molestias in.', NULL, NULL, 0, 19),
(36, 'Eius omnis quas minus. Illum corrupti earum inventore voluptatem nihil culpa. Ut earum impedit praesentium veniam totam possimus et.', NULL, NULL, 0, 17),
(37, 'Aut omnis fuga dolorem adipisci. Vel minus recusandae nihil iusto laborum. Nesciunt tenetur autem explicabo et et ex. Earum ut dolores tempora quia fugit placeat voluptates nulla. Ut animi doloremque ullam aut.', NULL, NULL, 1, 24),
(38, 'Totam blanditiis quia dolorem molestiae voluptas dolor. Explicabo cumque vitae facere labore quia autem sed.', NULL, NULL, 0, 29),
(39, 'Culpa sit illum non officiis. Ipsa nesciunt commodi architecto debitis. Accusamus aut saepe reiciendis eaque.', NULL, NULL, 1, 49),
(40, 'Aut quis magni dicta provident facere quisquam non. Optio provident voluptatibus quo. Aspernatur molestiae necessitatibus ad est quia eaque eos assumenda. Ut sint similique aut ratione voluptatem.', NULL, NULL, 0, 12),
(41, 'Doloremque laborum cum sequi qui in. Id accusamus doloribus velit quod recusandae dicta.', NULL, NULL, 1, 50),
(42, 'Recusandae deserunt ullam accusamus sunt iusto. Culpa vel exercitationem sint quia ipsum suscipit. Quasi molestiae vero quis et et voluptates.', NULL, NULL, 0, 49),
(43, 'Officiis vero aut et harum pariatur. Id suscipit ut corrupti doloremque eius voluptates possimus. Praesentium qui tempore est reprehenderit.', NULL, NULL, 0, 32),
(44, 'Possimus rerum molestiae et magni illo sed. Omnis voluptatem reiciendis ut consequatur. Sunt fuga quia facere nostrum mollitia ducimus.', NULL, NULL, 1, 9),
(45, 'Inventore eos quae rem odio et consequatur. Vel ipsa optio est dolorem quia quo amet. Quo perferendis corporis eveniet quidem.', NULL, NULL, 0, 13),
(46, 'Rem eveniet a consequatur reiciendis provident in. Et autem maiores molestiae rem. Facere inventore eligendi assumenda vitae eveniet quisquam dolores officiis. Omnis dolores ipsa praesentium.', NULL, NULL, 1, 10),
(47, 'Nostrum sunt ea quis ad repellat fugit. Sint illum fugiat quia consequuntur inventore inventore. Impedit temporibus sint consequatur velit.', NULL, NULL, 0, 32),
(48, 'Inventore dolor quia quaerat veniam qui autem explicabo maxime. Est minus omnis et officia delectus facere neque eveniet. Omnis facilis libero minima animi rem debitis esse.', NULL, NULL, 0, 11),
(49, 'Eos et explicabo eos qui nostrum. Sapiente unde culpa nostrum. Omnis dolor enim minima excepturi reprehenderit. Pariatur qui reprehenderit repellendus cum rerum.', NULL, NULL, 1, 32),
(50, 'Est nobis est ut eum ratione id porro. Est animi dolorem et earum voluptas. Dolore corrupti consequatur sapiente ullam et aut.', NULL, NULL, 0, 24),
(51, 'Architecto ducimus rem expedita ex. Corporis in temporibus totam. Et quae rerum consequatur eum accusamus.', NULL, NULL, 1, 29),
(52, 'Libero eaque eos velit iste. Ut quod quia veritatis officiis vel sapiente. Quos exercitationem rerum ratione rerum dolores nihil consequatur.', NULL, NULL, 1, 17),
(53, 'Maxime adipisci deleniti voluptate pariatur numquam ea. Accusamus impedit reiciendis dolores corrupti eum praesentium non. Natus vel possimus quos rerum sint dolore eos.', NULL, NULL, 0, 32),
(54, 'asdasdjasjdalskdjlaskdjaslkdjaslkdjasld', NULL, NULL, 0, 54);

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-02-21 07:52:53', '2022-02-21 07:52:53', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-02-21 07:52:53', '2022-02-21 07:52:53', 'voyager.settings.index', NULL);

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-02-21 07:52:53', '2022-02-21 07:52:53');

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_183806_create_cursos_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 1),
(6, '2016_01_01_000000_create_data_types_table', 1),
(7, '2016_05_19_173453_create_menu_table', 1),
(8, '2016_10_21_190000_create_roles_table', 1),
(9, '2016_10_21_190000_create_settings_table', 1),
(10, '2016_11_30_135954_create_permission_table', 1),
(11, '2016_11_30_141208_create_permission_role_table', 1),
(12, '2016_12_26_201236_data_types__add__server_side', 1),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(14, '2017_01_14_005015_create_translations_table', 1),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(19, '2017_08_05_000000_add_group_to_settings_table', 1),
(20, '2017_11_26_013050_add_user_role_relationship', 1),
(21, '2017_11_26_015000_create_user_roles_table', 1),
(22, '2018_03_11_000000_add_user_settings', 1),
(23, '2018_03_14_000000_add_details_to_data_types_table', 1),
(24, '2018_03_16_000000_make_settings_value_nullable', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2022_02_18_140030_create_sessions_table', 1),
(28, '2022_02_19_150000_creacion_tabla_deseos', 1);

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1);

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(2, 'browse_bread', NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(3, 'browse_database', NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(4, 'browse_media', NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(5, 'browse_compass', NULL, '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(6, 'browse_menus', 'menus', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(7, 'read_menus', 'menus', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(8, 'edit_menus', 'menus', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(9, 'add_menus', 'menus', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(10, 'delete_menus', 'menus', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(11, 'browse_roles', 'roles', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(12, 'read_roles', 'roles', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(13, 'edit_roles', 'roles', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(14, 'add_roles', 'roles', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(15, 'delete_roles', 'roles', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(16, 'browse_users', 'users', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(17, 'read_users', 'users', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(18, 'edit_users', 'users', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(19, 'add_users', 'users', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(20, 'delete_users', 'users', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(21, 'browse_settings', 'settings', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(22, 'read_settings', 'settings', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(23, 'edit_settings', 'settings', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(24, 'add_settings', 'settings', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(25, 'delete_settings', 'settings', '2022-02-21 07:52:53', '2022-02-21 07:52:53');

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-02-21 07:52:53', '2022-02-21 07:52:53'),
(2, 'user', 'Normal User', '2022-02-21 07:52:53', '2022-02-21 07:52:53');

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xwpOw4sQMOegRfIiacJghBt2JMza7gWq59KMl02N', 32, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiR0dtR0duOE9nRng4a2FLZmQwMHFsV3pXemJZYWxlcGJHc0xqRVFCUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXNlbyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjMyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkc3dSWG5tZFFLNnZkckNtQTM2TDZjLkVmaTVuS3ZEUlF5YVdDNjhHSHdaeE1rUUNEdEJCZksiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHN3UlhubWRRSzZ2ZHJDbUEzNkw2Yy5FZmk1bkt2RFJReWFXQzY4R0h3WnhNa1FDRHRCQmZLIjt9', 1645707555);

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/February2022/uDesE2vRfv1hdT5rA8aE.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `curso_id`) VALUES
(4, 2, 'Daryl Wolf', 'emil.collins@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'pMD1Y9mk0b', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 3),
(5, 2, 'Kaia Fahey', 'loy61@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jU6iVtUFnK', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 14),
(6, 2, 'Marquise Schoen', 'edonnelly@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'hyWDslb6Qi', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 14),
(7, 2, 'Bernice Schneider MD', 'judge45@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZIfzi0WEgR', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 16),
(8, 2, 'Trinity Koss', 'stoltenberg.lorna@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'YZWO7R8qu6', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 4),
(9, 2, 'Leatha Breitenberg DDS', 'amanda.kirlin@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KUqvW8ETFs', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 7),
(10, 2, 'Garret Willms', 'alanis.mante@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '6H5hgJhkjJ', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 18),
(11, 2, 'Janie Herzog DDS', 'stacy.grant@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'SPhnRGoD4Q', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 12),
(12, 2, 'Mable Daugherty', 'spaucek@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '7c3eCGkh5f', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 1),
(13, 2, 'Kaylah Berge Sr.', 'jstokes@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Eb0Hm4tQ8z', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 19),
(14, 2, 'Pasquale Murazik', 'qhirthe@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WjrOUfQOPD', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 5),
(15, 2, 'Ruth Funk', 'timmy.ebert@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QZRlFfbaRU', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 6),
(16, 2, 'Jaylin Mraz', 'quentin90@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ImBf0LkzyY', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 17),
(17, 2, 'Ciara Durgan DVM', 'francis17@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jt3daBedFE', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 13),
(18, 2, 'Miss Katheryn Ullrich', 'mackenzie18@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '66m8cofnNi', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 14),
(19, 2, 'Prof. Hermann Wolff PhD', 'xschowalter@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HUniccVrEO', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 1),
(20, 2, 'Euna Hyatt', 'carmine77@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'npYSYJXRnh', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 12),
(21, 2, 'Gay Raynor', 'skuhlman@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'o37l2tn1W2', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 19),
(22, 2, 'Ms. Candace Hegmann', 'augustus52@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vmN1DZgCeV', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 10),
(23, 2, 'Bud Wuckert', 'moises.gerlach@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OxZyZDfYcR', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 2),
(24, 2, 'Letha Hackett', 'alayna87@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Oqh7G47ahL', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 19),
(25, 2, 'Dr. Lou Reinger', 'shammes@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Essp2kSkQK', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 10),
(26, 2, 'Yasmin Smitham', 'tcormier@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'D5oznbTiGy', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 19),
(27, 2, 'Prof. Edgar Abbott I', 'kamron.hackett@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8WUzBOvKrp', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 17),
(28, 2, 'Sierra Herzog', 'noemy60@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vSsl1U0yfm', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 15),
(29, 2, 'Franco Hermann', 'dkuphal@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jVN2moynJC', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 14),
(30, 2, 'Alayna Marvin', 'vern.ruecker@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'VSBRbq6Kj6', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 3),
(31, 2, 'Justine Goldner', 'cassie69@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qTSQAIoGWY', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 19),
(32, 2, 'Cindy Labadie', 'stacey.sauer@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$swRXnmdQK6vdrCmA36L6c.Efi5nKvDRQyaWC68GHwZxMkQCDtBBfK', NULL, NULL, 'YWn4HJygQW', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 10),
(33, 2, 'Brady Erdman', 'oceane92@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Kdledivq8d', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 6),
(34, 2, 'Ezekiel Jakubowski', 'mayert.cali@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4kJdpmWWyt', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 19),
(35, 2, 'Emerald Metz', 'rachelle.cole@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JC5N40L1X8', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 12),
(36, 2, 'Dion West', 'wpagac@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '1URaLC1hxK', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 8),
(37, 2, 'Brittany Pagac PhD', 'kathleen.corkery@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'opvKCqjWuX', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 2),
(38, 2, 'Cecil Hansen Jr.', 'mzieme@example.net', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'IbnZEiSVth', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 9),
(39, 2, 'Neha Hammes', 'noah.purdy@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MY9Yy1xqsf', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 6),
(40, 2, 'Ms. Zoe Okuneva II', 'owolff@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ULQmcfrDMG', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 9),
(41, 2, 'Elmo Abernathy Jr.', 'ptoy@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'nQb6FaholR', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 2),
(42, 2, 'Davin Schimmel', 'edison47@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'bOX4vOOkfz', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 11),
(43, 2, 'Dimitri Hilpert', 'keebler.elton@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OC77stkTLy', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 2),
(44, 2, 'Prof. Russell Hauck V', 'maggio.connie@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'p2QIuedOX5', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 7),
(45, 2, 'Della Brown', 'goodwin.otis@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Tc9kc1mySl', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 4),
(46, 2, 'Adrien Dibbert', 'marcelle92@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zRXg4061sn', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 4),
(47, 2, 'Holden Terry', 'domenica.trantow@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZUTkfMSNVj', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 2),
(48, 2, 'Deborah Carter DVM', 'kerluke.sage@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lYnwkhMEGi', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 9),
(49, 2, 'Jon Schmeler IV', 'quinten.oconnell@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'czrL6t1Elq', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 18),
(50, 2, 'Anissa Nicolas', 'frieda44@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qeRhZ0ZnXD', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 2),
(51, 2, 'Krystel Parker', 'dnader@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MpumU5Iyun', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 10),
(52, 2, 'Zula Halvorson', 'hluettgen@example.org', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9dy9sjF6Ia', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 11),
(53, 2, 'Felipe Nicolas MD', 'emely33@example.com', 'users/default.png', '2022-02-21 08:53:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ICDs4Wsr8x', NULL, NULL, NULL, '2022-02-21 08:53:20', '2022-02-21 08:53:20', 1),
(54, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$swRXnmdQK6vdrCmA36L6c.Efi5nKvDRQyaWC68GHwZxMkQCDtBBfK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-21 08:55:34', '2022-02-21 08:55:34', 2);

INSERT INTO `valoracion_deseos` (`id`, `deseo_id`, `usuario_id`, `created_at`, `updated_at`) VALUES
(1, 54, 54, NULL, NULL),
(2, 54, 54, NULL, NULL),
(3, 54, 54, NULL, NULL),
(4, 54, 54, NULL, NULL),
(5, 54, 54, NULL, NULL),
(6, 54, 54, NULL, NULL),
(7, 54, 54, NULL, NULL);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;