/*
 Navicat Premium Data Transfer

 Source Server         : conexion
 Source Server Type    : MySQL
 Source Server Version : 100132
 Source Host           : localhost:3306
 Source Schema         : web

 Target Server Type    : MySQL
 Target Server Version : 100132
 File Encoding         : 65001

 Date: 07/08/2018 22:29:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for art_registro
-- ----------------------------
DROP TABLE IF EXISTS `art_registro`;
CREATE TABLE `art_registro`  (
  `ID_ARTICULO` int(255) NULL DEFAULT NULL,
  `ID_CUENTA` int(255) NULL DEFAULT NULL,
  `ACCION` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `HORARIO` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of art_registro
-- ----------------------------
INSERT INTO `art_registro` VALUES (1, 2, 'alta', '2018-08-08 02:08:23');
INSERT INTO `art_registro` VALUES (2, 4, 'alta', '2018-08-08 02:08:53');
INSERT INTO `art_registro` VALUES (3, 4, 'alta', '2018-08-08 02:08:14');
INSERT INTO `art_registro` VALUES (4, 3, 'alta', '2018-08-08 02:08:48');
INSERT INTO `art_registro` VALUES (5, 2, 'alta', '2018-08-08 02:08:17');
INSERT INTO `art_registro` VALUES (6, 2, 'alta', '2018-08-08 02:08:35');
INSERT INTO `art_registro` VALUES (7, 4, 'alta', '2018-08-08 02:08:23');
INSERT INTO `art_registro` VALUES (8, 3, 'alta', '2018-08-08 02:08:49');
INSERT INTO `art_registro` VALUES (9, 3, 'alta', '2018-08-08 02:08:06');
INSERT INTO `art_registro` VALUES (9, 3, 'modif', '2018-08-08 02:08:01');
INSERT INTO `art_registro` VALUES (10, 2, 'alta', '2018-08-08 02:08:05');
INSERT INTO `art_registro` VALUES (11, 2, 'alta', '2018-08-08 02:08:23');
INSERT INTO `art_registro` VALUES (12, 4, 'alta', '2018-08-08 03:08:14');

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `ID_ARTICULO` int(255) NOT NULL AUTO_INCREMENT,
  `ID_CUENTA` int(255) NULL DEFAULT NULL,
  `TITULO` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `TEXTO` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `IMAGEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_ARTICULO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of articulos
-- ----------------------------
INSERT INTO `articulos` VALUES (1, 2, 'Panda', 'Negro y blanco', 'imagenes/panda/panda.jpg');
INSERT INTO `articulos` VALUES (2, 4, 'Camara', 'Lente grande', 'imagenes/camara/camara.jpg');
INSERT INTO `articulos` VALUES (3, 4, 'Lentes', 'Rosa', 'imagenes/lentes/lentes.jpg');
INSERT INTO `articulos` VALUES (4, 3, 'Guitarra', 'Criolla', 'imagenes/guitarra/guitarra.jpg');
INSERT INTO `articulos` VALUES (5, 2, 'Pantalon', 'Gris', 'imagenes/pantalon/pantalon.jpg');
INSERT INTO `articulos` VALUES (6, 2, 'Auriculares', 'Rojos', 'imagenes/auriculares/auriculares.jpg');
INSERT INTO `articulos` VALUES (7, 4, 'Buzo', 'Talla grande', 'imagenes/buzo/buzo.jpg');
INSERT INTO `articulos` VALUES (8, 3, 'Auto', 'F1G3', 'imagenes/auto/auto.jpg');
INSERT INTO `articulos` VALUES (9, 3, 'Remera', 'Blanca', 'imagenes/remera/remera.jpg');
INSERT INTO `articulos` VALUES (10, 2, 'Zapatos', 'Caballero', 'imagenes/zapatos/zapatos.jpg');
INSERT INTO `articulos` VALUES (11, 2, 'Vestido', 'Rojo', 'imagenes/vestido/vestido.jpg');
INSERT INTO `articulos` VALUES (12, 4, 'Moto', 'Motocicleta ultimo modelo fabricada en japon', 'imagenes/moto/moto.png');

-- ----------------------------
-- Table structure for datos
-- ----------------------------
DROP TABLE IF EXISTS `datos`;
CREATE TABLE `datos`  (
  `ID_CUENTA` int(255) NULL DEFAULT NULL,
  `EMAIL_USUARIO` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `ULTIMA_CONEXION` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of datos
-- ----------------------------
INSERT INTO `datos` VALUES (2, 'alan.manganaro@davinci.edu.ar', '2018-08-08 02:08:36');
INSERT INTO `datos` VALUES (4, 'marianela.ortubia@davinci.edu.ar', '2018-08-08 02:08:19');
INSERT INTO `datos` VALUES (3, 'gonzalo.montiel@davinci.edu.ar', '2018-08-08 02:08:34');
INSERT INTO `datos` VALUES (2, 'alan.manganaro@davinci.edu.ar', '2018-08-08 02:08:59');
INSERT INTO `datos` VALUES (4, 'marianela.ortubia@davinci.edu.ar', '2018-08-08 02:08:07');
INSERT INTO `datos` VALUES (3, 'gonzalo.montiel@davinci.edu.ar', '2018-08-08 02:08:33');
INSERT INTO `datos` VALUES (2, 'alan.manganaro@davinci.edu.ar', '2018-08-08 02:08:43');
INSERT INTO `datos` VALUES (4, 'marianela.ortubia@davinci.edu.ar', '2018-08-08 02:08:15');

-- ----------------------------
-- Table structure for registro
-- ----------------------------
DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro`  (
  `ID_USUARIO` int(255) NOT NULL AUTO_INCREMENT,
  `EMAIL_USUARIO` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `PASSWORD_USUARIO` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of registro
-- ----------------------------
INSERT INTO `registro` VALUES (1, 'admin@web.com', '$2y$10$qqWCAB1MTlAk0JWfAfDT6ObyWRskhCFuJutbRMfGFaKxl8H3eR3IC');
INSERT INTO `registro` VALUES (2, 'alan.manganaro@davinci.edu.ar', '$2y$10$N7IApDSlLOWmuT1p8xHRheogrdq1X87j9es6nQv.Fzu15CZFjKzke');
INSERT INTO `registro` VALUES (3, 'gonzalo.montiel@davinci.edu.ar', '$2y$10$1LHG5xRv.iX6EMIKncdCh.i87V4GChQQ2bG5R2K1V7i5VGs3hyxGy');
INSERT INTO `registro` VALUES (4, 'marianela.ortubia@davinci.edu.ar', '$2y$10$OV9hRdHK8N5PSczXEGKoLuJ76.Xo6vThZfdnU/kJCa8eLnR39/JTu');

SET FOREIGN_KEY_CHECKS = 1;
