-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 09:21 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_api_lagipanen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `created_at`, `updated_at`, `deleted_at`, `users_id`) VALUES
(1, '2018-05-22 07:22:48', '2018-05-22 07:22:48', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Islam', '2018-04-04 11:18:08', '2018-04-04 11:18:08', NULL),
(2, 'Islam', '2018-04-04 11:19:32', '2018-04-04 11:19:32', NULL),
(3, 'is', '2018-04-04 11:21:10', '2018-04-04 11:21:10', NULL),
(4, 'm', '2018-04-04 11:31:10', '2018-04-04 11:31:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `informasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `informasi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a', 'b', '2018-04-04 10:57:41', '2018-04-04 10:57:41', NULL),
(2, 'a', 'b', '2018-04-04 10:59:43', '2018-04-04 10:59:43', NULL),
(3, 'a', 'b', '2018-04-04 11:23:29', '2018-04-04 11:23:29', NULL),
(4, 'c', 'd', '2018-04-04 11:26:33', '2018-04-04 11:26:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE `biodatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pendidikan_terakhir` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agama_id` int(10) UNSIGNED DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kontak` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_usaha`
--

CREATE TABLE `data_usaha` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kontak` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `npwp_usaha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scan_npwp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomor_siup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scan_siup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomor_situ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scan_situ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_usaha`
--

INSERT INTO `data_usaha` (`id`, `user_id`, `nama`, `jenis`, `kontak`, `alamat`, `npwp_usaha`, `scan_npwp`, `nomor_siup`, `scan_siup`, `nomor_situ`, `scan_situ`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Hadi', 'A', '1', 'B', '1', 'a', '1', 'a', '1', 'a', '2018-04-05 10:15:26', '2018-04-05 10:15:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualans`
--

CREATE TABLE `detail_penjualans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan_id` int(10) UNSIGNED NOT NULL,
  `transaksi_penjualans_id` int(10) UNSIGNED NOT NULL,
  `harga_petani` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `petani_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `detail_purchase_orders`
--

CREATE TABLE `detail_purchase_orders` (
  `id` int(11) NOT NULL,
  `purchase_orders_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan_id` int(10) UNSIGNED NOT NULL,
  `harga_jual` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_purchase_orders`
--

INSERT INTO `detail_purchase_orders` (`id`, `purchase_orders_id`, `created_at`, `updated_at`, `deleted_at`, `produk_id`, `jumlah`, `satuan_id`, `harga_jual`) VALUES
(1, 1, '2018-05-24 23:27:14', '2018-05-24 23:27:14', NULL, 2, 3, 2, 7000),
(2, 1, '2018-05-24 23:27:27', '2018-05-24 23:27:34', '2018-05-24 23:27:34', 2, 3, 2, 7000),
(3, 1, '2018-08-09 05:29:16', '2018-08-09 05:29:16', NULL, 6, 2, 2, 14000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayarans`
--

CREATE TABLE `jenis_pembayarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_pembayarans`
--

INSERT INTO `jenis_pembayarans` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`, `keterangan`) VALUES
(1, 'Tunai', '2018-04-17 06:43:12', '2018-04-17 06:43:12', NULL, 'Bayar Tunai');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_jenis_produk` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_produk`
--

INSERT INTO `jenis_produk` (`id`, `nama_jenis_produk`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Pertanian', '2018-04-17 06:44:29', '2018-04-17 06:44:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_kategori_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`, `parent_kategori_id`) VALUES
(1, 'Sayur', '2018-04-17 06:45:41', '2018-04-17 06:45:41', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biodatas_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hadsaputrami@gmail.com', '$2y$10$qP88KDp7d2msNMeShWOx3OexLvOoB4X3GYe7wJylkg1hqwquEkYCm', '2018-04-05 05:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id`, `created_at`, `deleted_at`, `updated_at`, `users_id`) VALUES
(1, '2018-05-24 22:24:19', NULL, '2018-05-24 22:24:19', 31),
(2, '2018-08-09 01:10:43', NULL, '2018-08-09 01:10:43', 32),
(3, '2018-08-09 01:48:25', NULL, '2018-08-09 01:48:25', 34);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petani`
--

CREATE TABLE `petani` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `petani_has_produk`
--

CREATE TABLE `petani_has_produk` (
  `petani_id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_produk_id` int(10) UNSIGNED NOT NULL,
  `satuan_terkecil_id` int(10) UNSIGNED NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `harga_petani` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `created_at`, `deleted_at`, `updated_at`, `jenis_produk_id`, `satuan_terkecil_id`, `kategori_id`, `keterangan`, `harga_petani`, `harga_jual`, `foto`) VALUES
(2, 'Kangkung', '2018-05-06 17:18:18', NULL, '2018-05-24 18:35:45', 1, 2, 1, NULL, 6000, 7000, 'foto/foto2.png'),
(3, 'Sawi (1 kg)', '2018-05-06 17:20:09', NULL, '2018-05-24 18:42:18', 1, 2, 1, NULL, 6000, 7000, 'foto/foto3.png'),
(6, 'Bayam (1 kg)', '2018-05-06 17:20:35', NULL, '2018-05-06 17:20:35', 1, 2, 1, NULL, 6000, 7000, ''),
(15, 'kemangi', '2018-05-23 12:00:24', NULL, '2018-05-23 12:00:24', 1, 2, 1, 'kemangi adalah sayur', 3000, 4000, NULL),
(17, 'Timun', '2018-05-23 00:12:56', NULL, '2018-05-23 00:12:56', 1, 2, 1, 'timun adalah sayur', 3000, 5000, 'C:\\xampp\\tmp\\phpFE0.tmp'),
(24, 'kentang', '2018-05-23 00:29:09', NULL, '2018-05-23 00:29:09', 1, 2, 1, 'ke', 3000, 4000, 'foto/foto24.jpg'),
(25, 'cek', '2018-05-24 15:48:32', NULL, '2018-05-24 15:48:32', 1, 2, 1, 'dsa', 321, 12312, 'foto/foto25.png'),
(26, 'buaaannnttullll', '2018-05-24 16:02:55', NULL, '2018-05-24 18:26:52', 1, 2, 1, 'asdas', 212, 231, 'foto/foto26.png'),
(27, 'uhuuyyy', '2018-05-24 16:21:33', NULL, '2018-05-24 16:21:33', 1, 2, 1, 'huhu', 321123, 312123, 'foto/foto27.png'),
(30, 'dasasd', '2018-05-24 17:38:57', NULL, '2018-05-24 17:38:57', 1, 2, 1, NULL, 32112, 3121321, 'foto/foto30.png');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `pembeli_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `created_at`, `updated_at`, `deleted_at`, `pembeli_id`) VALUES
(1, '2018-05-24 23:13:48', '2018-05-24 23:13:48', NULL, 1),
(2, '2018-05-24 23:14:06', '2018-05-24 23:14:14', '2018-05-24 23:14:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pembeli', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(5, 1),
(6, 1),
(8, 1),
(17, 1),
(18, 1),
(19, 1),
(25, 1),
(31, 1),
(32, 1),
(34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Daging', '2018-04-17 06:49:49', '2018-05-06 17:15:01', '2018-05-06 17:15:01'),
(2, 'kg', '2018-05-06 17:15:14', '2018-05-06 17:15:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_penjualans`
--

CREATE TABLE `status_penjualans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_penjualans`
--

INSERT INTO `status_penjualans` (`id`, `nama_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tunai', '2018-04-17 06:53:47', '2018-04-17 06:53:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualans`
--

CREATE TABLE `transaksi_penjualans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchase_orders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualans_has_jenis_pembayarans`
--

CREATE TABLE `transaksi_penjualans_has_jenis_pembayarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaksi_penjualans_id` int(10) UNSIGNED NOT NULL,
  `jenis_pembayarans_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualans_has_status_penjualans`
--

CREATE TABLE `transaksi_penjualans_has_status_penjualans` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaksi_penjualans_id` int(10) UNSIGNED NOT NULL,
  `status_penjualans_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `verified`, `verification_token`, `device_token`) VALUES
(1, 'Hadi Saputra', 'hadi@gmail.com', '$2y$10$HGNvMmUE2QM6QcaWRkbamO/Jvi8eLfRUPuuFc2JQCEaTrje69tnVm', '7XPD8Udft9gq6ebyKihcbdDlNJ09WJlttsXAz4AAVFCvvQSSOdoQGIZtzCos', '2018-04-04 10:26:18', '2018-04-04 10:26:18', NULL, 0, NULL, NULL),
(2, 'Hadi Saputra', 'hadsaputrami@gmail.com', '$2y$10$QE/VKYJzvL/RMw1jUlzxm.80NrFwSnd6DVOOhfdUVwRnMPh.clx8i', 'lBQ3c1YhmChcl0IcuOpwT8VbmfrfSXC15huzxmICaGPHQ346q448tHTPTSRm', '2018-04-05 05:10:58', '2018-04-05 05:10:58', NULL, 0, NULL, NULL),
(5, 'Adi Dharma Syahrani', 'adi@gmail.com', '$2y$10$cF/1birrplT7b9nJhQBu6e7oCoSqEualkgoYBFOYIdaP7XErxQfYC', NULL, '2018-04-05 09:28:11', '2018-04-05 09:28:11', NULL, 0, NULL, NULL),
(6, 'Adi Dharma Syahrani', 'adi.d.syahrani@gmail.com', '$2y$10$eDwY2U3lnkNKmI9/2lVHTesTDXwHrPnhPICsxE7Zw1mU9DVVEsLeu', NULL, '2018-04-10 03:29:59', '2018-04-10 03:29:59', NULL, 0, NULL, NULL),
(8, 'Adnan', 'adnan@gmail.com', '$2y$10$0SP9NJPrXd6qx6S3mjEgdO1tm6n68FtGluQ0bBxpsu9WVXU8Q2.vC', NULL, '2018-04-17 07:58:28', '2018-04-17 07:58:28', NULL, 0, NULL, NULL),
(17, 'is', 'is@gmail.com', '$2y$10$L2hZ69lHS8B7/Ux2PsNCqeIyjwOKJYnrNERzM1vYVa1m5aYRH9mxa', NULL, '2018-04-19 05:07:03', '2018-04-19 05:07:03', NULL, 0, NULL, NULL),
(18, 'isma', 'isma@gmail.com', '$2y$10$Y0cg83DEt3.Dop6RmELDYuxgrdj4QqyLSxuBXd3oW.hHwHTANQNdq', NULL, '2018-04-19 05:08:18', '2018-04-19 05:08:18', NULL, 0, NULL, NULL),
(19, 'sabran', 'sabran@gmail.com', '$2y$10$h70ccmhZfA0p8qYP4LNnS.YDDvGClmBcIhAKe0HnD83tuhzG1.MHW', NULL, '2018-04-19 05:15:26', '2018-04-19 05:15:26', NULL, 0, NULL, NULL),
(23, 'sabrani', 'sabrani1@gmail.com', '$2y$10$HJ6RcVp815yUr3/UDpLDyeb2bEAYVSRKjYM8XJcsPyWK5ONpFkFAa', NULL, '2018-04-19 08:57:26', '2018-04-19 08:57:26', NULL, 0, NULL, NULL),
(24, 'admin', 'admin@gmail.com', '$2y$10$U30aYAmXPeAT1sHyEkw5B.1qeK9ekMY6xtk5e2aNHEVXQZLIDaQca', NULL, '2018-05-06 17:14:14', '2018-05-06 17:14:14', NULL, 0, NULL, NULL),
(25, 'samida', 'samida@gmail.com', '$2y$10$mhvUtb2CHJG8etVXRv.rh.ADlPm7X8rMIovqUBqXj/xEpDitN3OgW', NULL, '2018-05-16 06:51:47', '2018-05-16 06:51:47', NULL, 0, NULL, NULL),
(26, 'oy', 'oy@gmail.com', '$2y$10$HyH5EmMmjswRPPWRFIYqfuo/ko9iVTVXbW5gnvTnwGFFS0UGPvuuq', NULL, '2018-05-23 06:14:29', '2018-05-23 06:14:29', NULL, 0, NULL, NULL),
(27, 'Pembeli', 'pembeli@gmail.com', '$2y$10$UQE8agVF0gG3ge0GBO4.7u8Sesd1Kf.172CsROveS5omnLvyB9f2q', 'kjCf2UToXwmikn2wOxr3ta6EocdDFcSo0yMe9deFXuu5enyI0xSYmp0BE2jT', '2018-05-24 22:05:09', '2018-05-24 22:05:09', NULL, 0, NULL, NULL),
(31, 'Pembeli', 'pembeli1@gmail.com', '$2y$10$7.PmsDE6fHXMnQ2CpFrg2eYdgX7GTPhZHAR6.EeskBHbeyWB3ZHcS', NULL, '2018-05-24 22:24:18', '2018-05-24 22:24:18', NULL, 0, NULL, NULL),
(32, 'Syahrani', 'syahrani@gmail.com', '$2y$10$ii7KSblwP4MwN60HM7tpk.YaJBouNFhptjNv.5MbG6tM1vx9sfE6m', NULL, '2018-08-09 01:10:40', '2018-08-09 01:10:40', NULL, 0, NULL, NULL),
(34, 'Dharma', 'dharma@gmail.com', '$2y$10$aLnObstM1/z8D.IH0Xo6a.vZ7RAeWofeq5Etqkb0kIAg1JKs9g/IS', NULL, '2018-08-09 01:48:24', '2018-08-09 01:48:24', NULL, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_UNIQUE` (`users_id`),
  ADD KEY `fk_admins_users1_idx` (`users_id`);

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_UNIQUE` (`users_id`),
  ADD UNIQUE KEY `nik_UNIQUE` (`nik`),
  ADD KEY `biodata_agama_id_foreign` (`agama_id`),
  ADD KEY `biodata_user_id_foreign` (`users_id`);

--
-- Indexes for table `data_usaha`
--
ALTER TABLE `data_usaha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_keluarga_user_id_foreign` (`user_id`);

--
-- Indexes for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_penjualans_produk1_idx` (`produk_id`),
  ADD KEY `fk_detail_penjualans_satuan1_idx` (`satuan_id`),
  ADD KEY `fk_detail_penjualans_transaksi_penjualans1_idx` (`transaksi_penjualans_id`),
  ADD KEY `fk_detail_penjualans_petani1_idx` (`petani_id`);

--
-- Indexes for table `detail_purchase_orders`
--
ALTER TABLE `detail_purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_purchase_orders_purchase_orders1_idx` (`purchase_orders_id`),
  ADD KEY `fk_detail_purchase_orders_produk1_idx` (`produk_id`),
  ADD KEY `fk_detail_purchase_orders_satuan1_idx` (`satuan_id`);

--
-- Indexes for table `jenis_pembayarans`
--
ALTER TABLE `jenis_pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_kategori1_idx` (`parent_kategori_id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kontak_biodata_id_foreign` (`biodatas_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_UNIQUE` (`users_id`),
  ADD KEY `fk_investors_users1_idx` (`users_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_UNIQUE` (`users_id`),
  ADD KEY `fk_pegawai_users1_idx` (`users_id`);

--
-- Indexes for table `petani_has_produk`
--
ALTER TABLE `petani_has_produk`
  ADD PRIMARY KEY (`petani_id`,`produk_id`),
  ADD KEY `fk_petani_has_produk_produk1_idx` (`produk_id`),
  ADD KEY `fk_petani_has_produk_petani1_idx` (`petani_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`),
  ADD KEY `fk_ternaks_jenis_ternaks1_idx` (`jenis_produk_id`),
  ADD KEY `fk_produk_satuan1_idx` (`satuan_terkecil_id`),
  ADD KEY `fk_produk_kategori1_idx` (`kategori_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_orders_pembeli1_idx` (`pembeli_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `status_penjualans`
--
ALTER TABLE `status_penjualans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_penjualans`
--
ALTER TABLE `transaksi_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaksi_penjualans_purchase_orders1_idx` (`purchase_orders_id`);

--
-- Indexes for table `transaksi_penjualans_has_jenis_pembayarans`
--
ALTER TABLE `transaksi_penjualans_has_jenis_pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaksi_penjualans_has_jenis_pembayarans_jenis_pembaya_idx` (`jenis_pembayarans_id`),
  ADD KEY `fk_transaksi_penjualans_has_jenis_pembayarans_transaksi_pen_idx` (`transaksi_penjualans_id`);

--
-- Indexes for table `transaksi_penjualans_has_status_penjualans`
--
ALTER TABLE `transaksi_penjualans_has_status_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaksi_penjualans_has_status_penjualans_status_penjua_idx` (`status_penjualans_id`),
  ADD KEY `fk_transaksi_penjualans_has_status_penjualans_transaksi_pen_idx` (`transaksi_penjualans_id`),
  ADD KEY `fk_transaksi_penjualans_has_status_penjualans_users1_idx` (`users_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `biodatas`
--
ALTER TABLE `biodatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_usaha`
--
ALTER TABLE `data_usaha`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_purchase_orders`
--
ALTER TABLE `detail_purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis_pembayarans`
--
ALTER TABLE `jenis_pembayarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petani`
--
ALTER TABLE `petani`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_penjualans`
--
ALTER TABLE `status_penjualans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi_penjualans`
--
ALTER TABLE `transaksi_penjualans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_penjualans_has_jenis_pembayarans`
--
ALTER TABLE `transaksi_penjualans_has_jenis_pembayarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_penjualans_has_status_penjualans`
--
ALTER TABLE `transaksi_penjualans_has_status_penjualans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_admins_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD CONSTRAINT `biodata_agama_id_foreign` FOREIGN KEY (`agama_id`) REFERENCES `agama` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `biodata_user_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `data_usaha`
--
ALTER TABLE `data_usaha`
  ADD CONSTRAINT `data_keluarga_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD CONSTRAINT `fk_detail_penjualans_petani1` FOREIGN KEY (`petani_id`) REFERENCES `petani` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_penjualans_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_penjualans_satuan1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_penjualans_transaksi_penjualans1` FOREIGN KEY (`transaksi_penjualans_id`) REFERENCES `transaksi_penjualans` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detail_purchase_orders`
--
ALTER TABLE `detail_purchase_orders`
  ADD CONSTRAINT `fk_detail_purchase_orders_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_purchase_orders_purchase_orders1` FOREIGN KEY (`purchase_orders_id`) REFERENCES `purchase_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_purchase_orders_satuan1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `fk_kategori_kategori1` FOREIGN KEY (`parent_kategori_id`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kontak`
--
ALTER TABLE `kontak`
  ADD CONSTRAINT `kontak_biodata_id_foreign` FOREIGN KEY (`biodatas_id`) REFERENCES `biodatas` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD CONSTRAINT `fk_investors_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `petani`
--
ALTER TABLE `petani`
  ADD CONSTRAINT `fk_pegawai_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `petani_has_produk`
--
ALTER TABLE `petani_has_produk`
  ADD CONSTRAINT `fk_petani_has_produk_petani1` FOREIGN KEY (`petani_id`) REFERENCES `petani` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_petani_has_produk_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produk_satuan1` FOREIGN KEY (`satuan_terkecil_id`) REFERENCES `satuan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ternaks_jenis_ternaks1` FOREIGN KEY (`jenis_produk_id`) REFERENCES `jenis_produk` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `fk_purchase_orders_pembeli1` FOREIGN KEY (`pembeli_id`) REFERENCES `pembeli` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_penjualans`
--
ALTER TABLE `transaksi_penjualans`
  ADD CONSTRAINT `fk_transaksi_penjualans_purchase_orders1` FOREIGN KEY (`purchase_orders_id`) REFERENCES `purchase_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi_penjualans_has_jenis_pembayarans`
--
ALTER TABLE `transaksi_penjualans_has_jenis_pembayarans`
  ADD CONSTRAINT `fk_transaksi_penjualans_has_jenis_pembayarans_jenis_pembayara1` FOREIGN KEY (`jenis_pembayarans_id`) REFERENCES `jenis_pembayarans` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transaksi_penjualans_has_jenis_pembayarans_transaksi_penju1` FOREIGN KEY (`transaksi_penjualans_id`) REFERENCES `transaksi_penjualans` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi_penjualans_has_status_penjualans`
--
ALTER TABLE `transaksi_penjualans_has_status_penjualans`
  ADD CONSTRAINT `fk_transaksi_penjualans_has_status_penjualans_status_penjuala1` FOREIGN KEY (`status_penjualans_id`) REFERENCES `status_penjualans` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaksi_penjualans_has_status_penjualans_transaksi_penju1` FOREIGN KEY (`transaksi_penjualans_id`) REFERENCES `transaksi_penjualans` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaksi_penjualans_has_status_penjualans_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
