/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 15/09/2023 07:47:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attribute_options
-- ----------------------------
DROP TABLE IF EXISTS `attribute_options`;
CREATE TABLE `attribute_options`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `attribute_options_attribute_id_foreign`(`attribute_id`) USING BTREE,
  CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute_options
-- ----------------------------
INSERT INTO `attribute_options` VALUES (1, 1, '500GB', '2023-09-13 11:50:39', '2023-09-13 11:50:39');
INSERT INTO `attribute_options` VALUES (2, 1, '1TB', '2023-09-13 11:50:43', '2023-09-13 11:50:43');
INSERT INTO `attribute_options` VALUES (3, 2, '1 Stik/Controller', '2023-09-13 11:50:52', '2023-09-13 11:50:52');
INSERT INTO `attribute_options` VALUES (4, 2, '2 Stik/Controller', '2023-09-13 11:50:56', '2023-09-13 11:50:56');

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attributes
-- ----------------------------
INSERT INTO `attributes` VALUES (1, 'Color', 'Color', 'select', NULL, 0, 0, 1, 1, '2023-09-13 11:50:04', '2023-09-13 11:50:04');
INSERT INTO `attributes` VALUES (2, 'Size', 'Size', 'select', NULL, 0, 0, 1, 1, '2023-09-13 11:50:23', '2023-09-13 11:50:23');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Consoles', 'consoles', 0, '2023-09-13 11:47:54', '2023-09-13 11:47:54');
INSERT INTO `categories` VALUES (2, 'Playstation', 'playstation', 1, '2023-09-13 11:48:05', '2023-09-13 11:48:05');
INSERT INTO `categories` VALUES (3, 'Nintendo', 'nintendo', 1, '2023-09-13 11:48:16', '2023-09-13 11:48:16');
INSERT INTO `categories` VALUES (4, 'Xbox', 'xbox', 1, '2023-09-13 11:48:24', '2023-09-13 11:48:24');
INSERT INTO `categories` VALUES (5, 'Games', 'games', 0, '2023-09-13 11:48:38', '2023-09-13 11:48:38');
INSERT INTO `categories` VALUES (6, 'Playstation', 'playstation', 5, '2023-09-13 11:48:49', '2023-09-13 11:48:49');
INSERT INTO `categories` VALUES (7, 'Nintendo', 'nintendo', 5, '2023-09-13 11:48:57', '2023-09-13 11:48:57');
INSERT INTO `categories` VALUES (8, 'Accessories', 'accessories', 0, '2023-09-13 11:49:10', '2023-09-13 11:49:10');
INSERT INTO `categories` VALUES (9, 'Playstation', 'playstation', 8, '2023-09-13 11:49:21', '2023-09-13 11:49:21');
INSERT INTO `categories` VALUES (10, 'Nintendo', 'nintendo', 8, '2023-09-13 11:49:30', '2023-09-13 11:49:30');
INSERT INTO `categories` VALUES (11, 'Xbox', 'xbox', 8, '2023-09-13 11:49:39', '2023-09-13 11:49:39');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `favorites_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `favorites_user_id_product_id_index`(`user_id`, `product_id`) USING BTREE,
  CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorites
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (33, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (34, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (35, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (36, '2019_10_10_015655_create_categories_table', 1);
INSERT INTO `migrations` VALUES (37, '2019_11_18_153406_create_products_table', 1);
INSERT INTO `migrations` VALUES (38, '2019_11_18_154523_create_attributes_table', 1);
INSERT INTO `migrations` VALUES (39, '2019_11_18_154719_create_product_attribute_values_table', 1);
INSERT INTO `migrations` VALUES (40, '2019_11_18_155326_create_product_inventories_table', 1);
INSERT INTO `migrations` VALUES (41, '2019_11_18_155543_create_product_categories_table', 1);
INSERT INTO `migrations` VALUES (42, '2019_11_18_155703_create_product_images_table', 1);
INSERT INTO `migrations` VALUES (43, '2019_11_28_153532_rename_column_in_products_table', 1);
INSERT INTO `migrations` VALUES (44, '2019_11_28_161330_alter_column_in_products_table', 1);
INSERT INTO `migrations` VALUES (45, '2019_12_17_135909_add_columns_to_attributes_table', 1);
INSERT INTO `migrations` VALUES (46, '2019_12_17_140249_create_attribute_options_table', 1);
INSERT INTO `migrations` VALUES (47, '2020_01_13_170436_remove_column_product_attribute_value_id_in_product_inventories_table', 1);
INSERT INTO `migrations` VALUES (48, '2020_01_13_171015_add_parent_id_and_type_to_products_table', 1);
INSERT INTO `migrations` VALUES (49, '2020_01_13_171423_alter_as_nullable_column_in_products_table', 1);
INSERT INTO `migrations` VALUES (50, '2020_01_13_171602_alter_attribute_relation_in_product_attribute_values_table', 1);
INSERT INTO `migrations` VALUES (51, '2020_01_23_151312_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (52, '2020_04_24_133452_add_full_text_search_index_to_products_table', 1);
INSERT INTO `migrations` VALUES (53, '2020_04_24_142324_add_parent_product_id_to_product_attribute_values_table', 1);
INSERT INTO `migrations` VALUES (54, '2020_05_03_154113_rename_column_and_add_columns_in_users_table', 1);
INSERT INTO `migrations` VALUES (55, '2020_05_09_163433_create_orders_table', 1);
INSERT INTO `migrations` VALUES (56, '2020_05_09_163816_create_order_items_table', 1);
INSERT INTO `migrations` VALUES (57, '2020_05_09_164011_create_payments_table', 1);
INSERT INTO `migrations` VALUES (58, '2020_05_09_164155_create_shipments_table', 1);
INSERT INTO `migrations` VALUES (59, '2020_05_11_163514_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (60, '2020_05_15_155845_add_payment_token_to_orders_table', 1);
INSERT INTO `migrations` VALUES (61, '2020_05_15_155956_add_status_to_payments_table', 1);
INSERT INTO `migrations` VALUES (62, '2020_05_21_221514_add_columns_to_product_images_table', 1);
INSERT INTO `migrations` VALUES (63, '2020_05_26_023857_create_favorites_table', 1);
INSERT INTO `migrations` VALUES (64, '2020_05_28_221605_create_slides_table', 1);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `base_price` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_sku_index`(`sku`) USING BTREE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `base_total_price` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `customer_first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_city_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_province_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_postcode` int NULL DEFAULT NULL,
  `shipping_courier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shipping_service_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `approved_by` bigint UNSIGNED NULL DEFAULT NULL,
  `approved_at` datetime NULL DEFAULT NULL,
  `cancelled_by` bigint UNSIGNED NULL DEFAULT NULL,
  `cancelled_at` datetime NULL DEFAULT NULL,
  `cancellation_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orders_code_unique`(`code`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `orders_approved_by_foreign`(`approved_by`) USING BTREE,
  INDEX `orders_cancelled_by_foreign`(`cancelled_by`) USING BTREE,
  INDEX `orders_code_index`(`code`) USING BTREE,
  INDEX `orders_code_order_date_index`(`code`, `order_date`) USING BTREE,
  INDEX `orders_payment_token_index`(`payment_token`) USING BTREE,
  CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16, 2) NOT NULL DEFAULT 0.00,
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `va_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vendor_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `biller_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bill_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `payments_number_unique`(`number`) USING BTREE,
  INDEX `payments_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `payments_number_index`(`number`) USING BTREE,
  INDEX `payments_method_index`(`method`) USING BTREE,
  INDEX `payments_token_index`(`token`) USING BTREE,
  INDEX `payments_payment_type_index`(`payment_type`) USING BTREE,
  CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'view_users', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (2, 'add_users', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (3, 'edit_users', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (4, 'delete_users', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (5, 'view_roles', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (6, 'add_roles', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (7, 'edit_roles', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (8, 'delete_roles', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (9, 'view_products', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (10, 'add_products', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (11, 'edit_products', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (12, 'delete_products', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (13, 'view_orders', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (14, 'add_orders', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (15, 'edit_orders', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (16, 'delete_orders', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (17, 'view_categories', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (18, 'add_categories', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (19, 'edit_categories', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (20, 'delete_categories', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (21, 'view_attributes', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (22, 'add_attributes', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (23, 'edit_attributes', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (24, 'delete_attributes', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (25, 'view_shipments', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (26, 'add_shipments', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (27, 'edit_shipments', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (28, 'delete_shipments', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (29, 'view_slides', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (30, 'add_slides', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (31, 'edit_slides', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');
INSERT INTO `permissions` VALUES (32, 'delete_slides', 'web', '2023-09-13 11:45:00', '2023-09-13 11:45:00');

-- ----------------------------
-- Table structure for product_attribute_values
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute_values`;
CREATE TABLE `product_attribute_values`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint UNSIGNED NULL DEFAULT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `text_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `boolean_value` tinyint(1) NULL DEFAULT NULL,
  `integer_value` int NULL DEFAULT NULL,
  `float_value` decimal(8, 2) NULL DEFAULT NULL,
  `datetime_value` datetime NULL DEFAULT NULL,
  `date_value` date NULL DEFAULT NULL,
  `json_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_attribute_values_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `product_attribute_values_attribute_id_foreign`(`attribute_id`) USING BTREE,
  INDEX `product_attribute_values_parent_product_id_foreign`(`parent_product_id`) USING BTREE,
  CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_attribute_values_parent_product_id_foreign` FOREIGN KEY (`parent_product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_attribute_values
-- ----------------------------
INSERT INTO `product_attribute_values` VALUES (1, NULL, 4, 1, '1TB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:59:35', '2023-09-13 11:59:35');
INSERT INTO `product_attribute_values` VALUES (2, NULL, 4, 2, '1 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:59:35', '2023-09-13 11:59:35');
INSERT INTO `product_attribute_values` VALUES (3, NULL, 5, 1, '1TB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:59:35', '2023-09-13 11:59:35');
INSERT INTO `product_attribute_values` VALUES (4, NULL, 5, 2, '2 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:59:35', '2023-09-13 11:59:35');
INSERT INTO `product_attribute_values` VALUES (5, NULL, 7, 1, '500GB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (6, NULL, 7, 2, '1 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (7, NULL, 8, 1, '500GB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (8, NULL, 8, 2, '2 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (9, NULL, 9, 1, '1TB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (10, NULL, 9, 2, '1 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (11, NULL, 10, 1, '1TB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (12, NULL, 10, 2, '2 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:06:56', '2023-09-13 12:06:56');
INSERT INTO `product_attribute_values` VALUES (13, NULL, 12, 1, '500GB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (14, NULL, 12, 2, '1 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (15, NULL, 13, 1, '500GB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (16, NULL, 13, 2, '2 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (17, NULL, 14, 1, '1TB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (18, NULL, 14, 2, '1 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (19, NULL, 15, 1, '1TB', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');
INSERT INTO `product_attribute_values` VALUES (20, NULL, 15, 2, '2 Stik/Controller', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 12:12:50', '2023-09-13 12:12:50');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_categories_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `product_categories_category_id_foreign`(`category_id`) USING BTREE,
  CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES (1, 1, 1);
INSERT INTO `product_categories` VALUES (2, 1, 2);
INSERT INTO `product_categories` VALUES (3, 2, 1);
INSERT INTO `product_categories` VALUES (4, 2, 2);
INSERT INTO `product_categories` VALUES (5, 3, 1);
INSERT INTO `product_categories` VALUES (6, 3, 2);
INSERT INTO `product_categories` VALUES (7, 4, 1);
INSERT INTO `product_categories` VALUES (8, 4, 2);
INSERT INTO `product_categories` VALUES (9, 5, 1);
INSERT INTO `product_categories` VALUES (10, 5, 2);
INSERT INTO `product_categories` VALUES (11, 6, 1);
INSERT INTO `product_categories` VALUES (12, 6, 2);
INSERT INTO `product_categories` VALUES (13, 7, 1);
INSERT INTO `product_categories` VALUES (14, 7, 2);
INSERT INTO `product_categories` VALUES (15, 8, 1);
INSERT INTO `product_categories` VALUES (16, 8, 2);
INSERT INTO `product_categories` VALUES (17, 9, 1);
INSERT INTO `product_categories` VALUES (18, 9, 2);
INSERT INTO `product_categories` VALUES (19, 10, 1);
INSERT INTO `product_categories` VALUES (20, 10, 2);
INSERT INTO `product_categories` VALUES (21, 11, 1);
INSERT INTO `product_categories` VALUES (22, 11, 2);
INSERT INTO `product_categories` VALUES (23, 12, 1);
INSERT INTO `product_categories` VALUES (24, 12, 2);
INSERT INTO `product_categories` VALUES (25, 13, 1);
INSERT INTO `product_categories` VALUES (26, 13, 2);
INSERT INTO `product_categories` VALUES (27, 14, 1);
INSERT INTO `product_categories` VALUES (28, 14, 2);
INSERT INTO `product_categories` VALUES (29, 15, 1);
INSERT INTO `product_categories` VALUES (30, 15, 2);
INSERT INTO `product_categories` VALUES (31, 16, 1);
INSERT INTO `product_categories` VALUES (32, 16, 3);
INSERT INTO `product_categories` VALUES (33, 17, 1);
INSERT INTO `product_categories` VALUES (34, 17, 3);
INSERT INTO `product_categories` VALUES (35, 18, 1);
INSERT INTO `product_categories` VALUES (36, 18, 4);
INSERT INTO `product_categories` VALUES (37, 19, 8);
INSERT INTO `product_categories` VALUES (38, 19, 9);
INSERT INTO `product_categories` VALUES (41, 20, 1);
INSERT INTO `product_categories` VALUES (42, 21, 8);
INSERT INTO `product_categories` VALUES (43, 21, 9);
INSERT INTO `product_categories` VALUES (44, 22, 8);
INSERT INTO `product_categories` VALUES (45, 22, 9);
INSERT INTO `product_categories` VALUES (46, 23, 8);
INSERT INTO `product_categories` VALUES (47, 23, 9);
INSERT INTO `product_categories` VALUES (48, 24, 8);
INSERT INTO `product_categories` VALUES (49, 24, 9);
INSERT INTO `product_categories` VALUES (50, 25, 8);
INSERT INTO `product_categories` VALUES (51, 25, 11);
INSERT INTO `product_categories` VALUES (52, 26, 8);
INSERT INTO `product_categories` VALUES (53, 26, 10);
INSERT INTO `product_categories` VALUES (54, 27, 5);
INSERT INTO `product_categories` VALUES (55, 27, 7);
INSERT INTO `product_categories` VALUES (56, 28, 5);
INSERT INTO `product_categories` VALUES (57, 28, 7);
INSERT INTO `product_categories` VALUES (58, 29, 5);
INSERT INTO `product_categories` VALUES (59, 29, 7);
INSERT INTO `product_categories` VALUES (60, 30, 5);
INSERT INTO `product_categories` VALUES (61, 30, 6);
INSERT INTO `product_categories` VALUES (62, 31, 5);
INSERT INTO `product_categories` VALUES (63, 31, 6);
INSERT INTO `product_categories` VALUES (64, 32, 5);
INSERT INTO `product_categories` VALUES (65, 32, 6);
INSERT INTO `product_categories` VALUES (66, 33, 5);
INSERT INTO `product_categories` VALUES (67, 33, 6);
INSERT INTO `product_categories` VALUES (68, 34, 5);
INSERT INTO `product_categories` VALUES (69, 34, 6);
INSERT INTO `product_categories` VALUES (70, 35, 5);
INSERT INTO `product_categories` VALUES (71, 35, 6);

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_large` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `large` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `medium` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `small` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_images_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES (2, 1, 'uploads/images/original/playstation-5-standard-edition_1694606234.png', 'uploads/images/xlarge/playstation-5-standard-edition_1694606234.png', 'uploads/images/large/playstation-5-standard-edition_1694606234.png', 'uploads/images/medium/playstation-5-standard-edition_1694606234.png', 'uploads/images/small/playstation-5-standard-edition_1694606234.png', '2023-09-13 11:57:15', '2023-09-13 11:57:15');
INSERT INTO `product_images` VALUES (3, 2, 'uploads/images/original/playstation-5-digital-edition_1694606346.png', 'uploads/images/xlarge/playstation-5-digital-edition_1694606346.png', 'uploads/images/large/playstation-5-digital-edition_1694606346.png', 'uploads/images/medium/playstation-5-digital-edition_1694606346.png', 'uploads/images/small/playstation-5-digital-edition_1694606346.png', '2023-09-13 11:59:08', '2023-09-13 11:59:08');
INSERT INTO `product_images` VALUES (4, 3, 'uploads/images/original/playstation-4-pro_1694606617.png', 'uploads/images/xlarge/playstation-4-pro_1694606617.png', 'uploads/images/large/playstation-4-pro_1694606617.png', 'uploads/images/medium/playstation-4-pro_1694606617.png', 'uploads/images/small/playstation-4-pro_1694606617.png', '2023-09-13 12:03:44', '2023-09-13 12:03:44');
INSERT INTO `product_images` VALUES (5, 6, 'uploads/images/original/playstation-4-slim_1694607014.png', 'uploads/images/xlarge/playstation-4-slim_1694607014.png', 'uploads/images/large/playstation-4-slim_1694607014.png', 'uploads/images/medium/playstation-4-slim_1694607014.png', 'uploads/images/small/playstation-4-slim_1694607014.png', '2023-09-13 12:10:14', '2023-09-13 12:10:14');
INSERT INTO `product_images` VALUES (6, 11, 'uploads/images/original/playstation-4-fat_1694607390.jpg', 'uploads/images/xlarge/playstation-4-fat_1694607390.jpg', 'uploads/images/large/playstation-4-fat_1694607390.jpg', 'uploads/images/medium/playstation-4-fat_1694607390.jpg', 'uploads/images/small/playstation-4-fat_1694607390.jpg', '2023-09-13 12:16:30', '2023-09-13 12:16:30');
INSERT INTO `product_images` VALUES (7, 16, 'uploads/images/original/nintendo-switch-oled_1694607552.png', 'uploads/images/xlarge/nintendo-switch-oled_1694607552.png', 'uploads/images/large/nintendo-switch-oled_1694607552.png', 'uploads/images/medium/nintendo-switch-oled_1694607552.png', 'uploads/images/small/nintendo-switch-oled_1694607552.png', '2023-09-13 12:19:12', '2023-09-13 12:19:12');
INSERT INTO `product_images` VALUES (8, 17, 'uploads/images/original/nintendo-switch-lite_1694607814.jpg', 'uploads/images/xlarge/nintendo-switch-lite_1694607814.jpg', 'uploads/images/large/nintendo-switch-lite_1694607814.jpg', 'uploads/images/medium/nintendo-switch-lite_1694607814.jpg', 'uploads/images/small/nintendo-switch-lite_1694607814.jpg', '2023-09-13 12:23:35', '2023-09-13 12:23:35');
INSERT INTO `product_images` VALUES (9, 18, 'uploads/images/original/xbox-series-s_1694608045.jpg', 'uploads/images/xlarge/xbox-series-s_1694608045.jpg', 'uploads/images/large/xbox-series-s_1694608045.jpg', 'uploads/images/medium/xbox-series-s_1694608045.jpg', 'uploads/images/small/xbox-series-s_1694608045.jpg', '2023-09-13 12:27:25', '2023-09-13 12:27:25');
INSERT INTO `product_images` VALUES (10, 19, 'uploads/images/original/dualsense-5-stik-controller-ps5_1694608260.jpg', 'uploads/images/xlarge/dualsense-5-stik-controller-ps5_1694608260.jpg', 'uploads/images/large/dualsense-5-stik-controller-ps5_1694608260.jpg', 'uploads/images/medium/dualsense-5-stik-controller-ps5_1694608260.jpg', 'uploads/images/small/dualsense-5-stik-controller-ps5_1694608260.jpg', '2023-09-13 12:31:00', '2023-09-13 12:31:00');
INSERT INTO `product_images` VALUES (11, 20, 'uploads/images/original/charging-station-docking-stik_1694608502.jpg', 'uploads/images/xlarge/charging-station-docking-stik_1694608502.jpg', 'uploads/images/large/charging-station-docking-stik_1694608502.jpg', 'uploads/images/medium/charging-station-docking-stik_1694608502.jpg', 'uploads/images/small/charging-station-docking-stik_1694608502.jpg', '2023-09-13 12:35:02', '2023-09-13 12:35:02');
INSERT INTO `product_images` VALUES (12, 21, 'uploads/images/original/headset-pulse-3d_1694608624.jpg', 'uploads/images/xlarge/headset-pulse-3d_1694608624.jpg', 'uploads/images/large/headset-pulse-3d_1694608624.jpg', 'uploads/images/medium/headset-pulse-3d_1694608624.jpg', 'uploads/images/small/headset-pulse-3d_1694608624.jpg', '2023-09-13 12:37:05', '2023-09-13 12:37:05');
INSERT INTO `product_images` VALUES (13, 22, 'uploads/images/original/remote-ps5_1694608750.jpg', 'uploads/images/xlarge/remote-ps5_1694608750.jpg', 'uploads/images/large/remote-ps5_1694608750.jpg', 'uploads/images/medium/remote-ps5_1694608750.jpg', 'uploads/images/small/remote-ps5_1694608750.jpg', '2023-09-13 12:39:11', '2023-09-13 12:39:11');
INSERT INTO `product_images` VALUES (14, 23, 'uploads/images/original/dualshock-4-stik-controller-ps4_1694609048.jpg', 'uploads/images/xlarge/dualshock-4-stik-controller-ps4_1694609048.jpg', 'uploads/images/large/dualshock-4-stik-controller-ps4_1694609048.jpg', 'uploads/images/medium/dualshock-4-stik-controller-ps4_1694609048.jpg', 'uploads/images/small/dualshock-4-stik-controller-ps4_1694609048.jpg', '2023-09-13 12:44:08', '2023-09-13 12:44:08');
INSERT INTO `product_images` VALUES (15, 24, 'uploads/images/original/multifunction-cooling-stand-ps4_1694609277.jpg', 'uploads/images/xlarge/multifunction-cooling-stand-ps4_1694609277.jpg', 'uploads/images/large/multifunction-cooling-stand-ps4_1694609277.jpg', 'uploads/images/medium/multifunction-cooling-stand-ps4_1694609277.jpg', 'uploads/images/small/multifunction-cooling-stand-ps4_1694609277.jpg', '2023-09-13 12:47:57', '2023-09-13 12:47:57');
INSERT INTO `product_images` VALUES (16, 25, 'uploads/images/original/stik-controller-xbox-series_1694609537.jpg', 'uploads/images/xlarge/stik-controller-xbox-series_1694609537.jpg', 'uploads/images/large/stik-controller-xbox-series_1694609537.jpg', 'uploads/images/medium/stik-controller-xbox-series_1694609537.jpg', 'uploads/images/small/stik-controller-xbox-series_1694609537.jpg', '2023-09-13 12:52:17', '2023-09-13 12:52:17');
INSERT INTO `product_images` VALUES (17, 26, 'uploads/images/original/joycon-nintendo-switch_1694609732.jpg', 'uploads/images/xlarge/joycon-nintendo-switch_1694609732.jpg', 'uploads/images/large/joycon-nintendo-switch_1694609732.jpg', 'uploads/images/medium/joycon-nintendo-switch_1694609732.jpg', 'uploads/images/small/joycon-nintendo-switch_1694609732.jpg', '2023-09-13 12:55:33', '2023-09-13 12:55:33');
INSERT INTO `product_images` VALUES (18, 27, 'uploads/images/original/mario-kart-8_1694609900.jpg', 'uploads/images/xlarge/mario-kart-8_1694609900.jpg', 'uploads/images/large/mario-kart-8_1694609900.jpg', 'uploads/images/medium/mario-kart-8_1694609900.jpg', 'uploads/images/small/mario-kart-8_1694609900.jpg', '2023-09-13 12:58:20', '2023-09-13 12:58:20');
INSERT INTO `product_images` VALUES (19, 27, 'uploads/images/original/mario-kart-8_1694609901.jpg', 'uploads/images/xlarge/mario-kart-8_1694609901.jpg', 'uploads/images/large/mario-kart-8_1694609901.jpg', 'uploads/images/medium/mario-kart-8_1694609901.jpg', 'uploads/images/small/mario-kart-8_1694609901.jpg', '2023-09-13 12:58:21', '2023-09-13 12:58:21');
INSERT INTO `product_images` VALUES (20, 28, 'uploads/images/original/super-mario-odyssey_1694610068.jpg', 'uploads/images/xlarge/super-mario-odyssey_1694610068.jpg', 'uploads/images/large/super-mario-odyssey_1694610068.jpg', 'uploads/images/medium/super-mario-odyssey_1694610068.jpg', 'uploads/images/small/super-mario-odyssey_1694610068.jpg', '2023-09-13 13:01:08', '2023-09-13 13:01:08');
INSERT INTO `product_images` VALUES (21, 29, 'uploads/images/original/pokemon-legend-arceus_1694610372.jpg', 'uploads/images/xlarge/pokemon-legend-arceus_1694610372.jpg', 'uploads/images/large/pokemon-legend-arceus_1694610372.jpg', 'uploads/images/medium/pokemon-legend-arceus_1694610372.jpg', 'uploads/images/small/pokemon-legend-arceus_1694610372.jpg', '2023-09-13 13:06:12', '2023-09-13 13:06:12');
INSERT INTO `product_images` VALUES (22, 30, 'uploads/images/original/pes-2021_1694610464.jpg', 'uploads/images/xlarge/pes-2021_1694610464.jpg', 'uploads/images/large/pes-2021_1694610464.jpg', 'uploads/images/medium/pes-2021_1694610464.jpg', 'uploads/images/small/pes-2021_1694610464.jpg', '2023-09-13 13:07:44', '2023-09-13 13:07:44');
INSERT INTO `product_images` VALUES (23, 31, 'uploads/images/original/ctr_1694611644.jpg', 'uploads/images/xlarge/ctr_1694611644.jpg', 'uploads/images/large/ctr_1694611644.jpg', 'uploads/images/medium/ctr_1694611644.jpg', 'uploads/images/small/ctr_1694611644.jpg', '2023-09-13 13:27:25', '2023-09-13 13:27:25');
INSERT INTO `product_images` VALUES (24, 32, 'uploads/images/original/tekken-7_1694611804.jpg', 'uploads/images/xlarge/tekken-7_1694611804.jpg', 'uploads/images/large/tekken-7_1694611804.jpg', 'uploads/images/medium/tekken-7_1694611804.jpg', 'uploads/images/small/tekken-7_1694611804.jpg', '2023-09-13 13:30:04', '2023-09-13 13:30:04');
INSERT INTO `product_images` VALUES (25, 33, 'uploads/images/original/god-of-war-ragnarok_1694611877.jpg', 'uploads/images/xlarge/god-of-war-ragnarok_1694611877.jpg', 'uploads/images/large/god-of-war-ragnarok_1694611877.jpg', 'uploads/images/medium/god-of-war-ragnarok_1694611877.jpg', 'uploads/images/small/god-of-war-ragnarok_1694611877.jpg', '2023-09-13 13:31:17', '2023-09-13 13:31:17');
INSERT INTO `product_images` VALUES (26, 34, 'uploads/images/original/final-fantasy-xvi_1694612106.jpg', 'uploads/images/xlarge/final-fantasy-xvi_1694612106.jpg', 'uploads/images/large/final-fantasy-xvi_1694612106.jpg', 'uploads/images/medium/final-fantasy-xvi_1694612106.jpg', 'uploads/images/small/final-fantasy-xvi_1694612106.jpg', '2023-09-13 13:35:06', '2023-09-13 13:35:06');
INSERT INTO `product_images` VALUES (27, 35, 'uploads/images/original/spiderman-2_1694612311.jpg', 'uploads/images/xlarge/spiderman-2_1694612311.jpg', 'uploads/images/large/spiderman-2_1694612311.jpg', 'uploads/images/medium/spiderman-2_1694612311.jpg', 'uploads/images/small/spiderman-2_1694612311.jpg', '2023-09-13 13:38:31', '2023-09-13 13:38:31');

-- ----------------------------
-- Table structure for product_inventories
-- ----------------------------
DROP TABLE IF EXISTS `product_inventories`;
CREATE TABLE `product_inventories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_inventories_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_inventories
-- ----------------------------
INSERT INTO `product_inventories` VALUES (1, 1, 10, '2023-09-13 11:56:14', '2023-09-13 11:56:14');
INSERT INTO `product_inventories` VALUES (2, 2, 10, '2023-09-13 11:58:44', '2023-09-13 11:58:44');
INSERT INTO `product_inventories` VALUES (3, 4, 5, '2023-09-13 12:02:32', '2023-09-13 12:02:32');
INSERT INTO `product_inventories` VALUES (4, 5, 5, '2023-09-13 12:02:32', '2023-09-13 12:02:32');
INSERT INTO `product_inventories` VALUES (5, 7, 5, '2023-09-13 12:09:34', '2023-09-13 12:09:34');
INSERT INTO `product_inventories` VALUES (6, 8, 5, '2023-09-13 12:09:34', '2023-09-13 12:09:34');
INSERT INTO `product_inventories` VALUES (7, 9, 5, '2023-09-13 12:09:34', '2023-09-13 12:09:34');
INSERT INTO `product_inventories` VALUES (8, 10, 5, '2023-09-13 12:09:34', '2023-09-13 12:09:34');
INSERT INTO `product_inventories` VALUES (9, 12, 5, '2023-09-13 12:15:45', '2023-09-13 12:15:45');
INSERT INTO `product_inventories` VALUES (10, 13, 5, '2023-09-13 12:15:45', '2023-09-13 12:15:45');
INSERT INTO `product_inventories` VALUES (11, 14, 5, '2023-09-13 12:15:45', '2023-09-13 12:15:45');
INSERT INTO `product_inventories` VALUES (12, 15, 5, '2023-09-13 12:15:45', '2023-09-13 12:15:45');
INSERT INTO `product_inventories` VALUES (13, 16, 10, '2023-09-13 12:18:59', '2023-09-13 12:18:59');
INSERT INTO `product_inventories` VALUES (14, 17, 10, '2023-09-13 12:23:05', '2023-09-13 12:23:05');
INSERT INTO `product_inventories` VALUES (15, 18, 10, '2023-09-13 12:26:32', '2023-09-13 12:26:32');
INSERT INTO `product_inventories` VALUES (16, 19, 10, '2023-09-13 12:30:32', '2023-09-13 12:30:32');
INSERT INTO `product_inventories` VALUES (17, 20, 10, '2023-09-13 12:34:45', '2023-09-13 12:34:45');
INSERT INTO `product_inventories` VALUES (18, 21, 5, '2023-09-13 12:36:26', '2023-09-13 12:36:26');
INSERT INTO `product_inventories` VALUES (19, 22, 5, '2023-09-13 12:38:39', '2023-09-13 12:38:39');
INSERT INTO `product_inventories` VALUES (20, 23, 10, '2023-09-13 12:42:22', '2023-09-13 12:42:22');
INSERT INTO `product_inventories` VALUES (21, 24, 10, '2023-09-13 12:47:25', '2023-09-13 12:47:25');
INSERT INTO `product_inventories` VALUES (22, 25, 5, '2023-09-13 12:50:54', '2023-09-13 12:50:54');
INSERT INTO `product_inventories` VALUES (23, 26, 5, '2023-09-13 12:55:20', '2023-09-13 12:55:20');
INSERT INTO `product_inventories` VALUES (24, 27, 5, '2023-09-13 12:58:07', '2023-09-13 12:58:07');
INSERT INTO `product_inventories` VALUES (25, 28, 5, '2023-09-13 13:02:04', '2023-09-13 13:02:04');
INSERT INTO `product_inventories` VALUES (26, 29, 5, '2023-09-13 13:05:21', '2023-09-13 13:05:21');
INSERT INTO `product_inventories` VALUES (27, 30, 5, '2023-09-13 13:09:03', '2023-09-13 13:09:03');
INSERT INTO `product_inventories` VALUES (28, 31, 5, '2023-09-13 13:27:55', '2023-09-13 13:27:55');
INSERT INTO `product_inventories` VALUES (29, 32, 5, '2023-09-13 13:30:21', '2023-09-13 13:30:21');
INSERT INTO `product_inventories` VALUES (30, 33, 5, '2023-09-13 13:31:49', '2023-09-13 13:31:49');
INSERT INTO `product_inventories` VALUES (31, 34, 5, '2023-09-13 13:36:47', '2023-09-13 13:36:47');
INSERT INTO `product_inventories` VALUES (32, 35, 5, '2023-09-13 13:41:51', '2023-09-13 13:41:51');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint UNSIGNED NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15, 2) NULL DEFAULT NULL,
  `weight` decimal(15, 2) NULL DEFAULT NULL,
  `width` decimal(10, 2) NULL DEFAULT NULL,
  `height` decimal(10, 2) NULL DEFAULT NULL,
  `length` decimal(10, 2) NULL DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `products_parent_id_foreign`(`parent_id`) USING BTREE,
  FULLTEXT INDEX `search`(`name`, `slug`, `short_description`, `description`),
  CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, NULL, 1, '0001', 'simple', 'Playstation 5 Standard Edition', 'playstation-5-standard-edition', 8949000.00, 8.00, NULL, NULL, NULL, 'PS5 Sony Playstation 5 Sony Indonesia\r\n\r\nGaransi Resmi 1 tahun Sony Indonesia\r\n\r\n\r\nAvailable Varian :\r\n- Disc Edition ( bisa pakai kaset disc)\r\n\r\nIN THE BOX :\r\nPlayStation 5 console\r\nDualSense wireless controller\r\nHDMI cable\r\nAC power cable\r\nUSB-A to USB-C cable\r\nConsole stand', 'CPU: 8x Zen 2 Cores pada 3,5GHz (frekuensi variabel)\r\nGPU : 10,28 TFLOPs, 36 CU pada 2,23GHz (frekuensi variabel)\r\nArsitektur GPU : RDNA Kustom 2\r\nMemori/Antarmuka : 16GB GDDR6/256-bit\r\nBandwidth Memori : 448 GB/dtk\r\nPenyimpanan Internal : SSD 825GB khusus\r\nThroughput IO : 5,5 GB/dtk (Mentah), Khas 8-9 GB/dtk (Terkompresi)\r\nPenyimpanan yang Dapat Diperluas : Slot SSD NVMe\r\nPenyimpanan Eksternal : Dukungan HDD USB\r\nDrive Optik : Drive Blu-ray 4K UHD', 1, '2023-09-13 11:52:14', '2023-09-13 11:56:14');
INSERT INTO `products` VALUES (2, NULL, 1, '0002', 'simple', 'Playstation 5 Digital Edition', 'playstation-5-digital-edition', 7949000.00, 7.00, NULL, NULL, NULL, 'PS5 Sony Playstation 5 Sony Indonesia\r\n\r\nGaransi Resmi 1 tahun Sony Indonesia\r\n\r\n\r\nAvailable Varian :\r\n- Digital Edition ( tidak bisa pakai kaset disc)\r\n\r\nIN THE BOX :\r\nPlayStation 5 console\r\nDualSense wireless controller\r\nHDMI cable\r\nAC power cable\r\nUSB-A to USB-C cable\r\nConsole stand', 'CPU: 8x Zen 2 Cores at 3.5GHz (variable frequency)\r\nGPU: 10.28 TFLOPs, 36 CUs at 2.23GHz (variable frequency)\r\nGPU Architecture: Custom RDNA 2\r\nMemory/Interface: 16GB GDDR6/256-bit\r\nMemory Bandwidth: 448GB/s\r\nInternal Storage: Custom 825GB SSD\r\nIO Throughput: 5.5GB/s (Raw), Typical 8-9GB/s (Compressed)\r\nExpandable Storage: NVMe SSD Slot\r\nExternal Storage: USB HDD Support', 1, '2023-09-13 11:58:04', '2023-09-13 11:58:44');
INSERT INTO `products` VALUES (3, NULL, 1, '0003', 'configurable', 'Playstation 4 Pro', 'playstation-4-pro', NULL, NULL, NULL, NULL, NULL, 'READY\r\n◾▪ 100 % ORIGINAL\r\n◾▪ 100 % WORKS\r\n◾▪ 100 % ON TIME DELIVERY\r\n\r\n* Bisa Online / Offline\r\n* Bisa Pakai Kaset / Digital\r\n* BUKAN HEN / BUKAN REFURBISHED\r\n* Bonus Games Bisa Online\r\n\r\nFullset, Terdiri dari :\r\n1 x Playstation 4 PRO 70XX/21XX/22XX\r\n1 - 2 x DUALSHOCK 4 wireless controller\r\n1 x Kabel Micro USB\r\n1 x Kabel Power\r\n1 x Kabel HDMI\r\n1 x Box Fullset', 'Prosesor: Single-Chip Custom Processor\r\nCPU: x86-64 AMD Jaguar, 8 Cores\r\nGPU: 1.84 TFLOPS, AMD Radeon based / 4.20 TFLOPS, AMD Radeon based (PS4 Pro)\r\nRAM: GDDR5 8GB\r\nKapasitas Penyimpanan: 500 GB / 1 TB (bisa menggunakan HDD) / 1 TB (Ps4 Pro)\r\nDimensi: 265 x 39 x 288 mm / 295 x 55 x 327 mm (PS4 Pro)\r\nBerat: 2.1 kg / 3.3 kg (PS4 Pro)\r\nBD/ DVD DRIVE (Read Only): BD x 6 CAV, DVD x 8 CAV, Blu-ray and DVD playback, no audio CD support\r\nInput/Output: Super-Speed USB (USB 3.1 Gen1) port, AUX port\r\nNetworking: Ethernet, IEEE 802.11b/g/n, Bluetooth\r\nPower: AC 100-240v, 50/60Hz\r\nPower Consumption: Max. 165w / Max. 310w (PS4 Pro)\r\nOperating Temperature: 5 ºC – 35ºC\r\nAV Output: HDMI out port (HDR output supported)', 1, '2023-09-13 11:59:35', '2023-09-13 12:02:32');
INSERT INTO `products` VALUES (4, 3, 1, '0003-2-3', 'simple', 'Playstation 4 Pro - 1TB - 1 Stik/Controller', 'playstation-4-pro-1tb-1-stikcontroller', 4300000.00, 5.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 11:59:35', '2023-09-13 12:02:32');
INSERT INTO `products` VALUES (5, 3, 1, '0003-2-4', 'simple', 'Playstation 4 Pro - 1TB - 2 Stik/Controller', 'playstation-4-pro-1tb-2-stikcontroller', 4500000.00, 5.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 11:59:35', '2023-09-13 12:02:32');
INSERT INTO `products` VALUES (6, NULL, 1, '0004', 'configurable', 'Playstation 4 Slim', 'playstation-4-slim', NULL, NULL, NULL, NULL, NULL, 'READY\r\n◾▪ 100 % ORIGINAL\r\n◾▪ 100 % WORKS\r\n◾▪ 100 % ON TIME DELIVERY\r\n\r\n* Bisa Online / Offline\r\n* Bisa Pakai Kaset / Digital\r\n* BUKAN HEN / BUKAN REFURBISHED\r\n* Bonus Games Bisa Online\r\n\r\nFullset, Terdiri dari :\r\n1 x Playstation 4 SLIM 20XX/21XX/22XX\r\n1 - 2 x DUALSHOCK 4 wireless controller\r\n1 x Kabel Micro USB\r\n1 x Kabel Power\r\n1 x Kabel HDMI\r\n1 x Box Fullset', 'Ukuran	: 288 x 265 x 39 mm\r\nCPU	: 1.6GHz 8-core AMD Jaguar\r\nGPU	: 1.84 T-FLOPS, AMD Radeon Graphics Core Next Engine\r\nMemori	: 8GB GDDR5 RAM\r\nKapasitas Penyimpanan	: 500 GB HDD/1 TB HDD\r\nJaringan	: Gigabit Ethernet, Bluetooth 4.0 LE, 802.11a/b/g/n/ac\r\nKonektivitas	: HDMI output, LAN, USB 3.1\r\nFitur	: Built-in speaker, headset port, vibration', 1, '2023-09-13 12:06:56', '2023-09-13 12:09:34');
INSERT INTO `products` VALUES (7, 6, 1, '0004-1-3', 'simple', 'Playstation 4 Slim - 500GB - 1 Stik/Controller', 'playstation-4-slim-500gb-1-stikcontroller', 3300000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:06:56', '2023-09-13 12:09:34');
INSERT INTO `products` VALUES (8, 6, 1, '0004-1-4', 'simple', 'Playstation 4 Slim - 500GB - 2 Stik/Controller', 'playstation-4-slim-500gb-2-stikcontroller', 3500000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:06:56', '2023-09-13 12:09:34');
INSERT INTO `products` VALUES (9, 6, 1, '0004-2-3', 'simple', 'Playstation 4 Slim - 1TB - 1 Stik/Controller', 'playstation-4-slim-1tb-1-stikcontroller', 3600000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:06:56', '2023-09-13 12:09:34');
INSERT INTO `products` VALUES (10, 6, 1, '0004-2-4', 'simple', 'Playstation 4 Slim - 1TB - 2 Stik/Controller', 'playstation-4-slim-1tb-2-stikcontroller', 3800000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:06:56', '2023-09-13 12:09:34');
INSERT INTO `products` VALUES (11, NULL, 1, '0005', 'configurable', 'Playstation 4 Fat', 'playstation-4-fat', NULL, NULL, NULL, NULL, NULL, '* Bisa Online / Offline\r\n* Bisa Pakai Kaset / Digital\r\n* BUKAN HEN / BUKAN REFURBISHED\r\n* Bonus Games Bisa Online\r\n\r\nFullset, Terdiri dari :\r\n1 x Playstation 4 FAT 10xx / 11xx / 12xx\r\n1 - 2 x DUALSHOCK 4 wireless controller\r\n1 x Kabel Micro USB\r\n1 x Kabel Power\r\n1 x Kabel HDMI\r\n1 x Box Fullset', 'GPU: AMD Radeon generasi terbaru\r\nPeak Shader Throughput: 1,84TFLOPS\r\nGPU Cores: 1.152\r\nMemory: 8GB GDDR5\r\nFrequency: 5.500MHz\r\nSystem Memory Bus: 256-bits\r\nSystem Memory Bandwidth: 176,0GB/s\r\nBlueray Drive (BD)/DVD drive: BD x 6 CAV, DVD x 8 CAV\r\nInput/Output: 2 port Super-Speed USBx (USB 3.0), AUX port x1\r\nJaringan: Ethernet x1, IEEE 802.11b/g/n, Bluetooth 2,1 (EDR)\r\nAV output: HDMI out port, DIGITAL OUT (OPTICAL) port', 1, '2023-09-13 12:12:50', '2023-09-13 12:15:45');
INSERT INTO `products` VALUES (12, 11, 1, '0005-1-3', 'simple', 'Playstation 4 Fat - 500GB - 1 Stik/Controller', 'playstation-4-fat-500gb-1-stikcontroller', 2800000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:12:50', '2023-09-13 12:15:45');
INSERT INTO `products` VALUES (13, 11, 1, '0005-1-4', 'simple', 'Playstation 4 Fat - 500GB - 2 Stik/Controller', 'playstation-4-fat-500gb-2-stikcontroller', 3000000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:12:50', '2023-09-13 12:15:45');
INSERT INTO `products` VALUES (14, 11, 1, '0005-2-3', 'simple', 'Playstation 4 Fat - 1TB - 1 Stik/Controller', 'playstation-4-fat-1tb-1-stikcontroller', 3100000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:12:50', '2023-09-13 12:15:45');
INSERT INTO `products` VALUES (15, 11, 1, '0005-2-4', 'simple', 'Playstation 4 Fat - 1TB - 2 Stik/Controller', 'playstation-4-fat-1tb-2-stikcontroller', 3300000.00, 4.00, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-13 12:12:50', '2023-09-13 12:15:45');
INSERT INTO `products` VALUES (16, NULL, 1, '0007', 'simple', 'Nintendo Switch Oled', 'nintendo-switch-oled', 4300000.00, 4.00, NULL, NULL, NULL, 'Nintendo Switch Console OLED merupakan generasi Nintendo Switch terbaru dengan ukuran layar lebih besar yakni 7 Inch dilengkapi dengan storage yang lebih besar yakni 64GB.\r\n\r\n\r\n\r\nInclude :\r\n1x Nintendo Switch Console\r\n1x Nintendo Switch Dock Black\r\n1x Joy-Con (L)\r\n1x Joy-Con (R)\r\n2x Joy-Con Strap Accessories\r\n1x Joy Con Grip\r\n1x HDMI Cable\r\n1x Nintendo Switch AC adapter', 'Ukuran : tinggi 4 inch x lebarnya 9,5 inch dan ketebalannya 0,55 inch\r\nBerat : 322 gram dan 421 gram bila menggunakan kontroler Joy-Con\r\nLayar : OLED 7 inch resolusi 1280 x 720\r\nCPU/GPU : NVIDIA Custom Tegra processor\r\nStorage : 64 GB dan bisa menggunakan memori eksternal hingga 2TB\r\nWireless : Wi-Fi (IEEE 802.11 a/b/g/n/ac compliant) / Bluetooth 4.1\r\nVideo Output : Up to 1080p via HDMI ke TV mode dan up to 720p via built-in screen ke Tabletop and Handheld\r\nSpeakers : Stereo\r\nTombol : Power dan Suara\r\nUSB Connector : USB Type-C\r\nHeadphone/Mic Jack : 3,5 mm-pole stereo\r\nGame Card Slot : Kartu game Nintendo Switch\r\nMicroSD Card Slot : Kompatibel dengan microSDHC dan microSDXC memory cards\r\nSensor : Accelerometer, gyroscope, and brightness sensor\r\nBaterai : Lithium-ion / 4310 mAh\r\nDaya Tahan Baterai : 4,5 – 9 jam\r\nWaktu Charger : 3 jam', 1, '2023-09-13 12:17:21', '2023-09-13 12:18:59');
INSERT INTO `products` VALUES (17, NULL, 1, '0008', 'simple', 'Nintendo Switch Lite', 'nintendo-switch-lite', 2700000.00, 2.00, NULL, NULL, NULL, 'Smaller screen and overall size\r\nCan\'t connect to a TV\r\nControllers are permanently attached\r\nTraditional D-pad available on the left side\r\nImproved battery life', 'READY WARNA\r\n\r\n(chat untuk ketersediaan barang dan warna)\r\n\r\nNO WARRANTY\r\n\r\nTIDAK DAPAT GAME ( NOT INCLUDE GAME )\r\nLANGUAGE : ENGLISH\r\nKONDISI : BARU / NEW / ASLI .\r\n\r\nIncludes: Nintendo Switch Lite system and Nintendo Switch AC adapter.\r\n\r\nProcessor: NVIDIA Tegra Custom;\r\nBuilt-in touch screen: 5.5 inches LCD resolution 1280 × 720 pixels ;\r\nBuilt-in speaker: stereo;\r\nInternal storage: 32 GB (including 6.2 GB of internal memory dedicated to system software);\r\nSlot microSD card : microSD, microSDHC and microSDXC;\r\nGame cartridge slot: exclusively for Nintendo Switch game cards;\r\nAdditional connector: USB Type-C for console charging;\r\nAudio jack 3.5 mm : phone jack TRS stereo sound output;\r\nIntegrated network: Wi-Fi ( IEEE 802.11 a / b / g / n / ac compatible ), Bluetooth 4.1 and NFC ;\r\nSensors: accelerometer and gyroscope ;\r\nRange of use: temperature from 5 to 35 ° C and humidity from 20 to 80%;\r\nDimensions: width 20.8 cm , thickness 1.39 cm , depth 9.11 cm , weight 275 g ;\r\nBattery: 3570 mAh lithium-ion ;\r\nAutonomy: about 2.5 to 6.5 hours depending on the power required by the game.\r\n\r\n\r\nSmaller screen and overall size\r\nCan\'t connect to a TV\r\nControllers are permanently attached\r\nTraditional D-pad available on the left side\r\nImproved battery life', 1, '2023-09-13 12:22:06', '2023-09-13 12:23:05');
INSERT INTO `products` VALUES (18, NULL, 1, '0009', 'simple', 'Xbox Series S', 'xbox-series-s', 4300000.00, 4.00, NULL, NULL, NULL, 'Introducing the Xbox Series S, the smallest, sleekest Xbox console ever. Experience the speed and performance of a next-gen all-digital console at an accessible price point. Go all-digital and enjoy disc-free, next-gen gaming with the smallest Xbox console ever made. Bundle includes: Xbox Series S console, one Xbox Wireless Controller, a high-speed HDMI cable, and power cable. Experience next-gen speed and performance with the Xbox Velocity Architecture, powered by a custom SSD and integrated software.', 'CPU: 8-Core AMD Zen 2 CPU @3.6Ghz, 3.4GHz w/ SMT Enabled\r\nGPU: AMD RDNA 2 GPU 20 CUs @1.565GHz\r\nGPU Power: 4TFLOPS\r\nSystem on Chip (SoC): Custom 7nm Enhanced SOC\r\nRAM: 10 GB GDDR6 RAM (8 GB @ 224 GB/s, 2 GB @ 56 GB/s)\r\nPerformance Target: 1440p @ 60fps, up to 120fps\r\nStorage: 512 GB PCIe Gen 4 NVME SSD (2.4 GB/sec uncompressed, 4.8 GB/sec compressed)\r\nExpandable Storage: 1 TB Expansion Card\r\nBackward Compatibility: Xbox, Xbox 360, Xbox One\r\nDisc Drive: Digital-Only\r\nDisplay Out: HDMI 2.1\r\n\r\nContent Packages\r\n1x Xbox Series S console\r\n1x Xbox Wireless Controller\r\n1x High Speed HDMI cable\r\n1x Cable Power\r\n2x Pcs Baterai A2', 1, '2023-09-13 12:24:42', '2023-09-13 12:26:32');
INSERT INTO `products` VALUES (19, NULL, 1, '0010', 'simple', 'Dualsense 5/ Stik Controller Ps5', 'dualsense-5-stik-controller-ps5', 980000.00, 1.00, NULL, NULL, NULL, 'SPEK :\r\n1. Desain Dua Warna dan Letak Pencahayaan Baru yang mewah\r\n2. Bentuk Tebal dan Ergonomis\r\n3. Penggunaan Port USB-C\r\n4. Fitur Adaptive Triggers', 'Pengontrol nirkabel DualSense untuk PS5 menawarkan umpan balik haptic 2 yang imersif , pemicu adaptif dinamis 2, dan mikrofon internal, semuanya terintegrasi ke dalam desain ikonik.\r\n\r\nRasakan umpan balik yang responsif secara fisik untuk aksi dalam game Anda dengan aktuator ganda yang menggantikan motor gemuruh tradisional. Di tangan Anda, getaran dinamis ini dapat mensimulasikan perasaan segala sesuatu mulai dari lingkungan hingga hentakan senjata yang berbeda.\r\n\r\nRasakan berbagai tingkat kekuatan dan ketegangan saat Anda berinteraksi dengan perlengkapan dan lingkungan dalam game. Dari menarik tali busur yang semakin ketat hingga menginjak rem pada mobil yang sedang melaju, rasakan secara fisik terhubung dengan tindakan Anda di layar.', 1, '2023-09-13 12:29:07', '2023-09-13 12:30:32');
INSERT INTO `products` VALUES (20, NULL, 1, '0011', 'simple', 'Charging Station Docking Stik', 'charging-station-docking-stik', 650000.00, 1.00, NULL, NULL, NULL, 'Charge up to two DualSense wireless controllers simultaneously without having to connect them to your PlayStation 5 console\r\nClick. Charge. Play.', 'Tetap bermain dan bersiaplah untuk menghadapi teman Anda dengan stasiun pengisian daya DualSense.\r\n\r\nPasangkan ke dua pengontrol nirkabel DualSense5 secara cepat dan mudah dengan desain stasiun pengisian daya yang dapat diklik. Pengontrol Anda mengisi daya secepat saat terhubung ke konsol PS5 Anda - sehingga Anda dapat mengosongkan port USB tanpa mengorbankan kinerja.', 1, '2023-09-13 12:32:51', '2023-09-13 12:34:45');
INSERT INTO `products` VALUES (21, NULL, 1, '0012', 'simple', 'Headset Pulse 3D', 'headset-pulse-3d', 1500000.00, 1.00, NULL, NULL, NULL, 'PS5 Pulse 3D Wireless Headset\r\n- Original\r\n- New Baru ,\r\n- Unit Segel by Sony International', 'The PULSE 3D wireless headset has been specifically tuned to deliver the 3D Audio made possible by the PlayStation®5 console\r\nPowered by Tempest 3D AudioTech, the PS5 console can put you at the center of incredibly immersive soundscapes where it feels as if the sound comes from every direction\r\nPlay in style with a sleek headset that perfectly complements the look of the PS5 console and features refined earpads and headband strap for added comfort\r\nDual Hidden Microphones - Ensure you\'re heard by your friends online2 with two built-in microphones, optimally positioned for crystal-clear voice capture and enhanced by noise-cancelling technology\r\nEasy-access Controls - Adjust your setup as you play with built-in mic mute, master volume and in-game audio to chat mix controls. Easily check how you sound to your teammates too, with the dedicated mic monitoring button\r\n3.5-mm Jack - Simply plug the headset into your PlayStation®VR as well as mobile devices with the included 3.5-mm jack audio cable', 1, '2023-09-13 12:35:35', '2023-09-13 12:36:26');
INSERT INTO `products` VALUES (22, NULL, 1, '0013', 'simple', 'Remote PS5', 'remote-ps5', 600000.00, 1.00, NULL, NULL, NULL, 'Don\'t pull out your DualSense every time you play Netflix on your PS5. The Sony PS5 Media Remote has all the media controls you need. Navigate the menus and adjust the settings just like with a TV remote.\r\n\r\nDisney+, Netflix, Spotify and YouTube even get their own buttons. You don\'t even need to switch on the console - just push the button and stream away.\r\n\r\nAnd you can control your TV too, no need to reach for a TV remote to adjust the volume.', 'PlayStation 5 PS5 Media Remote Sony 4K Blu-ray Ultra HD\r\nMedia playback controls - Quickly navigate media with built-in play/pause, fast forward and fast reverse buttons.\r\nSeamless console compatibility - Power on your PS5 console and navigate its menus directly with the remote for ultimate convenience.\r\nTV settings - Adjust the volume and power settings of compatible TVs with the built-in IR transmitter*. *PS5 system software update may be required.', 1, '2023-09-13 12:37:33', '2023-09-13 12:38:39');
INSERT INTO `products` VALUES (23, NULL, 1, '0014', 'simple', 'Dualshock 4 / Stik Controller Ps4', 'dualshock-4-stik-controller-ps4', 450000.00, 1.00, NULL, NULL, NULL, 'BNIB, SEGEL !\r\n\r\nBONUS KABEL MICRO USB\r\n\r\nSUPPORT IPAD , ios , genshin impact.\r\n\r\nSTICK PS4 ORIGINAL MODEL TERBARU\r\nADA LIGHT BAR / LED BAR DI TOUCHPAD NYA', 'the DUALSHOCK 4 controller incorporates a new, highly sensitive six-axis sensor, as well as a touch pad located on the top of the controller, which offers gamers completely new ways to play and interact with games.\r\n\r\nThe feel, shape, and sensitivity of the dual analog sticks and trigger buttons have been improved to provide a greater sense of control, no matter what you play.\r\n\r\nThe new multi-touch and clickable touch pad on the face of the DualShock 4 wireless controller opens up worlds of new gameplay possibilities for both newcomers and veteran gamers.\r\n\r\nThe three LEDs inside the light bar can generate a rainbow of colors that work with the PlayStation camera to create immersive gaming experiences. It also allows developers who choose to utilize the functionality to enable easy player identification and screen adjustment functionalities when gamers play with friends in the same room.', 1, '2023-09-13 12:41:28', '2023-09-13 12:42:22');
INSERT INTO `products` VALUES (24, NULL, 1, '0015', 'simple', 'Multifunction Cooling Stand Ps4', 'multifunction-cooling-stand-ps4', 375000.00, 1.00, NULL, NULL, NULL, '- Produk ini dibuat untuk dengan mudah mendirikan PS4 dan mengurangi suhu kerja PS4 yang sedang berjalan untuk meningkatkan kinerja mesin PS4.\r\n- Selain itu, dapat juga mengisi daya Stick PS4 dan 2 PS Move Controller dan menyimpan kotak konverter PS VR, kabel, dan kacamata VR.\r\n- Dilengkapi tombol di bagian depan yang dapat digunakan untuk mengatur kecepatan kipas bawaannya untuk mempercepat sirkulasi udara di Mesin PS4. Ini secara efektif dapat mencegah konsol menjadi terlalu panas, sehingga meningkatkan kinerjanya dan memperpanjang umur mesin.', 'Karakteristik produk:\r\n1) dudukan dan baki PS VR keduanya kompatibel dengan konsol game PS4 Slim dan Pro.\r\n2) Muncul dengan dua kipas berkecepatan tinggi bawaan untuk mengurangi suhu kerja mesin PS4.\r\n3) Ini mendukung kacamata 3D Sony PS VR asli.\r\n4) Ia menggunakan dua port USB di mesin PS4 untuk memberi daya tanpa perlu catu daya tambahan.\r\n5) Ini dapat mengisi daya Stick PS4 dan 2 Move Controller PS pada saat bersamaan.\r\n\r\nSpesifikasi Produk:\r\n1) Tegangan: USB3.0¬ 5V / 1.5A (terhubung ke mesin melalui kabel USB aksesori);\r\n2) Sekarang: Arus pengisian maksimum hingga 800mA dalam hal pengisian Stick PS4 asli tunggal; arus pengisian maksimum adalah 420MA untuk salah satu dari dua kontroler PS Move asli yang sedang diisi pada saat yang sama.\r\n3) Waktu pengisian daya: stick PS4 asli dapat terisi penuh dalam 2,5 hingga 3 jam, sementara itu dibutuhkan sekitar 3,5 hingga 4 jam untuk mengisi penuh PS Move asli;\r\n4) Kecepatan kipas maksimum: 5000 ± 10% RPM; Volume udara maksimum: 12,6 CFM\r\n5) Bahan: ABS', 1, '2023-09-13 12:46:11', '2023-09-13 12:47:25');
INSERT INTO `products` VALUES (25, NULL, 1, '0016', 'simple', 'Stik Controller Xbox Series', 'stik-controller-xbox-series', 890000.00, 1.00, NULL, NULL, NULL, 'Xbox series controller (model baru, yang ada tombol share nya)\r\nBonus Kabel USB panjang 2 Meter untuk main langsung tanpa baterai\r\n\r\nBisa untuk XBOX One, XBOX Series X/S, PC Windows, Android', 'Experience the modernized design of the Xbox Wireless Controller in Robot White, featuring sculpted surfaces and refined geometry for enhanced comfort during gameplay. Stay on target with a hybrid D-pad and textured grip on the triggers, bumpers, and back case. Seamlessly capture and share content such as screenshots, recordings, and more with the new Share button. Use the Xbox Accessories app to remap buttons and create custom controller profiles for your favorite games. Quickly pair with, play on, and switch between devices including Xbox Series X, Xbox Series S, Xbox One, Windows 10 PCs, and Android. iOS support coming in the future. Plug in any compatible headset with the 3.5mm audio jack.*', 1, '2023-09-13 12:50:15', '2023-09-13 12:50:54');
INSERT INTO `products` VALUES (26, NULL, 1, '0017', 'simple', 'Joycon Nintendo Switch', 'joycon-nintendo-switch', 1050000.00, 1.00, NULL, NULL, NULL, 'Joycon Nintendo Switch LR (sepasang kanan dan kiri)\r\n\r\nWarna sesuai varian,\r\nbarang 100% baru & Original', 'Introducing Joy-Con, controllers that make new kinds of gaming possible, for use with Nintendo Switch.\r\nThe versatile Joy-Con offer multiple surprising new ways for players to have fun.\r\nTwo Joy-Con can be used independently in each hand, or together as one game controller when attached to the Joy-Con grip.\r\nThey can also attach to the main console for use in handheld mode, or be shared with friends to enjoy two-player action in supported games.\r\nEach Joy-Con has a full set of buttons and can act as a standalone controller, and each includes an accelerometer and gyro-sensor, making independent left and right motion control possible.', 1, '2023-09-13 12:53:06', '2023-09-13 12:55:20');
INSERT INTO `products` VALUES (27, NULL, 1, '0018', 'simple', 'Mario Kart 8', 'mario-kart-8', 720000.00, 1.00, NULL, NULL, NULL, 'Hit the road with the definitive version of Mario Kart 8 and play anytime, anywhere! Race your friends or battle them in a revised battle mode on new and returning battle courses.\r\nPlay locally in up to 4-player multiplayer in 1080p while playing in TV Mode. Every track from the Wii U version, including DLC, makes a glorious return.\r\nPlus, the Inklings appear as all-new guest characters, along with returning favorites, such as King Boo, Dry Bones, and Bowser Jr.!', 'Race your friends in the definitive version of Mario Kart 8, only on Nintendo Switch!\r\nRace as every character on every track from the Wii U version, including DLC characters and tracks\r\nPop some balloons in the revamped Battle mode, complete with Balloon Battle and Bob-omb Blast\r\nBattle on new courses, like Urchin Underpass and Battle Stadium, or returning ones, such as GCN Luigi\'s Mansion and SNES Battle Course\r\nInkling Girl & Inkling Boy from Splatoon, King Boo, Dry Bones, and Bowser Jr. join the roster!\r\nPlayers can choose a new Smart Steering feature which makes driving and staying on the track easy for novice players and kids even at 200cc\r\nThree new vehicles have been added, two are even inspired by Splatoon\r\nCarry two items at the same time\r\nReturning items include Boo, the item stealing ghost, and the Feather, which gives you a high jump in battle mode\r\nPlay your friends in local wireless multiplayer with up to 8 players\r\nDrive through in 1080p HD quality in TV mode\r\nPlay on the go with handheld mode and play anytime, anywhere', 1, '2023-09-13 12:56:30', '2023-09-13 12:58:07');
INSERT INTO `products` VALUES (28, NULL, 1, '0019', 'simple', 'Super Mario Odyssey', 'super-mario-odyssey', 650000.00, 1.00, NULL, NULL, NULL, 'New Evolution of Mario Sandbox-Style Gameplay\r\n\r\nMario embarks on a new journey through unknown worlds, running and jumping through huge 3D worlds in the first sandbox-style Mario game since Super Mario 64 and Super Mario Sunshine. Set sail between expansive worlds aboard an airship, and perform all-new actions, such as throwing Mario\'s cap.', 'Explore incredible places far from the Mushroom Kingdom as you join Mario and his new ally Cappy on a massive, globe-trotting 3D adventure. Use amazing new abilitieslike the power to capture and control objects, animals, and enemiesto collect Power Moons so you can power up the Odyssey airship and save Princess Peach from Bowsers wedding plans!\r\n\r\nExplore huge 3D kingdoms filled with secrets and surprises, including costumes for Mario and lots of ways to interact with the diverse environments - such as cruising around them in vehicles that incorporate the HD Rumble feature of the Joy-Con controller or exploring sections as Pixel Mario.\r\nThanks to his new friend, Cappy, Mario has brand-new moves for you to master, like cap throw, cap jump and capture. With capture, Mario can take control of all sorts of things, including objects and enemies!\r\nVisit astonishing new locales, like skyscraper-packed New Donk City, and run into familiar friends and foes as you try to save Princess Peach from Bowser\'s clutches and foil his dastardly wedding plans.\r\nA set of three new amiibo figures* - Mario, Princess Peach and Bowser in their wedding outfits - will be released at launch. Some previously released amiibo will also be compatible with this title. Tap supported amiibo to receive gameplay assistance - some amiibo will also unlock costumes for Mario when scanned!', 1, '2023-09-13 13:00:18', '2023-09-13 13:02:04');
INSERT INTO `products` VALUES (29, NULL, 1, '0020', 'simple', 'Pokemon Legend Arceus', 'pokemon-legend-arceus', 710000.00, 1.00, NULL, NULL, NULL, 'Action meets RPG as the Pokémon series reaches a new frontier', 'Get ready for a new kind of grand, Pokémon adventure in Pokémon Legends: Arceus, a brand new game from Game Freak that blends action and exploration with the RPG roots of the Pokémon series. Explore natural expanses to catch Pokémon by learning their behavior, sneaking up, and throwing a well-aimed Poké Ball. You can also toss the Poké Ball containing your ally Pokémon near a wild Pokémon to seamlessly enter the battle. This new angle on Pokémon gameplay will deliver an immersive, personal experience brought to life by both Pokémon and humans.\r\n\r\nTravel to the Sinnoh region of old\r\n\r\nExplore the Sinnoh region from thePokémon DiamondVersionandPokémon PearlVersiongames, but long before the events of those titles. In this era, the Sinnoh region is filled with Pokémon living in harsh environments. Set out to create the region’s first Pokédex and discover the secrets of a long-gone time. At the start of your adventure, you can choose Rowlet, Cyndaquil, or Oshawott as your dependable partner. Along the way, a mystery surrounding the Pokémon known as Arceus will begin to unfold.', 1, '2023-09-13 13:03:15', '2023-09-13 13:05:21');
INSERT INTO `products` VALUES (30, NULL, 1, '0021', 'simple', 'Pes 2021', 'pes-2021', 450000.00, 1.00, NULL, NULL, NULL, 'As the PES franchise celebrates a quarter of a century since its debut in 1995, we invite you to join us once again as we head out onto the pitch for a new action-packed season of football.\r\nBoasting all the latest player and club data, the game also comes with an exclusive UEFA EURO 2020™ mode, allowing you and your friends to simulate some of the sport\'s most heated rivalries.', 'Season update - PES 2021 is an updated version of last year\'s title, efootball PES 2020, providing the latest player data and Club rosters. Due to the delayed Season endings for many leagues, the latest data for certain licensed leagues and teams will be available via updates at launch and after (Internet connection required)\r\nExclusive UEFA Euro 2020 content - ahead of the real-life tournament in 2021, the official UEFA Euro 2020 content will be included at launch in PES 2021. Featuring the offline UEFA Euro 2020 tournament Mode, all 55 UEFA National teams, Wembley Stadium and more, This is the best way to simulate the tournament before and after its Summer debut\r\nIconic moment series - relive and recreate memorable moments from the careers of current and former football Superstars with this new myClub series\r\nPartner Club editions - For the first time, fans will be able to purchase special Club editions of PES 2021 through digital platforms. Available for FC Barcelona, juventus, Manchester United, FC Bayern and arsenal FC, the all-new Club editions will include exclusive club-specific content such as myClub squads, iconic moment series players, unique kits, branded menus and more\r\nLoyalty discount - to recognise our most dedicated players, a 20% discount will be available when you Pre-order a club Edition of PES 2021 through efootball PES 2020 (including Lite)\r\nMaster League - An immersive single-player mode that puts you in the manager\'s seat of your Very own football Club, featuring an interactive dialogue system with cinematic cutscenes, realistic transfers and more. As you work to build and develop your very own Club, you\'ll be charged with driving progression through meaningful choices both on and off the pitch', 1, '2023-09-13 13:07:34', '2023-09-13 13:09:03');
INSERT INTO `products` VALUES (31, NULL, 1, '0022', 'simple', 'CTR', 'ctr', 430000.00, 1.00, NULL, NULL, NULL, 'Crash is back in the driver’s seat! Get ready to go fur-throttle with Crash™ Team Racing Nitro-Fueled. It’s the authentic CTR experience plus a whole lot more, now fully-remastered and revved up to the max.', 'Start your engines with the original game modes, characters, tracks, power-ups, weapons and controls\r\n\r\nPower slide to glory in additional karts and tracks from beyond the original game\r\n\r\nRace online with friends and Crash the competition with online leaderboards', 1, '2023-09-13 13:23:59', '2023-09-13 13:27:55');
INSERT INTO `products` VALUES (32, NULL, 1, '0023', 'simple', 'Tekken 7', 'tekken-7', 300000.00, 1.00, NULL, NULL, NULL, 'Continue the hardcore action in Bandai Namco’s latest release TEKKEN 7! This ninth entry to the famed fighting game series TEKKEN concludes the story of the Mishima clan saga and unravels other mysteries that has baffled players throughout the series. Enjoy all new characters, modes, and mechanics as possibly the best ever TEKKEN game to be launched; Bolstered by the UNREAL 4 engine, this epic fighting game will smash its way into next gen consoles.\r\n\r\nWitness the final battle of Kazuya and Heihachi as TEKKEN 7 reveals the story behind their infamous feud and the origin of the devil gene. Play as any of the game’s rich roster of characters including past favorites like Kazuya Mishima, Bryan Fury, and Asuka Kazama along with new ones like Katarina, a woman who practices the art of Savate, and Claudio, who possess light-conjuring powers in his right hand.\r\n\r\nEnjoy a one-on-one battle made rich with exciting new gameplay mechanics like the Rage Art, that allows players to execute powerful attacks when their health gets low giving them a last ditch attempt for a comeback. Another is the Power Crush which allows players to continue their attacks while being hit by the enemy. Item Moves and Stage effects will also be returning to the game to let players fully immerse themselves in the battle ring.', 'Continue the hardcore action in Bandai Namco’s latest release TEKKEN 7! This ninth entry to the famed fighting game series TEKKEN concludes the story of the Mishima clan saga and unravels other mysteries that has baffled players throughout the series. Enjoy all new characters, modes, and mechanics as possibly the best ever TEKKEN game to be launched; Bolstered by the UNREAL 4 engine, this epic fighting game will smash its way into next gen consoles.\r\n\r\nWitness the final battle of Kazuya and Heihachi as TEKKEN 7 reveals the story behind their infamous feud and the origin of the devil gene. Play as any of the game’s rich roster of characters including past favorites like Kazuya Mishima, Bryan Fury, and Asuka Kazama along with new ones like Katarina, a woman who practices the art of Savate, and Claudio, who possess light-conjuring powers in his right hand.\r\n\r\nEnjoy a one-on-one battle made rich with exciting new gameplay mechanics like the Rage Art, that allows players to execute powerful attacks when their health gets low giving them a last ditch attempt for a comeback. Another is the Power Crush which allows players to continue their attacks while being hit by the enemy. Item Moves and Stage effects will also be returning to the game to let players fully immerse themselves in the battle ring.', 1, '2023-09-13 13:28:49', '2023-09-13 13:30:21');
INSERT INTO `products` VALUES (33, NULL, 1, '0024', 'simple', 'God of War Ragnarok', 'god-of-war-ragnarok', 980000.00, 1.00, NULL, NULL, NULL, 'The freezing winds ofFimbulwinterhave come to Midgard, making survivalforKratos, Atreus, andMimirin the Norse wilds even more challenging than before.\r\n\r\nWhile the last game built an enormous amount of trust and understanding between father and son, there is still a great deal of complexity in their interactions – especially after the revelation of Atreus’ Giant heritage and the hidden prophecy onlyKratossaw.\r\n\r\nAtreus is desperately curious. Like most young people, he wants to understand who he is more than anything. In this case, he wants to understand who he could be. The mystery of Loki’s role in the upcoming conflict is something that Atreus cannot let go of. He wants to keep his family safe, but Atreus also doesn’t want to stand by and do nothing while conflict consumes the Nine Realms.\r\n\r\nKratos, still bearing the knowledge of his past mistakes, wants to spare Atreus the bloody lessons he learned from his conflict with the gods. He wants to keep his son safe, above all, and their confrontation with Baldur has vindicated the belief that only tragedy will come from further entanglements with the Aesir.\r\n\r\nTogether, Kratos and Atreus will have to make a choice about which path they will take. Whatever they choose will define the fate of all those living in the Nine Realms as Ragnarök approaches.', 'The freezing winds ofFimbulwinterhave come to Midgard, making survivalforKratos, Atreus, andMimirin the Norse wilds even more challenging than before.\r\n\r\nWhile the last game built an enormous amount of trust and understanding between father and son, there is still a great deal of complexity in their interactions – especially after the revelation of Atreus’ Giant heritage and the hidden prophecy onlyKratossaw.\r\n\r\nAtreus is desperately curious. Like most young people, he wants to understand who he is more than anything. In this case, he wants to understand who he could be. The mystery of Loki’s role in the upcoming conflict is something that Atreus cannot let go of. He wants to keep his family safe, but Atreus also doesn’t want to stand by and do nothing while conflict consumes the Nine Realms.\r\n\r\nKratos, still bearing the knowledge of his past mistakes, wants to spare Atreus the bloody lessons he learned from his conflict with the gods. He wants to keep his son safe, above all, and their confrontation with Baldur has vindicated the belief that only tragedy will come from further entanglements with the Aesir.\r\n\r\nTogether, Kratos and Atreus will have to make a choice about which path they will take. Whatever they choose will define the fate of all those living in the Nine Realms as Ragnarök approaches.', 1, '2023-09-13 13:31:08', '2023-09-13 13:31:49');
INSERT INTO `products` VALUES (34, NULL, 1, '0025', 'simple', 'Final Fantasy XVI', 'final-fantasy-xvi', 980000.00, 1.00, NULL, NULL, NULL, 'An epic dark fantasy world where the fate of the land is decided by the mighty Eikons and the Dominants who wield them.\r\n\r\nThis is the tale of Clive Rosfield, a warrior granted the title First Shield of Rosaria and sworn to protect his younger brother Joshua, the dominant of the Phoenix. Before long, Clive will be caught up in a great tragedy and swear revenge on the Dark Eikon Ifrit, a mysterious entity that brings calamity in its wake.', 'An epic dark fantasy world where the fate of the land is decided by the mighty Eikons and the Dominants who wield them.\r\n\r\nThis is the tale of Clive Rosfield, a warrior granted the title First Shield of Rosaria and sworn to protect his younger brother Joshua, the dominant of the Phoenix. Before long, Clive will be caught up in a great tragedy and swear revenge on the Dark Eikon Ifrit, a mysterious entity that brings calamity in its wake.\r\n\r\nSTORY\r\n\r\nThe sun is setting upon the land of Valisthea. For centuries, people have flocked to her Mothercrystals to partake of their blessingthe abundant aether that fuels the magicks they rely upon in their everyday lives. But as the aether begins to fade and the lifeless deadlands spread ever further, so too does the struggle over the final flickers of the Mothers\' light grow ever more fierce. Bloody battle rages across the realm, rival nations sending their ultimate weapons against each other: the Dominants. Men and women within whom sleep the world-shattering power of an Eikon.\r\n\r\nThere are few in Valisthea whose lives have not been touched by this war for the crystals\' blessing, and Clive Rosfield, firstborn son of the Archduke of Rosaria, is no exception. Unlike most, however, the vicissitudes of fate are to reveal to him the dark truth that lies at the heart of his world and lead him on a mission to destroy those selfsame Mothercrystals the rest of the realm hold sacred.\r\n\r\nThe legacy of the crystals has shaped mankind\'s destiny for long enough.', 1, '2023-09-13 13:34:23', '2023-09-13 13:36:47');
INSERT INTO `products` VALUES (35, NULL, 1, '0026', 'simple', 'Spiderman 2', 'spiderman-2', 1029000.00, 1.00, NULL, NULL, NULL, 'Marvel Spider-Man 2 is the next game in PlayStation’s critically acclaimed Marvel’s Spider-Man franchise. Developed by Insomniac Games in collaboration with Marvel Games and PlayStation for the PS5 console.', 'Marvel Spider-Man 2 is the next game in PlayStation’s critically acclaimed Marvel’s Spider-Man franchise. Developed by Insomniac Games in collaboration with Marvel Games and PlayStation for the PS5 console.', 1, '2023-09-13 13:37:37', '2023-09-13 13:41:51');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'web', '2023-09-13 11:45:07', '2023-09-13 11:45:07');

-- ----------------------------
-- Table structure for shipments
-- ----------------------------
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE `shipments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `track_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_qty` int NOT NULL,
  `total_weight` int NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `province_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `postcode` int NULL DEFAULT NULL,
  `shipped_by` bigint UNSIGNED NULL DEFAULT NULL,
  `shipped_at` datetime NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shipments_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `shipments_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `shipments_shipped_by_foreign`(`shipped_by`) USING BTREE,
  INDEX `shipments_track_number_index`(`track_number`) USING BTREE,
  CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipments
-- ----------------------------

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` int NOT NULL DEFAULT 0,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `original` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_large` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `small` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slides_user_id_index`(`user_id`) USING BTREE,
  CONSTRAINT `slides_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slides
-- ----------------------------
INSERT INTO `slides` VALUES (4, 1, 'Spiderman 2', NULL, 1, 'active', NULL, 'uploads/images/original/spiderman-2_1694617080.jpeg', 'uploads/images/xlarge/spiderman-2_1694617080.jpeg', 'uploads/images/small/spiderman-2_1694617080.jpeg', '2023-09-13 14:58:00', '2023-09-13 14:58:00');
INSERT INTO `slides` VALUES (5, 1, 'Assasin Creed New', NULL, 2, 'active', NULL, 'uploads/images/original/assasin-creed-new_1694617359.png', 'uploads/images/xlarge/assasin-creed-new_1694617359.png', 'uploads/images/small/assasin-creed-new_1694617359.png', '2023-09-13 15:02:40', '2023-09-13 15:02:40');
INSERT INTO `slides` VALUES (6, 1, 'Mortal Kombat 1', NULL, 3, 'active', NULL, 'uploads/images/original/mortal-kombat-1_1694617431.png', 'uploads/images/xlarge/mortal-kombat-1_1694617431.png', 'uploads/images/small/mortal-kombat-1_1694617431.png', '2023-09-13 15:03:52', '2023-09-13 15:03:52');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `province_id` int NULL DEFAULT NULL,
  `city_id` int NULL DEFAULT NULL,
  `postcode` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Chasity', 'Purdy', 'roman23@example.net', NULL, '2023-09-13 11:45:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '55tk9r2WxM', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:45:07', '2023-09-13 11:45:07');
INSERT INTO `users` VALUES (2, 'flo', 'gg', 'flogy@gmail.com', NULL, NULL, '$2y$10$hWw8OH5z1b66velEZzYcB.QsOuLe/CBu8TquEmJo1LnwsBA44wWey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:51:40', '2023-09-13 11:51:40');

SET FOREIGN_KEY_CHECKS = 1;
