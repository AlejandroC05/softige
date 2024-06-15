-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 15-06-2024 a las 05:06:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyect`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(191) DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Panel', 'icon-chart-bar', '/', NULL, NULL, '2024-06-09 19:50:20'),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Usuarios', 'icon-users', 'auth/users', NULL, NULL, '2024-06-09 19:51:44'),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permisos', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-06-09 19:52:04'),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Historial de operaciones', 'icon-history', 'auth/logs', NULL, NULL, '2024-06-09 19:57:43'),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-03-03 23:53:08', '2024-03-03 23:53:08'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-03-03 23:53:08', '2024-03-03 23:53:08'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-03-03 23:53:08', '2024-03-03 23:53:08'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-03-03 23:53:08', '2024-03-03 23:53:08'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-03-03 23:53:08', '2024-03-03 23:53:08'),
(13, 0, 11, 'Productos', 'icon-box-open', 'products', NULL, '2024-03-04 00:02:02', '2024-06-09 01:08:51'),
(18, 0, 11, 'Clientes', 'icon-hands-helping', 'clients', NULL, '2024-06-09 01:45:39', '2024-06-09 01:54:38'),
(20, 0, 11, 'Proveedores', 'icon-box', 'distributors', NULL, '2024-06-09 18:17:00', '2024-06-09 19:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(675, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"OpenAdmin_Admin_Auth_Database_OperationLog\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"674\",\"_token\":\"QYurAzMhZllL1pHyHQ3JpTGhWXJdAQWWSYzf5Kny\"}', '2024-06-08 20:06:02', '2024-06-08 20:06:02'),
(676, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:06', '2024-06-08 20:06:06'),
(677, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:09', '2024-06-08 20:06:09'),
(678, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:16', '2024-06-08 20:06:16'),
(679, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:20', '2024-06-08 20:06:20'),
(680, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:33', '2024-06-08 20:06:33'),
(681, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:40', '2024-06-08 20:06:40'),
(682, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-08 20:06:45', '2024-06-08 20:06:45'),
(683, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$cxjolf6TS\\/IQftuR66Pug.JLxaju\\/3mseiT69hGaxquc\\/qAqKbZxq\",\"_token\":\"QYurAzMhZllL1pHyHQ3JpTGhWXJdAQWWSYzf5Kny\",\"_method\":\"PUT\"}', '2024-06-08 20:07:27', '2024-06-08 20:07:27'),
(684, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-08 20:07:28', '2024-06-08 20:07:28'),
(685, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:07:35', '2024-06-08 20:07:35'),
(686, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-08 20:07:38', '2024-06-08 20:07:38'),
(687, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:08:02', '2024-06-08 20:08:02'),
(688, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:09:30', '2024-06-08 20:09:30'),
(689, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:09:32', '2024-06-08 20:09:32'),
(690, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:09:34', '2024-06-08 20:09:34'),
(691, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:12:21', '2024-06-08 20:12:21'),
(692, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:12:48', '2024-06-08 20:12:48'),
(693, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:15:31', '2024-06-08 20:15:31'),
(694, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:16:16', '2024-06-08 20:16:16'),
(695, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:17:05', '2024-06-08 20:17:05'),
(696, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-08 20:22:57', '2024-06-08 20:22:57'),
(697, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:23:07', '2024-06-08 20:23:07'),
(698, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:23:09', '2024-06-08 20:23:09'),
(699, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:52:25', '2024-06-08 20:52:25'),
(700, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 20:52:29', '2024-06-08 20:52:29'),
(701, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:52:30', '2024-06-08 20:52:30'),
(702, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-08 20:52:31', '2024-06-08 20:52:31'),
(703, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"7y492834\",\"price\":\"43\",\"stock\":\"45\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 20:52:49', '2024-06-08 20:52:49'),
(704, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:52:49', '2024-06-08 20:52:49'),
(705, 1, 'admin/products/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 20:52:59', '2024-06-08 20:52:59'),
(706, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-08 20:52:59', '2024-06-08 20:52:59'),
(707, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-08 20:53:47', '2024-06-08 20:53:47'),
(708, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Providers\",\"model_name\":\"App\\\\Models\\\\Provider\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProviderController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Nombres\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Direcci\\u00f3n\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Tel\\u00e9fono\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Correo\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Condici\\u00f3n de pago\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Estado de pago\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Precio\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Producto suministrado\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Notas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 20:59:47', '2024-06-08 20:59:47'),
(709, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-08 20:59:50', '2024-06-08 20:59:50'),
(710, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-08 20:59:54', '2024-06-08 20:59:54'),
(711, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 20:59:58', '2024-06-08 20:59:58'),
(712, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:00:02', '2024-06-08 21:00:02'),
(713, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"Juan Triana\",\"Direcci\\u00f3n\":\"Cra. 20 #3 Esquina\",\"Tel\\u00e9fono\":\"3123456789\",\"Correo\":\"triana@gmail.com\",\"Condici\\u00f3n_de_pago\":\"Contado\",\"Estado_de_pago\":\"Pendiente\",\"Precio\":\"1\'000.000\",\"Producto_suministrado\":\"Legumbres\",\"Notas\":\"El pago se hace cada que el proveedor entrega los productos, es decir, cada mes: el primer d\\u00eda de cada mes\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:02:03', '2024-06-08 21:02:03'),
(714, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:02:04', '2024-06-08 21:02:04'),
(715, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"Juan Triana\",\"Direcci\\u00f3n\":\"Cra. 20 #3 Esquina\",\"Tel\\u00e9fono\":\"3123456789\",\"Correo\":\"triana@gmail.com\",\"Condici\\u00f3n_de_pago\":\"Contado\",\"Estado_de_pago\":\"Pendiente\",\"Precio\":\"1\'000.000\",\"Producto_suministrado\":\"Legumbres\",\"Notas\":\"El pago se hace cada que el proveedor entrega los productos, es decir, cada mes: el primer d\\u00eda de cada mes\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:02:57', '2024-06-08 21:02:57'),
(716, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:02:58', '2024-06-08 21:02:58'),
(717, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:08:08', '2024-06-08 21:08:08'),
(718, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"Juan Triana\",\"Direcci\\u00f3n\":\"Cra. 20 #45-3 Esquina\",\"Tel\\u00e9fono\":\"3123456789\",\"Correo\":\"jjuan@gmail.com\",\"Condici\\u00f3n_de_pago\":\"Contado\",\"Estado_de_pago\":\"Pendiente\",\"Precio\":\"2\'300.000\",\"Producto_suministrado\":\"Legumbres\",\"Notas\":\"Se paga el primer d\\u00eda de cada mes\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:09:34', '2024-06-08 21:09:34'),
(719, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:09:35', '2024-06-08 21:09:35'),
(720, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"Juan Triana\",\"Direcci\\u00f3n\":\"Cra. 20 #45-3 Esquina\",\"Tel\\u00e9fono\":\"3123456789\",\"Correo\":\"jjuan@gmail.com\",\"Condici\\u00f3n_de_pago\":\"Contado\",\"Estado_de_pago\":\"Pendiente\",\"Precio\":\"2\'300.000\",\"Producto_suministrado\":\"Legumbres\",\"Notas\":\"Se paga el primer d\\u00eda de cada mes\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:12:25', '2024-06-08 21:12:25'),
(721, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:12:28', '2024-06-08 21:12:28'),
(722, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:12:36', '2024-06-08 21:12:36'),
(723, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"fghfgh\",\"Direcci\\u00f3n\":\"gfhfg\",\"Tel\\u00e9fono\":\"hfghfgh\",\"Correo\":\"fghfghfgh\",\"Condici\\u00f3n_de_pago\":\"fsfsdf\",\"Estado_de_pago\":\"sfsdh\",\"Precio\":\"fdgdfg\",\"Producto_suministrado\":\"hgfh\",\"Notas\":\"sfdsfsdf\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:12:49', '2024-06-08 21:12:49'),
(724, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:12:50', '2024-06-08 21:12:50'),
(725, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"fghfgh\",\"Direcci\\u00f3n\":\"gfhfg\",\"Tel\\u00e9fono\":\"hfghfgh\",\"Correo\":\"fghfghfgh\",\"Condici\\u00f3n_de_pago\":\"dfsf\",\"Estado_de_pago\":\"dsfsdf\",\"Precio\":\"fdgdfg\",\"Producto_suministrado\":\"sdfsdf\",\"Notas\":\"sfdsfsdf\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:14:18', '2024-06-08 21:14:18'),
(726, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:14:18', '2024-06-08 21:14:18'),
(727, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"fghfgh\",\"Direcci\\u00f3n\":\"gfhfg\",\"Tel\\u00e9fono\":\"hfghfgh\",\"Correo\":\"fghfghfgh\",\"Condici\\u00f3n_de_pago\":\"fghfgh\",\"Estado_de_pago\":\"fghgfhfg\",\"Precio\":\"fdgdfg\",\"Producto_suministrado\":\"hfghfgh\",\"Notas\":\"sfdsfsdf\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:21:21', '2024-06-08 21:21:21'),
(728, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:21:22', '2024-06-08 21:21:22'),
(729, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 21:21:53', '2024-06-08 21:21:53'),
(730, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"sdfsdf\",\"Direcci\\u00f3n\":\"dfssdfds\",\"Tel\\u00e9fono\":\"sdfsdggfd\",\"Correo\":\"gdfgdf\",\"Condici\\u00f3n_de_pago\":\"sdasd\",\"Estado_de_pago\":\"asdsgf\",\"Precio\":\"sdgsfsad\",\"Producto_suministrado\":\"aSAdasfs\",\"Notas\":\"gdfhj\",\"_token\":\"FrnUL9d0oM8dsmQ2yNcoXgXsssE7FWgGQZ70zKNw\"}', '2024-06-08 21:22:04', '2024-06-08 21:22:04'),
(731, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 21:22:05', '2024-06-08 21:22:05'),
(732, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-08 23:15:31', '2024-06-08 23:15:31'),
(733, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:15:40', '2024-06-08 23:15:40'),
(734, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:21:20', '2024-06-08 23:21:20'),
(735, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:21:45', '2024-06-08 23:21:45'),
(736, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:22:07', '2024-06-08 23:22:07'),
(737, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:22:32', '2024-06-08 23:22:32'),
(738, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:22:34', '2024-06-08 23:22:34'),
(739, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:22:38', '2024-06-08 23:22:38'),
(740, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:23:04', '2024-06-08 23:23:04'),
(741, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:23:07', '2024-06-08 23:23:07'),
(742, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:23:25', '2024-06-08 23:23:25'),
(743, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:23:28', '2024-06-08 23:23:28'),
(744, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:24:02', '2024-06-08 23:24:02'),
(745, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:24:07', '2024-06-08 23:24:07'),
(746, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-08 23:24:10', '2024-06-08 23:24:10'),
(747, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:24:17', '2024-06-08 23:24:17'),
(748, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:25:38', '2024-06-08 23:25:38'),
(749, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:25:41', '2024-06-08 23:25:41'),
(750, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:26:13', '2024-06-08 23:26:13'),
(751, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:27:25', '2024-06-08 23:27:25'),
(752, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:27:35', '2024-06-08 23:27:35'),
(753, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:29:58', '2024-06-08 23:29:58'),
(754, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:30:18', '2024-06-08 23:30:18'),
(755, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:30:21', '2024-06-08 23:30:21'),
(756, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 23:30:23', '2024-06-08 23:30:23'),
(757, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-08 23:30:27', '2024-06-08 23:30:27'),
(758, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:30:58', '2024-06-08 23:30:58'),
(759, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:31:43', '2024-06-08 23:31:43'),
(760, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:32:08', '2024-06-08 23:32:08'),
(761, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:33:33', '2024-06-08 23:33:33'),
(762, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:33:36', '2024-06-08 23:33:36'),
(763, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:34:08', '2024-06-08 23:34:08'),
(764, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:34:24', '2024-06-08 23:34:24'),
(765, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:35:54', '2024-06-08 23:35:54'),
(766, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:11', '2024-06-08 23:45:11'),
(767, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:19', '2024-06-08 23:45:19'),
(768, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:20', '2024-06-08 23:45:20'),
(769, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:21', '2024-06-08 23:45:21'),
(770, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:36', '2024-06-08 23:45:36'),
(771, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:37', '2024-06-08 23:45:37'),
(772, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:41', '2024-06-08 23:45:41'),
(773, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-06-08 23:45:52', '2024-06-08 23:45:52'),
(774, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT * FROM products;\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:46:09', '2024-06-08 23:46:09'),
(775, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-08 23:46:18', '2024-06-08 23:46:18'),
(776, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:46:22', '2024-06-08 23:46:22'),
(777, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 23:46:30', '2024-06-08 23:46:30'),
(778, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"wrser\",\"Direcci\\u00f3n\":\"seresr\",\"Tel\\u00e9fono\":\"serser\",\"Correo\":\"srsera\",\"Condici\\u00f3n_de_pago\":\"srsereawea2\",\"Estado_de_pago\":\"serserawe4w3r\",\"Precio\":\"serserssdg5\",\"Producto_suministrado\":\"saeaweawe\",\"Notas\":\"ersr\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:46:45', '2024-06-08 23:46:45'),
(779, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:46:45', '2024-06-08 23:46:45'),
(780, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Provider\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:47:16', '2024-06-08 23:47:16'),
(781, 1, 'admin/providers/1,2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:47:18', '2024-06-08 23:47:18'),
(782, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:47:19', '2024-06-08 23:47:19'),
(783, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:47:19', '2024-06-08 23:47:19'),
(784, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 23:47:21', '2024-06-08 23:47:21'),
(785, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"fsadfsd\",\"Direcci\\u00f3n\":\"fsdf\",\"Tel\\u00e9fono\":\"sdfsdf\",\"Correo\":\"dsfdsf\",\"Condici\\u00f3n_de_pago\":\"hoalsi\",\"Estado_de_pago\":\"gfuaw\",\"Precio\":\"sdfsd\",\"Producto_suministrado\":\"nada\",\"Notas\":\"sdfsdg\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:47:41', '2024-06-08 23:47:41'),
(786, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:47:41', '2024-06-08 23:47:41'),
(787, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:49:26', '2024-06-08 23:49:26'),
(788, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 23:49:28', '2024-06-08 23:49:28'),
(789, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"cyfty\",\"Direcci\\u00f3n\":\"ftyftdrt\",\"Tel\\u00e9fono\":\"tdrdt\",\"Correo\":\"drtdrt\",\"Condici\\u00f3n_de_pago\":\"tdr\",\"Estado_de_pago\":\"rts34\",\"Precio\":\"s4fssr\",\"Producto_suministrado\":\"se4se\",\"Notas\":\"frsst\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:49:46', '2024-06-08 23:49:46'),
(790, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 23:49:46', '2024-06-08 23:49:46'),
(791, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"cyfty\",\"Direcci\\u00f3n\":\"ftyftdrt\",\"Tel\\u00e9fono\":\"tdrdt\",\"Correo\":\"drtdrt\",\"Condici\\u00f3n_de_pago\":\"a4aaaaaaaad\",\"Estado_de_pago\":\"a23aad\",\"Precio\":\"s4fssr\",\"Producto_suministrado\":\"stsdtdtd\",\"Notas\":\"frsst\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:52:46', '2024-06-08 23:52:46'),
(792, 1, 'admin/providers/create', 'GET', '127.0.0.1', '[]', '2024-06-08 23:52:46', '2024-06-08 23:52:46'),
(793, 1, 'admin/providers', 'POST', '127.0.0.1', '{\"Nombres\":\"Juan Daniel\",\"Direcci\\u00f3n\":\"#34 Barrio\",\"Tel\\u00e9fono\":\"3123456789\",\"Correo\":\"daniel@gmail.com\",\"Condici\\u00f3n_de_pago\":\"Contado\",\"Estado_de_pago\":\"Pendiente\",\"Precio\":\"280,000\",\"Producto_suministrado\":\"Legumbres\",\"Notas\":\"frsst\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:55:55', '2024-06-08 23:55:55'),
(794, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:55:55', '2024-06-08 23:55:55'),
(795, 1, 'admin/providers/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"zAqlzooTAEnVuFjGOdKUTGCnUleVV57EGjrxIIK1\"}', '2024-06-08 23:56:05', '2024-06-08 23:56:05'),
(796, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:56:05', '2024-06-08 23:56:05'),
(797, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:59:02', '2024-06-08 23:59:02'),
(798, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-08 23:59:05', '2024-06-08 23:59:05'),
(799, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:07', '2024-06-09 00:06:07'),
(800, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:13', '2024-06-09 00:06:13'),
(801, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:13', '2024-06-09 00:06:13'),
(802, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:14', '2024-06-09 00:06:14'),
(803, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:14', '2024-06-09 00:06:14'),
(804, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:15', '2024-06-09 00:06:15'),
(805, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:15', '2024-06-09 00:06:15'),
(806, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:16', '2024-06-09 00:06:16'),
(807, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:16', '2024-06-09 00:06:16'),
(808, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:17', '2024-06-09 00:06:17'),
(809, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:18', '2024-06-09 00:06:18'),
(810, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:18', '2024-06-09 00:06:18'),
(811, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:19', '2024-06-09 00:06:19'),
(812, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:19', '2024-06-09 00:06:19'),
(813, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:20', '2024-06-09 00:06:20'),
(814, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:20', '2024-06-09 00:06:20'),
(815, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:21', '2024-06-09 00:06:21'),
(816, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:22', '2024-06-09 00:06:22'),
(817, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:22', '2024-06-09 00:06:22'),
(818, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:23', '2024-06-09 00:06:23'),
(819, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:23', '2024-06-09 00:06:23'),
(820, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:24', '2024-06-09 00:06:24'),
(821, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:29', '2024-06-09 00:06:29'),
(822, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:30', '2024-06-09 00:06:30'),
(823, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:30', '2024-06-09 00:06:30'),
(824, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:31', '2024-06-09 00:06:31'),
(825, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:32', '2024-06-09 00:06:32'),
(826, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:32', '2024-06-09 00:06:32'),
(827, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:33', '2024-06-09 00:06:33'),
(828, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:33', '2024-06-09 00:06:33'),
(829, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:34', '2024-06-09 00:06:34'),
(830, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:34', '2024-06-09 00:06:34'),
(831, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:35', '2024-06-09 00:06:35'),
(832, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:35', '2024-06-09 00:06:35'),
(833, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:36', '2024-06-09 00:06:36'),
(834, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:37', '2024-06-09 00:06:37'),
(835, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:37', '2024-06-09 00:06:37'),
(836, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:38', '2024-06-09 00:06:38'),
(837, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:38', '2024-06-09 00:06:38'),
(838, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:39', '2024-06-09 00:06:39'),
(839, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:39', '2024-06-09 00:06:39'),
(840, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:40', '2024-06-09 00:06:40'),
(841, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:40', '2024-06-09 00:06:40'),
(842, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:06:44', '2024-06-09 00:06:44'),
(843, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:43', '2024-06-09 00:07:43'),
(844, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:44', '2024-06-09 00:07:44'),
(845, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:46', '2024-06-09 00:07:46'),
(846, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:47', '2024-06-09 00:07:47'),
(847, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:47', '2024-06-09 00:07:47'),
(848, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:48', '2024-06-09 00:07:48'),
(849, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:48', '2024-06-09 00:07:48'),
(850, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:49', '2024-06-09 00:07:49'),
(851, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:50', '2024-06-09 00:07:50'),
(852, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:50', '2024-06-09 00:07:50'),
(853, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:50', '2024-06-09 00:07:50'),
(854, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:51', '2024-06-09 00:07:51'),
(855, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:51', '2024-06-09 00:07:51'),
(856, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:52', '2024-06-09 00:07:52'),
(857, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:52', '2024-06-09 00:07:52'),
(858, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:53', '2024-06-09 00:07:53'),
(859, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:53', '2024-06-09 00:07:53'),
(860, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:54', '2024-06-09 00:07:54'),
(861, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:55', '2024-06-09 00:07:55'),
(862, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:55', '2024-06-09 00:07:55'),
(863, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:56', '2024-06-09 00:07:56'),
(864, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:56', '2024-06-09 00:07:56'),
(865, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:57', '2024-06-09 00:07:57'),
(866, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:57', '2024-06-09 00:07:57'),
(867, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:58', '2024-06-09 00:07:58'),
(868, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:58', '2024-06-09 00:07:58'),
(869, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:58', '2024-06-09 00:07:58'),
(870, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:07:59', '2024-06-09 00:07:59'),
(871, 1, 'admin/providers', 'GET', '127.0.0.1', '[]', '2024-06-09 00:08:00', '2024-06-09 00:08:00'),
(872, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:08:00', '2024-06-09 00:08:00'),
(873, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:08:02', '2024-06-09 00:08:02'),
(874, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-09 00:08:04', '2024-06-09 00:08:04'),
(875, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:08:07', '2024-06-09 00:08:07'),
(876, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:08:08', '2024-06-09 00:08:08'),
(877, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:14:37', '2024-06-09 00:14:37'),
(878, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:14:39', '2024-06-09 00:14:39'),
(879, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:14:41', '2024-06-09 00:14:41'),
(880, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:14:51', '2024-06-09 00:14:51'),
(881, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:15:20', '2024-06-09 00:15:20'),
(882, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:22:29', '2024-06-09 00:22:29'),
(883, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:29:01', '2024-06-09 00:29:01'),
(884, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:29:05', '2024-06-09 00:29:05'),
(885, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:29:25', '2024-06-09 00:29:25'),
(886, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:36:46', '2024-06-09 00:36:46'),
(887, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:36:47', '2024-06-09 00:36:47'),
(888, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:37:03', '2024-06-09 00:37:03'),
(889, 1, 'admin/auth/menu/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 00:37:10', '2024-06-09 00:37:10'),
(890, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:37:11', '2024-06-09 00:37:11'),
(891, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:37:14', '2024-06-09 00:37:14'),
(892, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:37:44', '2024-06-09 00:37:44'),
(893, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:37:54', '2024-06-09 00:37:54'),
(894, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:38:30', '2024-06-09 00:38:30'),
(895, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-06-09 00:38:31', '2024-06-09 00:38:31'),
(896, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-06-09 00:38:34', '2024-06-09 00:38:34'),
(897, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-06-09 00:38:35', '2024-06-09 00:38:35'),
(898, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-09 00:38:50', '2024-06-09 00:38:50'),
(899, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-09 00:38:53', '2024-06-09 00:38:53'),
(900, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:41:05', '2024-06-09 00:41:05'),
(901, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:48:58', '2024-06-09 00:48:58'),
(902, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Provider\",\"model_name\":\"App\\\\Models\\\\Providers\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProvidersController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Nombres\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Direccion\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Correo\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Tel\\u00e9fono\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Pago\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Estado\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Precio\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Notas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 00:50:12', '2024-06-09 00:50:12'),
(903, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:50:14', '2024-06-09 00:50:14'),
(904, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:50:18', '2024-06-09 00:50:18'),
(905, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 00:51:09', '2024-06-09 00:51:09'),
(906, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 00:53:03', '2024-06-09 00:53:03'),
(907, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:53:11', '2024-06-09 00:53:11'),
(908, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:53:16', '2024-06-09 00:53:16'),
(909, 1, 'admin/auth/menu/15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 00:53:19', '2024-06-09 00:53:19'),
(910, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:53:20', '2024-06-09 00:53:20'),
(911, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 00:53:23', '2024-06-09 00:53:23'),
(912, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:54:37', '2024-06-09 00:54:37'),
(913, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Providers\",\"model_name\":\"App\\\\Models\\\\Provider\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProviderController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"Nombres\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"Direccion\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"Correo\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"Telefono\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"Pago\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"Estado\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"Notas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 00:56:07', '2024-06-09 00:56:07'),
(914, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:56:09', '2024-06-09 00:56:09'),
(915, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:56:14', '2024-06-09 00:56:14'),
(916, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 00:56:18', '2024-06-09 00:56:18'),
(917, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 00:57:51', '2024-06-09 00:57:51'),
(918, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 01:00:35', '2024-06-09 01:00:35'),
(919, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Clients\",\"model_name\":\"App\\\\Models\\\\Client\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ClientController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Nombre\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Direcci\\u00f3n\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Telefono\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Notas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 01:03:34', '2024-06-09 01:03:34'),
(920, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 01:03:35', '2024-06-09 01:03:35'),
(921, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:03:38', '2024-06-09 01:03:38'),
(922, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:03:41', '2024-06-09 01:03:41'),
(923, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 01:03:45', '2024-06-09 01:03:45'),
(924, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 01:03:50', '2024-06-09 01:03:50'),
(925, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:05:23', '2024-06-09 01:05:23'),
(926, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 01:05:28', '2024-06-09 01:05:28'),
(927, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:05:44', '2024-06-09 01:05:44'),
(928, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 01:05:48', '2024-06-09 01:05:48'),
(929, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:05:48', '2024-06-09 01:05:48'),
(930, 1, 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 01:05:51', '2024-06-09 01:05:51'),
(931, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:05:52', '2024-06-09 01:05:52'),
(932, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:05:54', '2024-06-09 01:05:54'),
(933, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 01:06:29', '2024-06-09 01:06:29'),
(934, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:07:33', '2024-06-09 01:07:33'),
(935, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 01:07:35', '2024-06-09 01:07:35'),
(936, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Productos\",\"icon\":\"icon-box-open\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\",\"_method\":\"PUT\"}', '2024-06-09 01:08:51', '2024-06-09 01:08:51'),
(937, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:08:52', '2024-06-09 01:08:52'),
(938, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:08:59', '2024-06-09 01:08:59'),
(939, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:09:00', '2024-06-09 01:09:00'),
(940, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:09:02', '2024-06-09 01:09:02'),
(941, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:09:05', '2024-06-09 01:09:05'),
(942, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:09:06', '2024-06-09 01:09:06'),
(943, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:09:08', '2024-06-09 01:09:08'),
(944, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:16:16', '2024-06-09 01:16:16'),
(945, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:21:32', '2024-06-09 01:21:32'),
(946, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:21:34', '2024-06-09 01:21:34'),
(947, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:21:36', '2024-06-09 01:21:36'),
(948, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 01:21:43', '2024-06-09 01:21:43'),
(949, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:21:45', '2024-06-09 01:21:45'),
(950, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:25:04', '2024-06-09 01:25:04'),
(951, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:25:12', '2024-06-09 01:25:12'),
(952, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:28:15', '2024-06-09 01:28:15'),
(953, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:28:49', '2024-06-09 01:28:49'),
(954, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:29:31', '2024-06-09 01:29:31'),
(955, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:31:40', '2024-06-09 01:31:40'),
(956, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:31:42', '2024-06-09 01:31:42'),
(957, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:31:58', '2024-06-09 01:31:58'),
(958, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:32:09', '2024-06-09 01:32:09'),
(959, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:32:11', '2024-06-09 01:32:11'),
(960, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 01:32:56', '2024-06-09 01:32:56'),
(961, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-09 01:32:58', '2024-06-09 01:32:58'),
(962, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-09 01:32:59', '2024-06-09 01:32:59'),
(963, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:01', '2024-06-09 01:33:01'),
(964, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:14', '2024-06-09 01:33:14'),
(965, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:19', '2024-06-09 01:33:19'),
(966, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:23', '2024-06-09 01:33:23'),
(967, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:28', '2024-06-09 01:33:28'),
(968, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:29', '2024-06-09 01:33:29'),
(969, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:33:39', '2024-06-09 01:33:39'),
(970, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:34:36', '2024-06-09 01:34:36'),
(971, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:34:55', '2024-06-09 01:34:55'),
(972, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:36:04', '2024-06-09 01:36:04'),
(973, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 01:36:09', '2024-06-09 01:36:09'),
(974, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 01:36:58', '2024-06-09 01:36:58'),
(975, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Clientes\",\"model_name\":\"App\\\\Models\\\\Client\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ClientController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"Nombre\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"Tel\\u00e9fono\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"Direccion\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"Pago\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"Estado\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"Categor\\u00eda\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"Comentarios\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 01:45:39', '2024-06-09 01:45:39'),
(976, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 01:45:40', '2024-06-09 01:45:40'),
(977, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:45:43', '2024-06-09 01:45:43'),
(978, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:45:44', '2024-06-09 01:45:44'),
(979, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 01:45:46', '2024-06-09 01:45:46'),
(980, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:45:51', '2024-06-09 01:45:51'),
(981, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 01:45:54', '2024-06-09 01:45:54'),
(982, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Clients\",\"icon\":\"icon-hands-helping\",\"uri\":\"clients\",\"roles\":[null],\"permission\":null,\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\",\"_method\":\"PUT\"}', '2024-06-09 01:47:56', '2024-06-09 01:47:56'),
(983, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:47:56', '2024-06-09 01:47:56'),
(984, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:48:00', '2024-06-09 01:48:00'),
(985, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:54:32', '2024-06-09 01:54:32'),
(986, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 01:54:34', '2024-06-09 01:54:34'),
(987, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Clientes\",\"icon\":\"icon-hands-helping\",\"uri\":\"clients\",\"roles\":[null],\"permission\":null,\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\",\"_method\":\"PUT\"}', '2024-06-09 01:54:38', '2024-06-09 01:54:38'),
(988, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 01:54:39', '2024-06-09 01:54:39'),
(989, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 01:54:42', '2024-06-09 01:54:42'),
(990, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 02:11:25', '2024-06-09 02:11:25'),
(991, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 02:11:27', '2024-06-09 02:11:27'),
(992, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 02:11:30', '2024-06-09 02:11:30'),
(993, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Proveedores\",\"model_name\":\"App\\\\Models\\\\Provider\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProviderController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"Nombre\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"Correo\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"Tel\\u00e9fono\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"Direcci\\u00f3n\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"Pago\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"Estado\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"Productos\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"Notas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 02:14:27', '2024-06-09 02:14:27'),
(994, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 02:14:28', '2024-06-09 02:14:28'),
(995, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 02:14:31', '2024-06-09 02:14:31'),
(996, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 02:14:32', '2024-06-09 02:14:32'),
(997, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 02:14:45', '2024-06-09 02:14:45'),
(998, 1, 'admin/auth/menu/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 02:14:48', '2024-06-09 02:14:48'),
(999, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 02:14:48', '2024-06-09 02:14:48'),
(1000, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 02:14:56', '2024-06-09 02:14:56'),
(1001, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 02:15:00', '2024-06-09 02:15:00'),
(1002, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-09 02:15:01', '2024-06-09 02:15:01'),
(1003, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"Nombre\":\"Juan\",\"Tel\\u00e9fono\":\"3124827792\",\"Direccion\":\"Cra 20. #4\",\"Pago\":\"Contado\",\"Estado\":\"Pagado\",\"Categor\\u00eda\":\"Mayorista\",\"Comentarios\":\"Ninguno\",\"_token\":\"xdDkz20S7UHDdcxwVDvZrbeTMHZr1MQN6tspbfTh\"}', '2024-06-09 02:15:51', '2024-06-09 02:15:51'),
(1004, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 02:15:51', '2024-06-09 02:15:51'),
(1005, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 02:19:28', '2024-06-09 02:19:28'),
(1006, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 02:24:25', '2024-06-09 02:24:25'),
(1007, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 02:24:31', '2024-06-09 02:24:31'),
(1008, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-09 02:34:16', '2024-06-09 02:34:16'),
(1009, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 02:34:41', '2024-06-09 02:34:41'),
(1010, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 02:36:27', '2024-06-09 02:36:27'),
(1011, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 02:36:39', '2024-06-09 02:36:39'),
(1012, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 02:36:42', '2024-06-09 02:36:42'),
(1013, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 17:57:52', '2024-06-09 17:57:52'),
(1014, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 17:58:15', '2024-06-09 17:58:15'),
(1015, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-09 17:58:28', '2024-06-09 17:58:28'),
(1016, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"Nombre\":\"Armando Paredes\",\"Tel\\u00e9fono\":\"3120985564\",\"Direccion\":\"Clle. 3a Sur #19-42\",\"Pago\":\"Contado\",\"Estado\":\"Pendiente\",\"Categor\\u00eda\":\"Minorista\",\"Comentarios\":\"El valor es de 300,000 COP\",\"_token\":\"F8bH38ds5OgmQJ3KsDMtr64HEvPBaUVqqwM2F844\"}', '2024-06-09 18:00:12', '2024-06-09 18:00:12'),
(1017, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:00:13', '2024-06-09 18:00:13'),
(1018, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 18:00:22', '2024-06-09 18:00:22'),
(1019, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"Nombre\":\"Juan Mart\\u00ednez\",\"Tel\\u00e9fono\":\"3124827792\",\"Direccion\":\"Cra 20. #4\",\"Pago\":\"Contado\",\"Estado\":\"Pagado\",\"Categor\\u00eda\":\"Mayorista\",\"Comentarios\":\"Ninguno\",\"_token\":\"F8bH38ds5OgmQJ3KsDMtr64HEvPBaUVqqwM2F844\",\"_method\":\"PUT\"}', '2024-06-09 18:00:45', '2024-06-09 18:00:45'),
(1020, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:00:46', '2024-06-09 18:00:46'),
(1021, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:00:56', '2024-06-09 18:00:56'),
(1022, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:08', '2024-06-09 18:01:08'),
(1023, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:15', '2024-06-09 18:01:15'),
(1024, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:29', '2024-06-09 18:01:29'),
(1025, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:35', '2024-06-09 18:01:35'),
(1026, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:37', '2024-06-09 18:01:37'),
(1027, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:38', '2024-06-09 18:01:38'),
(1028, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-09 18:01:39', '2024-06-09 18:01:39'),
(1029, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-09 18:04:01', '2024-06-09 18:04:01'),
(1030, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Manzana roja, unidad\",\"price\":\"1000\",\"stock\":\"80\",\"_token\":\"F8bH38ds5OgmQJ3KsDMtr64HEvPBaUVqqwM2F844\"}', '2024-06-09 18:04:39', '2024-06-09 18:04:39'),
(1031, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:04:40', '2024-06-09 18:04:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1032, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 18:12:46', '2024-06-09 18:12:46'),
(1033, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Distribuidor\",\"model_name\":\"App\\\\Models\\\\Distributor\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DistributorController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Nombres\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Direccion\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Producto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Telefono\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Correo\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Pago\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Estado\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Notas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"F8bH38ds5OgmQJ3KsDMtr64HEvPBaUVqqwM2F844\"}', '2024-06-09 18:16:57', '2024-06-09 18:16:57'),
(1034, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 18:17:07', '2024-06-09 18:17:07'),
(1035, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 18:17:37', '2024-06-09 18:17:37'),
(1036, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:17:49', '2024-06-09 18:17:49'),
(1037, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:09', '2024-06-09 18:35:09'),
(1038, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:11', '2024-06-09 18:35:11'),
(1039, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:12', '2024-06-09 18:35:12'),
(1040, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:12', '2024-06-09 18:35:12'),
(1041, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:13', '2024-06-09 18:35:13'),
(1042, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:13', '2024-06-09 18:35:13'),
(1043, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:13', '2024-06-09 18:35:13'),
(1044, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:16', '2024-06-09 18:35:16'),
(1045, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:18', '2024-06-09 18:35:18'),
(1046, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:21', '2024-06-09 18:35:21'),
(1047, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:23', '2024-06-09 18:35:23'),
(1048, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 18:35:48', '2024-06-09 18:35:48'),
(1049, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:36:05', '2024-06-09 18:36:05'),
(1050, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:36:06', '2024-06-09 18:36:06'),
(1051, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-09 18:36:09', '2024-06-09 18:36:09'),
(1052, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 18:37:16', '2024-06-09 18:37:16'),
(1053, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:37:22', '2024-06-09 18:37:22'),
(1054, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 18:37:25', '2024-06-09 18:37:25'),
(1055, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 18:38:39', '2024-06-09 18:38:39'),
(1056, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 18:41:32', '2024-06-09 18:41:32'),
(1057, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:41:39', '2024-06-09 18:41:39'),
(1058, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:42:50', '2024-06-09 18:42:50'),
(1059, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 18:43:16', '2024-06-09 18:43:16'),
(1060, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:16', '2024-06-09 19:27:16'),
(1061, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:21', '2024-06-09 19:27:21'),
(1062, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:25', '2024-06-09 19:27:25'),
(1063, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:33', '2024-06-09 19:27:33'),
(1064, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:51', '2024-06-09 19:27:51'),
(1065, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:53', '2024-06-09 19:27:53'),
(1066, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:54', '2024-06-09 19:27:54'),
(1067, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:56', '2024-06-09 19:27:56'),
(1068, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:58', '2024-06-09 19:27:58'),
(1069, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:27:59', '2024-06-09 19:27:59'),
(1070, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:00', '2024-06-09 19:28:00'),
(1071, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:00', '2024-06-09 19:28:00'),
(1072, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:01', '2024-06-09 19:28:01'),
(1073, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:01', '2024-06-09 19:28:01'),
(1074, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:02', '2024-06-09 19:28:02'),
(1075, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:02', '2024-06-09 19:28:02'),
(1076, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:03', '2024-06-09 19:28:03'),
(1077, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:04', '2024-06-09 19:28:04'),
(1078, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:04', '2024-06-09 19:28:04'),
(1079, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:05', '2024-06-09 19:28:05'),
(1080, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:05', '2024-06-09 19:28:05'),
(1081, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:06', '2024-06-09 19:28:06'),
(1082, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:06', '2024-06-09 19:28:06'),
(1083, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:07', '2024-06-09 19:28:07'),
(1084, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:08', '2024-06-09 19:28:08'),
(1085, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:08', '2024-06-09 19:28:08'),
(1086, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:09', '2024-06-09 19:28:09'),
(1087, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:09', '2024-06-09 19:28:09'),
(1088, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:16', '2024-06-09 19:28:16'),
(1089, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:17', '2024-06-09 19:28:17'),
(1090, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:17', '2024-06-09 19:28:17'),
(1091, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:18', '2024-06-09 19:28:18'),
(1092, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:19', '2024-06-09 19:28:19'),
(1093, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:19', '2024-06-09 19:28:19'),
(1094, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:20', '2024-06-09 19:28:20'),
(1095, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:20', '2024-06-09 19:28:20'),
(1096, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:21', '2024-06-09 19:28:21'),
(1097, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:22', '2024-06-09 19:28:22'),
(1098, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:22', '2024-06-09 19:28:22'),
(1099, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:23', '2024-06-09 19:28:23'),
(1100, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:23', '2024-06-09 19:28:23'),
(1101, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:24', '2024-06-09 19:28:24'),
(1102, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:24', '2024-06-09 19:28:24'),
(1103, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:25', '2024-06-09 19:28:25'),
(1104, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:26', '2024-06-09 19:28:26'),
(1105, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:26', '2024-06-09 19:28:26'),
(1106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:31', '2024-06-09 19:28:31'),
(1107, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:33', '2024-06-09 19:28:33'),
(1108, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:36', '2024-06-09 19:28:36'),
(1109, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:37', '2024-06-09 19:28:37'),
(1110, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:28:38', '2024-06-09 19:28:38'),
(1111, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:29:15', '2024-06-09 19:29:15'),
(1112, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 19:29:18', '2024-06-09 19:29:18'),
(1113, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Proveedores\",\"icon\":\"icon-box\",\"uri\":\"distributors\",\"roles\":[null],\"permission\":null,\"_token\":\"HlB0EE2kzFlcTGJ8hzbce0CAh3TvXmur1FfOewfU\",\"_method\":\"PUT\"}', '2024-06-09 19:32:31', '2024-06-09 19:32:31'),
(1114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:32:32', '2024-06-09 19:32:32'),
(1115, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:32:36', '2024-06-09 19:32:36'),
(1116, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:32:39', '2024-06-09 19:32:39'),
(1117, 1, 'admin/distributors', 'GET', '127.0.0.1', '{\"_columns_\":\"Correo,Direccion,Estado,Nombres,Notas,Pago,Producto,Telefono,id\"}', '2024-06-09 19:33:00', '2024-06-09 19:33:00'),
(1118, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:33:08', '2024-06-09 19:33:08'),
(1119, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:33:49', '2024-06-09 19:33:49'),
(1120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:34:15', '2024-06-09 19:34:15'),
(1121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:36:56', '2024-06-09 19:36:56'),
(1122, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:37:45', '2024-06-09 19:37:45'),
(1123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:38:01', '2024-06-09 19:38:01'),
(1124, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:38:03', '2024-06-09 19:38:03'),
(1125, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:38:03', '2024-06-09 19:38:03'),
(1126, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:38:14', '2024-06-09 19:38:14'),
(1127, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-09 19:38:22', '2024-06-09 19:38:22'),
(1128, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:38:30', '2024-06-09 19:38:30'),
(1129, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:40:11', '2024-06-09 19:40:11'),
(1130, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:42:16', '2024-06-09 19:42:16'),
(1131, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:42:25', '2024-06-09 19:42:25'),
(1132, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:42:30', '2024-06-09 19:42:30'),
(1133, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:42:43', '2024-06-09 19:42:43'),
(1134, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:43:34', '2024-06-09 19:43:34'),
(1135, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:43:58', '2024-06-09 19:43:58'),
(1136, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:44:43', '2024-06-09 19:44:43'),
(1137, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:44:56', '2024-06-09 19:44:56'),
(1138, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:45:24', '2024-06-09 19:45:24'),
(1139, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:45:38', '2024-06-09 19:45:38'),
(1140, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:46:27', '2024-06-09 19:46:27'),
(1141, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:47:08', '2024-06-09 19:47:08'),
(1142, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:47:16', '2024-06-09 19:47:16'),
(1143, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:47:27', '2024-06-09 19:47:27'),
(1144, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:47:40', '2024-06-09 19:47:40'),
(1145, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-09 19:47:58', '2024-06-09 19:47:58'),
(1146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:48:51', '2024-06-09 19:48:51'),
(1147, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 19:49:01', '2024-06-09 19:49:01'),
(1148, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Panel\",\"icon\":\"icon-chart-bar\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"HlB0EE2kzFlcTGJ8hzbce0CAh3TvXmur1FfOewfU\",\"_method\":\"PUT\"}', '2024-06-09 19:50:20', '2024-06-09 19:50:20'),
(1149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:50:21', '2024-06-09 19:50:21'),
(1150, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:50:23', '2024-06-09 19:50:23'),
(1151, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:50:30', '2024-06-09 19:50:30'),
(1152, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:51:27', '2024-06-09 19:51:27'),
(1153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:51:30', '2024-06-09 19:51:30'),
(1154, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 19:51:33', '2024-06-09 19:51:33'),
(1155, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"title\":\"Usuarios\",\"icon\":\"icon-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"HlB0EE2kzFlcTGJ8hzbce0CAh3TvXmur1FfOewfU\",\"_method\":\"PUT\"}', '2024-06-09 19:51:44', '2024-06-09 19:51:44'),
(1156, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:51:45', '2024-06-09 19:51:45'),
(1157, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 19:51:51', '2024-06-09 19:51:51'),
(1158, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"title\":\"Permisos\",\"icon\":\"icon-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"HlB0EE2kzFlcTGJ8hzbce0CAh3TvXmur1FfOewfU\",\"_method\":\"PUT\"}', '2024-06-09 19:52:04', '2024-06-09 19:52:04'),
(1159, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:52:05', '2024-06-09 19:52:05'),
(1160, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 19:54:24', '2024-06-09 19:54:24'),
(1161, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"title\":\"Historial de operaciones\",\"icon\":\"icon-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"HlB0EE2kzFlcTGJ8hzbce0CAh3TvXmur1FfOewfU\",\"_method\":\"PUT\"}', '2024-06-09 19:57:43', '2024-06-09 19:57:43'),
(1162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:57:43', '2024-06-09 19:57:43'),
(1163, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 19:57:47', '2024-06-09 19:57:47'),
(1164, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:57:54', '2024-06-09 19:57:54'),
(1165, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 19:57:57', '2024-06-09 19:57:57'),
(1166, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 19:58:03', '2024-06-09 19:58:03'),
(1167, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-09 19:59:21', '2024-06-09 19:59:21'),
(1168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 00:47:06', '2024-06-10 00:47:06'),
(1169, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 00:47:10', '2024-06-10 00:47:10'),
(1170, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 00:47:11', '2024-06-10 00:47:11'),
(1171, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:47:15', '2024-06-10 00:47:15'),
(1172, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:49:29', '2024-06-10 00:49:29'),
(1173, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:50:18', '2024-06-10 00:50:18'),
(1174, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:51:14', '2024-06-10 00:51:14'),
(1175, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:52:58', '2024-06-10 00:52:58'),
(1176, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:54:55', '2024-06-10 00:54:55'),
(1177, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:55:29', '2024-06-10 00:55:29'),
(1178, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:55:41', '2024-06-10 00:55:41'),
(1179, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:55:57', '2024-06-10 00:55:57'),
(1180, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:56:46', '2024-06-10 00:56:46'),
(1181, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:57:34', '2024-06-10 00:57:34'),
(1182, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:57:48', '2024-06-10 00:57:48'),
(1183, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:57:57', '2024-06-10 00:57:57'),
(1184, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:59:02', '2024-06-10 00:59:02'),
(1185, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:59:19', '2024-06-10 00:59:19'),
(1186, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 00:59:54', '2024-06-10 00:59:54'),
(1187, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:00:13', '2024-06-10 01:00:13'),
(1188, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:00:47', '2024-06-10 01:00:47'),
(1189, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:01:07', '2024-06-10 01:01:07'),
(1190, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:01:24', '2024-06-10 01:01:24'),
(1191, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:01:51', '2024-06-10 01:01:51'),
(1192, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:03:27', '2024-06-10 01:03:27'),
(1193, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:06:22', '2024-06-10 01:06:22'),
(1194, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:06:53', '2024-06-10 01:06:53'),
(1195, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:11:16', '2024-06-10 01:11:16'),
(1196, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:11:24', '2024-06-10 01:11:24'),
(1197, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:13:57', '2024-06-10 01:13:57'),
(1198, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:15:39', '2024-06-10 01:15:39'),
(1199, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:16:12', '2024-06-10 01:16:12'),
(1200, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrador\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$cxjolf6TS\\/IQftuR66Pug.JLxaju\\/3mseiT69hGaxquc\\/qAqKbZxq\",\"_token\":\"4XgXVT3OMgCgBFD6EN3bjUbsmBA7ISdGEu0tw0v5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2024-06-10 01:16:41', '2024-06-10 01:16:41'),
(1201, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:16:41', '2024-06-10 01:16:41'),
(1202, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:16:47', '2024-06-10 01:16:47'),
(1203, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:16:50', '2024-06-10 01:16:50'),
(1204, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 01:16:52', '2024-06-10 01:16:52'),
(1205, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 01:17:14', '2024-06-10 01:17:14'),
(1206, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 01:17:58', '2024-06-10 01:17:58'),
(1207, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:17:59', '2024-06-10 01:17:59'),
(1208, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:18:11', '2024-06-10 01:18:11'),
(1209, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:18:12', '2024-06-10 01:18:12'),
(1210, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:18:45', '2024-06-10 01:18:45'),
(1211, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:18:46', '2024-06-10 01:18:46'),
(1212, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:20:16', '2024-06-10 01:20:16'),
(1213, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-06-10 01:20:24', '2024-06-10 01:20:24'),
(1214, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2024-06-10 01:20:29', '2024-06-10 01:20:29'),
(1215, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:21:01', '2024-06-10 01:21:01'),
(1216, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-10 01:21:06', '2024-06-10 01:21:06'),
(1217, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-10 01:21:16', '2024-06-10 01:21:16'),
(1218, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 01:21:27', '2024-06-10 01:21:27'),
(1219, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:21:58', '2024-06-10 01:21:58'),
(1220, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-10 01:22:01', '2024-06-10 01:22:01'),
(1221, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:22:10', '2024-06-10 01:22:10'),
(1222, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:22:53', '2024-06-10 01:22:53'),
(1223, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-10 01:22:56', '2024-06-10 01:22:56'),
(1224, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:12', '2024-06-10 01:23:12'),
(1225, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:21', '2024-06-10 01:23:21'),
(1226, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:26', '2024-06-10 01:23:26'),
(1227, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:43', '2024-06-10 01:23:43'),
(1228, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:48', '2024-06-10 01:23:48'),
(1229, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:51', '2024-06-10 01:23:51'),
(1230, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:23:54', '2024-06-10 01:23:54'),
(1231, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:25:04', '2024-06-10 01:25:04'),
(1232, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:25:46', '2024-06-10 01:25:46'),
(1233, 1, 'admin/products/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4XgXVT3OMgCgBFD6EN3bjUbsmBA7ISdGEu0tw0v5\"}', '2024-06-10 01:26:00', '2024-06-10 01:26:00'),
(1234, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:26:00', '2024-06-10 01:26:00'),
(1235, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-10 01:26:09', '2024-06-10 01:26:09'),
(1236, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Manzana roja, unidad\",\"price\":\"2340\",\"stock\":\"23\",\"_token\":\"4XgXVT3OMgCgBFD6EN3bjUbsmBA7ISdGEu0tw0v5\"}', '2024-06-10 01:26:45', '2024-06-10 01:26:45'),
(1237, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:26:45', '2024-06-10 01:26:45'),
(1238, 1, 'admin/products/22/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 01:26:56', '2024-06-10 01:26:56'),
(1239, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:05', '2024-06-10 01:27:05'),
(1240, 1, 'admin/products/22', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:07', '2024-06-10 01:27:07'),
(1241, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:12', '2024-06-10 01:27:12'),
(1242, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:24', '2024-06-10 01:27:24'),
(1243, 1, 'admin/products/22', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:26', '2024-06-10 01:27:26'),
(1244, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:29', '2024-06-10 01:27:29'),
(1245, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:34', '2024-06-10 01:27:34'),
(1246, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:35', '2024-06-10 01:27:35'),
(1247, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:36', '2024-06-10 01:27:36'),
(1248, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:37', '2024-06-10 01:27:37'),
(1249, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:43', '2024-06-10 01:27:43'),
(1250, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:47', '2024-06-10 01:27:47'),
(1251, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 01:27:58', '2024-06-10 01:27:58'),
(1252, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:28:01', '2024-06-10 01:28:01'),
(1253, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:28:53', '2024-06-10 01:28:53'),
(1254, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:29:53', '2024-06-10 01:29:53'),
(1255, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:30:42', '2024-06-10 01:30:42'),
(1256, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 01:30:52', '2024-06-10 01:30:52'),
(1257, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:30:56', '2024-06-10 01:30:56'),
(1258, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:30:57', '2024-06-10 01:30:57'),
(1259, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 01:30:58', '2024-06-10 01:30:58'),
(1260, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 01:31:30', '2024-06-10 01:31:30'),
(1261, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:31:42', '2024-06-10 01:31:42'),
(1262, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:37:41', '2024-06-10 01:37:41'),
(1263, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-10 01:45:29', '2024-06-10 01:45:29'),
(1264, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-10 01:48:28', '2024-06-10 01:48:28'),
(1265, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:50:24', '2024-06-10 01:50:24'),
(1266, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:51:09', '2024-06-10 01:51:09'),
(1267, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:51:16', '2024-06-10 01:51:16'),
(1268, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:51:17', '2024-06-10 01:51:17'),
(1269, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-10 01:52:13', '2024-06-10 01:52:13'),
(1270, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 01:52:15', '2024-06-10 01:52:15'),
(1271, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-10 01:52:49', '2024-06-10 01:52:49'),
(1272, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-10 01:52:51', '2024-06-10 01:52:51'),
(1273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-12 04:12:35', '2024-06-12 04:12:35'),
(1274, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-12 04:12:59', '2024-06-12 04:12:59'),
(1275, 1, 'admin/products/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"S25PfKiLs9LaUQ32zEhoHROeZ13J5R63ffmvismC\"}', '2024-06-12 04:13:14', '2024-06-12 04:13:14'),
(1276, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-12 04:13:18', '2024-06-12 04:13:18'),
(1277, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-12 04:14:08', '2024-06-12 04:14:08'),
(1278, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-12 04:14:14', '2024-06-12 04:14:14'),
(1279, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-12 04:14:38', '2024-06-12 04:14:38'),
(1280, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-12 04:43:53', '2024-06-12 04:43:53'),
(1281, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-12 04:44:19', '2024-06-12 04:44:19'),
(1282, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Tomate negro\",\"price\":\"2340\",\"stock\":\"34\",\"_token\":\"S25PfKiLs9LaUQ32zEhoHROeZ13J5R63ffmvismC\"}', '2024-06-12 04:44:51', '2024-06-12 04:44:51'),
(1283, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-12 04:44:55', '2024-06-12 04:44:55'),
(1284, 1, 'admin/products/23/update-stock-form', 'GET', '127.0.0.1', '[]', '2024-06-12 04:45:26', '2024-06-12 04:45:26'),
(1285, 1, 'admin/products/23/update-stock-form', 'GET', '127.0.0.1', '[]', '2024-06-12 04:47:47', '2024-06-12 04:47:47'),
(1286, 1, 'admin/products/23/update-stock-form', 'GET', '127.0.0.1', '[]', '2024-06-12 04:48:16', '2024-06-12 04:48:16'),
(1287, 1, 'admin/products/23/update-stock-form', 'GET', '127.0.0.1', '[]', '2024-06-12 04:59:56', '2024-06-12 04:59:56'),
(1288, 1, 'admin/products/23/update-stock-form', 'GET', '127.0.0.1', '[]', '2024-06-12 05:23:12', '2024-06-12 05:23:12'),
(1289, 1, 'admin/products/23/update-stock-form', 'GET', '127.0.0.1', '[]', '2024-06-12 05:23:22', '2024-06-12 05:23:22'),
(1290, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-12 19:25:01', '2024-06-12 19:25:01'),
(1291, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-12 20:08:48', '2024-06-12 20:08:48'),
(1292, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-12 20:11:30', '2024-06-12 20:11:30'),
(1293, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 21:12:12', '2024-06-13 21:12:12'),
(1294, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 21:15:00', '2024-06-13 21:15:00'),
(1295, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 21:22:43', '2024-06-13 21:22:43'),
(1296, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 21:52:20', '2024-06-13 21:52:20'),
(1297, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 21:52:37', '2024-06-13 21:52:37'),
(1298, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 21:52:49', '2024-06-13 21:52:49'),
(1299, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Fruta\",\"price\":\"2356\",\"stock\":\"50\",\"_token\":\"TIrLB6AZ6caKuBEAdR8VsVJZpUsU2SJAMqP0TU4S\"}', '2024-06-13 21:53:07', '2024-06-13 21:53:07'),
(1300, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 21:53:10', '2024-06-13 21:53:10'),
(1301, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 21:53:15', '2024-06-13 21:53:15'),
(1302, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Verduras\",\"price\":\"3466\",\"stock\":\"22\",\"image_file_del_\":\"new\\/softige-removebg-preview.png,\",\"_token\":\"TIrLB6AZ6caKuBEAdR8VsVJZpUsU2SJAMqP0TU4S\"}', '2024-06-13 21:54:19', '2024-06-13 21:54:19'),
(1303, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 21:54:21', '2024-06-13 21:54:21'),
(1304, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 21:55:16', '2024-06-13 21:55:16'),
(1305, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 21:55:42', '2024-06-13 21:55:42'),
(1306, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 22:00:21', '2024-06-13 22:00:21'),
(1307, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:00:32', '2024-06-13 22:00:32'),
(1308, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:00:36', '2024-06-13 22:00:36'),
(1309, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Juan\",\"price\":\"34\",\"stock\":\"90\",\"_token\":\"uMLpPi3aPfLhtDKNxPuTAO4JpVvUVW30Yo3MQtKJ\"}', '2024-06-13 22:01:04', '2024-06-13 22:01:04'),
(1310, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:01:07', '2024-06-13 22:01:07'),
(1311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 22:01:47', '2024-06-13 22:01:47'),
(1312, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:01:58', '2024-06-13 22:01:58'),
(1313, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:02:29', '2024-06-13 22:02:29'),
(1314, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Fruta\",\"price\":\"345656\",\"stock\":\"34\",\"_token\":\"uMLpPi3aPfLhtDKNxPuTAO4JpVvUVW30Yo3MQtKJ\"}', '2024-06-13 22:02:54', '2024-06-13 22:02:54'),
(1315, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:02:57', '2024-06-13 22:02:57'),
(1316, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 22:04:03', '2024-06-13 22:04:03'),
(1317, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:04:19', '2024-06-13 22:04:19'),
(1318, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:05:36', '2024-06-13 22:05:36'),
(1319, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:12:19', '2024-06-13 22:12:19'),
(1320, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:12:44', '2024-06-13 22:12:44'),
(1321, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:12:50', '2024-06-13 22:12:50'),
(1322, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:12:55', '2024-06-13 22:12:55'),
(1323, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:12:59', '2024-06-13 22:12:59'),
(1324, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:04', '2024-06-13 22:13:04'),
(1325, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:08', '2024-06-13 22:13:08'),
(1326, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:13', '2024-06-13 22:13:13'),
(1327, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:17', '2024-06-13 22:13:17'),
(1328, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:22', '2024-06-13 22:13:22'),
(1329, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:26', '2024-06-13 22:13:26'),
(1330, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:31', '2024-06-13 22:13:31'),
(1331, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:35', '2024-06-13 22:13:35'),
(1332, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:42', '2024-06-13 22:13:42'),
(1333, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:13:48', '2024-06-13 22:13:48'),
(1334, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 22:14:18', '2024-06-13 22:14:18'),
(1335, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:14:33', '2024-06-13 22:14:33'),
(1336, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:08', '2024-06-13 22:18:08'),
(1337, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:25', '2024-06-13 22:18:25'),
(1338, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:29', '2024-06-13 22:18:29'),
(1339, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:32', '2024-06-13 22:18:32'),
(1340, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:35', '2024-06-13 22:18:35'),
(1341, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:39', '2024-06-13 22:18:39'),
(1342, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:42', '2024-06-13 22:18:42'),
(1343, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:45', '2024-06-13 22:18:45'),
(1344, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:48', '2024-06-13 22:18:48'),
(1345, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:51', '2024-06-13 22:18:51'),
(1346, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:55', '2024-06-13 22:18:55'),
(1347, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:18:58', '2024-06-13 22:18:58'),
(1348, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:01', '2024-06-13 22:19:01'),
(1349, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:04', '2024-06-13 22:19:04'),
(1350, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:07', '2024-06-13 22:19:07'),
(1351, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:10', '2024-06-13 22:19:10'),
(1352, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:13', '2024-06-13 22:19:13'),
(1353, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:16', '2024-06-13 22:19:16'),
(1354, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:19', '2024-06-13 22:19:19'),
(1355, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:22', '2024-06-13 22:19:22'),
(1356, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:25', '2024-06-13 22:19:25'),
(1357, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:28', '2024-06-13 22:19:28'),
(1358, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:41', '2024-06-13 22:19:41'),
(1359, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:44', '2024-06-13 22:19:44'),
(1360, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:47', '2024-06-13 22:19:47'),
(1361, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:51', '2024-06-13 22:19:51'),
(1362, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:54', '2024-06-13 22:19:54'),
(1363, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:56', '2024-06-13 22:19:56'),
(1364, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:19:58', '2024-06-13 22:19:58'),
(1365, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:00', '2024-06-13 22:20:00'),
(1366, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:02', '2024-06-13 22:20:02'),
(1367, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:04', '2024-06-13 22:20:04'),
(1368, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:06', '2024-06-13 22:20:06'),
(1369, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:08', '2024-06-13 22:20:08'),
(1370, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:10', '2024-06-13 22:20:10'),
(1371, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:12', '2024-06-13 22:20:12'),
(1372, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:15', '2024-06-13 22:20:15'),
(1373, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:17', '2024-06-13 22:20:17'),
(1374, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:19', '2024-06-13 22:20:19'),
(1375, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:21', '2024-06-13 22:20:21'),
(1376, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:23', '2024-06-13 22:20:23'),
(1377, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:25', '2024-06-13 22:20:25'),
(1378, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:27', '2024-06-13 22:20:27'),
(1379, 1, 'admin/products/27', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:46', '2024-06-13 22:20:46'),
(1380, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:20:58', '2024-06-13 22:20:58'),
(1381, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:02', '2024-06-13 22:21:02'),
(1382, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:05', '2024-06-13 22:21:05'),
(1383, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:08', '2024-06-13 22:21:08'),
(1384, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:12', '2024-06-13 22:21:12'),
(1385, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:15', '2024-06-13 22:21:15'),
(1386, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:19', '2024-06-13 22:21:19'),
(1387, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:23', '2024-06-13 22:21:23'),
(1388, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:26', '2024-06-13 22:21:26'),
(1389, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:29', '2024-06-13 22:21:29'),
(1390, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:32', '2024-06-13 22:21:32'),
(1391, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:35', '2024-06-13 22:21:35'),
(1392, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:38', '2024-06-13 22:21:38'),
(1393, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:42', '2024-06-13 22:21:42'),
(1394, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:45', '2024-06-13 22:21:45'),
(1395, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:47', '2024-06-13 22:21:47'),
(1396, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:51', '2024-06-13 22:21:51'),
(1397, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:21:54', '2024-06-13 22:21:54'),
(1398, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 22:22:15', '2024-06-13 22:22:15'),
(1399, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:22:27', '2024-06-13 22:22:27'),
(1400, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:25:03', '2024-06-13 22:25:03'),
(1401, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:25:20', '2024-06-13 22:25:20'),
(1402, 1, 'admin/products/27', 'PUT', '127.0.0.1', '{\"description\":\"Fruta\",\"price\":\"345656.00\",\"stock\":\"25\",\"_token\":\"uMLpPi3aPfLhtDKNxPuTAO4JpVvUVW30Yo3MQtKJ\",\"_method\":\"PUT\"}', '2024-06-13 22:25:31', '2024-06-13 22:25:31'),
(1403, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:25:34', '2024-06-13 22:25:34'),
(1404, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '[]', '2024-06-13 22:28:48', '2024-06-13 22:28:48'),
(1405, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 22:38:27', '2024-06-13 22:38:27'),
(1406, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:38:42', '2024-06-13 22:38:42'),
(1407, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-13 22:46:26', '2024-06-13 22:46:26'),
(1408, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 03:07:19', '2024-06-14 03:07:19'),
(1409, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:32:13', '2024-06-14 04:32:13'),
(1410, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:48:22', '2024-06-14 04:48:22'),
(1411, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:49:02', '2024-06-14 04:49:02'),
(1412, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:49:32', '2024-06-14 04:49:32'),
(1413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:49:50', '2024-06-14 04:49:50'),
(1414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:54:26', '2024-06-14 04:54:26'),
(1415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:55:55', '2024-06-14 04:55:55'),
(1416, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:56:34', '2024-06-14 04:56:34'),
(1417, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:57:10', '2024-06-14 04:57:10'),
(1418, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-14 04:57:36', '2024-06-14 04:57:36'),
(1419, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:01:09', '2024-06-15 05:01:09'),
(1420, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:01:28', '2024-06-15 05:01:28'),
(1421, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:02:57', '2024-06-15 05:02:57'),
(1422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:03:13', '2024-06-15 05:03:13'),
(1423, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:03:14', '2024-06-15 05:03:14'),
(1424, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 05:03:20', '2024-06-15 05:03:20'),
(1425, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:03:29', '2024-06-15 05:03:29'),
(1426, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:04:49', '2024-06-15 05:04:49'),
(1427, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:04:58', '2024-06-15 05:04:58'),
(1428, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-15 05:05:27', '2024-06-15 05:05:27'),
(1429, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:05:51', '2024-06-15 05:05:51'),
(1430, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:10:11', '2024-06-15 05:10:11'),
(1431, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-15 05:12:44', '2024-06-15 05:12:44'),
(1432, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:13:09', '2024-06-15 05:13:09'),
(1433, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:13:38', '2024-06-15 05:13:38'),
(1434, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:13:45', '2024-06-15 05:13:45'),
(1435, 1, 'admin/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2024-06-15 05:15:55', '2024-06-15 05:15:55'),
(1436, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:16:00', '2024-06-15 05:16:00'),
(1437, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 05:16:03', '2024-06-15 05:16:03'),
(1438, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 05:16:04', '2024-06-15 05:16:04'),
(1439, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:16:08', '2024-06-15 05:16:08'),
(1440, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:17:26', '2024-06-15 05:17:26'),
(1441, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:17:32', '2024-06-15 05:17:32'),
(1442, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:17:35', '2024-06-15 05:17:35'),
(1443, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 05:18:53', '2024-06-15 05:18:53'),
(1444, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:19:11', '2024-06-15 05:19:11'),
(1445, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:19:14', '2024-06-15 05:19:14'),
(1446, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:19:30', '2024-06-15 05:19:30'),
(1447, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:28:41', '2024-06-15 05:28:41'),
(1448, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:29:23', '2024-06-15 05:29:23'),
(1449, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:30:02', '2024-06-15 05:30:02'),
(1450, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:32:55', '2024-06-15 05:32:55'),
(1451, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:35:22', '2024-06-15 05:35:22'),
(1452, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:41:39', '2024-06-15 05:41:39'),
(1453, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:41:48', '2024-06-15 05:41:48'),
(1454, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:45:26', '2024-06-15 05:45:26'),
(1455, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:46:18', '2024-06-15 05:46:18'),
(1456, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:46:48', '2024-06-15 05:46:48'),
(1457, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:47:05', '2024-06-15 05:47:05'),
(1458, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:47:18', '2024-06-15 05:47:18'),
(1459, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:48:02', '2024-06-15 05:48:02'),
(1460, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 05:48:09', '2024-06-15 05:48:09'),
(1461, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:48:12', '2024-06-15 05:48:12'),
(1462, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:48:23', '2024-06-15 05:48:23'),
(1463, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:49:14', '2024-06-15 05:49:14'),
(1464, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:52:22', '2024-06-15 05:52:22'),
(1465, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:55:46', '2024-06-15 05:55:46'),
(1466, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 05:57:10', '2024-06-15 05:57:10'),
(1467, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:01:28', '2024-06-15 06:01:28'),
(1468, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:02:10', '2024-06-15 06:02:10'),
(1469, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:03:05', '2024-06-15 06:03:05'),
(1470, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:03:38', '2024-06-15 06:03:38'),
(1471, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:05:06', '2024-06-15 06:05:06'),
(1472, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:06:56', '2024-06-15 06:06:56'),
(1473, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:07:35', '2024-06-15 06:07:35'),
(1474, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:08:30', '2024-06-15 06:08:30'),
(1475, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:08:44', '2024-06-15 06:08:44'),
(1476, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:10:11', '2024-06-15 06:10:11'),
(1477, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:10:20', '2024-06-15 06:10:20'),
(1478, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:12:03', '2024-06-15 06:12:03'),
(1479, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:12:17', '2024-06-15 06:12:17'),
(1480, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 06:12:31', '2024-06-15 06:12:31'),
(1481, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:11:32', '2024-06-15 07:11:32'),
(1482, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:11:57', '2024-06-15 07:11:57'),
(1483, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:12:48', '2024-06-15 07:12:48'),
(1484, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:14:20', '2024-06-15 07:14:20'),
(1485, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:14:41', '2024-06-15 07:14:41'),
(1486, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:17:29', '2024-06-15 07:17:29'),
(1487, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-15 07:18:13', '2024-06-15 07:18:13'),
(1488, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:18:17', '2024-06-15 07:18:17'),
(1489, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:18:19', '2024-06-15 07:18:19'),
(1490, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:18:21', '2024-06-15 07:18:21');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1491, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:18:23', '2024-06-15 07:18:23'),
(1492, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:19:05', '2024-06-15 07:19:05'),
(1493, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:19:07', '2024-06-15 07:19:07'),
(1494, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:19:09', '2024-06-15 07:19:09'),
(1495, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:24:31', '2024-06-15 07:24:31'),
(1496, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:24:59', '2024-06-15 07:24:59'),
(1497, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:25:04', '2024-06-15 07:25:04'),
(1498, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:25:26', '2024-06-15 07:25:26'),
(1499, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:25:38', '2024-06-15 07:25:38'),
(1500, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:25:42', '2024-06-15 07:25:42'),
(1501, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:25:44', '2024-06-15 07:25:44'),
(1502, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:26:16', '2024-06-15 07:26:16'),
(1503, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:26:22', '2024-06-15 07:26:22'),
(1504, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:26:24', '2024-06-15 07:26:24'),
(1505, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:26:29', '2024-06-15 07:26:29'),
(1506, 1, 'admin/products/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:26:34', '2024-06-15 07:26:34'),
(1507, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:26:34', '2024-06-15 07:26:34'),
(1508, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:27:51', '2024-06-15 07:27:51'),
(1509, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Aguacate, unidad\",\"price\":\"4000\",\"stock\":\"20\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:29:13', '2024-06-15 07:29:13'),
(1510, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:29:14', '2024-06-15 07:29:14'),
(1511, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:31:23', '2024-06-15 07:31:23'),
(1512, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:31:46', '2024-06-15 07:31:46'),
(1513, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:31:56', '2024-06-15 07:31:56'),
(1514, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:32:18', '2024-06-15 07:32:18'),
(1515, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:32:32', '2024-06-15 07:32:32'),
(1516, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:32:48', '2024-06-15 07:32:48'),
(1517, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:32:59', '2024-06-15 07:32:59'),
(1518, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_columns_\":\"description,id,image,price,stock\"}', '2024-06-15 07:33:59', '2024-06-15 07:33:59'),
(1519, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_columns_\":\"description,id,image,price,stock\"}', '2024-06-15 07:38:53', '2024-06-15 07:38:53'),
(1520, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:02', '2024-06-15 07:39:02'),
(1521, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:08', '2024-06-15 07:39:08'),
(1522, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:12', '2024-06-15 07:39:12'),
(1523, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:13', '2024-06-15 07:39:13'),
(1524, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:15', '2024-06-15 07:39:15'),
(1525, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:16', '2024-06-15 07:39:16'),
(1526, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:39:17', '2024-06-15 07:39:17'),
(1527, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:40:54', '2024-06-15 07:40:54'),
(1528, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:40:58', '2024-06-15 07:40:58'),
(1529, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:00', '2024-06-15 07:41:00'),
(1530, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:01', '2024-06-15 07:41:01'),
(1531, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:02', '2024-06-15 07:41:02'),
(1532, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:03', '2024-06-15 07:41:03'),
(1533, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:22', '2024-06-15 07:41:22'),
(1534, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:28', '2024-06-15 07:41:28'),
(1535, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:35', '2024-06-15 07:41:35'),
(1536, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:36', '2024-06-15 07:41:36'),
(1537, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:38', '2024-06-15 07:41:38'),
(1538, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:39', '2024-06-15 07:41:39'),
(1539, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:44', '2024-06-15 07:41:44'),
(1540, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:45', '2024-06-15 07:41:45'),
(1541, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:51', '2024-06-15 07:41:51'),
(1542, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:52', '2024-06-15 07:41:52'),
(1543, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:41:53', '2024-06-15 07:41:53'),
(1544, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:42:33', '2024-06-15 07:42:33'),
(1545, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:42:38', '2024-06-15 07:42:38'),
(1546, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:42:40', '2024-06-15 07:42:40'),
(1547, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:42:41', '2024-06-15 07:42:41'),
(1548, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:42:43', '2024-06-15 07:42:43'),
(1549, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:43:05', '2024-06-15 07:43:05'),
(1550, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:43:06', '2024-06-15 07:43:06'),
(1551, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:43:09', '2024-06-15 07:43:09'),
(1552, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 07:43:10', '2024-06-15 07:43:10'),
(1553, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:43:35', '2024-06-15 07:43:35'),
(1554, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:43:51', '2024-06-15 07:43:51'),
(1555, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:44:24', '2024-06-15 07:44:24'),
(1556, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:44:44', '2024-06-15 07:44:44'),
(1557, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:45:25', '2024-06-15 07:45:25'),
(1558, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:45:34', '2024-06-15 07:45:34'),
(1559, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:45:44', '2024-06-15 07:45:44'),
(1560, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:46:17', '2024-06-15 07:46:17'),
(1561, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Gengibre, unidad\",\"price\":\"1000\",\"stock\":\"34\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:46:42', '2024-06-15 07:46:42'),
(1562, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:46:42', '2024-06-15 07:46:42'),
(1563, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:48:11', '2024-06-15 07:48:11'),
(1564, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Cebolla cabezon, libra\",\"price\":\"1500\",\"stock\":\"35\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:48:39', '2024-06-15 07:48:39'),
(1565, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:48:40', '2024-06-15 07:48:40'),
(1566, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:49:27', '2024-06-15 07:49:27'),
(1567, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Tomate chonto, libra\",\"price\":\"1200\",\"stock\":\"30\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:49:47', '2024-06-15 07:49:47'),
(1568, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:49:47', '2024-06-15 07:49:47'),
(1569, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:13', '2024-06-15 07:52:13'),
(1570, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:15', '2024-06-15 07:52:15'),
(1571, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:17', '2024-06-15 07:52:17'),
(1572, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:18', '2024-06-15 07:52:18'),
(1573, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:21', '2024-06-15 07:52:21'),
(1574, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:23', '2024-06-15 07:52:23'),
(1575, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:52:27', '2024-06-15 07:52:27'),
(1576, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:53:41', '2024-06-15 07:53:41'),
(1577, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Mango, libra\",\"price\":\"1000\",\"stock\":\"30\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:54:17', '2024-06-15 07:54:17'),
(1578, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:54:18', '2024-06-15 07:54:18'),
(1579, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:54:24', '2024-06-15 07:54:24'),
(1580, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:54:46', '2024-06-15 07:54:46'),
(1581, 1, 'admin/products/32', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:55:10', '2024-06-15 07:55:10'),
(1582, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:55:11', '2024-06-15 07:55:11'),
(1583, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:55:14', '2024-06-15 07:55:14'),
(1584, 1, 'admin/products', 'POST', '127.0.0.1', '{\"description\":\"Mango, libra\",\"price\":\"1000\",\"stock\":\"30\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:55:37', '2024-06-15 07:55:37'),
(1585, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 07:55:38', '2024-06-15 07:55:38'),
(1586, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:55:44', '2024-06-15 07:55:44'),
(1587, 1, 'admin/clients/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:55:51', '2024-06-15 07:55:51'),
(1588, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:55:51', '2024-06-15 07:55:51'),
(1589, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-15 07:55:53', '2024-06-15 07:55:53'),
(1590, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"Nombre\":\"Juan Galindo Mart\\u00ednez\",\"Tel\\u00e9fono\":\"3124827792\",\"Direccion\":\"Cra 20. #4\",\"Pago\":\"Contado\",\"Estado\":\"Pagado\",\"Categor\\u00eda\":\"Mayorista\",\"Comentarios\":\"Ninguno\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\",\"_method\":\"PUT\"}', '2024-06-15 07:56:05', '2024-06-15 07:56:05'),
(1591, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:56:05', '2024-06-15 07:56:05'),
(1592, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:56:07', '2024-06-15 07:56:07'),
(1593, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"Nombre\":\"Eduardo Lopez Triana\",\"Tel\\u00e9fono\":\"3123456789\",\"Direccion\":\"Clle. 2a #12-20\",\"Pago\":\"30 d\\u00edas\",\"Estado\":\"Pendiente\",\"Categor\\u00eda\":\"Minorista\",\"Comentarios\":\"Fecha l\\u00edmite de pago hasta 20\\/06\\/2024\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 07:57:50', '2024-06-15 07:57:50'),
(1594, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:57:50', '2024-06-15 07:57:50'),
(1595, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:57:53', '2024-06-15 07:57:53'),
(1596, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:59:26', '2024-06-15 07:59:26'),
(1597, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 07:59:33', '2024-06-15 07:59:33'),
(1598, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 07:59:42', '2024-06-15 07:59:42'),
(1599, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2024-06-15 07:59:45', '2024-06-15 07:59:45'),
(1600, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"Nombre\":\"Manuel David Sanchez\",\"Tel\\u00e9fono\":\"3124536658\",\"Direccion\":\"Cra. 5 Neiva, Huila\",\"Pago\":\"Contado\",\"Estado\":\"Pagado\",\"Categor\\u00eda\":\"Mayorista\",\"Comentarios\":\"Ninguno\",\"_token\":\"byi9zI8nT37JZbKKmJVdwMgGQQXQIPCjRNHRsr96\"}', '2024-06-15 08:04:22', '2024-06-15 08:04:22'),
(1601, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 08:04:23', '2024-06-15 08:04:23'),
(1602, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 08:04:27', '2024-06-15 08:04:27'),
(1603, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-06-15 08:04:29', '2024-06-15 08:04:29'),
(1604, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2024-06-15 08:04:30', '2024-06-15 08:04:30'),
(1605, 1, 'admin/distributors', 'GET', '127.0.0.1', '[]', '2024-06-15 08:04:32', '2024-06-15 08:04:32'),
(1606, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 08:04:33', '2024-06-15 08:04:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(191) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-03-03 23:53:08', '2024-03-03 23:53:08'),
(7, 'products', 'products', 'GET', '/products', '2024-03-04 01:00:46', '2024-03-04 01:00:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-03-03 23:45:13', '2024-03-03 23:45:13'),
(2, 'Invitado', 'Invitado', '2024-03-04 01:02:24', '2024-03-04 01:02:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$cxjolf6TS/IQftuR66Pug.JLxaju/3mseiT69hGaxquc/qAqKbZxq', 'Administrador', 'images/tomate.jpg', 'cxBfJhxiIVa4E26NCkytz4zuLYb9WJRzbdEtm5H39zaRwD697JNZ1fhqXU0I', '2024-03-03 23:45:12', '2024-06-10 01:16:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(191) DEFAULT NULL,
  `Teléfono` varchar(191) DEFAULT NULL,
  `Direccion` varchar(191) DEFAULT NULL,
  `Pago` varchar(191) DEFAULT NULL,
  `Estado` varchar(191) DEFAULT NULL,
  `Categoría` varchar(191) DEFAULT NULL,
  `Comentarios` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `Nombre`, `Teléfono`, `Direccion`, `Pago`, `Estado`, `Categoría`, `Comentarios`, `created_at`, `updated_at`) VALUES
(1, 'Juan Galindo Martínez', '3124827792', 'Cra 20. #4', 'Contado', 'Pagado', 'Mayorista', 'Ninguno', '2024-06-09 02:15:51', '2024-06-15 07:56:05'),
(3, 'Eduardo Lopez Triana', '3123456789', 'Clle. 2a #12-20', '30 días', 'Pendiente', 'Minorista', 'Fecha límite de pago hasta 20/06/2024', '2024-06-15 07:57:50', '2024-06-15 07:57:50'),
(4, 'Manuel David Sanchez', '3124536658', 'Cra. 5 Neiva, Huila', 'Contado', 'Pagado', 'Mayorista', 'Ninguno', '2024-06-15 08:04:22', '2024-06-15 08:04:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidor`
--

CREATE TABLE `distribuidor` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nombres` varchar(191) DEFAULT NULL,
  `Direccion` varchar(191) DEFAULT NULL,
  `Producto` varchar(191) DEFAULT NULL,
  `Telefono` varchar(191) DEFAULT NULL,
  `Correo` varchar(191) DEFAULT NULL,
  `Pago` varchar(191) DEFAULT NULL,
  `Estado` varchar(191) DEFAULT NULL,
  `Notas` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_03_03_190202_create_oacurso_table', 3),
(7, '2024_05_18_193407_create_Providers_table', 4),
(8, '2024_05_18_194345_create_Clients_table', 4),
(9, '2024_06_08_155947_create_Providers_table', 5),
(10, '2024_06_08_195012_create_Provider_table', 6),
(11, '2024_06_08_195607_create_Providers_table', 7),
(12, '2024_06_08_200334_create_Clients_table', 8),
(13, '2024_06_08_204539_create_Clientes_table', 9),
(14, '2024_06_08_211427_create_Proveedores_table', 10),
(15, '2024_06_09_131657_create_Distribuidor_table', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(28, 'Aguacate, unidad', 4000.00, 20, 'images/avocados-6757663_1280.jpg', '2024-06-15 07:29:14', '2024-06-15 07:29:14'),
(29, 'Gengibre, unidad', 1000.00, 34, 'images/ginger-1714196_1280 (1).jpg', '2024-06-15 07:46:42', '2024-06-15 07:46:42'),
(30, 'Cebolla cabezon, libra', 1500.00, 35, 'images/onion-1144620_1280.jpg', '2024-06-15 07:48:39', '2024-06-15 07:48:39'),
(31, 'Tomate chonto, libra', 1200.00, 30, 'images/tomatoes-5566744_1280.jpg', '2024-06-15 07:49:47', '2024-06-15 07:49:47'),
(33, 'Mango, libra', 1000.00, 30, 'images/fruit-908353_1280.jpg', '2024-06-15 07:55:37', '2024-06-15 07:55:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indices de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indices de la tabla `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indices de la tabla `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indices de la tabla `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indices de la tabla `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `distribuidor`
--
ALTER TABLE `distribuidor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1607;

--
-- AUTO_INCREMENT de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `distribuidor`
--
ALTER TABLE `distribuidor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
