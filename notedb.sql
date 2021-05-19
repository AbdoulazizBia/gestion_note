-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour note
CREATE DATABASE IF NOT EXISTS `note` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `note`;

-- Listage de la structure de la table note. admin_menu
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_menu : ~27 rows (environ)
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
	(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
	(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
	(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
	(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
	(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
	(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
	(10, 0, 10, 'Etudiants', 'fa-list', 'etudiants', NULL, NULL, NULL),
	(11, 0, 10, 'Inscriptions', 'fa-list', 'inscriptions', NULL, NULL, NULL),
	(12, 0, 10, 'Annee_acas', 'fa-list', 'annee_acas', NULL, NULL, NULL),
	(13, 0, 10, 'Specialites', 'fa-list', 'specialites', NULL, NULL, NULL),
	(14, 0, 10, 'Niveaux', 'fa-list', 'niveaux', NULL, NULL, NULL),
	(15, 0, 10, 'Notes', 'fa-list', 'notes', NULL, NULL, NULL),
	(16, 0, 10, 'Type_notes', 'fa-list', 'type_notes', NULL, NULL, NULL),
	(17, 0, 10, 'Paiement_scolarites', 'fa-list', 'paiement_scolarites', NULL, NULL, NULL),
	(18, 0, 10, 'Mat_spes', 'fa-list', 'mat_spes', NULL, NULL, NULL),
	(19, 0, 10, 'Matieres', 'fa-list', 'matieres', NULL, NULL, NULL),
	(20, 0, 10, 'Groupe_ues', 'fa-list', 'groupe_ues', NULL, NULL, NULL),
	(21, 0, 10, 'Cycles', 'fa-list', 'cycles', NULL, NULL, NULL),
	(22, 0, 10, 'Filieres', 'fa-list', 'filieres', NULL, NULL, NULL),
	(23, 0, 10, 'Cycle_filieres', 'fa-list', 'cycle_filieres', NULL, NULL, NULL),
	(24, 0, 10, 'Domaine_cycles', 'fa-list', 'domaine_cycles', NULL, NULL, NULL),
	(25, 0, 10, 'Etablissements', 'fa-list', 'etablissements', NULL, NULL, NULL),
	(26, 0, 10, 'Domaine_etabs', 'fa-list', 'domaine_etabs', NULL, NULL, NULL),
	(27, 0, 10, 'Domaines', 'fa-list', 'domaines', NULL, NULL, NULL);
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_operation_log
CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_operation_log : ~509 rows (environ)
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
	(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-04-30 11:21:19', '2021-04-30 11:21:19'),
	(2, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:21:33', '2021-04-30 11:21:33'),
	(3, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '[]', '2021-04-30 11:21:33', '2021-04-30 11:21:33'),
	(4, 1, 'admin/etudiants', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:21:43', '2021-04-30 11:21:43'),
	(5, 1, 'admin/inscriptions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:21:47', '2021-04-30 11:21:47'),
	(6, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:21:50', '2021-04-30 11:21:50'),
	(7, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:22:00', '2021-04-30 11:22:00'),
	(8, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:22:23', '2021-04-30 11:22:23'),
	(9, 1, 'admin/notes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:22:34', '2021-04-30 11:22:34'),
	(10, 1, 'admin/type_notes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:22:45', '2021-04-30 11:22:45'),
	(11, 1, 'admin/paiement_scolarites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:22:50', '2021-04-30 11:22:50'),
	(12, 1, 'admin/type_notes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:22:56', '2021-04-30 11:22:56'),
	(13, 1, 'admin/paiement_scolarites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:23:01', '2021-04-30 11:23:01'),
	(14, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:23:07', '2021-04-30 11:23:07'),
	(15, 1, 'admin/matieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:23:10', '2021-04-30 11:23:10'),
	(16, 1, 'admin/groupe_ues', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:23:39', '2021-04-30 11:23:39'),
	(17, 1, 'admin/cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:23:47', '2021-04-30 11:23:47'),
	(18, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:23:56', '2021-04-30 11:23:56'),
	(19, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:24:04', '2021-04-30 11:24:04'),
	(20, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:24:14', '2021-04-30 11:24:14'),
	(21, 1, 'admin/etablissements', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:24:20', '2021-04-30 11:24:20'),
	(22, 1, 'admin/etablissements', 'GET', '127.0.0.1', '[]', '2021-04-30 11:26:51', '2021-04-30 11:26:51'),
	(23, 1, 'admin/etablissements', 'GET', '127.0.0.1', '[]', '2021-04-30 11:32:17', '2021-04-30 11:32:17'),
	(24, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:32:24', '2021-04-30 11:32:24'),
	(25, 1, 'admin/etudiants', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:32:55', '2021-04-30 11:32:55'),
	(26, 1, 'admin/etudiants', 'GET', '127.0.0.1', '[]', '2021-04-30 11:36:11', '2021-04-30 11:36:11'),
	(27, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:36:18', '2021-04-30 11:36:18'),
	(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:56:54', '2021-04-30 11:56:54'),
	(29, 1, 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2"}', '2021-04-30 11:57:00', '2021-04-30 11:57:00'),
	(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:57:01', '2021-04-30 11:57:01'),
	(31, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2"}', '2021-04-30 11:57:07', '2021-04-30 11:57:07'),
	(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:57:07', '2021-04-30 11:57:07'),
	(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-04-30 11:57:26', '2021-04-30 11:57:26'),
	(34, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:57:32', '2021-04-30 11:57:32'),
	(35, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:57:46', '2021-04-30 11:57:46'),
	(36, 1, 'admin/cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:57:56', '2021-04-30 11:57:56'),
	(37, 1, 'admin/cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:58:00', '2021-04-30 11:58:00'),
	(38, 1, 'admin/cycles', 'POST', '127.0.0.1', '{"nom_cycle":"BTS","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycles"}', '2021-04-30 11:58:10', '2021-04-30 11:58:10'),
	(39, 1, 'admin/cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 11:58:10', '2021-04-30 11:58:10'),
	(40, 1, 'admin/cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:58:14', '2021-04-30 11:58:14'),
	(41, 1, 'admin/cycles', 'POST', '127.0.0.1', '{"nom_cycle":"Licence","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycles"}', '2021-04-30 11:58:20', '2021-04-30 11:58:20'),
	(42, 1, 'admin/cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 11:58:21', '2021-04-30 11:58:21'),
	(43, 1, 'admin/cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:58:23', '2021-04-30 11:58:23'),
	(44, 1, 'admin/cycles', 'POST', '127.0.0.1', '{"nom_cycle":"Capacit\\u00e9","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycles"}', '2021-04-30 11:58:57', '2021-04-30 11:58:57'),
	(45, 1, 'admin/cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 11:58:58', '2021-04-30 11:58:58'),
	(46, 1, 'admin/cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 11:59:00', '2021-04-30 11:59:00'),
	(47, 1, 'admin/cycles', 'POST', '127.0.0.1', '{"nom_cycle":"Master","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycles"}', '2021-04-30 11:59:12', '2021-04-30 11:59:12'),
	(48, 1, 'admin/cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 11:59:12', '2021-04-30 11:59:12'),
	(49, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:00:44', '2021-04-30 12:00:44'),
	(50, 1, 'admin/annee_acas/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:00:48', '2021-04-30 12:00:48'),
	(51, 1, 'admin/annee_acas', 'POST', '127.0.0.1', '{"annee":"2017\\/2018","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/annee_acas"}', '2021-04-30 12:01:30', '2021-04-30 12:01:30'),
	(52, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '[]', '2021-04-30 12:01:31', '2021-04-30 12:01:31'),
	(53, 1, 'admin/annee_acas/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:01:32', '2021-04-30 12:01:32'),
	(54, 1, 'admin/annee_acas', 'POST', '127.0.0.1', '{"annee":"2018\\/2019","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/annee_acas"}', '2021-04-30 12:01:45', '2021-04-30 12:01:45'),
	(55, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '[]', '2021-04-30 12:01:46', '2021-04-30 12:01:46'),
	(56, 1, 'admin/annee_acas/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:01:49', '2021-04-30 12:01:49'),
	(57, 1, 'admin/annee_acas', 'POST', '127.0.0.1', '{"annee":"2019\\/2020","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/annee_acas"}', '2021-04-30 12:01:57', '2021-04-30 12:01:57'),
	(58, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '[]', '2021-04-30 12:01:58', '2021-04-30 12:01:58'),
	(59, 1, 'admin/annee_acas/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:02:00', '2021-04-30 12:02:00'),
	(60, 1, 'admin/annee_acas', 'POST', '127.0.0.1', '{"annee":"2020\\/2021","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/annee_acas"}', '2021-04-30 12:02:09', '2021-04-30 12:02:09'),
	(61, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '[]', '2021-04-30 12:02:09', '2021-04-30 12:02:09'),
	(62, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:03:49', '2021-04-30 12:03:49'),
	(63, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:03:51', '2021-04-30 12:03:51'),
	(64, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"Gestion","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:04:00', '2021-04-30 12:04:00'),
	(65, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:04:00', '2021-04-30 12:04:00'),
	(66, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:04:05', '2021-04-30 12:04:05'),
	(67, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"G\\u00e9nie \\u00e9lectrique","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:04:18', '2021-04-30 12:04:18'),
	(68, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:04:18', '2021-04-30 12:04:18'),
	(69, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:04:20', '2021-04-30 12:04:20'),
	(70, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"Argonomie","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:04:29', '2021-04-30 12:04:29'),
	(71, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:04:29', '2021-04-30 12:04:29'),
	(72, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:04:31', '2021-04-30 12:04:31'),
	(73, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"G\\u00e9nie civil","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:04:42', '2021-04-30 12:04:42'),
	(74, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:04:42', '2021-04-30 12:04:42'),
	(75, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:04:49', '2021-04-30 12:04:49'),
	(76, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"H\\u00f4tellerie & Restauration","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:05:03', '2021-04-30 12:05:03'),
	(77, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:05:03', '2021-04-30 12:05:03'),
	(78, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:05:09', '2021-04-30 12:05:09'),
	(79, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"G\\u00e9nie Informatique","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:05:12', '2021-04-30 12:05:12'),
	(80, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:05:13', '2021-04-30 12:05:13'),
	(81, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:05:20', '2021-04-30 12:05:20'),
	(82, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"Information & Communication","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:05:23', '2021-04-30 12:05:23'),
	(83, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:05:24', '2021-04-30 12:05:24'),
	(84, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:05:32', '2021-04-30 12:05:32'),
	(85, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"T\\u00e9l\\u00e9com, R\\u00e9seaux & S\\u00e9curit\\u00e9","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:05:36', '2021-04-30 12:05:36'),
	(86, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:05:36', '2021-04-30 12:05:36'),
	(87, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:05:47', '2021-04-30 12:05:47'),
	(88, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"Commerce","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 12:05:51', '2021-04-30 12:05:51'),
	(89, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:05:51', '2021-04-30 12:05:51'),
	(90, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:06:14', '2021-04-30 12:06:14'),
	(91, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:07:07', '2021-04-30 12:07:07'),
	(92, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:07:09', '2021-04-30 12:07:09'),
	(93, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '[]', '2021-04-30 12:09:57', '2021-04-30 12:09:57'),
	(94, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '[]', '2021-04-30 12:14:24', '2021-04-30 12:14:24'),
	(95, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '[]', '2021-04-30 12:22:05', '2021-04-30 12:22:05'),
	(96, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '[]', '2021-04-30 12:22:26', '2021-04-30 12:22:26'),
	(97, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2"}', '2021-04-30 12:22:38', '2021-04-30 12:22:38'),
	(98, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:22:39', '2021-04-30 12:22:39'),
	(99, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:22:41', '2021-04-30 12:22:41'),
	(100, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:22:48', '2021-04-30 12:22:48'),
	(101, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:22:49', '2021-04-30 12:22:49'),
	(102, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:22:51', '2021-04-30 12:22:51'),
	(103, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:23:18', '2021-04-30 12:23:18'),
	(104, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:23:18', '2021-04-30 12:23:18'),
	(105, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:23:20', '2021-04-30 12:23:20'),
	(106, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"5","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:23:30', '2021-04-30 12:23:30'),
	(107, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:23:31', '2021-04-30 12:23:31'),
	(108, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:23:34', '2021-04-30 12:23:34'),
	(109, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:23:40', '2021-04-30 12:23:40'),
	(110, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:23:40', '2021-04-30 12:23:40'),
	(111, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:23:42', '2021-04-30 12:23:42'),
	(112, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"6","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:24:06', '2021-04-30 12:24:06'),
	(113, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:24:07', '2021-04-30 12:24:07'),
	(114, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:24:09', '2021-04-30 12:24:09'),
	(115, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"7","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:24:19', '2021-04-30 12:24:19'),
	(116, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:24:19', '2021-04-30 12:24:19'),
	(117, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:24:23', '2021-04-30 12:24:23'),
	(118, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:24:29', '2021-04-30 12:24:29'),
	(119, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:24:29', '2021-04-30 12:24:29'),
	(120, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:24:31', '2021-04-30 12:24:31'),
	(121, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:24:38', '2021-04-30 12:24:38'),
	(122, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:24:39', '2021-04-30 12:24:39'),
	(123, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:24:41', '2021-04-30 12:24:41'),
	(124, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:24:48', '2021-04-30 12:24:48'),
	(125, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:24:48', '2021-04-30 12:24:48'),
	(126, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:24:50', '2021-04-30 12:24:50'),
	(127, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:24:57', '2021-04-30 12:24:57'),
	(128, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:24:57', '2021-04-30 12:24:57'),
	(129, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:24:59', '2021-04-30 12:24:59'),
	(130, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"5","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:25:08', '2021-04-30 12:25:08'),
	(131, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:25:08', '2021-04-30 12:25:08'),
	(132, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:25:13', '2021-04-30 12:25:13'),
	(133, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"6","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:25:23', '2021-04-30 12:25:23'),
	(134, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:25:24', '2021-04-30 12:25:24'),
	(135, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:25:33', '2021-04-30 12:25:33'),
	(136, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"2","filiere_id":"7","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 12:25:41', '2021-04-30 12:25:41'),
	(137, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 12:25:41', '2021-04-30 12:25:41'),
	(138, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:26:28', '2021-04-30 12:26:28'),
	(139, 1, 'admin/domaines/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:26:32', '2021-04-30 12:26:32'),
	(140, 1, 'admin/domaines', 'POST', '127.0.0.1', '{"nom_domaine":"Industrie et technologies","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaines"}', '2021-04-30 12:27:04', '2021-04-30 12:27:04'),
	(141, 1, 'admin/domaines', 'GET', '127.0.0.1', '[]', '2021-04-30 12:27:04', '2021-04-30 12:27:04'),
	(142, 1, 'admin/domaines/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:27:07', '2021-04-30 12:27:07'),
	(143, 1, 'admin/domaines', 'POST', '127.0.0.1', '{"nom_domaine":"Informatique","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaines"}', '2021-04-30 12:27:13', '2021-04-30 12:27:13'),
	(144, 1, 'admin/domaines', 'GET', '127.0.0.1', '[]', '2021-04-30 12:27:14', '2021-04-30 12:27:14'),
	(145, 1, 'admin/domaines/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:27:15', '2021-04-30 12:27:15'),
	(146, 1, 'admin/domaines', 'POST', '127.0.0.1', '{"nom_domaine":"Gestion","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaines"}', '2021-04-30 12:27:24', '2021-04-30 12:27:24'),
	(147, 1, 'admin/domaines', 'GET', '127.0.0.1', '[]', '2021-04-30 12:27:24', '2021-04-30 12:27:24'),
	(148, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:27:43', '2021-04-30 12:27:43'),
	(149, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:27:46', '2021-04-30 12:27:46'),
	(150, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '[]', '2021-04-30 12:31:45', '2021-04-30 12:31:45'),
	(151, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '[]', '2021-04-30 12:34:01', '2021-04-30 12:34:01'),
	(152, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"1","cycle_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2"}', '2021-04-30 12:34:13', '2021-04-30 12:34:13'),
	(153, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:34:14', '2021-04-30 12:34:14'),
	(154, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:34:16', '2021-04-30 12:34:16'),
	(155, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"1","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-04-30 12:34:25', '2021-04-30 12:34:25'),
	(156, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:34:25', '2021-04-30 12:34:25'),
	(157, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:34:27', '2021-04-30 12:34:27'),
	(158, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"1","cycle_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-04-30 12:34:39', '2021-04-30 12:34:39'),
	(159, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:34:39', '2021-04-30 12:34:39'),
	(160, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:34:41', '2021-04-30 12:34:41'),
	(161, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"2","cycle_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-04-30 12:34:48', '2021-04-30 12:34:48'),
	(162, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:34:49', '2021-04-30 12:34:49'),
	(163, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:34:51', '2021-04-30 12:34:51'),
	(164, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"2","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-04-30 12:34:58', '2021-04-30 12:34:58'),
	(165, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:34:58', '2021-04-30 12:34:58'),
	(166, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:36:04', '2021-04-30 12:36:04'),
	(167, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:36:19', '2021-04-30 12:36:19'),
	(168, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:36:28', '2021-04-30 12:36:28'),
	(169, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:36:31', '2021-04-30 12:36:31'),
	(170, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"2","cycle_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-04-30 12:36:37', '2021-04-30 12:36:37'),
	(171, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-04-30 12:36:37', '2021-04-30 12:36:37'),
	(172, 1, 'admin/etablissements', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:37:15', '2021-04-30 12:37:15'),
	(173, 1, 'admin/etablissements/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:37:19', '2021-04-30 12:37:19'),
	(174, 1, 'admin/etablissements', 'POST', '127.0.0.1', '{"nom_etab":"Universit\\u00e9 de Yaound\\u00e9 2","adresse_etab":"Yaound\\u00e9, SOA","tel_etab":"+237 242 32 21 32","email_etab":"courrier@univ-yaounde2.org","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/etablissements"}', '2021-04-30 12:41:42', '2021-04-30 12:41:42'),
	(175, 1, 'admin/etablissements', 'GET', '127.0.0.1', '[]', '2021-04-30 12:41:42', '2021-04-30 12:41:42'),
	(176, 1, 'admin/etablissements/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:42:01', '2021-04-30 12:42:01'),
	(177, 1, 'admin/etablissements', 'POST', '127.0.0.1', '{"nom_etab":"Universit\\u00e9 de Ngaound\\u00e9r\\u00e9","adresse_etab":"B.P: 454 Ngaound\\u00e9r\\u00e9 \\u2013 Cameroun","tel_etab":"+237 222 25 40 02","email_etab":"un@univ-ndere.cm","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/etablissements"}', '2021-04-30 12:43:36', '2021-04-30 12:43:36'),
	(178, 1, 'admin/etablissements', 'GET', '127.0.0.1', '[]', '2021-04-30 12:43:36', '2021-04-30 12:43:36'),
	(179, 1, 'admin/etablissements/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:44:03', '2021-04-30 12:44:03'),
	(180, 1, 'admin/etablissements/1', 'PUT', '127.0.0.1', '{"nom_etab":"Universit\\u00e9 de Yaound\\u00e9 2","adresse_etab":"BP. 18 SOA, Cameroun","tel_etab":"+237 242 32 21 32","email_etab":"courrier@univ-yaounde2.org","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/etablissements"}', '2021-04-30 12:44:08', '2021-04-30 12:44:08'),
	(181, 1, 'admin/etablissements', 'GET', '127.0.0.1', '[]', '2021-04-30 12:44:09', '2021-04-30 12:44:09'),
	(182, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:44:40', '2021-04-30 12:44:40'),
	(183, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:44:57', '2021-04-30 12:44:57'),
	(184, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:50:44', '2021-04-30 12:50:44'),
	(185, 1, 'admin/domaine_etabs/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:50:50', '2021-04-30 12:50:50'),
	(186, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:50:56', '2021-04-30 12:50:56'),
	(187, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:53:52', '2021-04-30 12:53:52'),
	(188, 1, 'admin/domaine_etabs/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:53:56', '2021-04-30 12:53:56'),
	(189, 1, 'admin/domaine_etabs', 'POST', '127.0.0.1', '{"etab_id":"1","domaine_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_etabs"}', '2021-04-30 12:54:03', '2021-04-30 12:54:03'),
	(190, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:54:04', '2021-04-30 12:54:04'),
	(191, 1, 'admin/domaine_etabs/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:54:06', '2021-04-30 12:54:06'),
	(192, 1, 'admin/domaine_etabs', 'POST', '127.0.0.1', '{"etab_id":"2","domaine_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_etabs"}', '2021-04-30 12:54:14', '2021-04-30 12:54:14'),
	(193, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:54:14', '2021-04-30 12:54:14'),
	(194, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:54:55', '2021-04-30 12:54:55'),
	(195, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:55:56', '2021-04-30 12:55:56'),
	(196, 1, 'admin/domaine_etabs', 'GET', '127.0.0.1', '[]', '2021-04-30 12:58:14', '2021-04-30 12:58:14'),
	(197, 1, 'admin/annee_acas', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:59:06', '2021-04-30 12:59:06'),
	(198, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 12:59:52', '2021-04-30 12:59:52'),
	(199, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:02:14', '2021-04-30 13:02:14'),
	(200, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:02:18', '2021-04-30 13:02:18'),
	(201, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:02:44', '2021-04-30 13:02:44'),
	(202, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:02:52', '2021-04-30 13:02:52'),
	(203, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:02:56', '2021-04-30 13:02:56'),
	(204, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:03:23', '2021-04-30 13:03:23'),
	(205, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:03:28', '2021-04-30 13:03:28'),
	(206, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"BTS1","cycle_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:05:51', '2021-04-30 13:05:51'),
	(207, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:05:51', '2021-04-30 13:05:51'),
	(208, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:05:53', '2021-04-30 13:05:53'),
	(209, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"BTS2","cycle_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:06:02', '2021-04-30 13:06:02'),
	(210, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:06:03', '2021-04-30 13:06:03'),
	(211, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:06:05', '2021-04-30 13:06:05'),
	(212, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Licence1","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:06:28', '2021-04-30 13:06:28'),
	(213, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:06:28', '2021-04-30 13:06:28'),
	(214, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:06:30', '2021-04-30 13:06:30'),
	(215, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Licence2","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:06:38', '2021-04-30 13:06:38'),
	(216, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:06:38', '2021-04-30 13:06:38'),
	(217, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:06:41', '2021-04-30 13:06:41'),
	(218, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Licence3","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:06:50', '2021-04-30 13:06:50'),
	(219, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:06:50', '2021-04-30 13:06:50'),
	(220, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:06:55', '2021-04-30 13:06:55'),
	(221, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Capacit\\u00e91","cycle_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:07:27', '2021-04-30 13:07:27'),
	(222, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:07:28', '2021-04-30 13:07:28'),
	(223, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:07:41', '2021-04-30 13:07:41'),
	(224, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Capacit\\u00e92","cycle_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:08:30', '2021-04-30 13:08:30'),
	(225, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:08:31', '2021-04-30 13:08:31'),
	(226, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:08:33', '2021-04-30 13:08:33'),
	(227, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Master1","cycle_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:08:44', '2021-04-30 13:08:44'),
	(228, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:08:45', '2021-04-30 13:08:45'),
	(229, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:08:47', '2021-04-30 13:08:47'),
	(230, 1, 'admin/niveaux', 'POST', '127.0.0.1', '{"nom_niv":"Master 2","cycle_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:09:04', '2021-04-30 13:09:04'),
	(231, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:09:04', '2021-04-30 13:09:04'),
	(232, 1, 'admin/niveaux/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:09:09', '2021-04-30 13:09:09'),
	(233, 1, 'admin/niveaux/1', 'PUT', '127.0.0.1', '{"nom_niv":"BTS 1","cycle_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:09:14', '2021-04-30 13:09:14'),
	(234, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:09:14', '2021-04-30 13:09:14'),
	(235, 1, 'admin/niveaux/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:09:18', '2021-04-30 13:09:18'),
	(236, 1, 'admin/niveaux/2', 'PUT', '127.0.0.1', '{"nom_niv":"BTS 2","cycle_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:09:25', '2021-04-30 13:09:25'),
	(237, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:09:25', '2021-04-30 13:09:25'),
	(238, 1, 'admin/niveaux/3/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:09:28', '2021-04-30 13:09:28'),
	(239, 1, 'admin/niveaux/3', 'PUT', '127.0.0.1', '{"nom_niv":"Licence 1","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:09:33', '2021-04-30 13:09:33'),
	(240, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:09:33', '2021-04-30 13:09:33'),
	(241, 1, 'admin/niveaux/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:09:37', '2021-04-30 13:09:37'),
	(242, 1, 'admin/niveaux/4', 'PUT', '127.0.0.1', '{"nom_niv":"Licence 2","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:09:52', '2021-04-30 13:09:52'),
	(243, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:09:52', '2021-04-30 13:09:52'),
	(244, 1, 'admin/niveaux/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:09:55', '2021-04-30 13:09:55'),
	(245, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:10:02', '2021-04-30 13:10:02'),
	(246, 1, 'admin/niveaux/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:10:08', '2021-04-30 13:10:08'),
	(247, 1, 'admin/niveaux/5', 'PUT', '127.0.0.1', '{"nom_niv":"Licence 3","cycle_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:10:15', '2021-04-30 13:10:15'),
	(248, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:10:15', '2021-04-30 13:10:15'),
	(249, 1, 'admin/niveaux/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:10:25', '2021-04-30 13:10:25'),
	(250, 1, 'admin/niveaux/6', 'PUT', '127.0.0.1', '{"nom_niv":"Capacit\\u00e9 1","cycle_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:10:36', '2021-04-30 13:10:36'),
	(251, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:10:36', '2021-04-30 13:10:36'),
	(252, 1, 'admin/niveaux/7/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:10:42', '2021-04-30 13:10:42'),
	(253, 1, 'admin/niveaux/7', 'PUT', '127.0.0.1', '{"nom_niv":"Capacit\\u00e9 2","cycle_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:10:49', '2021-04-30 13:10:49'),
	(254, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:10:50', '2021-04-30 13:10:50'),
	(255, 1, 'admin/niveaux/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:10:55', '2021-04-30 13:10:55'),
	(256, 1, 'admin/niveaux/8', 'PUT', '127.0.0.1', '{"nom_niv":"Master 1","cycle_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/niveaux"}', '2021-04-30 13:11:03', '2021-04-30 13:11:03'),
	(257, 1, 'admin/niveaux', 'GET', '127.0.0.1', '[]', '2021-04-30 13:11:03', '2021-04-30 13:11:03'),
	(258, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:11:25', '2021-04-30 13:11:25'),
	(259, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:22:02', '2021-04-30 13:22:02'),
	(260, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:22:10', '2021-04-30 13:22:10'),
	(261, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Comptabilit\\u00e9 & Gestion d\'entreprises","code_spe":"CGE","cycle_filiere_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:23:21', '2021-04-30 13:23:21'),
	(262, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:23:22', '2021-04-30 13:23:22'),
	(263, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:27:49', '2021-04-30 13:27:49'),
	(264, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:28:48', '2021-04-30 13:28:48'),
	(265, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:29:12', '2021-04-30 13:29:12'),
	(266, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:30:44', '2021-04-30 13:30:44'),
	(267, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:30:57', '2021-04-30 13:30:57'),
	(268, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Banque et Finance","code_spe":"BF","cycle_filiere_id":"1","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:31:30', '2021-04-30 13:31:30'),
	(269, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:31:31', '2021-04-30 13:31:31'),
	(270, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:31:41', '2021-04-30 13:31:41'),
	(271, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '[]', '2021-04-30 13:32:55', '2021-04-30 13:32:55'),
	(272, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Electrotechnique","code_spe":null,"cycle_filiere_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2"}', '2021-04-30 13:33:13', '2021-04-30 13:33:13'),
	(273, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '[]', '2021-04-30 13:33:14', '2021-04-30 13:33:14'),
	(274, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '[]', '2021-04-30 13:34:04', '2021-04-30 13:34:04'),
	(275, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Electrotechnique","code_spe":null,"cycle_filiere_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2"}', '2021-04-30 13:34:14', '2021-04-30 13:34:14'),
	(276, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:34:14', '2021-04-30 13:34:14'),
	(277, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:34:30', '2021-04-30 13:34:30'),
	(278, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Maintenance des syst\\u00e8mes \\u00e9lectrique","code_spe":null,"cycle_filiere_id":"2","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:34:37', '2021-04-30 13:34:37'),
	(279, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:34:37', '2021-04-30 13:34:37'),
	(280, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:34:51', '2021-04-30 13:34:51'),
	(281, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"B\\u00e2timent","code_spe":"BA","cycle_filiere_id":"5","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:35:13', '2021-04-30 13:35:13'),
	(282, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:35:14', '2021-04-30 13:35:14'),
	(283, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:35:25', '2021-04-30 13:35:25'),
	(284, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Travaux Publics","code_spe":"TP","cycle_filiere_id":"5","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:35:36', '2021-04-30 13:35:36'),
	(285, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:35:37', '2021-04-30 13:35:37'),
	(286, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:35:45', '2021-04-30 13:35:45'),
	(287, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Production animale","code_spe":"PA","cycle_filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:35:56', '2021-04-30 13:35:56'),
	(288, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:35:56', '2021-04-30 13:35:56'),
	(289, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:35:59', '2021-04-30 13:35:59'),
	(290, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Production V\\u00e9g\\u00e9tale","code_spe":"PV","cycle_filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:36:25', '2021-04-30 13:36:25'),
	(291, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:36:25', '2021-04-30 13:36:25'),
	(292, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:36:53', '2021-04-30 13:36:53'),
	(293, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Economie et Sociologie Rurale","code_spe":"ESR","cycle_filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:37:07', '2021-04-30 13:37:07'),
	(294, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:37:08', '2021-04-30 13:37:08'),
	(295, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:37:11', '2021-04-30 13:37:11'),
	(296, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"G\\u00e9nie Rural","code_spe":"GR","cycle_filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:37:28', '2021-04-30 13:37:28'),
	(297, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:37:29', '2021-04-30 13:37:29'),
	(298, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:37:41', '2021-04-30 13:37:41'),
	(299, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Entreprenariat Agropastoral","code_spe":"EA","cycle_filiere_id":"3","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:37:51', '2021-04-30 13:37:51'),
	(300, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:37:51', '2021-04-30 13:37:51'),
	(301, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:39:12', '2021-04-30 13:39:12'),
	(302, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Information Industrielle & Automatisme","code_spe":"IIA","cycle_filiere_id":"6","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:39:26', '2021-04-30 13:39:26'),
	(303, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:39:26', '2021-04-30 13:39:26'),
	(304, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:39:37', '2021-04-30 13:39:37'),
	(305, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Maintenance des Syst\\u00e8mes Informatique","code_spe":"MSI","cycle_filiere_id":"6","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:39:58', '2021-04-30 13:39:58'),
	(306, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:39:59', '2021-04-30 13:39:59'),
	(307, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:40:09', '2021-04-30 13:40:09'),
	(308, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Gestion des syst\\u00e8mes d\'Informatiques","code_spe":"GSI","cycle_filiere_id":"6","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:40:34', '2021-04-30 13:40:34'),
	(309, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:40:35', '2021-04-30 13:40:35'),
	(310, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:40:43', '2021-04-30 13:40:43'),
	(311, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"G\\u00e9nie Logiciel","code_spe":"GLO","cycle_filiere_id":"6","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:41:03', '2021-04-30 13:41:03'),
	(312, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:41:03', '2021-04-30 13:41:03'),
	(313, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:41:32', '2021-04-30 13:41:32'),
	(314, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Communication des organisations","code_spe":"CO","cycle_filiere_id":"14","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:41:57', '2021-04-30 13:41:57'),
	(315, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:41:57', '2021-04-30 13:41:57'),
	(316, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:42:06', '2021-04-30 13:42:06'),
	(317, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Marketing et Publicit\\u00e9","code_spe":"MP","cycle_filiere_id":"14","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:42:19', '2021-04-30 13:42:19'),
	(318, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:42:20', '2021-04-30 13:42:20'),
	(319, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:42:30', '2021-04-30 13:42:30'),
	(320, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Journalisme","code_spe":null,"cycle_filiere_id":"14","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:42:40', '2021-04-30 13:42:40'),
	(321, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:42:41', '2021-04-30 13:42:41'),
	(322, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container"}', '2021-04-30 13:42:50', '2021-04-30 13:42:50'),
	(323, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container","page":"2"}', '2021-04-30 13:42:53', '2021-04-30 13:42:53'),
	(324, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"20","_pjax":"#pjax-container","page":"2"}', '2021-04-30 13:43:56', '2021-04-30 13:43:56'),
	(325, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"20","_pjax":"#pjax-container","page":"1"}', '2021-04-30 13:43:57', '2021-04-30 13:43:57'),
	(326, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:44:20', '2021-04-30 13:44:20'),
	(327, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Gestion et Management H\\u00f4telier","code_spe":"GMH","cycle_filiere_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites?per_page=20&page=1"}', '2021-04-30 13:44:33', '2021-04-30 13:44:33'),
	(328, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"20","page":"1"}', '2021-04-30 13:44:34', '2021-04-30 13:44:34'),
	(329, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:44:42', '2021-04-30 13:44:42'),
	(330, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"G\\u00e9nie Culinaire","code_spe":"GC","cycle_filiere_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites?per_page=20&page=1"}', '2021-04-30 13:44:53', '2021-04-30 13:44:53'),
	(331, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"20","page":"1"}', '2021-04-30 13:44:54', '2021-04-30 13:44:54'),
	(332, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:45:10', '2021-04-30 13:45:10'),
	(333, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"Management Touristique","code_spe":"MT","cycle_filiere_id":"4","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites?per_page=20&page=1"}', '2021-04-30 13:45:27', '2021-04-30 13:45:27'),
	(334, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"20","page":"1"}', '2021-04-30 13:45:27', '2021-04-30 13:45:27'),
	(335, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:45:56', '2021-04-30 13:45:56'),
	(336, 1, 'admin/filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:46:00', '2021-04-30 13:46:00'),
	(337, 1, 'admin/filieres', 'POST', '127.0.0.1', '{"nom_filiere":"T\\u00e9l\\u00e9com, R\\u00e9seaux & S\\u00e9curit\\u00e9","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/filieres"}', '2021-04-30 13:46:07', '2021-04-30 13:46:07'),
	(338, 1, 'admin/filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:46:07', '2021-04-30 13:46:07'),
	(339, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:46:30', '2021-04-30 13:46:30'),
	(340, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:46:36', '2021-04-30 13:46:36'),
	(341, 1, 'admin/cycle_filieres', 'POST', '127.0.0.1', '{"cycle_id":"1","filiere_id":"10","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-04-30 13:46:45', '2021-04-30 13:46:45'),
	(342, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:46:45', '2021-04-30 13:46:45'),
	(343, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:46:58', '2021-04-30 13:46:58'),
	(344, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:47:00', '2021-04-30 13:47:00'),
	(345, 1, 'admin/specialites', 'POST', '127.0.0.1', '{"nom_spe":"T\\u00e9l\\u00e9com, R\\u00e9seaux & S\\u00e9curit\\u00e9","code_spe":null,"cycle_filiere_id":"15","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites"}', '2021-04-30 13:47:18', '2021-04-30 13:47:18'),
	(346, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-04-30 13:47:18', '2021-04-30 13:47:18'),
	(347, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container"}', '2021-04-30 13:48:17', '2021-04-30 13:48:17'),
	(348, 1, 'admin/matieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:48:27', '2021-04-30 13:48:27'),
	(349, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:48:31', '2021-04-30 13:48:31'),
	(350, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Topographie \\/ Initiation \\u00e0 un logiciel topographique","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:50:19', '2021-04-30 13:50:19'),
	(351, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:50:20', '2021-04-30 13:50:20'),
	(352, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:50:21', '2021-04-30 13:50:21'),
	(353, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Calcul Informatique de structure","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:50:38', '2021-04-30 13:50:38'),
	(354, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:50:38', '2021-04-30 13:50:38'),
	(355, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:50:40', '2021-04-30 13:50:40'),
	(356, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Second \\u0153uvre","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:50:54', '2021-04-30 13:50:54'),
	(357, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:50:55', '2021-04-30 13:50:55'),
	(358, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:50:58', '2021-04-30 13:50:58'),
	(359, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Calcul des structures et descente des charges","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:51:49', '2021-04-30 13:51:49'),
	(360, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:51:49', '2021-04-30 13:51:49'),
	(361, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:51:51', '2021-04-30 13:51:51'),
	(362, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Math\\u00e9matiques appliqu\\u00e9es et outils","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:53:04', '2021-04-30 13:53:04'),
	(363, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:53:05', '2021-04-30 13:53:05'),
	(364, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:53:06', '2021-04-30 13:53:06'),
	(365, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"dimensionnement des ponts","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:54:38', '2021-04-30 13:54:38'),
	(366, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:54:39', '2021-04-30 13:54:39'),
	(367, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:54:41', '2021-04-30 13:54:41'),
	(368, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Coordination des travaux publics","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:54:59', '2021-04-30 13:54:59'),
	(369, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:55:00', '2021-04-30 13:55:00'),
	(370, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:55:01', '2021-04-30 13:55:01'),
	(371, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Coordination des travaux des b\\u00e2timents","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:55:24', '2021-04-30 13:55:24'),
	(372, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:55:25', '2021-04-30 13:55:25'),
	(373, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:55:27', '2021-04-30 13:55:27'),
	(374, 1, 'admin/matieres', 'POST', '127.0.0.1', '{"intitule_mat":"Qualit\\u00e9 et s\\u00e9curit\\u00e9 \\/ construction metallique","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/matieres"}', '2021-04-30 13:55:52', '2021-04-30 13:55:52'),
	(375, 1, 'admin/matieres', 'GET', '127.0.0.1', '[]', '2021-04-30 13:55:52', '2021-04-30 13:55:52'),
	(376, 1, 'admin/matieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:55:54', '2021-04-30 13:55:54'),
	(377, 1, 'admin/groupe_ues', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:57:14', '2021-04-30 13:57:14'),
	(378, 1, 'admin/groupe_ues/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 13:57:16', '2021-04-30 13:57:16'),
	(379, 1, 'admin/groupe_ues/create', 'GET', '127.0.0.1', '[]', '2021-04-30 14:07:29', '2021-04-30 14:07:29'),
	(380, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 14:07:41', '2021-04-30 14:07:41'),
	(381, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-04-30 14:08:31', '2021-04-30 14:08:31'),
	(382, 1, 'admin/mat_spes/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 14:08:36', '2021-04-30 14:08:36'),
	(383, 1, 'admin/mat_spes/create', 'GET', '127.0.0.1', '[]', '2021-04-30 14:10:05', '2021-04-30 14:10:05'),
	(384, 1, 'admin/mat_spes/create', 'GET', '127.0.0.1', '[]', '2021-04-30 14:12:20', '2021-04-30 14:12:20'),
	(385, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 14:16:18', '2021-04-30 14:16:18'),
	(386, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 14:18:10', '2021-04-30 14:18:10'),
	(387, 1, 'admin/mat_spes/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 14:18:12', '2021-04-30 14:18:12'),
	(388, 1, 'admin/mat_spes', 'POST', '127.0.0.1', '{"matiere_id":"1","specialite_id":"5","semestre":"6","credit":"3","code_mat":"GC611","niveau_id":"5","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/mat_spes"}', '2021-04-30 14:18:52', '2021-04-30 14:18:52'),
	(389, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-04-30 14:18:53', '2021-04-30 14:18:53'),
	(390, 1, 'admin/mat_spes/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-04-30 14:18:55', '2021-04-30 14:18:55'),
	(391, 1, 'admin/mat_spes', 'POST', '127.0.0.1', '{"matiere_id":"2","specialite_id":"5","semestre":"6","credit":"3","code_mat":"GC611","niveau_id":"5","_token":"bFluP2vPrr9XNbm5mFRVqmV7XhSrvbd3fpCKeVV2","_previous_":"http:\\/\\/localhost:8000\\/admin\\/mat_spes"}', '2021-04-30 14:24:46', '2021-04-30 14:24:46'),
	(392, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-04-30 14:24:46', '2021-04-30 14:24:46'),
	(393, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-10 07:55:21', '2021-05-10 07:55:21'),
	(394, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 07:55:32', '2021-05-10 07:55:32'),
	(395, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 07:55:38', '2021-05-10 07:55:38'),
	(396, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 07:55:39', '2021-05-10 07:55:39'),
	(397, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 07:55:54', '2021-05-10 07:55:54'),
	(398, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 07:56:41', '2021-05-10 07:56:41'),
	(399, 1, 'admin/mat_spes/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 07:56:47', '2021-05-10 07:56:47'),
	(400, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-10 09:39:05', '2021-05-10 09:39:05'),
	(401, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 09:39:24', '2021-05-10 09:39:24'),
	(402, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-05-10 12:03:54', '2021-05-10 12:03:54'),
	(403, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 12:20:24', '2021-05-10 12:20:24'),
	(404, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 13:40:46', '2021-05-10 13:40:46'),
	(405, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 13:40:58', '2021-05-10 13:40:58'),
	(406, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 13:56:23', '2021-05-10 13:56:23'),
	(407, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":"bts"}', '2021-05-10 14:02:06', '2021-05-10 14:02:06'),
	(408, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 14:02:15', '2021-05-10 14:02:15'),
	(409, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-10 14:03:01', '2021-05-10 14:03:01'),
	(410, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 07:47:15', '2021-05-11 07:47:15'),
	(411, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 07:47:55', '2021-05-11 07:47:55'),
	(412, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 07:48:15', '2021-05-11 07:48:15'),
	(413, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 07:48:57', '2021-05-11 07:48:57'),
	(414, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","per_page":"30"}', '2021-05-11 07:49:44', '2021-05-11 07:49:44'),
	(415, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 07:51:34', '2021-05-11 07:51:34'),
	(416, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 07:51:53', '2021-05-11 07:51:53'),
	(417, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:04:50', '2021-05-11 08:04:50'),
	(418, 1, 'admin/specialites', 'GET', '127.0.0.1', '[]', '2021-05-11 08:17:58', '2021-05-11 08:17:58'),
	(419, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:18:16', '2021-05-11 08:18:16'),
	(420, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-11 08:20:19', '2021-05-11 08:20:19'),
	(421, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:25:55', '2021-05-11 08:25:55'),
	(422, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:27:08', '2021-05-11 08:27:08'),
	(423, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-11 08:27:11', '2021-05-11 08:27:11'),
	(424, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:30:07', '2021-05-11 08:30:07'),
	(425, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-11 08:30:09', '2021-05-11 08:30:09'),
	(426, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:30:29', '2021-05-11 08:30:29'),
	(427, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-11 08:32:45', '2021-05-11 08:32:45'),
	(428, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-11 08:33:04', '2021-05-11 08:33:04'),
	(429, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:33:15', '2021-05-11 08:33:15'),
	(430, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-11 08:34:15', '2021-05-11 08:34:15'),
	(431, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-11 08:34:25', '2021-05-11 08:34:25'),
	(432, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-11 08:34:39', '2021-05-11 08:34:39'),
	(433, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:34:48', '2021-05-11 08:34:48'),
	(434, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-11 08:35:36', '2021-05-11 08:35:36'),
	(435, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:49:38', '2021-05-11 08:49:38'),
	(436, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","page":"2"}', '2021-05-11 08:50:18', '2021-05-11 08:50:18'),
	(437, 1, 'admin/specialites/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 08:50:23', '2021-05-11 08:50:23'),
	(438, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"page":"2","_pjax":"#pjax-container"}', '2021-05-11 08:50:37', '2021-05-11 08:50:37'),
	(439, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","page":"1"}', '2021-05-11 08:50:41', '2021-05-11 08:50:41'),
	(440, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","page":"2"}', '2021-05-11 08:51:14', '2021-05-11 08:51:14'),
	(441, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","page":"1"}', '2021-05-11 08:51:18', '2021-05-11 08:51:18'),
	(442, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 09:19:54', '2021-05-11 09:19:54'),
	(443, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 09:20:12', '2021-05-11 09:20:12'),
	(444, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 10:04:37', '2021-05-11 10:04:37'),
	(445, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-11 14:16:30', '2021-05-11 14:16:30'),
	(446, 1, 'admin/inscriptions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-11 14:17:41', '2021-05-11 14:17:41'),
	(447, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-17 09:09:27', '2021-05-17 09:09:27'),
	(448, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:09:46', '2021-05-17 09:09:46'),
	(449, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:09:51', '2021-05-17 09:09:51'),
	(450, 1, 'admin/cycle_filieres/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:10:07', '2021-05-17 09:10:07'),
	(451, 1, 'admin/cycle_filieres/1', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"1","domaine_cycle_id":"4","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:10:18', '2021-05-17 09:10:18'),
	(452, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:10:19', '2021-05-17 09:10:19'),
	(453, 1, 'admin/cycle_filieres/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:10:26', '2021-05-17 09:10:26'),
	(454, 1, 'admin/cycle_filieres/2', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"2","domaine_cycle_id":"2","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:10:39', '2021-05-17 09:10:39'),
	(455, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:10:39', '2021-05-17 09:10:39'),
	(456, 1, 'admin/cycle_filieres/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:10:50', '2021-05-17 09:10:50'),
	(457, 1, 'admin/cycle_filieres/6', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"6","domaine_cycle_id":"6","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:10:58', '2021-05-17 09:10:58'),
	(458, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:10:58', '2021-05-17 09:10:58'),
	(459, 1, 'admin/cycle_filieres/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:11:26', '2021-05-17 09:11:26'),
	(460, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:12:09', '2021-05-17 09:12:09'),
	(461, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:12:20', '2021-05-17 09:12:20'),
	(462, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:12:28', '2021-05-17 09:12:28'),
	(463, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"3","cycle_id":"1","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-17 09:12:34', '2021-05-17 09:12:34'),
	(464, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-17 09:12:35', '2021-05-17 09:12:35'),
	(465, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:12:37', '2021-05-17 09:12:37'),
	(466, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"3","cycle_id":"2","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-17 09:12:43', '2021-05-17 09:12:43'),
	(467, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-17 09:12:44', '2021-05-17 09:12:44'),
	(468, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:12:45', '2021-05-17 09:12:45'),
	(469, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"3","cycle_id":"4","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-17 09:12:53', '2021-05-17 09:12:53'),
	(470, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-17 09:12:54', '2021-05-17 09:12:54'),
	(471, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:13:04', '2021-05-17 09:13:04'),
	(472, 1, 'admin/cycle_filieres/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:13:10', '2021-05-17 09:13:10'),
	(473, 1, 'admin/cycle_filieres/1', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"1","domaine_cycle_id":"7","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:13:19', '2021-05-17 09:13:19'),
	(474, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:13:20', '2021-05-17 09:13:20'),
	(475, 1, 'admin/cycle_filieres/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:13:28', '2021-05-17 09:13:28'),
	(476, 1, 'admin/cycle_filieres/8', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"1","domaine_cycle_id":"8","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:13:32', '2021-05-17 09:13:32'),
	(477, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:13:33', '2021-05-17 09:13:33'),
	(478, 1, 'admin/cycle_filieres/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:14:11', '2021-05-17 09:14:11'),
	(479, 1, 'admin/cycle_filieres/6', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"6","domaine_cycle_id":"4","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:14:15', '2021-05-17 09:14:15'),
	(480, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:14:16', '2021-05-17 09:14:16'),
	(481, 1, 'admin/cycle_filieres/15/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:14:25', '2021-05-17 09:14:25'),
	(482, 1, 'admin/cycle_filieres/15', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"10","domaine_cycle_id":"5","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:14:33', '2021-05-17 09:14:33'),
	(483, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:14:33', '2021-05-17 09:14:33'),
	(484, 1, 'admin/cycle_filieres/7/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:14:47', '2021-05-17 09:14:47'),
	(485, 1, 'admin/cycle_filieres/7', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"7","domaine_cycle_id":"4","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:14:53', '2021-05-17 09:14:53'),
	(486, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:14:54', '2021-05-17 09:14:54'),
	(487, 1, 'admin/cycle_filieres/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:15:44', '2021-05-17 09:15:44'),
	(488, 1, 'admin/cycle_filieres/11', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"4","domaine_cycle_id":"1","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:15:54', '2021-05-17 09:15:54'),
	(489, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:15:54', '2021-05-17 09:15:54'),
	(490, 1, 'admin/cycle_filieres/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:16:12', '2021-05-17 09:16:12'),
	(491, 1, 'admin/cycle_filieres/11', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"4","domaine_cycle_id":"2","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:16:17', '2021-05-17 09:16:17'),
	(492, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:16:17', '2021-05-17 09:16:17'),
	(493, 1, 'admin/cycle_filieres/9/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:17:20', '2021-05-17 09:17:20'),
	(494, 1, 'admin/cycle_filieres/9', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"2","domaine_cycle_id":"3","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:17:26', '2021-05-17 09:17:26'),
	(495, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:17:27', '2021-05-17 09:17:27'),
	(496, 1, 'admin/cycle_filieres/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:28:09', '2021-05-17 09:28:09'),
	(497, 1, 'admin/cycle_filieres/2', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"2","domaine_cycle_id":"2","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:28:13', '2021-05-17 09:28:13'),
	(498, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:28:13', '2021-05-17 09:28:13'),
	(499, 1, 'admin/cycle_filieres/9/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:28:29', '2021-05-17 09:28:29'),
	(500, 1, 'admin/cycle_filieres/9', 'PUT', '127.0.0.1', '{"cycle_id":"4","filiere_id":"2","domaine_cycle_id":"3","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:28:34', '2021-05-17 09:28:34'),
	(501, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:28:35', '2021-05-17 09:28:35'),
	(502, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:33:33', '2021-05-17 09:33:33'),
	(503, 1, 'admin/domaines/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:33:39', '2021-05-17 09:33:39'),
	(504, 1, 'admin/domaines', 'POST', '127.0.0.1', '{"nom_domaine":"H\\u00f4tellerie","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaines"}', '2021-05-17 09:33:53', '2021-05-17 09:33:53'),
	(505, 1, 'admin/domaines', 'GET', '127.0.0.1', '[]', '2021-05-17 09:33:53', '2021-05-17 09:33:53'),
	(506, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:34:03', '2021-05-17 09:34:03'),
	(507, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:34:10', '2021-05-17 09:34:10'),
	(508, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"4","cycle_id":"1","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-17 09:34:18', '2021-05-17 09:34:18'),
	(509, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-17 09:34:18', '2021-05-17 09:34:18'),
	(510, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:34:20', '2021-05-17 09:34:20'),
	(511, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"4","cycle_id":"2","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-17 09:34:25', '2021-05-17 09:34:25'),
	(512, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-17 09:34:26', '2021-05-17 09:34:26'),
	(513, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:34:28', '2021-05-17 09:34:28'),
	(514, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"4","cycle_id":"4","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-17 09:34:33', '2021-05-17 09:34:33'),
	(515, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-17 09:34:34', '2021-05-17 09:34:34'),
	(516, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:34:52', '2021-05-17 09:34:52'),
	(517, 1, 'admin/cycle_filieres/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:35:08', '2021-05-17 09:35:08'),
	(518, 1, 'admin/cycle_filieres/4', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"5","domaine_cycle_id":"10","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:35:21', '2021-05-17 09:35:21'),
	(519, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:35:21', '2021-05-17 09:35:21'),
	(520, 1, 'admin/cycle_filieres/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:35:25', '2021-05-17 09:35:25'),
	(521, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:35:28', '2021-05-17 09:35:28'),
	(522, 1, 'admin/cycle_filieres/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:35:36', '2021-05-17 09:35:36'),
	(523, 1, 'admin/cycle_filieres/12', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"5","domaine_cycle_id":"11","_token":"jEyXE9fY5PCFOQJDE9KaP4TfKjfo3CjWXe8feI1m","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-17 09:35:46', '2021-05-17 09:35:46'),
	(524, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-17 09:35:46', '2021-05-17 09:35:46'),
	(525, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:41:52', '2021-05-17 09:41:52'),
	(526, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","per_page":"30"}', '2021-05-17 09:42:08', '2021-05-17 09:42:08'),
	(527, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:42:27', '2021-05-17 09:42:27'),
	(528, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-17 09:43:10', '2021-05-17 09:43:10'),
	(529, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-17 09:43:24', '2021-05-17 09:43:24'),
	(530, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-18 08:57:08', '2021-05-18 08:57:08'),
	(531, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 08:57:27', '2021-05-18 08:57:27'),
	(532, 1, 'admin/notes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 08:57:34', '2021-05-18 08:57:34'),
	(533, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 09:17:56', '2021-05-18 09:17:56'),
	(534, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 09:20:02', '2021-05-18 09:20:02'),
	(535, 1, 'admin/cycle_filieres/13/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:01:15', '2021-05-18 10:01:15'),
	(536, 1, 'admin/cycle_filieres/13', 'PUT', '127.0.0.1', '{"cycle_id":"4","filiere_id":"6","domaine_cycle_id":"6","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-18 10:01:21', '2021-05-18 10:01:21'),
	(537, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-18 10:01:21', '2021-05-18 10:01:21'),
	(538, 1, 'admin/cycle_filieres/15/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:01:45', '2021-05-18 10:01:45'),
	(539, 1, 'admin/cycle_filieres/15', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"10","domaine_cycle_id":"5","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-18 10:01:51', '2021-05-18 10:01:51'),
	(540, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-18 10:01:51', '2021-05-18 10:01:51'),
	(541, 1, 'admin/cycle_filieres/14/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:03:35', '2021-05-18 10:03:35'),
	(542, 1, 'admin/cycle_filieres/14', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"7","domaine_cycle_id":"5","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-18 10:03:40', '2021-05-18 10:03:40'),
	(543, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-18 10:03:41', '2021-05-18 10:03:41'),
	(544, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:05:25', '2021-05-18 10:05:25'),
	(545, 1, 'admin/cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:05:40', '2021-05-18 10:05:40'),
	(546, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:05:47', '2021-05-18 10:05:47'),
	(547, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:07:01', '2021-05-18 10:07:01'),
	(548, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:07:40', '2021-05-18 10:07:40'),
	(549, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:09:04', '2021-05-18 10:09:04'),
	(550, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:09:50', '2021-05-18 10:09:50'),
	(551, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:10:36', '2021-05-18 10:10:36'),
	(552, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:14:01', '2021-05-18 10:14:01'),
	(553, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 10:14:18', '2021-05-18 10:14:18'),
	(554, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 11:03:59', '2021-05-18 11:03:59'),
	(555, 1, 'admin/cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 11:49:07', '2021-05-18 11:49:07'),
	(556, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 11:49:21', '2021-05-18 11:49:21'),
	(557, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 11:49:28', '2021-05-18 11:49:28'),
	(558, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:00:55', '2021-05-18 12:00:55'),
	(559, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:01:29', '2021-05-18 12:01:29'),
	(560, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","per_page":"30"}', '2021-05-18 12:01:47', '2021-05-18 12:01:47'),
	(561, 1, 'admin/domaines', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:05:30', '2021-05-18 12:05:30'),
	(562, 1, 'admin/domaines/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:05:35', '2021-05-18 12:05:35'),
	(563, 1, 'admin/domaines', 'POST', '127.0.0.1', '{"nom_domaine":"Agriculture","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaines"}', '2021-05-18 12:05:46', '2021-05-18 12:05:46'),
	(564, 1, 'admin/domaines', 'GET', '127.0.0.1', '[]', '2021-05-18 12:05:46', '2021-05-18 12:05:46'),
	(565, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:05:56', '2021-05-18 12:05:56'),
	(566, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:06:08', '2021-05-18 12:06:08'),
	(567, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"5","cycle_id":"1","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-18 12:06:16', '2021-05-18 12:06:16'),
	(568, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-18 12:06:17', '2021-05-18 12:06:17'),
	(569, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:06:18', '2021-05-18 12:06:18'),
	(570, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"5","cycle_id":"2","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-18 12:06:24', '2021-05-18 12:06:24'),
	(571, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-18 12:06:24', '2021-05-18 12:06:24'),
	(572, 1, 'admin/domaine_cycles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:06:26', '2021-05-18 12:06:26'),
	(573, 1, 'admin/domaine_cycles', 'POST', '127.0.0.1', '{"domaine_id":"5","cycle_id":"4","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_previous_":"http:\\/\\/localhost:8000\\/admin\\/domaine_cycles"}', '2021-05-18 12:06:34', '2021-05-18 12:06:34'),
	(574, 1, 'admin/domaine_cycles', 'GET', '127.0.0.1', '[]', '2021-05-18 12:06:35', '2021-05-18 12:06:35'),
	(575, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:06:46', '2021-05-18 12:06:46'),
	(576, 1, 'admin/cycle_filieres/3/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:07:06', '2021-05-18 12:07:06'),
	(577, 1, 'admin/cycle_filieres/3', 'PUT', '127.0.0.1', '{"cycle_id":"1","filiere_id":"3","domaine_cycle_id":"13","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-18 12:07:16', '2021-05-18 12:07:16'),
	(578, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-18 12:07:16', '2021-05-18 12:07:16'),
	(579, 1, 'admin/cycle_filieres/10/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 12:07:39', '2021-05-18 12:07:39'),
	(580, 1, 'admin/cycle_filieres/10', 'PUT', '127.0.0.1', '{"cycle_id":"2","filiere_id":"3","domaine_cycle_id":"14","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/cycle_filieres"}', '2021-05-18 12:07:46', '2021-05-18 12:07:46'),
	(581, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '[]', '2021-05-18 12:07:46', '2021-05-18 12:07:46'),
	(582, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 13:03:34', '2021-05-18 13:03:34'),
	(583, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","per_page":"30"}', '2021-05-18 13:10:10', '2021-05-18 13:10:10'),
	(584, 1, 'admin/specialites/22/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-18 13:11:01', '2021-05-18 13:11:01'),
	(585, 1, 'admin/specialites/22', 'PUT', '127.0.0.1', '{"nom_spe":"T\\u00e9l\\u00e9com, R\\u00e9seaux & S\\u00e9curit\\u00e9","code_spe":"TRS","cycle_filiere_id":"15","_token":"fHutnJTJbdgNvqA1AJ4yDuY8DY29GtxbamWN0Rwa","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/specialites?&per_page=30"}', '2021-05-18 13:11:09', '2021-05-18 13:11:09'),
	(586, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"per_page":"30"}', '2021-05-18 13:11:09', '2021-05-18 13:11:09'),
	(587, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-19 07:29:16', '2021-05-19 07:29:16'),
	(588, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 08:37:11', '2021-05-19 08:37:11'),
	(589, 1, 'admin/filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 09:14:58', '2021-05-19 09:14:58'),
	(590, 1, 'admin/cycle_filieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 09:16:01', '2021-05-19 09:16:01'),
	(591, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 11:10:44', '2021-05-19 11:10:44'),
	(592, 1, 'admin/niveaux', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 11:12:15', '2021-05-19 11:12:15'),
	(593, 1, 'admin/matieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 11:13:54', '2021-05-19 11:13:54'),
	(594, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 12:57:53', '2021-05-19 12:57:53'),
	(595, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-05-19 13:56:52', '2021-05-19 13:56:52'),
	(596, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-05-19 14:51:24', '2021-05-19 14:51:24'),
	(597, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 14:56:06', '2021-05-19 14:56:06'),
	(598, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 14:58:51', '2021-05-19 14:58:51'),
	(599, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-05-19 14:59:28', '2021-05-19 14:59:28'),
	(600, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '[]', '2021-05-19 14:59:54', '2021-05-19 14:59:54'),
	(601, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 15:00:11', '2021-05-19 15:00:11'),
	(602, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 15:00:28', '2021-05-19 15:00:28'),
	(603, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 15:00:41', '2021-05-19 15:00:41'),
	(604, 1, 'admin/mat_spes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 15:00:44', '2021-05-19 15:00:44'),
	(605, 1, 'admin/specialites', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 15:00:47', '2021-05-19 15:00:47'),
	(606, 1, 'admin/matieres', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2021-05-19 15:00:58', '2021-05-19 15:00:58');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_permissions
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_permissions : ~5 rows (environ)
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
	(1, 'All permission', '*', '', '*', NULL, NULL),
	(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
	(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
	(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
	(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_roles
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_roles : ~0 rows (environ)
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2021-04-30 11:19:42', '2021-04-30 11:19:42');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_role_menu
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_role_menu : ~0 rows (environ)
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
	(1, 2, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_role_permissions
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_role_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_role_users
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_role_users : ~0 rows (environ)
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_users
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_users : ~0 rows (environ)
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$V.3OJujAZQcRutokOzbJ5uNCC1B8yzuhnDxkFdC4sy/01Fb6iSDJq', 'Administrator', NULL, 'u2zZZfb49kaI9bFbPNNtkaELLoIwerjaELXsQHpE5ZxHiSL3debsThLjY9nA', '2021-04-30 11:19:42', '2021-04-30 11:19:42');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- Listage de la structure de la table note. admin_user_permissions
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.admin_user_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;

-- Listage de la structure de la table note. annee_acas
CREATE TABLE IF NOT EXISTS `annee_acas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `annee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.annee_acas : ~4 rows (environ)
/*!40000 ALTER TABLE `annee_acas` DISABLE KEYS */;
INSERT INTO `annee_acas` (`id`, `annee`, `created_at`, `updated_at`) VALUES
	(1, '2017/2018', '2021-04-30 12:01:30', '2021-04-30 12:01:30'),
	(2, '2018/2019', '2021-04-30 12:01:45', '2021-04-30 12:01:45'),
	(3, '2019/2020', '2021-04-30 12:01:57', '2021-04-30 12:01:57'),
	(4, '2020/2021', '2021-04-30 12:02:09', '2021-04-30 12:02:09');
/*!40000 ALTER TABLE `annee_acas` ENABLE KEYS */;

-- Listage de la structure de la table note. cycles
CREATE TABLE IF NOT EXISTS `cycles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_cycle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.cycles : ~4 rows (environ)
/*!40000 ALTER TABLE `cycles` DISABLE KEYS */;
INSERT INTO `cycles` (`id`, `nom_cycle`, `created_at`, `updated_at`) VALUES
	(1, 'BTS', '2021-04-30 11:58:10', '2021-04-30 11:58:10'),
	(2, 'Licence', '2021-04-30 11:58:20', '2021-04-30 11:58:20'),
	(3, 'Capacité', '2021-04-30 11:58:57', '2021-04-30 11:58:57'),
	(4, 'Master', '2021-04-30 11:59:12', '2021-04-30 11:59:12');
/*!40000 ALTER TABLE `cycles` ENABLE KEYS */;

-- Listage de la structure de la table note. cycle_filieres
CREATE TABLE IF NOT EXISTS `cycle_filieres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cycle_id` int(11) NOT NULL,
  `domaine_cycle_id` int(11) NOT NULL,
  `filiere_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.cycle_filieres : ~15 rows (environ)
/*!40000 ALTER TABLE `cycle_filieres` DISABLE KEYS */;
INSERT INTO `cycle_filieres` (`id`, `cycle_id`, `domaine_cycle_id`, `filiere_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 7, 1, '2021-04-30 12:22:38', '2021-05-17 09:13:19'),
	(2, 2, 2, 2, '2021-04-30 12:22:48', '2021-05-17 09:28:13'),
	(3, 1, 13, 3, '2021-04-30 12:23:18', '2021-05-18 12:07:16'),
	(4, 1, 10, 5, '2021-04-30 12:23:30', '2021-05-17 09:35:21'),
	(5, 1, 1, 4, '2021-04-30 12:23:40', '2021-04-30 12:23:40'),
	(6, 1, 4, 6, '2021-04-30 12:24:06', '2021-05-17 09:14:15'),
	(7, 1, 4, 7, '2021-04-30 12:24:19', '2021-05-17 09:14:53'),
	(8, 2, 8, 1, '2021-04-30 12:24:29', '2021-05-17 09:13:32'),
	(9, 4, 3, 2, '2021-04-30 12:24:39', '2021-05-17 09:28:34'),
	(10, 2, 14, 3, '2021-04-30 12:24:48', '2021-05-18 12:07:46'),
	(11, 2, 2, 4, '2021-04-30 12:24:57', '2021-05-17 09:16:17'),
	(12, 2, 11, 5, '2021-04-30 12:25:08', '2021-05-17 09:35:46'),
	(13, 4, 6, 6, '2021-04-30 12:25:23', '2021-05-18 10:01:21'),
	(14, 2, 5, 7, '2021-04-30 12:25:41', '2021-05-18 10:03:41'),
	(15, 2, 5, 10, '2021-04-30 13:46:45', '2021-05-18 10:01:51');
/*!40000 ALTER TABLE `cycle_filieres` ENABLE KEYS */;

-- Listage de la structure de la table note. domaines
CREATE TABLE IF NOT EXISTS `domaines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_domaine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.domaines : ~2 rows (environ)
/*!40000 ALTER TABLE `domaines` DISABLE KEYS */;
INSERT INTO `domaines` (`id`, `nom_domaine`, `created_at`, `updated_at`) VALUES
	(1, 'Industrie et technologies', '2021-04-30 12:27:04', '2021-04-30 12:27:04'),
	(2, 'Informatique', '2021-04-30 12:27:13', '2021-04-30 12:27:13'),
	(3, 'Gestion', '2021-04-30 12:27:24', '2021-04-30 12:27:24'),
	(4, 'Hôtellerie', '2021-05-17 09:33:53', '2021-05-17 09:33:53'),
	(5, 'Agriculture', '2021-05-18 12:05:46', '2021-05-18 12:05:46');
/*!40000 ALTER TABLE `domaines` ENABLE KEYS */;

-- Listage de la structure de la table note. domaine_cycles
CREATE TABLE IF NOT EXISTS `domaine_cycles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domaine_id` int(11) NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.domaine_cycles : ~11 rows (environ)
/*!40000 ALTER TABLE `domaine_cycles` DISABLE KEYS */;
INSERT INTO `domaine_cycles` (`id`, `domaine_id`, `cycle_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-04-30 12:34:14', '2021-04-30 12:34:14'),
	(2, 1, 2, '2021-04-30 12:34:25', '2021-04-30 12:34:25'),
	(3, 1, 4, '2021-04-30 12:34:39', '2021-04-30 12:34:39'),
	(4, 2, 1, '2021-04-30 12:34:48', '2021-04-30 12:34:48'),
	(5, 2, 2, '2021-04-30 12:34:58', '2021-04-30 12:34:58'),
	(6, 2, 4, '2021-04-30 12:36:37', '2021-04-30 12:36:37'),
	(7, 3, 1, '2021-05-17 09:12:34', '2021-05-17 09:12:34'),
	(8, 3, 2, '2021-05-17 09:12:43', '2021-05-17 09:12:43'),
	(9, 3, 4, '2021-05-17 09:12:53', '2021-05-17 09:12:53'),
	(10, 4, 1, '2021-05-17 09:34:18', '2021-05-17 09:34:18'),
	(11, 4, 2, '2021-05-17 09:34:25', '2021-05-17 09:34:25'),
	(12, 4, 4, '2021-05-17 09:34:33', '2021-05-17 09:34:33'),
	(13, 5, 1, '2021-05-18 12:06:16', '2021-05-18 12:06:16'),
	(14, 5, 2, '2021-05-18 12:06:24', '2021-05-18 12:06:24'),
	(15, 5, 4, '2021-05-18 12:06:34', '2021-05-18 12:06:34');
/*!40000 ALTER TABLE `domaine_cycles` ENABLE KEYS */;

-- Listage de la structure de la table note. domaine_etabs
CREATE TABLE IF NOT EXISTS `domaine_etabs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `etab_id` int(11) NOT NULL,
  `domaine_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.domaine_etabs : ~2 rows (environ)
/*!40000 ALTER TABLE `domaine_etabs` DISABLE KEYS */;
INSERT INTO `domaine_etabs` (`id`, `etab_id`, `domaine_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, '2021-04-30 12:54:03', '2021-04-30 12:54:03'),
	(2, 2, 2, '2021-04-30 12:54:14', '2021-04-30 12:54:14');
/*!40000 ALTER TABLE `domaine_etabs` ENABLE KEYS */;

-- Listage de la structure de la table note. etablissements
CREATE TABLE IF NOT EXISTS `etablissements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_etab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_etab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_etab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_etab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.etablissements : ~2 rows (environ)
/*!40000 ALTER TABLE `etablissements` DISABLE KEYS */;
INSERT INTO `etablissements` (`id`, `nom_etab`, `adresse_etab`, `tel_etab`, `email_etab`, `created_at`, `updated_at`) VALUES
	(1, 'Université de Yaoundé 2', 'BP. 18 SOA, Cameroun', '+237 242 32 21 32', 'courrier@univ-yaounde2.org', '2021-04-30 12:41:42', '2021-04-30 12:44:08'),
	(2, 'Université de Ngaoundéré', 'B.P: 454 Ngaoundéré – Cameroun', '+237 222 25 40 02', 'un@univ-ndere.cm', '2021-04-30 12:43:36', '2021-04-30 12:43:36');
/*!40000 ALTER TABLE `etablissements` ENABLE KEYS */;

-- Listage de la structure de la table note. etudiants
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `matricule_etud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_etud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naiss` date NOT NULL,
  `lieu_naiss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_etud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_etud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.etudiants : ~0 rows (environ)
/*!40000 ALTER TABLE `etudiants` DISABLE KEYS */;
/*!40000 ALTER TABLE `etudiants` ENABLE KEYS */;

-- Listage de la structure de la table note. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table note. filieres
CREATE TABLE IF NOT EXISTS `filieres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_filiere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.filieres : ~8 rows (environ)
/*!40000 ALTER TABLE `filieres` DISABLE KEYS */;
INSERT INTO `filieres` (`id`, `nom_filiere`, `created_at`, `updated_at`) VALUES
	(1, 'Gestion', '2021-04-30 12:04:00', '2021-04-30 12:04:00'),
	(2, 'Génie électrique', '2021-04-30 12:04:18', '2021-04-30 12:04:18'),
	(3, 'Argonomie', '2021-04-30 12:04:29', '2021-04-30 12:04:29'),
	(4, 'Génie civil', '2021-04-30 12:04:42', '2021-04-30 12:04:42'),
	(5, 'Hôtellerie & Restauration', '2021-04-30 12:05:03', '2021-04-30 12:05:03'),
	(6, 'Génie Informatique', '2021-04-30 12:05:12', '2021-04-30 12:05:12'),
	(7, 'Information & Communication', '2021-04-30 12:05:23', '2021-04-30 12:05:23'),
	(8, 'Télécom, Réseaux & Sécurité', '2021-04-30 12:05:36', '2021-04-30 12:05:36'),
	(9, 'Commerce', '2021-04-30 12:05:51', '2021-04-30 12:05:51'),
	(10, 'Télécom, Réseaux & Sécurité', '2021-04-30 13:46:07', '2021-04-30 13:46:07');
/*!40000 ALTER TABLE `filieres` ENABLE KEYS */;

-- Listage de la structure de la table note. groupe_ues
CREATE TABLE IF NOT EXISTS `groupe_ues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mat_spe_id` int(11) NOT NULL,
  `semestre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matiere_mere_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.groupe_ues : ~0 rows (environ)
/*!40000 ALTER TABLE `groupe_ues` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupe_ues` ENABLE KEYS */;

-- Listage de la structure de la table note. inscriptions
CREATE TABLE IF NOT EXISTS `inscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `etudiant_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `specialite_id` int(11) NOT NULL,
  `niveau_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.inscriptions : ~0 rows (environ)
/*!40000 ALTER TABLE `inscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscriptions` ENABLE KEYS */;

-- Listage de la structure de la table note. matieres
CREATE TABLE IF NOT EXISTS `matieres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `intitule_mat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.matieres : ~8 rows (environ)
/*!40000 ALTER TABLE `matieres` DISABLE KEYS */;
INSERT INTO `matieres` (`id`, `intitule_mat`, `created_at`, `updated_at`) VALUES
	(1, 'Topographie / Initiation à un logiciel topographique', '2021-04-30 13:50:19', '2021-04-30 13:50:19'),
	(2, 'Calcul Informatique de structure', '2021-04-30 13:50:38', '2021-04-30 13:50:38'),
	(3, 'Second œuvre', '2021-04-30 13:50:54', '2021-04-30 13:50:54'),
	(4, 'Calcul des structures et descente des charges', '2021-04-30 13:51:49', '2021-04-30 13:51:49'),
	(5, 'Mathématiques appliquées et outils', '2021-04-30 13:53:04', '2021-04-30 13:53:04'),
	(6, 'dimensionnement des ponts', '2021-04-30 13:54:38', '2021-04-30 13:54:38'),
	(7, 'Coordination des travaux publics', '2021-04-30 13:54:59', '2021-04-30 13:54:59'),
	(8, 'Coordination des travaux des bâtiments', '2021-04-30 13:55:25', '2021-04-30 13:55:25'),
	(9, 'Qualité et sécurité / construction metallique', '2021-04-30 13:55:52', '2021-04-30 13:55:52');
/*!40000 ALTER TABLE `matieres` ENABLE KEYS */;

-- Listage de la structure de la table note. mat_spes
CREATE TABLE IF NOT EXISTS `mat_spes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `matiere_id` int(11) NOT NULL,
  `specialite_id` int(11) NOT NULL,
  `semestre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `code_mat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.mat_spes : ~2 rows (environ)
/*!40000 ALTER TABLE `mat_spes` DISABLE KEYS */;
INSERT INTO `mat_spes` (`id`, `matiere_id`, `specialite_id`, `semestre`, `credit`, `code_mat`, `niveau_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 5, '6', 3, 'GC611', 5, '2021-04-30 14:18:52', '2021-04-30 14:18:52'),
	(2, 2, 5, '6', 3, 'GC611', 5, '2021-04-30 14:24:46', '2021-04-30 14:24:46');
/*!40000 ALTER TABLE `mat_spes` ENABLE KEYS */;

-- Listage de la structure de la table note. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.migrations : ~22 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_04_173148_create_admin_tables', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2021_04_12_102253_create_cycles_table', 1),
	(6, '2021_04_12_104739_create_filieres_table', 1),
	(7, '2021_04_12_104836_create_etablissements_table', 1),
	(8, '2021_04_12_104937_create_specialites_table', 1),
	(9, '2021_04_12_105008_create_niveaux_table', 1),
	(10, '2021_04_12_105036_create_matieres_table', 1),
	(11, '2021_04_12_105103_create_notes_table', 1),
	(12, '2021_04_12_105133_create_paiement_scolarites_table', 1),
	(13, '2021_04_12_105214_create_inscriptions_table', 1),
	(14, '2021_04_12_105248_create_type_notes_table', 1),
	(15, '2021_04_12_105412_create_mat_spes_table', 1),
	(16, '2021_04_12_105435_create_cycle_filieres_table', 1),
	(17, '2021_04_12_105456_create_domaine_cycles_table', 1),
	(18, '2021_04_12_105526_create_groupe_ues_table', 1),
	(19, '2021_04_12_105603_create_annee_acas_table', 1),
	(20, '2021_04_12_123104_create_domaine_etabs_table', 1),
	(21, '2021_04_12_124751_create_etudiants_table', 1),
	(22, '2021_04_14_115746_create_domaines_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table note. niveaux
CREATE TABLE IF NOT EXISTS `niveaux` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_niv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.niveaux : ~8 rows (environ)
/*!40000 ALTER TABLE `niveaux` DISABLE KEYS */;
INSERT INTO `niveaux` (`id`, `nom_niv`, `cycle_id`, `created_at`, `updated_at`) VALUES
	(1, 'BTS 1', 1, '2021-04-30 13:05:51', '2021-04-30 13:09:14'),
	(2, 'BTS 2', 1, '2021-04-30 13:06:02', '2021-04-30 13:09:25'),
	(3, 'Licence 1', 2, '2021-04-30 13:06:28', '2021-04-30 13:09:33'),
	(4, 'Licence 2', 2, '2021-04-30 13:06:38', '2021-04-30 13:09:52'),
	(5, 'Licence 3', 2, '2021-04-30 13:06:50', '2021-04-30 13:10:15'),
	(6, 'Capacité 1', 3, '2021-04-30 13:07:28', '2021-04-30 13:10:36'),
	(7, 'Capacité 2', 3, '2021-04-30 13:08:31', '2021-04-30 13:10:49'),
	(8, 'Master 1', 4, '2021-04-30 13:08:44', '2021-04-30 13:11:03'),
	(9, 'Master 2', 4, '2021-04-30 13:09:04', '2021-04-30 13:09:04');
/*!40000 ALTER TABLE `niveaux` ENABLE KEYS */;

-- Listage de la structure de la table note. notes
CREATE TABLE IF NOT EXISTS `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note` double NOT NULL DEFAULT '0',
  `type_note_id` int(11) NOT NULL DEFAULT '0',
  `mat_spe_id` int(11) NOT NULL DEFAULT '0',
  `inscription_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.notes : ~0 rows (environ)
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;

-- Listage de la structure de la table note. paiement_scolarites
CREATE TABLE IF NOT EXISTS `paiement_scolarites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `niveau_id` int(11) NOT NULL,
  `mat_spe_id` int(11) NOT NULL,
  `tranche1` double NOT NULL DEFAULT '0',
  `tranche2` double NOT NULL DEFAULT '0',
  `tranche3` double NOT NULL DEFAULT '0',
  `tranche4` double NOT NULL DEFAULT '0',
  `tranche5` double NOT NULL DEFAULT '0',
  `cache` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.paiement_scolarites : ~0 rows (environ)
/*!40000 ALTER TABLE `paiement_scolarites` DISABLE KEYS */;
/*!40000 ALTER TABLE `paiement_scolarites` ENABLE KEYS */;

-- Listage de la structure de la table note. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table note. specialites
CREATE TABLE IF NOT EXISTS `specialites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_spe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_spe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cycle_filiere_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.specialites : ~21 rows (environ)
/*!40000 ALTER TABLE `specialites` DISABLE KEYS */;
INSERT INTO `specialites` (`id`, `nom_spe`, `code_spe`, `cycle_filiere_id`, `created_at`, `updated_at`) VALUES
	(1, 'Comptabilité & Gestion d\'entreprises', 'CGE', 1, '2021-04-30 13:23:21', '2021-04-30 13:23:21'),
	(2, 'Banque et Finance', 'BF', 1, '2021-04-30 13:31:30', '2021-04-30 13:31:30'),
	(3, 'Electrotechnique', NULL, 2, '2021-04-30 13:34:14', '2021-04-30 13:34:14'),
	(4, 'Maintenance des systèmes électrique', NULL, 2, '2021-04-30 13:34:37', '2021-04-30 13:34:37'),
	(5, 'Bâtiment', 'BA', 5, '2021-04-30 13:35:14', '2021-04-30 13:35:14'),
	(6, 'Travaux Publics', 'TP', 5, '2021-04-30 13:35:36', '2021-04-30 13:35:36'),
	(7, 'Production animale', 'PA', 3, '2021-04-30 13:35:56', '2021-04-30 13:35:56'),
	(8, 'Production Végétale', 'PV', 3, '2021-04-30 13:36:25', '2021-04-30 13:36:25'),
	(9, 'Economie et Sociologie Rurale', 'ESR', 3, '2021-04-30 13:37:07', '2021-04-30 13:37:07'),
	(10, 'Génie Rural', 'GR', 3, '2021-04-30 13:37:28', '2021-04-30 13:37:28'),
	(11, 'Entreprenariat Agropastoral', 'EA', 3, '2021-04-30 13:37:51', '2021-04-30 13:37:51'),
	(12, 'Information Industrielle & Automatisme', 'IIA', 6, '2021-04-30 13:39:26', '2021-04-30 13:39:26'),
	(13, 'Maintenance des Systèmes Informatique', 'MSI', 6, '2021-04-30 13:39:58', '2021-04-30 13:39:58'),
	(14, 'Gestion des systèmes d\'Informatiques', 'GSI', 6, '2021-04-30 13:40:35', '2021-04-30 13:40:35'),
	(15, 'Génie Logiciel', 'GLO', 6, '2021-04-30 13:41:03', '2021-04-30 13:41:03'),
	(16, 'Communication des organisations', 'CO', 14, '2021-04-30 13:41:57', '2021-04-30 13:41:57'),
	(17, 'Marketing et Publicité', 'MP', 14, '2021-04-30 13:42:19', '2021-04-30 13:42:19'),
	(18, 'Journalisme', NULL, 14, '2021-04-30 13:42:40', '2021-04-30 13:42:40'),
	(19, 'Gestion et Management Hôtelier', 'GMH', 4, '2021-04-30 13:44:33', '2021-04-30 13:44:33'),
	(20, 'Génie Culinaire', 'GC', 4, '2021-04-30 13:44:53', '2021-04-30 13:44:53'),
	(21, 'Management Touristique', 'MT', 4, '2021-04-30 13:45:27', '2021-04-30 13:45:27'),
	(22, 'Télécom, Réseaux & Sécurité', 'TRS', 15, '2021-04-30 13:47:18', '2021-05-18 13:11:09');
/*!40000 ALTER TABLE `specialites` ENABLE KEYS */;

-- Listage de la structure de la table note. type_notes
CREATE TABLE IF NOT EXISTS `type_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.type_notes : ~0 rows (environ)
/*!40000 ALTER TABLE `type_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_notes` ENABLE KEYS */;

-- Listage de la structure de la table note. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table note.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'abdoul', 'abdelaziz3340@gmail.com', NULL, '$2y$10$j659YobOBFrkiclJdEuit.g4wK.wD9qFrkxzWOKuYC7uFMrRM3fsm', '0PanMFbeHF0tcpYNGFzYMEgRU7USd5jtOeF5uUITmimozmS4FdhZW4mOZvGC', '2021-05-10 09:30:23', '2021-05-10 09:30:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
