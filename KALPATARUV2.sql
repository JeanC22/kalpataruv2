-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para kalpataruv2
CREATE DATABASE IF NOT EXISTS `kalpataruv2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `kalpataruv2`;

-- Volcando estructura para tabla kalpataruv2.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombreCurso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.cursos: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.data_rows: ~41 rows (aproximadamente)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 0, 0, 0, 0, 0, '{}', 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0","taggable":"0"}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 0, 0, 0, 0, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
	(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'texto', 'text', 'Texto', 1, 1, 1, 1, 1, 1, '{}', 3),
	(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(26, 4, 'estado', 'text', 'Estado', 1, 1, 1, 1, 1, 1, '{}', 6),
	(27, 4, 'likes', 'text', 'Likes', 1, 1, 1, 1, 1, 1, '{}', 7),
	(28, 4, 'usuario_id', 'text', 'Usuario Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(29, 4, 'deseo_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsTo","column":"usuario_id","key":"id","label":"name","pivot_table":"cursos","pivot":"0","taggable":null}', 8),
	(30, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(31, 5, 'nombreCurso', 'text', 'NombreCurso', 1, 1, 1, 1, 1, 1, '{}', 2),
	(32, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
	(33, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
	(34, 5, 'curso_hasmany_user_relationship', 'relationship', 'Alumnos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"hasMany","column":"curso_id","key":"id","label":"name","pivot_table":"cursos","pivot":"0","taggable":"0"}', 5),
	(35, 1, 'user_hasmany_deseo_relationship', 'relationship', 'deseos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Deseo","table":"deseos","type":"hasMany","column":"usuario_id","key":"id","label":"texto","pivot_table":"cursos","pivot":"0","taggable":"0"}', 13),
	(36, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(37, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 0, 0, 0, 0, 0, '{}', 9),
	(38, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 0, 0, 0, 0, 0, '{}', 10),
	(39, 1, 'current_team_id', 'text', 'Current Team Id', 0, 0, 0, 0, 0, 0, '{}', 13),
	(40, 1, 'profile_photo_path', 'text', 'Profile Photo Path', 0, 0, 0, 0, 0, 0, '{}', 14),
	(41, 1, 'curso_id', 'text', 'Curso Id', 0, 1, 1, 1, 1, 1, '{}', 3);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.data_types: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2022-02-20 22:59:18', '2022-02-20 23:51:27'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(4, 'deseos', 'deseos', 'Deseo', 'Deseos', NULL, 'App\\Models\\Deseo', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2022-02-20 23:02:07', '2022-02-20 23:02:07'),
	(5, 'cursos', 'cursos', 'Curso', 'Cursos', NULL, 'App\\Models\\Curso', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-02-20 23:12:05', '2022-02-20 23:28:43');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.deseos
CREATE TABLE IF NOT EXISTS `deseos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` bigint(20) NOT NULL DEFAULT 0,
  `likes` bigint(20) NOT NULL DEFAULT 0,
  `usuario_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deseos_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `deseos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.deseos: ~139 rows (aproximadamente)
/*!40000 ALTER TABLE `deseos` DISABLE KEYS */;
INSERT INTO `deseos` (`id`, `texto`, `created_at`, `updated_at`, `estado`, `likes`, `usuario_id`) VALUES
	(1, 'Quia ipsa a nobis veritatis molestias minus. Porro ut repellat qui consequatur. Dolore consequuntur blanditiis occaecati odit consequatur sequi. Ea culpa tenetur architecto est quia dolorem. Nihil ducimus modi corrupti reiciendis numquam nulla libero.', NULL, NULL, 1, 0, 42),
	(2, 'Et eligendi perferendis quo qui vero. Non quia sed velit. Fugiat est nihil qui aliquam placeat.', NULL, NULL, 0, 0, 27),
	(3, 'Repudiandae doloribus et enim cum. Esse officiis laboriosam aut qui harum hic. Suscipit odit at doloribus.', NULL, NULL, 0, 0, 20),
	(4, 'Architecto corporis repellat quaerat harum aut nihil. Impedit et blanditiis alias. Eum est laborum a quas.', NULL, NULL, 0, 0, 19),
	(6, 'Dicta architecto vel a aut recusandae ea nihil. Blanditiis enim eum aliquid. Quae saepe cumque aliquam nihil. Excepturi nostrum modi deserunt est ullam debitis sed. Labore qui beatae consequatur vero enim.', NULL, NULL, 1, 0, 12),
	(7, 'Quo quis eos ad dolores hic. Doloribus autem amet repellendus et autem. Reiciendis sed omnis et cupiditate omnis.', NULL, NULL, 1, 0, 20),
	(8, 'Omnis dolor amet officiis. Incidunt maxime quaerat id et quos vero. Veniam velit quaerat et eligendi dolor. Odit nihil dolor rerum qui architecto.', NULL, NULL, 0, 0, 44),
	(9, 'Voluptate natus vel inventore voluptas. Quidem ut adipisci et dolore iste itaque mollitia. Totam at ipsa vitae totam veniam soluta.', NULL, NULL, 1, 0, 45),
	(10, 'Accusantium sequi et nihil consectetur ullam. Dolor explicabo nesciunt aut beatae. Id ut ut omnis provident tenetur nisi debitis. Porro fugit deleniti est doloremque nemo qui.', NULL, NULL, 0, 0, 15),
	(11, 'Praesentium est nam itaque quibusdam sunt. Quia dignissimos facere quibusdam ea dolore dignissimos minus. Voluptatibus non quaerat ipsa temporibus est molestias. Dolorem ullam ut mollitia voluptatibus voluptatem.', NULL, NULL, 1, 0, 43),
	(12, 'Vero minima delectus dolores eius aliquam vero est. Neque vero commodi est temporibus. Voluptatibus sit esse alias tempora.', NULL, NULL, 1, 0, 23),
	(13, 'Rerum blanditiis et praesentium sed ipsa dicta. Hic et optio nemo et. Non alias voluptate quibusdam alias et. Omnis dolor consequatur praesentium nihil.', NULL, NULL, 0, 0, 30),
	(14, 'Dolore error consequatur cupiditate. Beatae quae consequatur tempora consequatur ut modi ad.', NULL, NULL, 0, 0, 44),
	(15, 'Tempore qui autem consectetur dolor voluptatum. Optio sunt voluptates sint accusantium. Deleniti facere molestias molestias ipsa vel vel.', NULL, NULL, 0, 0, 15),
	(16, 'Asperiores quia alias necessitatibus suscipit culpa nesciunt veniam. Omnis quasi quaerat accusamus dolores unde architecto impedit. Iure et velit eum non libero qui. Dolorem nostrum asperiores iste at reiciendis odio ad.', NULL, NULL, 0, 0, 7),
	(17, 'Et ut aut ullam atque optio. Praesentium adipisci autem ducimus porro. Voluptates nisi alias dolorem exercitationem delectus quidem.', NULL, NULL, 1, 0, 30),
	(18, 'Laborum dolorum ducimus odio neque reprehenderit rem eum. Numquam aut et omnis.', NULL, NULL, 1, 0, 22),
	(19, 'Illum labore tempora molestiae iure nobis qui. Deleniti minima est consectetur amet repellat. Quos et blanditiis voluptatem qui omnis. Vel perferendis sed quo est aperiam dolorem.', NULL, NULL, 1, 0, 33),
	(20, 'Esse amet saepe sunt quaerat nisi blanditiis laudantium. Optio sunt itaque itaque corrupti.', NULL, NULL, 1, 0, 44),
	(21, 'Molestiae fugit voluptas modi sequi ut et. Facere perferendis sint accusantium odit. Omnis ea beatae sed eum. Quia ipsum deserunt veritatis est.', NULL, NULL, 0, 0, 37),
	(22, 'Aliquid porro voluptatem voluptate non unde ex culpa autem. Reiciendis debitis sapiente soluta natus assumenda. Suscipit odit cumque sit tempora esse earum sit eligendi. Id eos iure quaerat.', NULL, NULL, 1, 0, 39),
	(23, 'Consequatur dolores recusandae non voluptatibus. Dolores sit autem quidem et eaque. Aut eos temporibus illum mollitia. Voluptatem quia doloremque ullam adipisci.', NULL, NULL, 0, 0, 32),
	(24, 'Eum sed et et ducimus. Nesciunt unde ea veritatis velit quis enim in.', NULL, NULL, 0, 0, 12),
	(25, 'Sint vel dolores sit. Et culpa cupiditate sed. Quidem quia commodi nihil. Excepturi aut et unde autem libero accusamus.', NULL, NULL, 1, 0, 38),
	(26, 'Aut delectus necessitatibus eaque minus tempore magni consequatur. Officia est distinctio officiis et similique. Aperiam facilis quam vel sequi. Et explicabo excepturi laboriosam deserunt tempore.', NULL, NULL, 1, 0, 11),
	(27, 'Eos eos sed qui molestias occaecati aperiam. Aspernatur eum exercitationem distinctio corporis aut aut corrupti sint. Vel temporibus eos sunt.', NULL, NULL, 1, 0, 42),
	(28, 'Voluptatum unde rerum laboriosam soluta aut. Dolor autem ea enim quia rerum. Temporibus ratione voluptatem non.', NULL, NULL, 1, 0, 9),
	(29, 'Enim est labore sint et ipsum aperiam. Iusto molestias et veritatis a. Optio aliquid et assumenda molestias.', NULL, NULL, 1, 0, 6),
	(30, 'Ea voluptatem nihil occaecati earum dolor. Voluptas molestiae nihil est similique. Voluptatibus dolorem quis sit fuga voluptatem vero et perspiciatis.', NULL, NULL, 0, 0, 50),
	(31, 'Iusto et excepturi iusto culpa ut voluptatem. Amet veritatis nulla sit iure rem sunt consequatur tempore. Non qui qui dignissimos libero quod.', NULL, NULL, 1, 0, 42),
	(32, 'Est rerum dolorem soluta voluptatem. Molestias quia molestiae quis nam porro. Et ut repellat neque.', NULL, NULL, 0, 0, 36),
	(33, 'Atque totam quia qui accusamus enim iste quia reprehenderit. Ab perferendis et facilis eos iste fugit et. Quidem nulla ut laudantium laudantium et in repellat. Officiis quasi voluptatibus et magnam tenetur ut. Quae voluptatem eos tenetur et autem.', NULL, NULL, 0, 0, 47),
	(34, 'Dolorem sint nobis harum dolor. Autem magni et veritatis ipsa. Ea neque ullam nobis voluptas quaerat. Et repellendus omnis sit perferendis ratione quia. Animi dignissimos quia sint sint.', NULL, NULL, 0, 0, 35),
	(35, 'Sit magnam porro dicta ut fugit. Sequi sed sunt qui iusto et natus ut quos. Vel velit quasi quos alias. Non corporis occaecati fugiat explicabo et. Omnis ea enim quia dolores.', NULL, NULL, 0, 0, 29),
	(36, 'Eum molestiae voluptatem dicta molestiae perferendis repellendus quis. Fugit consequatur et enim dignissimos laudantium. Amet autem nihil ducimus dignissimos voluptatem et. Voluptatem dolorem consequuntur nam debitis vero eveniet quisquam.', NULL, NULL, 0, 0, 22),
	(37, 'Laudantium vero quis impedit soluta hic assumenda consequatur possimus. Et saepe facere suscipit vero voluptatem. Rerum incidunt cupiditate modi dolor a officiis ut. Earum possimus sed quibusdam recusandae explicabo.', NULL, NULL, 1, 0, 46),
	(38, 'Quos esse unde necessitatibus deleniti iure. Minima aut dolorem ut. Quaerat labore sunt ut est mollitia maiores. Deleniti et id qui vero culpa.', NULL, NULL, 0, 0, 3),
	(39, 'Provident officiis sunt et voluptas accusamus. Voluptatibus vero iure autem similique aut molestiae quia fugiat. Eum laboriosam nihil et blanditiis omnis. Sint consequuntur corrupti voluptatibus rerum.', NULL, NULL, 1, 0, 19),
	(40, 'Repellat provident ut at non. Sit ut voluptas doloribus quia. Asperiores optio natus molestiae ut officia rem.', NULL, NULL, 0, 0, 48),
	(41, 'Minus hic dolorem odio et dolorem consequatur qui. Quo perspiciatis nostrum quis aspernatur. Consequatur et eaque veritatis earum tempora reiciendis.', NULL, NULL, 1, 0, 4),
	(42, 'Aliquam dolor qui corporis sapiente asperiores. Ea quis magnam delectus unde autem. Nulla dolore et ut asperiores optio.', NULL, NULL, 1, 0, 33),
	(43, 'Voluptatem ex sint mollitia qui eaque. Odit officiis corrupti molestiae recusandae dicta ex et porro. Ut sed occaecati itaque ut fuga sunt sapiente.', NULL, NULL, 1, 0, 5),
	(44, 'Dolorem ab optio esse harum maiores. Architecto hic et nisi quidem labore in rem. Doloribus est est ipsum molestias occaecati natus.', NULL, NULL, 0, 0, 18),
	(45, 'Maiores velit ipsam eius natus alias esse. Molestias vel ab dolor unde facilis necessitatibus iure quia. Sed illo dicta sunt reiciendis magnam numquam dolorum. Consequuntur voluptatem aut odit nesciunt aspernatur.', NULL, NULL, 1, 0, 47),
	(46, 'Dolores quo quos tenetur vitae laboriosam eaque nulla. Possimus odit non numquam omnis repellendus esse.', NULL, NULL, 0, 0, 6),
	(47, 'Accusantium itaque et totam. Qui cumque aut iste alias et ab. Odio molestias magni culpa eius explicabo explicabo.', NULL, NULL, 0, 0, 32),
	(48, 'Molestias sunt qui quo est. Enim porro corrupti rem provident totam non. Vel numquam numquam beatae sint ea nesciunt magnam sint. Libero eum amet quia perspiciatis distinctio. Occaecati assumenda voluptatibus facilis sapiente omnis corrupti.', NULL, NULL, 1, 0, 11),
	(49, 'Expedita natus accusantium saepe quidem. Omnis eveniet vel molestiae iusto eaque quis repellat. Sit porro ex sit numquam eligendi atque.', NULL, NULL, 1, 0, 47),
	(50, 'Dolores pariatur ea sed ab ipsa similique. Dolor cupiditate temporibus dignissimos inventore facilis voluptas. Distinctio non est ipsa error consectetur quidem. Nam optio sequi molestiae quam deserunt totam dolores aut.', NULL, NULL, 0, 0, 21),
	(51, 'Et dicta alias eveniet et sit nisi. Molestiae facere consequuntur incidunt ducimus. Omnis sapiente sed et suscipit molestias voluptates id. Ipsam sit ut numquam et.', NULL, NULL, 1, 0, 10),
	(52, 'Et similique esse soluta aliquid ut omnis placeat. Commodi cupiditate omnis dolorem. Est ea quis explicabo eum. Numquam quae vero qui et sit magnam.', NULL, NULL, 0, 0, 43),
	(54, 'Qui dolorum nam rerum voluptas dignissimos. Placeat officiis non inventore velit. Assumenda non eos in ut. Tenetur aliquid dolores ut omnis in suscipit id nemo. Temporibus voluptate voluptatibus sed voluptatem tempora facilis qui.', NULL, NULL, 0, 0, 22),
	(55, 'Quidem omnis dolorum error rerum. Ex odit omnis dolores distinctio. Asperiores repellendus hic itaque veritatis vel aperiam.', NULL, NULL, 1, 0, 28),
	(56, 'Illo enim deleniti accusamus. Incidunt veritatis commodi quia laborum.', NULL, NULL, 0, 0, 12),
	(57, 'Consequatur at explicabo qui blanditiis. Nobis perferendis placeat reiciendis eligendi et et. Aperiam ipsum qui explicabo repudiandae nemo eos dolorem. Ut accusamus porro consequatur rerum repudiandae harum pariatur.', NULL, NULL, 1, 0, 17),
	(58, 'Et magni voluptatem qui odio dolorem. Et sint saepe ab ad quisquam eos nemo. Error voluptates delectus hic deserunt ex.', NULL, NULL, 0, 0, 11),
	(59, 'Sequi sit tenetur occaecati quisquam est. Et autem doloribus reprehenderit consequatur. Adipisci quia est totam. Ipsa dolorem accusantium at et dolorem cum ea.', NULL, NULL, 0, 0, 46),
	(60, 'Consequatur fugit quasi adipisci et. Ipsam veniam nihil quo nobis enim et eaque. Voluptatibus nam dolorem sit magni magni in. Sequi aut consequuntur illum reiciendis explicabo voluptas.', NULL, NULL, 0, 0, 25),
	(61, 'Libero eos reprehenderit dolores quisquam ratione qui dignissimos. Rerum ut laborum temporibus dolores velit sed dolores. Dolores laudantium blanditiis inventore. Eaque molestiae quis molestiae consectetur enim et.', NULL, NULL, 0, 0, 50),
	(62, 'Qui reprehenderit suscipit et maiores blanditiis atque odio praesentium. Consequuntur voluptatibus reprehenderit voluptatem ratione est blanditiis. Odit facilis ut soluta. Eveniet illum voluptas consequatur est.', NULL, NULL, 1, 0, 4),
	(63, 'Ut quo exercitationem nostrum et maiores. Ut et asperiores nobis animi. Porro quis error id et dolores repudiandae porro explicabo. A ducimus veniam voluptatibus iste fugiat quod.', NULL, NULL, 0, 0, 11),
	(64, 'Id architecto est saepe qui itaque. Quo delectus adipisci praesentium sed qui soluta. Facilis id ea voluptas facere odit.', NULL, NULL, 1, 0, 16),
	(65, 'Autem dolores fugit ut. Minima et id ut sit. Explicabo aut optio ut eaque accusantium. Unde eveniet ut non doloremque adipisci ipsum. Quo aut assumenda sapiente ad et.', NULL, NULL, 1, 0, 35),
	(66, 'Dolor eius quibusdam eos numquam et sit. Qui iusto et libero repellendus.', NULL, NULL, 0, 0, 10),
	(67, 'Id aliquid illum ut at quaerat minus non quaerat. Suscipit adipisci nostrum qui dolorem. Voluptate eaque ipsum perferendis enim est aliquam cumque.', NULL, NULL, 1, 0, 36),
	(68, 'Commodi sapiente ea accusantium reiciendis. Voluptatibus vitae consectetur in molestiae. Autem ex velit dolorem facilis qui. Consequatur esse omnis a. Dignissimos tenetur sunt est veniam aliquid nesciunt a.', NULL, NULL, 0, 0, 9),
	(69, 'Animi qui ut illum eum ut adipisci. Totam dolore sint laboriosam neque perferendis.', NULL, NULL, 0, 0, 50),
	(70, 'Sit nihil eius ipsa necessitatibus rerum quia possimus. Repellendus voluptates aut doloremque consequatur eum libero qui. Aut velit ad quaerat porro reiciendis dolorem. Minus aut vel velit minima accusamus vitae vero.', NULL, NULL, 0, 0, 47),
	(71, 'Quo assumenda ea id ipsa inventore consequuntur. Accusamus nesciunt odit officiis laboriosam natus porro exercitationem consectetur. Vel sint explicabo tempora.', NULL, NULL, 1, 0, 7),
	(72, 'Doloribus eos deleniti non laborum dignissimos laudantium consectetur. Dicta dolore nisi quisquam quia. Fugit qui quia sunt eos repellat ut et.', NULL, NULL, 0, 0, 49),
	(73, 'Repudiandae dolore illo perferendis numquam. Nobis dolore est et explicabo. Est odit aliquam nihil magnam cupiditate iusto voluptatibus non.', NULL, NULL, 1, 0, 1),
	(74, 'Autem et voluptatem et deserunt ut atque at. Hic in officiis optio corrupti. Omnis et ullam quibusdam et harum.', NULL, NULL, 1, 0, 12),
	(75, 'Nam voluptate quo et voluptatem accusantium adipisci. Qui consequuntur assumenda esse eos veniam aut ut. Quia perspiciatis sapiente dolor nesciunt a.', NULL, NULL, 0, 0, 9),
	(76, 'Et consectetur dolor ullam soluta. Minima numquam et sit non autem eaque. Quod enim deserunt voluptate quaerat non et velit corrupti.', NULL, NULL, 0, 0, 37),
	(77, 'Repellendus velit vitae aut qui doloribus. Corrupti et harum eligendi eveniet adipisci eum porro molestiae. Officia voluptatem et odio est et iste.', NULL, NULL, 0, 0, 35),
	(78, 'Nisi facilis nostrum ipsum vero. Atque sed voluptate maiores et saepe dolor inventore. Ipsa sit occaecati est iste. Veritatis amet non laboriosam deserunt harum esse et consectetur. Perspiciatis est ab quae est officia assumenda et.', NULL, NULL, 0, 0, 16),
	(79, 'Incidunt sit reiciendis numquam tenetur sed. Repellat qui nihil eligendi vitae modi. Quisquam doloremque aut ut non. Totam animi ut delectus culpa sunt aspernatur.', NULL, NULL, 1, 0, 3),
	(80, 'Qui ipsam non hic rerum sed necessitatibus quod. Atque quod consequatur numquam et voluptates quia vitae iure. Assumenda iste magnam totam id fuga ad libero.', NULL, NULL, 0, 0, 8),
	(81, 'Debitis doloribus quis nam vel. Voluptate minus illum quae dolor beatae. Hic repellendus et qui consequatur beatae facere est. Fugiat voluptatem ut quo quo facere debitis.', NULL, NULL, 1, 0, 49),
	(82, 'Officia quia ab cupiditate eum eos. Aut nostrum sint sed. Ipsum ut consectetur neque et sequi occaecati ex.', NULL, NULL, 1, 0, 25),
	(83, 'Perspiciatis aspernatur et qui est. Qui ut quis tempora repellendus atque hic ut. Voluptas quidem doloribus aut iure exercitationem consequuntur. Sint assumenda quo quibusdam dicta.', NULL, NULL, 0, 0, 17),
	(84, 'Repudiandae asperiores nihil magni ducimus libero. Consectetur dicta distinctio facere quo vitae. Omnis consectetur veniam dignissimos velit nisi rerum qui. Deleniti distinctio rerum inventore dolorem quae consequatur. Qui perspiciatis ab totam est ipsa repudiandae ea.', NULL, NULL, 0, 0, 1),
	(85, 'Qui ut ea ut facere. Est animi atque nihil in eum odio ducimus. Pariatur consequuntur impedit sequi.', NULL, NULL, 1, 0, 9),
	(86, 'Molestiae nemo eum commodi quas autem id. Odit distinctio qui et et qui itaque facilis. Et voluptas enim iste blanditiis ut. Ut ab quia dicta impedit aut consequuntur facere.', NULL, NULL, 0, 0, 38),
	(87, 'Soluta tempora possimus dignissimos dolor tempora ut est. Corrupti eaque commodi ea illo sed molestias aperiam itaque. Excepturi velit numquam laborum nemo harum nobis praesentium. Aut sit provident totam est atque doloribus officiis et.', NULL, NULL, 1, 0, 47),
	(88, 'Odit corporis facere est culpa. Sunt quis quidem dolores et ut. Distinctio nobis saepe inventore accusantium est.', NULL, NULL, 1, 0, 19),
	(89, 'Et nulla iusto cum consequatur qui. Et voluptatum id non enim. Aliquid eos architecto voluptatem unde.', NULL, NULL, 1, 0, 49),
	(90, 'Ex nihil vel adipisci placeat corrupti officiis et. Sed sequi nisi eos quasi. Atque quia nihil facilis impedit tempora saepe eveniet. A doloribus sunt aliquam sunt. Tempore quos et totam aut eligendi neque earum.', NULL, NULL, 0, 0, 20),
	(91, 'Eaque delectus dolores est corporis architecto mollitia porro. Officiis dolorum soluta et et mollitia consequatur assumenda.', NULL, NULL, 1, 0, 3),
	(93, 'Id tempora vel quisquam quis deserunt. Assumenda voluptatem dolores voluptas possimus nulla est debitis. Provident placeat sequi quis nulla.', NULL, NULL, 0, 0, 4),
	(94, 'Voluptas ut nihil omnis veritatis aspernatur sint ex odit. Sunt est labore autem aut quos eveniet velit. Qui autem voluptas soluta temporibus. Aut repellendus aliquam voluptates delectus sit sapiente atque impedit. Ullam reiciendis provident eaque vero perspiciatis atque nihil quasi.', NULL, NULL, 0, 0, 4),
	(95, 'Magni ipsam qui est dolores dolores amet sit. Corporis eos aspernatur eos blanditiis.', NULL, NULL, 0, 0, 44),
	(96, 'Neque expedita commodi esse perspiciatis incidunt tempora. Qui sit qui vel accusamus dolores beatae expedita. Et itaque in atque nulla beatae.', NULL, NULL, 0, 0, 5),
	(97, 'Unde quo omnis et ab. Doloribus vitae esse quisquam architecto commodi et veniam. Repudiandae autem atque consequatur eius odio voluptatum. Dicta non qui minus vel eum.', NULL, NULL, 1, 0, 46),
	(98, 'Aut non nam illo amet quo voluptas. Id et sed tempore numquam in.', NULL, NULL, 1, 0, 24),
	(99, 'Dignissimos soluta in fugiat excepturi molestiae eos. Animi rerum ut autem a temporibus eaque. Aperiam nam exercitationem et. Tempore repellendus omnis aliquid eligendi deserunt est.', NULL, NULL, 1, 0, 18),
	(100, 'Excepturi qui nihil accusamus nobis enim nisi. Numquam quisquam eos maiores cupiditate. Alias unde illum ipsum maiores aut. Cupiditate veniam impedit ipsam rerum consequatur cum.', NULL, NULL, 0, 0, 10),
	(101, 'Et aut soluta corrupti et iste. Provident magnam ullam est sequi vero. Non nostrum laudantium consequatur ut voluptatem.', NULL, NULL, 1, 0, 49),
	(102, 'Sunt voluptas est facilis dolorum. Qui deserunt distinctio laboriosam ipsa harum. Voluptate qui odit veniam id et.', NULL, NULL, 0, 0, 24),
	(103, 'Deleniti est aliquam placeat est architecto ipsam ut. Facere sunt commodi est non ipsa optio. Voluptates itaque laborum dignissimos animi consequatur quod magni. Eos temporibus vitae quae. Qui ea sed rerum et tenetur.', NULL, NULL, 0, 0, 8),
	(104, 'Et commodi blanditiis sunt labore minima dolores. Ad omnis nemo occaecati dolores omnis. Fuga voluptates et vitae consequuntur ipsum laboriosam. Optio vero sit vitae itaque.', NULL, NULL, 1, 0, 41),
	(105, 'Voluptatem blanditiis magnam laudantium. Maxime aliquam porro error officiis. Dolorem amet accusantium labore reprehenderit.', NULL, NULL, 1, 0, 17),
	(106, 'Nesciunt tempore dolor consequatur laboriosam et non dicta. Qui illum minima id quibusdam. Optio quis aut repellendus aspernatur molestiae fuga ab.', NULL, NULL, 0, 0, 18),
	(107, 'Quasi autem est voluptatem voluptas. Quia voluptatem explicabo animi tenetur. In ut aliquid quis nihil et delectus animi. Id qui porro quisquam accusamus aut est aut.', NULL, NULL, 0, 0, 10),
	(108, 'Et doloremque rem a omnis. Earum maiores quas delectus tenetur ut fuga et. Consequatur veniam illum corporis consequatur placeat in.', NULL, NULL, 0, 0, 14),
	(109, 'Ratione voluptatem ut qui aspernatur nihil. Et non recusandae voluptas vitae. Perspiciatis veritatis consequatur modi laudantium qui fugiat quod. Ipsum ex voluptate rerum numquam nemo.', NULL, NULL, 1, 0, 32),
	(110, 'Tenetur temporibus et repellat odit impedit. Laboriosam ut fuga et et repudiandae illum eum. Aliquam error quod perspiciatis fugit recusandae. Occaecati perspiciatis officiis unde optio consequatur.', NULL, NULL, 1, 0, 12),
	(111, 'Ipsa architecto cumque facilis fuga iste placeat. Ut eum perferendis nam voluptatem laudantium sed. Illum maiores qui repellat odio sit minima sunt. Earum fugiat natus dolorum ea numquam dolor cum.', NULL, NULL, 0, 0, 10),
	(112, 'Velit ipsa vel sit impedit tempore. Provident mollitia ab fugit incidunt. In quaerat sit harum laborum consectetur. Velit doloribus et et ad dolorum sint voluptatum.', NULL, NULL, 0, 0, 14),
	(113, 'Sit repellat est voluptatem fugit qui. Ut veniam nihil omnis omnis quia. Et doloremque dolor neque in nesciunt. Et ea beatae distinctio molestiae. Et perferendis veniam sit.', NULL, NULL, 1, 0, 33),
	(114, 'Qui praesentium iusto ut perferendis iusto voluptatem ut. Dolores ut id consequatur sit officiis. Laudantium laborum eaque recusandae est. Sint earum officia qui autem natus blanditiis ipsum. Sint doloremque ea perspiciatis neque quibusdam.', NULL, NULL, 0, 0, 25),
	(115, 'In deserunt ut magnam quisquam. Quasi dolor sint et est. In deleniti veniam facilis adipisci.', NULL, NULL, 1, 0, 5),
	(116, 'Pariatur rerum qui praesentium. Quia eveniet et reprehenderit enim velit dolores laudantium. Veniam rem voluptas qui earum id nam eum. Rerum debitis facilis aut omnis iusto consequatur alias consequatur.', NULL, NULL, 1, 0, 29),
	(117, 'Delectus fugit incidunt asperiores quidem dolorem quisquam laborum inventore. Consequuntur minus qui totam aliquid consequatur quo et. Ut quis consectetur fugiat exercitationem consequatur dolores voluptatibus.', NULL, NULL, 1, 0, 22),
	(118, 'Odio animi ut deserunt harum enim aut. Est molestias et et reiciendis nihil necessitatibus. Similique quis eos ea perferendis.', NULL, NULL, 0, 0, 5),
	(119, 'Aut ea quas recusandae consequatur aut. Rem quis quod ut error sed fugit. Minus amet quia aliquid ea nam repudiandae corporis aut. Sunt optio hic rerum harum ipsa.', NULL, NULL, 0, 0, 7),
	(120, 'Natus sint expedita quis veniam. Animi delectus modi ipsa aperiam ea ea necessitatibus. Sequi quisquam amet at dignissimos exercitationem aperiam optio. In accusantium architecto rerum ut sit. Velit suscipit ut ex exercitationem amet.', NULL, NULL, 1, 0, 41),
	(121, 'Dolore voluptas et officiis nisi enim delectus est. Modi ipsam tempora possimus perferendis nobis. Aut corrupti ut ut ut.', NULL, NULL, 1, 0, 44),
	(122, 'A cum non tempore autem quia sed provident tempora. Laudantium ducimus velit nemo voluptatibus. Nisi laudantium et vel nulla modi dolorem.', NULL, NULL, 1, 0, 26),
	(123, 'Et dolores aut quibusdam quod. Quo cum facilis quam et ut voluptatem repellendus. Aut nobis assumenda et minus quos asperiores commodi. Quod qui eum error corporis soluta.', NULL, NULL, 1, 0, 38),
	(124, 'Consequatur occaecati recusandae facilis omnis commodi alias necessitatibus. Nesciunt recusandae velit accusantium. Aliquam natus quaerat tempora quas tempore.', NULL, NULL, 1, 0, 8),
	(125, 'Tempora corporis qui aperiam vitae veniam non. Praesentium hic corrupti voluptatem et repellendus. Aut sint qui deleniti vero ut et necessitatibus.', NULL, NULL, 1, 0, 43),
	(126, 'Facere et quis vitae aut dolorem tempora. Eaque temporibus nihil quae unde quod ipsum. Sunt cum et perspiciatis commodi quia necessitatibus beatae.', NULL, NULL, 1, 0, 46),
	(127, 'Sequi vitae fugit beatae ratione eos cum quisquam. Illum mollitia optio ipsa perferendis ea et autem molestias.', NULL, NULL, 0, 0, 13),
	(128, 'Deleniti consequatur nihil sit quis aut. Repudiandae sit dolorem aliquid recusandae aut. Iusto quis voluptas sit nisi in est. Ullam et eligendi odio accusamus cum culpa voluptatum.', NULL, NULL, 0, 0, 41),
	(129, 'Hic consectetur ut modi autem delectus qui. Quidem itaque enim beatae corrupti autem.', NULL, NULL, 0, 0, 36),
	(130, 'Doloremque repellendus placeat quo nobis. Voluptates odit eos eligendi natus fugit recusandae. Et non ea dolor sed dolorem laborum. Ratione consequatur qui aspernatur quam voluptatem ut consequatur.', NULL, NULL, 0, 0, 42),
	(131, 'Culpa corporis atque esse omnis odio autem provident rerum. Eveniet ut consequatur neque debitis eum. Omnis unde ducimus repellendus ipsum dolores. Iure accusantium quia consequatur vel doloremque.', NULL, NULL, 0, 0, 44),
	(132, 'Harum nostrum sint odit illum. Ipsa maiores tenetur est et in beatae aut. Molestiae dolorem tempora qui earum eligendi.', NULL, NULL, 0, 0, 49),
	(133, 'Totam quibusdam minus asperiores adipisci assumenda reprehenderit perferendis animi. Eligendi optio impedit dolor laudantium enim. Facilis culpa corrupti error facilis. Voluptatibus explicabo libero et ut est.', NULL, NULL, 0, 0, 36),
	(134, 'Ut inventore nemo voluptas enim est et itaque. Expedita autem enim nam voluptas consequatur tempora. Saepe quasi quia eos ut id numquam beatae.', NULL, NULL, 0, 0, 22),
	(135, 'Voluptatem at nam repellendus assumenda quas eos laborum. Voluptatem optio et facere ipsa et. Delectus dolorem et voluptatem nulla perferendis mollitia dolor. Ut eligendi exercitationem sed tenetur perspiciatis illo ea. Consectetur at unde sit error ut.', NULL, NULL, 0, 0, 15),
	(136, 'Et blanditiis quis aliquam voluptatem ut aut tempore. Dolor officiis assumenda impedit laudantium praesentium. Cum ut et minima.', NULL, NULL, 0, 0, 33),
	(137, 'Cumque et qui qui quasi. Est quae rerum quasi et sed. Qui quasi sed debitis suscipit nulla omnis expedita.', NULL, NULL, 1, 0, 45),
	(138, 'At nobis nihil est provident molestias voluptatem rerum. Blanditiis at quia tenetur nesciunt. Eligendi quo recusandae repellat sit minus qui sit. Reiciendis non quisquam odit id vero.', NULL, NULL, 1, 0, 40),
	(139, 'Eaque esse possimus magnam nihil et. Illum provident laudantium culpa et. Ut atque sint laudantium omnis. Velit officiis alias accusantium itaque dolores beatae facilis qui.', NULL, NULL, 0, 0, 43),
	(140, 'Quis dolorum exercitationem suscipit ut qui minus dolorem. Itaque ab enim recusandae alias voluptatum. Suscipit vel adipisci et sequi. Molestiae mollitia omnis consequatur possimus voluptatem et.', NULL, NULL, 1, 0, 8),
	(141, 'Voluptatem rem in enim. Minima voluptate maiores ut voluptatum aut. Voluptas asperiores adipisci adipisci consequuntur. Et quasi facere labore quia eos sit vel ab.', NULL, NULL, 1, 0, 33),
	(142, 'Vitae sapiente repellendus voluptatem est deleniti atque. Nihil tempora fugiat tempora dolor molestias natus dolorem. Ipsam sequi laudantium atque dolorem officia quasi et.', NULL, NULL, 1, 0, 45);
/*!40000 ALTER TABLE `deseos` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.menus: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2022-02-20 22:59:18', '2022-02-20 22:59:18');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.menu_items: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-02-20 22:59:18', '2022-02-20 22:59:18', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-02-20 22:59:18', '2022-02-20 23:21:54', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-02-20 22:59:18', '2022-02-20 22:59:18', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-02-20 22:59:18', '2022-02-20 22:59:18', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2022-02-20 22:59:18', '2022-02-20 23:21:54', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-02-20 22:59:18', '2022-02-20 23:21:54', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-02-20 22:59:18', '2022-02-20 23:21:54', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-02-20 22:59:18', '2022-02-20 23:21:54', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-02-20 22:59:18', '2022-02-20 23:21:54', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2022-02-20 22:59:18', '2022-02-20 23:21:54', 'voyager.settings.index', NULL),
	(11, 1, 'Deseos', '', '_self', 'voyager-tree', '#000000', NULL, 7, '2022-02-20 23:02:07', '2022-02-20 23:24:34', 'voyager.deseos.index', 'null'),
	(12, 1, 'Cursos', '', '_self', 'voyager-logbook', '#000000', NULL, 8, '2022-02-20 23:12:05', '2022-02-20 23:24:52', 'voyager.cursos.index', 'null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.migrations: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.permissions: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(2, 'browse_bread', NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(3, 'browse_database', NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(4, 'browse_media', NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(5, 'browse_compass', NULL, '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(6, 'browse_menus', 'menus', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(7, 'read_menus', 'menus', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(8, 'edit_menus', 'menus', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(9, 'add_menus', 'menus', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(10, 'delete_menus', 'menus', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(11, 'browse_roles', 'roles', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(12, 'read_roles', 'roles', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(13, 'edit_roles', 'roles', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(14, 'add_roles', 'roles', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(15, 'delete_roles', 'roles', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(16, 'browse_users', 'users', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(17, 'read_users', 'users', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(18, 'edit_users', 'users', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(19, 'add_users', 'users', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(20, 'delete_users', 'users', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(21, 'browse_settings', 'settings', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(22, 'read_settings', 'settings', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(23, 'edit_settings', 'settings', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(24, 'add_settings', 'settings', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(25, 'delete_settings', 'settings', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(26, 'browse_deseos', 'deseos', '2022-02-20 23:02:07', '2022-02-20 23:02:07'),
	(27, 'read_deseos', 'deseos', '2022-02-20 23:02:07', '2022-02-20 23:02:07'),
	(28, 'edit_deseos', 'deseos', '2022-02-20 23:02:07', '2022-02-20 23:02:07'),
	(29, 'add_deseos', 'deseos', '2022-02-20 23:02:07', '2022-02-20 23:02:07'),
	(30, 'delete_deseos', 'deseos', '2022-02-20 23:02:07', '2022-02-20 23:02:07'),
	(31, 'browse_cursos', 'cursos', '2022-02-20 23:12:05', '2022-02-20 23:12:05'),
	(32, 'read_cursos', 'cursos', '2022-02-20 23:12:05', '2022-02-20 23:12:05'),
	(33, 'edit_cursos', 'cursos', '2022-02-20 23:12:05', '2022-02-20 23:12:05'),
	(34, 'add_cursos', 'cursos', '2022-02-20 23:12:05', '2022-02-20 23:12:05'),
	(35, 'delete_cursos', 'cursos', '2022-02-20 23:12:05', '2022-02-20 23:12:05');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.permission_role: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
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
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2022-02-20 22:59:18', '2022-02-20 22:59:18'),
	(2, 'user', 'Normal User', '2022-02-20 22:59:18', '2022-02-20 22:59:18');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.sessions: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('q4vcxLkamU6BHomtuAW221kd1sXfqGmdY7VzyWGX', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.46', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiN09USjhKc3piVFRzemNmMTJzcDdqYXJmSE9tVHM2RHl0TDFnb0hFMSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ3OiJodHRwOi8vbG9jYWxob3N0L2thbHBhdGFydXYyL3B1YmxpYy9hZG1pbi91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkVWViNWJFWGdjS1VTaDRNTG14UndrdWd2czdYMFgxZ25DeW1VVTM2c2cuSUFKLmdIQ3hXcUMiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1645401745);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.settings: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'KALPATARU ADMIN', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'KALPATARU ADMIN', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.translations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `curso_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_curso_id_foreign` (`curso_id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.users: ~51 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `curso_id`) VALUES
	(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$Ueb5bEXgcKUSh4MLmxRwkugvs7X0X1gnCymUU36sg.IAJ.gHCxWqC', NULL, NULL, 'VmSIKC6TLkuR6to1fTy25RH9GFv7tunHMCQdgyZ4nB5mb1vaZGbemltgkcV4', '{"locale":"en"}', NULL, NULL, '2022-02-20 23:00:28', '2022-02-20 23:43:33', NULL),
	(3, 2, 'Dr. Shaun Abernathy DVM', 'jon83@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'kyTQbhMFZX', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 10),
	(4, 2, 'Amara Howell', 'jbednar@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9RuReJQkjS', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 11),
	(5, 2, 'Aylin Anderson', 'tbrown@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'bI7qsolndT', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 8),
	(6, 2, 'Bertram Langosh', 'ieichmann@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QqkrcUokLb', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 14),
	(7, 2, 'Dr. Arvel Kemmer Sr.', 'isabell57@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vyPCn1v7vT', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 17),
	(8, 2, 'Dr. Eliezer Cormier', 'river77@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tp1joZRsOj', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 2),
	(9, 2, 'Dr. Cora Kemmer Sr.', 'little.haskell@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'RhRd9eBv9Y', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 11),
	(10, 2, 'Dominic Frami', 'mandy66@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'FpuD2PWkxQ', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 14),
	(11, 2, 'Kip Franecki', 'zoila.schowalter@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'BmlhTb6O0m', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 10),
	(12, 2, 'Catharine Mosciski V', 'xdonnelly@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '0YXohKvtLJ', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 19),
	(13, 2, 'Rene Trantow', 'oleta49@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'D5UzTWDnQn', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 14),
	(14, 2, 'Dave Aufderhar Jr.', 'newton35@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'NlBBlV0cd5', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 5),
	(15, 2, 'Arvel Kertzmann', 'laisha.kris@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lquvQ1AAo3', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 17),
	(16, 2, 'Lilly Bins', 'sophie.langosh@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'a0rhQeAUjy', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 15),
	(17, 2, 'Modesto Koch', 'mitchell.keely@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZXeZhkX6Nk', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 14),
	(18, 2, 'Ernestine Stehr', 'skozey@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'bYG0Nx3PpU', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 10),
	(19, 2, 'Randall Weber', 'ksmitham@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jtDz28SprN', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 7),
	(20, 2, 'Shaniya Hermann', 'brakus.elody@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'AibmHyt1PE', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 9),
	(21, 2, 'Prof. Christa Streich Sr.', 'deangelo35@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'CxLroL0A9V', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 15),
	(22, 2, 'Cora Stoltenberg', 'arnold.kunze@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '19kKZWLAXY', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 18),
	(23, 2, 'Dr. Idella Howell', 'gvonrueden@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'RYqAvOtusm', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 5),
	(24, 2, 'Jalon Wolf', 'jairo.osinski@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'NIUacUHD3G', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 13),
	(25, 2, 'Toby Purdy', 'vmetz@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'afBvdcJ0D7', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 13),
	(26, 2, 'Elroy Marquardt', 'maxine.rogahn@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'wyOjfY2ihr', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 14),
	(27, 2, 'Hugh Heathcote', 'pgaylord@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ANBX0BTaKd', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 19),
	(28, 2, 'Wallace Christiansen', 'twila.emmerich@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'IbxwslnrQF', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 4),
	(29, 2, 'Justen Schiller', 'volson@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'w8ezPCJjoq', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 13),
	(30, 2, 'Kenyon Zieme', 'carter10@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'E6GKpfGJ6h', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 2),
	(31, 2, 'Janie Kuhlman', 'kunze.andres@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '1zpY6qXtMI', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 17),
	(32, 2, 'Schuyler Carroll', 'gilda.kohler@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'uh7jn2rn8e', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 4),
	(33, 2, 'Delfina Lubowitz MD', 'schoen.isobel@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ouPCheIWis', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 19),
	(34, 2, 'Marta O\'Conner I', 'jmertz@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'x49F3GEWJa', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 1),
	(35, 2, 'Bret Greenholt', 'cgleichner@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '5TAQcTtehS', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 13),
	(36, 2, 'Meaghan Mitchell', 'gilberto26@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lIbuvSHyFb', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 12),
	(37, 2, 'Lila Rohan', 'ruthie25@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'XHXZbMrsJD', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 20),
	(38, 2, 'Chadrick Prosacco', 'ograham@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'd6l5FE58IM', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 16),
	(39, 2, 'Tamia Gorczany', 'wellington.flatley@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'DkvNHKDN3G', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 6),
	(40, 2, 'Itzel Hand III', 'ankunding.viviane@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'y14qMVNipz', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 2),
	(41, 2, 'Christelle Waters', 'malinda40@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'cXttgumgVb', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 4),
	(42, 2, 'Camylle Hoppe', 'justine08@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qojDwT1VY8', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 19),
	(43, 2, 'Alfonzo Turcotte', 'rwitting@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aMAvy94pO6', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 8),
	(44, 2, 'Judah Kunze', 'kyler.ferry@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'r12dg0IgdT', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 20),
	(45, 2, 'Mekhi Spinka DVM', 'ekeeling@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vltqEYZpq6', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 8),
	(46, 2, 'Lorena Botsford', 'bhammes@example.org', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'VfKHxxss0m', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 12),
	(47, 2, 'Arnaldo Dietrich', 'linnea59@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'joWqT5mAEO', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 19),
	(48, 2, 'Michael Schmitt II', 'boris.mcclure@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LkuqFVuDKM', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 19),
	(49, 2, 'Khalid Fay', 'sarai09@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'h6lJSIZges', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 11),
	(50, 2, 'Josianne Harvey', 'mwalker@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vKkr0jwZSb', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 1),
	(51, 2, 'Dangelo Goldner Jr.', 'felipe61@example.net', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'kZcy6zsILD', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 12),
	(52, 2, 'Prof. Garrick Koss Jr.', 'estefania.okeefe@example.com', 'users/default.png', '2022-02-20 23:03:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'DosvUawFsL', NULL, NULL, NULL, '2022-02-20 23:03:01', '2022-02-20 23:03:01', 12);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataruv2.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataruv2.user_roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
