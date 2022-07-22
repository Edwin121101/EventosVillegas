-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 19-07-2022 a las 04:26:30
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Sudaderas', 'Lo mejor en moda', 'img_96ccb75009b975295a06cef431977bf9.jpg', '2020-10-23 03:14:08', 'sudaderas', 1),
(2, 'Camisas', 'Lo más hot en camisas!', 'img_1d894c5c44ba769024e3b02fcd1d0f28.jpg', '2020-10-23 03:17:26', 'camisas', 1),
(3, 'Blusas', 'Lo mejor en moda', 'img_2901f077047d2802d50c4f1fb5695b63.jpg', '2020-10-23 03:17:42', 'blusas', 1),
(4, 'Jeans', 'Los mejores jeans', 'img_3b0b3cc38bbcec8e075201c7e6f5db0d.jpg', '2020-10-28 03:45:12', 'jeans', 1),
(5, 'Tenis', 'Deja tu huella con estilo', 'img_aa562eda7db7cde6a139cf5946b6a559.jpg', '2020-10-30 03:05:09', 'tenis', 1),
(6, 'Accesorios', 'Joyería, relojes y mucho más...', 'img_e26a983804ca935c865a9312bb6d84e3.jpg', '2020-11-14 00:21:15', 'accesorios', 1),
(7, 'Tecnología', 'Dale un segundo uso de vida', 'img_980d27f2d073255587d6ecf361f1807b.jpg', '2020-12-05 22:38:27', 'tecnologia', 1),
(8, 'Artefactos', '¿Buscas tesoros?', 'img_91d4fe0dab46f9942f6f79d4fb1f8f56.jpg', '2020-12-05 23:00:16', 'artefactos', 1),
(10, 'Donaciones', 'Regala un poco de tí', 'img_55b9b98dc3c3dd4f5617ff930dad05f4.jpg', '2022-05-27 23:14:24', 'donaciones', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Edwin', 'edwinvillegas9@gmail.com', 'Pruebas de EventosVillegas', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:16:02'),
(3, 'Edwin', 'edwinvillegas9@gmail.com', 'Pruebas de EventosVillegas 2', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:21:23'),
(4, 'Ary', 'ariadnarafael@gmail.com', 'Supervisora de pruebas.', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:22:17'),
(5, 'Ary', 'ariadnarafael@gmail.com', 'Prueba 2', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:29:53'),
(6, 'Edwin', 'evillegasd1600@alumno.ipn.mx', '¿Nuevo usuario?', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-05 14:52:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(118, 55, 13, '150.00', 1),
(119, 55, 11, '690.00', 1),
(120, 55, 2, '110.00', 1),
(122, 57, 13, '150.00', 1),
(123, 57, 7, '250.00', 1),
(124, 57, 2, '110.00', 1),
(125, 58, 12, '3500.00', 1),
(126, 59, 13, '150.00', 1),
(127, 60, 13, '150.00', 1),
(128, 61, 15, '70.00', 1),
(129, 62, 9, '120.00', 1),
(130, 63, 15, '70.00', 1),
(131, 64, 13, '150.00', 1),
(132, 65, 3, '200.00', 1),
(133, 66, 2, '110.00', 1),
(134, 67, 14, '400.00', 1),
(135, 68, 14, '400.00', 1),
(136, 69, 14, '400.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(24, 10, 'pro_6c0537968a89765773d91230daef622a.jpg'),
(25, 10, 'pro_e3345c10650826ea67447733e65e63a8.jpg'),
(38, 1, 'pro_af1a98fb27d97c5f3098b0c1bc9fb24e.jpg'),
(39, 1, 'pro_9c66550cdeca4ed8f45fbadc07bcdf25.jpg'),
(42, 14, 'pro_c1d4b4e8304026ba2d514b8014191b3c.jpg'),
(43, 14, 'pro_13832265f934bcc6167062b383428d3a.jpg'),
(48, 7, 'pro_7466a7d54873b2167a7ea6a66a28aa11.jpg'),
(49, 7, 'pro_5b62cc313872987c9413f8e30d0e7607.jpg'),
(50, 6, 'pro_0972f5e15d54b1b87afd14488b499d57.jpg'),
(51, 6, 'pro_a9a75ff35f6464af606c0b7cfb03731e.jpg'),
(52, 9, 'pro_5197dd798b64a97d328ba00fe8f201d7.jpg'),
(53, 9, 'pro_e449a995fb76bb96650ff1444838b5a4.jpg'),
(54, 5, 'pro_d0bcb9f199da1cd9ec1f37843b049d78.jpg'),
(55, 5, 'pro_e5d6909a456b476ab4625a51820c8fc6.jpg'),
(56, 4, 'pro_9ebd3f8c5a16b78d775e633a07f04ab9.jpg'),
(57, 3, 'pro_81a2c85e2e311821434dc74eeb7c4536.jpg'),
(58, 12, 'pro_7210724af71cd7b04fba605c409176fd.jpg'),
(59, 13, 'pro_8fcf9a18f9a3d7468c30b76026ef3d0e.jpg'),
(60, 13, 'pro_1dc9a3bb1713d14f6f45e4be10f43c88.jpg'),
(61, 11, 'pro_f1874ef71e0f7bdd4cce6ebdd8011800.jpg'),
(64, 2, 'pro_52295936a758c4ae33289ee5fbc23b12.jpg'),
(65, 15, 'pro_4b7de694b8808b5766c37360fcb9f58e.jpg'),
(66, 15, 'pro_823c0ddd6bd64195c0f3536fa67203ef.jpg'),
(68, 16, 'pro_548d1b87ac439095695e518446ce0fae.jpg'),
(69, 17, 'pro_c2fdff14d353a1676a4e840f68a10ee5.jpg'),
(70, 18, 'pro_5d49ec66eec59942e51a838d559cbab7.jpg'),
(71, 19, 'pro_c4098261bfa276657b4f4d28fff97e70.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(55, '1234567', NULL, NULL, 22, '2022-05-27 00:38:01', '3.00', '953.00', 4, 'México, ESCOM PRUEBA', 'Completo'),
(56, NULL, '6NT075760T940605E', '{\"id\":\"6M487342LJ514143A\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"53.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $53 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"6NT075760T940605E\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"53.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-05-27T05:45:56Z\",\"update_time\":\"2022-05-27T05:45:56Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"create_time\":\"2022-05-27T05:45:22Z\",\"update_time\":\"2022-05-27T05:45:56Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/6M487342LJ514143A\",\"rel\":\"self\",\"method\":\"GET\"}]}', 23, '2022-05-27 00:45:56', '3.00', '53.00', 1, 'ESCOM, ESCOM', 'Completo'),
(57, '233232', NULL, NULL, 25, '2022-05-30 00:33:26', '3.00', '513.00', 2, 'Pantitlan, México', 'Completo'),
(58, NULL, '2G2771276E959750L', '{\"id\":\"789639986Y562264V\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"3503.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $3503 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"2G2771276E959750L\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"3503.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-05-30T05:37:36Z\",\"update_time\":\"2022-05-30T05:37:36Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"create_time\":\"2022-05-30T05:36:36Z\",\"update_time\":\"2022-05-30T05:37:36Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/789639986Y562264V\",\"rel\":\"self\",\"method\":\"GET\"}]}', 26, '2022-05-30 00:37:36', '3.00', '3503.00', 1, 'Paypal, Paypal', 'Aprobado'),
(59, NULL, '83331421YN534900V', '{\"id\":\"4AL14962DX027373G\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"153.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $153 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"83331421YN534900V\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"153.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-05-31T03:26:05Z\",\"update_time\":\"2022-05-31T03:26:05Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"create_time\":\"2022-05-31T03:25:22Z\",\"update_time\":\"2022-05-31T03:26:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4AL14962DX027373G\",\"rel\":\"self\",\"method\":\"GET\"}]}', 27, '2022-05-30 22:26:06', '3.00', '153.00', 1, 'Acapulco, Guerrero', 'Completo'),
(60, NULL, '2YS76949UC304734T', '{\"id\":\"5R009953R1247203N\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"153.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $153 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"2YS76949UC304734T\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"153.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-05-31T04:16:55Z\",\"update_time\":\"2022-05-31T04:16:55Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"create_time\":\"2022-05-31T04:14:58Z\",\"update_time\":\"2022-05-31T04:16:55Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/5R009953R1247203N\",\"rel\":\"self\",\"method\":\"GET\"}]}', 22, '2022-05-30 23:16:55', '3.00', '153.00', 1, 'Ary, Ary', 'Completo'),
(61, '34322', NULL, NULL, 1, '2022-06-01 01:04:21', '30.00', '100.00', 4, 'CASA, CASA', 'Completo'),
(62, NULL, '3TB29034EW9436837', '{\"id\":\"176633800W4805333\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"150.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $150 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"3TB29034EW9436837\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"150.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-06-01T06:12:55Z\",\"update_time\":\"2022-06-01T06:12:55Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"address_line_2\":\"Col. Cuauhtemoc\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"create_time\":\"2022-06-01T06:12:26Z\",\"update_time\":\"2022-06-01T06:12:55Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/176633800W4805333\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2022-06-01 01:12:56', '30.00', '150.00', 1, 'CORREO, CORREO', 'Completo'),
(63, NULL, NULL, NULL, 1, '2022-06-01 01:18:33', '30.00', '100.00', 2, 'dd, dd', 'Pendiente'),
(64, NULL, NULL, NULL, 1, '2022-06-02 12:14:53', '30.00', '180.00', 2, 'lol, lol', 'Pendiente'),
(65, NULL, '7GX01516FV855762B', '{\"id\":\"1M503301E52526005\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"230.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $230 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"Edwin Ivan Villegas\"},\"address\":{\"address_line_1\":\"Ecatepec De Morelos\",\"address_line_2\":\"Ecatepec\",\"admin_area_2\":\"Mexico\",\"admin_area_1\":\"MEX\",\"postal_code\":\"55120\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"7GX01516FV855762B\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"230.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-06-05T19:48:05Z\",\"update_time\":\"2022-06-05T19:48:05Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Ecatepec De Morelos\",\"address_line_2\":\"Ecatepec\",\"admin_area_2\":\"Mexico\",\"admin_area_1\":\"MEX\",\"postal_code\":\"55120\",\"country_code\":\"MX\"}},\"create_time\":\"2022-06-05T19:47:01Z\",\"update_time\":\"2022-06-05T19:48:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/1M503301E52526005\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2022-06-05 14:48:05', '30.00', '230.00', 1, 'ESCOM PRUEBA, ESCOM', 'Completo'),
(66, NULL, '5NC70556NM960624K', '{\"id\":\"72N79158MX971354R\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"140.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $140 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"Edwin Ivan Villegas\"},\"address\":{\"address_line_1\":\"Ecatepec De Morelos\",\"address_line_2\":\"Ecatepec\",\"admin_area_2\":\"Mexico\",\"admin_area_1\":\"MEX\",\"postal_code\":\"55120\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"5NC70556NM960624K\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"140.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-06-05T20:29:41Z\",\"update_time\":\"2022-06-05T20:29:41Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"address_line_1\":\"Ecatepec De Morelos\",\"address_line_2\":\"Ecatepec\",\"admin_area_2\":\"Mexico\",\"admin_area_1\":\"MEX\",\"postal_code\":\"55120\",\"country_code\":\"MX\"}},\"create_time\":\"2022-06-05T20:29:00Z\",\"update_time\":\"2022-06-05T20:29:41Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/72N79158MX971354R\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2022-06-05 15:29:41', '30.00', '140.00', 1, 'ESCOM PRUEBA, ESCOM', 'Completo'),
(67, NULL, '4HE04981YN8421833', '{\"id\":\"9HK71674P7742102X\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"430.00\"},\"payee\":{\"email_address\":\"sb-fp1is16626222@business.example.com\",\"merchant_id\":\"A3L4ESFAJPE5Y\"},\"description\":\"Compra de artículos en EventosVillegas por $430 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"Edwin Ivan Villegas\"},\"address\":{\"address_line_1\":\"Ecatepec De Morelos\",\"address_line_2\":\"Ecatepec\",\"admin_area_2\":\"Mexico\",\"admin_area_1\":\"MEX\",\"postal_code\":\"55120\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"4HE04981YN8421833\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"430.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2022-06-07T05:19:17Z\",\"update_time\":\"2022-06-07T05:19:17Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-gxro4716685215@personal.example.com\",\"payer_id\":\"XXDG27F4FE3HQ\",\"address\":{\"country_code\":\"MX\"}},\"create_time\":\"2022-06-07T05:18:03Z\",\"update_time\":\"2022-06-07T05:19:17Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/9HK71674P7742102X\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2022-06-07 00:19:17', '30.00', '430.00', 1, 'MANUAL, USUARIO', 'Completo'),
(68, NULL, NULL, NULL, 1, '2022-06-07 00:20:00', '30.00', '430.00', 2, 'PRUEBA, MANUAL', 'Pendiente'),
(69, NULL, NULL, NULL, 1, '2022-06-07 08:37:33', '30.00', '430.00', 4, 'ESCOM, ESCOM', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=812 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(716, 7, 1, 1, 0, 0, 0),
(717, 7, 2, 0, 0, 0, 0),
(718, 7, 3, 0, 0, 0, 0),
(719, 7, 4, 0, 0, 0, 0),
(720, 7, 5, 1, 0, 0, 0),
(721, 7, 6, 0, 0, 0, 0),
(729, 3, 1, 1, 0, 0, 0),
(730, 3, 2, 0, 0, 0, 0),
(731, 3, 3, 0, 0, 0, 0),
(732, 3, 4, 1, 1, 0, 0),
(733, 3, 5, 1, 0, 0, 0),
(734, 3, 6, 0, 0, 0, 0),
(735, 3, 7, 0, 0, 0, 0),
(794, 1, 1, 1, 0, 0, 0),
(795, 1, 2, 1, 1, 1, 1),
(796, 1, 3, 1, 1, 1, 1),
(797, 1, 4, 1, 1, 1, 1),
(798, 1, 5, 1, 1, 1, 1),
(799, 1, 6, 1, 1, 1, 1),
(800, 1, 7, 1, 0, 0, 0),
(801, 1, 8, 1, 0, 0, 0),
(802, 1, 9, 1, 1, 1, 1),
(803, 2, 1, 1, 0, 1, 0),
(804, 2, 2, 1, 0, 1, 0),
(805, 2, 3, 1, 0, 1, 0),
(806, 2, 4, 1, 1, 1, 1),
(807, 2, 5, 1, 0, 1, 0),
(808, 2, 6, 1, 0, 0, 0),
(809, 2, 7, 1, 0, 0, 0),
(810, 2, 8, 1, 0, 0, 0),
(811, 2, 9, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '2409198920', 'Edwin', 'Villegas', 5532614632, 'edwinvillegas9@gmail.com', 'fb440056c6c28aa8ce423d2af61fbd290b7fabab5b1630245cc9cd12bed7e16f', '24252622', 'Edwin Villegas', 'Ciudad Azteca', '', 1, '2020-08-13 00:51:44', 1),
(22, '123456', 'Ariadna', 'Rafael', 5516789127, 'ariadnarafael@gmail.com', '7054d0451000f27e0673c136e684b10beee8f4d6d9d04f964a92345a92cb17ef', NULL, NULL, NULL, '2529fa4c5a17bc06420d-4f91eb854d410ada365f-9a97416c674b50453863-a6d71147bba117ef464a', 2, '2022-05-27 00:28:23', 1),
(23, '536878', 'Cacahuatito', 'Pepita', 5513141516, 'cacahuate@pelado.com', '6b51d431df5d7f141cbececcf79edf3dd861c3b4069f0b11661a3eefacbba918', '122323', 'Cacahuaton', 'Naucalpan', 'e2dd2fb1a3c7c6dead6f-bbb0f8960b893ccbb4e9-d669eedc8e04a793faa0-a679125193618ab86da0', 7, '2022-05-27 00:44:45', 1),
(24, '390832', 'Fredy', 'Hernandez', 5572734346, 'fhernandezd1601@alumno.ipn.mx', '7f0e5aabcb9e410fbd5fe9cfff2cdb911ba8bdc20ccd7fb987176e4bf12f3e07', NULL, NULL, NULL, NULL, 3, '2022-05-29 12:13:57', 1),
(25, '839202', 'Perla', 'Rivera', 5526839942, 'priveras1600@alumno.ipn.mx', '103f9732c86565481d7587abe03c52929053dc8ecb5b066dd575288a4337bac5', NULL, NULL, NULL, NULL, 7, '2022-05-29 12:21:51', 1),
(26, '240919891', 'Cliente', 'Nuevo', 122323232, 'cliente@gmail.com', '7a5df5ffa0dec2228d90b8d0a0f1b0767b748b0a41314c123075b8289e4e053f', NULL, NULL, NULL, NULL, 7, '2022-05-30 00:35:52', 1),
(27, '098761', 'Neftali', 'Valdovinos', 7444521325, 'kyzerark@gmail.com', '2a939ce5059afb411075b530b69e921993ee53232262b52180a99a6720242d37', '1223232', 'Neftali', 'Acapulquirri', NULL, 7, '2022-05-30 22:22:35', 1),
(28, '23422', 'Oaxaco', 'WAD', 222323, 'oaxacowad@gmail.com', '0401bf6fe6541e9e56e4f230ce08e5e09f4239224d23a331b19a68701b8456c6', NULL, NULL, NULL, 'c5b6b28b847e404c53ef-3b2b0e328ba4317a7e14-786574aae7b9d7714931-c78263dbb3dabf6b7ba0', 1, '2022-06-01 00:52:17', 1),
(30, '240919891q', 'Prueba', 'Prueba', 333333, 'prueba2@gmail.com', '655e786674d9d3e77bc05ed1de37b4b6bc89f788829f9f3c679e7687b410c89b', 'qq', 'qqq', 'qq', '27c5bb5c962c8c524500-29575be624db780ff4c1-3be34155eef986428f07-44dd40525b05d3842789', 7, '2022-06-01 20:59:16', 0),
(31, '09876', 'Lalito', 'Garza', 90090, 'josh@gmail.com', '3dfbf1fbdbf9d2eb39e14955dcfd073792ebed8c9b97995210e70c4059be13c9', NULL, NULL, NULL, NULL, 7, '2022-06-01 21:08:39', 0),
(32, 'wwwwww', 'PruebaBien', 'PruebaBien', 298939, 'prueba3@gmail.com', '183d17bfaf501732c201913ab684b2c5504b354d51cb8f99eebbf04df48a0e35', NULL, NULL, NULL, NULL, 7, '2022-06-01 21:13:38', 0),
(33, NULL, 'Nombre', 'Apellido', 6272727, 'nombreap@gmail.com', '797194efe22825f6acccf620d680db75f8a832a37a086ef147491ee6c27cfebf', NULL, NULL, NULL, NULL, 7, '2022-06-01 22:48:45', 0),
(34, '093820', 'Monica', 'Rivera', 123456789, 'maestra@gmail.com', 'ca0b642ed0c1c9902c3e9c8ac00865e0a9cf6449f66012e1c6948b66818f26ff', NULL, NULL, NULL, NULL, 7, '2022-06-05 14:43:46', 0),
(35, '123459', 'Monica', 'Rivera De La Rosa', 123456789, 'moni@gmail.com', 'ca0b642ed0c1c9902c3e9c8ac00865e0a9cf6449f66012e1c6948b66818f26ff', NULL, NULL, NULL, NULL, 7, '2022-06-05 15:26:53', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la EventosVillegas!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1),
(10, 'Nosotros', '<p>&iquest;Qui&eacute;nes somos?</p>', '', '2022-06-01 00:05:12', 'nosotros', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 6, '45684545', 'Lentes Max\'s', '<p>Lentes de estudio, aumento en 4k.</p>', '400.00', 1, '', '2020-11-15 00:57:57', 'lentes-max\'s', 0),
(2, 3, '465456465', 'Blusa Dama Vintage', '<p>Descripci&oacute;n producto</p> <ul> <li>Uno</li> <li>Dos</li> </ul>', '110.00', 1, '', '2020-11-15 03:13:35', 'blusa-dama-vintage', 1),
(3, 1, '4654654', 'Red Polo XL', '<p>Descripci&oacute;n producto uno</p> <table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"> <tbody> <tr> <td style=\"width: 48.0244%;\">N&uacute;mero</td> <td style=\"width: 48.022%;\">Descripc&iacute;&oacute;n</td> </tr> <tr> <td style=\"width: 48.0244%;\">Uno</td> <td style=\"width: 48.022%;\">Peque&ntilde;o</td> </tr> <tr> <td style=\"width: 48.0244%;\">Dos</td> <td style=\"width: 48.022%;\">Mediano</td> </tr> <tr> <td style=\"width: 48.0244%;\">Tres</td> <td style=\"width: 48.022%;\">Grande</td> </tr> </tbody> </table>', '200.00', 1, '', '2020-11-15 03:19:15', 'red-polo-xl', 1),
(4, 2, '45654654', 'Adidas Gris', '<p>El modelo no viene con el producto.</p>', '80.00', 1, '', '2020-11-23 02:59:44', 'adidas-gris', 1),
(5, 6, '6546546545', 'Collar Plateado Freducci', '<p>Plata de 4k</p>', '1000.00', 1, '', '2020-11-23 03:22:35', 'collar-plateado-freducci', 1),
(6, 2, '646546547877', 'Camisa Black Old', '<p>Casi nueva, color negro, talla G.</p> <p>&nbsp;</p>', '150.00', 1, '', '2020-11-23 03:38:55', 'camisa-black-old', 1),
(7, 6, '65465454', 'Bolsa Zebra', '<p>&iquest;Qui&eacute;res estar a la moda?</p> <p>Es tu momento...</p>', '250.00', 1, '', '2020-11-23 03:39:59', 'bolsa-zebra', 1),
(9, 3, '546455456', 'DinoBlusa Azul', '<p>Datos del producto</p>', '120.00', 1, '', '2020-12-01 12:52:33', 'dinoblusa-azul', 1),
(10, 1, '654546544', 'Producto Nuevo', '<p>Descripc&oacute;n</p>', '470.00', 0, '', '2020-12-02 03:52:09', 'producto-nuevo', 0),
(11, 10, '4657897897', 'Kit de ropa', '', '0.00', 1, '', '2020-12-06 02:30:02', 'kit-de-ropa', 1),
(12, 7, '489464781', 'Lote de celulares y carteras de regalo', '<p style=\"text-align: justify;\"><span style=\"color: #000000; font-family: arial, helvetica, sans-serif;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span> <a title=\"Google\" href=\"https://google.com\" target=\"_blank\" rel=\"noopener\">Ver m&aacute;s detalle&nbsp;</a></p> <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p> <p>&nbsp;</p>', '3500.00', 1, '', '2020-12-11 02:23:22', 'lote-de-celulares-y-carteras-de-regalo', 1),
(13, 1, '4654654564', 'POLAROID', '<p>Descripci&oacute;n producto Nuevo</p>', '150.00', 1, '', '2020-12-18 00:44:28', 'polaroid', 1),
(14, 6, '46546542', 'Lentes Matz', '<p>Lentes de medio uso.</p> <p>Ves en 4k.</p>', '400.00', 1, '', '2022-05-29 00:06:17', 'lentes-matz', 1),
(15, 8, '2343232', 'Par de Calcetas largas', '<p>Unisex</p> <ul> <li>Akatsukis</li> <li>Tanjiro de Demon Slayer</li> </ul>', '70.00', 2, '', '2022-05-29 12:37:52', 'par-de-calcetas-largas', 1),
(16, 10, '90643249', 'DONAR', '', '0.00', 1, '', '2022-06-02 12:17:12', 'donar', 1),
(17, 10, '2346782', 'PRUEBA DONAR', '<ul> <li>Donar camisa naranja</li> </ul>', '0.00', 1, '', '2022-06-05 14:51:35', 'prueba-donar', 0),
(18, 10, '1233210', 'DONACION CAMISA NARANJA', '<ul> <li>Donar camisa o blusa naranja</li> </ul>', '0.00', 1, '', '2022-06-05 15:32:17', 'donacion-camisa-naranja', 0),
(19, 5, '2828290', 'tenis', '<p>ahahah</p>', '140.00', 1, '', '2022-06-07 08:40:51', 'tenis', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

DROP TABLE IF EXISTS `reembolso`;
CREATE TABLE IF NOT EXISTS `reembolso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `idtransaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 1),
(6, 'Resporteria', 'Resporteria Sistema', 0),
(7, 'Cliente', 'Clientes tienda', 1),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 0),
(9, 'Coordinador', 'Coordinador', 1),
(10, 'Consulta Ventas', 'Consulta Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(7, 'Suscriptornuevo', 'susc@gmail.com', '2022-05-30 00:39:55'),
(8, 'Suscriptornuevo', 'susc1@gmail.com', '2022-06-05 15:34:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
