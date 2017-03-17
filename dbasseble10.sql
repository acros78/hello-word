/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.21-MariaDB : Database - assemble
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`assemble` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `assemble`;

/*Table structure for table `accesorios` */

DROP TABLE IF EXISTS `accesorios`;

CREATE TABLE `accesorios` (
  `id_acc` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_acce` varchar(250) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `interfaz` varchar(100) DEFAULT NULL,
  `canales_audio` varchar(100) DEFAULT NULL,
  `conpatibilidad` varchar(100) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `peso` varchar(100) DEFAULT NULL,
  `diseño` varchar(100) DEFAULT NULL,
  `tipo_t` varchar(50) DEFAULT NULL,
  `frecuencia` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_acc`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `accesorios_ibfk_2` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `accesorios` */

insert  into `accesorios`(`id_acc`,`nombre_acce`,`id_marca`,`interfaz`,`canales_audio`,`conpatibilidad`,`dimension`,`peso`,`diseño`,`tipo_t`,`frecuencia`,`activo`) values (3,'audionos',13,'no aplica','no aplica','no aplica','no aplica','no aplica','no aplica','no aplica','no aplica',1),(6,'audifonos',13,'no aplica','no aplica','no aplica','no aplica','no aplica','no aplica','no aplica','no aplica',1),(7,'audifonos',13,'no aplica','no aplica','no aplica','no aplica','no aplica','no aplica','no aplica','no aplica',1),(8,'audifonos',13,'no aplica','no','no','no','no','no','no','no',1),(9,'audifonos',13,'no aplica','no','no','no','no','no','no','no',1),(10,'audifonos',13,'no aplica','no aplica','no aplica','no aplica','no','no aplica','no aplica','no aplica',1);

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cli` varchar(100) DEFAULT NULL,
  `app_cli` varchar(100) DEFAULT NULL,
  `apm_cli` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

/*Table structure for table `dd` */

DROP TABLE IF EXISTS `dd`;

CREATE TABLE `dd` (
  `id_dd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de dsicos duros',
  `id_marca` int(11) DEFAULT NULL,
  `capacidad` varchar(9) DEFAULT NULL,
  `velocidad` varchar(10) DEFAULT NULL,
  `interfaz` varchar(20) DEFAULT NULL,
  `memoria_cache` varchar(9) DEFAULT NULL,
  `formato` varchar(5) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dd`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `dd_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dd` */

insert  into `dd`(`id_dd`,`id_marca`,`capacidad`,`velocidad`,`interfaz`,`memoria_cache`,`formato`,`activo`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `gabinete` */

DROP TABLE IF EXISTS `gabinete`;

CREATE TABLE `gabinete` (
  `id_gab` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de gabinete',
  `id_marca` int(11) DEFAULT NULL COMMENT 'id de marcas',
  `material` varchar(10) DEFAULT NULL,
  `bahias` varchar(70) DEFAULT NULL,
  `ranuras_expancion` int(11) DEFAULT NULL,
  `ventiladores` varchar(200) DEFAULT NULL,
  `puertos_frontales` varchar(250) DEFAULT NULL,
  `fuente_poder` varchar(2) DEFAULT NULL,
  `factor_formato` varchar(20) DEFAULT NULL,
  `dimension` varchar(30) DEFAULT NULL,
  `peso` varchar(20) DEFAULT NULL,
  `leds` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gab`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `gabinete_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gabinete` */

/*Table structure for table `imagenes` */

DROP TABLE IF EXISTS `imagenes`;

CREATE TABLE `imagenes` (
  `id_imag` int(11) NOT NULL AUTO_INCREMENT,
  `id_tabla` int(11) DEFAULT NULL,
  `tabla` varchar(2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `imagenes` */

/*Table structure for table `inventario` */

DROP TABLE IF EXISTS `inventario`;

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_pro` int(11) DEFAULT NULL COMMENT 'ide de las tablas de productos',
  `letra_pro` varchar(10) DEFAULT NULL COMMENT 'identificador de tablas',
  `cantidad` int(11) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `id_producto` (`id_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inventario` */

/*Table structure for table `linea` */

DROP TABLE IF EXISTS `linea`;

CREATE TABLE `linea` (
  `id_linea` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de linea',
  `linea` varchar(100) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `linea` */

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(80) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `marca` */

insert  into `marca`(`id_marca`,`marca`,`logo`,`activo`) values (13,'intel','E1jOQL2t.png',0),(14,'AMD','2.png',1);

/*Table structure for table `memoriaram` */

DROP TABLE IF EXISTS `memoriaram`;

CREATE TABLE `memoriaram` (
  `id_memoria` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` varchar(10) DEFAULT NULL,
  `tegnologia` varchar(20) DEFAULT NULL,
  `latencia` varchar(50) DEFAULT NULL,
  `voltaje` varchar(10) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_memoria`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `memoriaram_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `memoriaram` */

/*Table structure for table `monitor` */

DROP TABLE IF EXISTS `monitor`;

CREATE TABLE `monitor` (
  `id_mon` int(11) NOT NULL AUTO_INCREMENT,
  `id_mar` int(11) DEFAULT NULL COMMENT 'Marca',
  `car_mon` varchar(1000) DEFAULT NULL COMMENT 'Caracteristicas',
  `mod_mon` varchar(30) DEFAULT NULL COMMENT 'Modelo',
  `tip_mon` varchar(30) DEFAULT NULL COMMENT 'Tipo de Pantalla',
  `pul_mon` int(10) DEFAULT NULL COMMENT 'Tamaño de Pantalla',
  `pan_mon` varchar(20) DEFAULT NULL COMMENT 'Tipo de Panel',
  `res_mon` varchar(20) DEFAULT NULL COMMENT 'Resolución Máxima',
  `asp_mon` varchar(20) DEFAULT NULL COMMENT 'Relación de Aspecto',
  `vis_mon` varchar(30) DEFAULT NULL COMMENT 'Angulo de Visión',
  `col_mon` varchar(30) DEFAULT NULL COMMENT 'Colores Desplegables',
  `bri_mon` varchar(20) DEFAULT NULL COMMENT 'Brillo',
  `tr_mon` varchar(10) DEFAULT NULL COMMENT 'Tiempo de Respuesta',
  `cos_mon` varchar(10) DEFAULT NULL COMMENT 'Contraste',
  `hdmi_mon` int(11) DEFAULT NULL COMMENT 'Entrada HDMI',
  `vga_mon` int(11) DEFAULT NULL COMMENT 'Entrada VGA',
  `dvi_mon` int(11) DEFAULT NULL COMMENT 'Entrada DVI',
  `aud_mon` int(11) DEFAULT NULL COMMENT 'Entrada de Audio (3.5mm)',
  `ene_mon` varchar(20) DEFAULT NULL COMMENT 'Entrada de Energía',
  `con_mon` varchar(20) DEFAULT NULL COMMENT 'Consumo de Energía',
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mon`),
  KEY `id_mar` (`id_mar`),
  CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`id_mar`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `monitor` */

/*Table structure for table `pc` */

DROP TABLE IF EXISTS `pc`;

CREATE TABLE `pc` (
  `id_pc` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca` int(11) DEFAULT NULL,
  `id_linea` int(11) DEFAULT NULL,
  `detalle` text,
  PRIMARY KEY (`id_pc`),
  KEY `id_marca` (`id_marca`),
  KEY `id_linea` (`id_linea`),
  CONSTRAINT `pc_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  CONSTRAINT `pc_ibfk_2` FOREIGN KEY (`id_linea`) REFERENCES `linea` (`id_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pc` */

/*Table structure for table `procesador` */

DROP TABLE IF EXISTS `procesador`;

CREATE TABLE `procesador` (
  `id_proc` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca` int(11) DEFAULT NULL,
  `id_linea` int(11) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `generacion` varchar(50) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `cache` varchar(10) DEFAULT NULL,
  `soket` varchar(20) DEFAULT NULL,
  `nucleos` varchar(10) DEFAULT NULL,
  `graficos_in` varchar(2) DEFAULT NULL,
  `tegnologia_fabric` varchar(10) DEFAULT NULL,
  `soporta64` varchar(2) DEFAULT NULL,
  `hyper_threadig` varchar(2) DEFAULT NULL,
  `turbo_boost` varchar(2) DEFAULT NULL,
  `t_virtualizacion` varchar(2) DEFAULT NULL,
  `hyper_transport` varchar(2) DEFAULT NULL,
  `tdp` varchar(20) DEFAULT NULL,
  `disipador` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `id_soket` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proc`),
  KEY `id_marca` (`id_marca`),
  KEY `id_linea` (`id_linea`),
  KEY `id_soket` (`id_soket`),
  CONSTRAINT `procesador_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  CONSTRAINT `procesador_ibfk_2` FOREIGN KEY (`id_linea`) REFERENCES `linea` (`id_linea`),
  CONSTRAINT `procesador_ibfk_4` FOREIGN KEY (`id_soket`) REFERENCES `soket` (`id_soket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `procesador` */

/*Table structure for table `psu` */

DROP TABLE IF EXISTS `psu`;

CREATE TABLE `psu` (
  `id_fp` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id fuente de poder',
  `id_mar` int(11) DEFAULT NULL,
  `car_pod` varchar(100) DEFAULT NULL COMMENT 'caracteristicas',
  `fac_pod` varchar(20) DEFAULT NULL COMMENT 'factor de forma',
  `ven_pod` varchar(20) DEFAULT NULL COMMENT 'ventilador',
  `pfc_pod` varchar(20) DEFAULT NULL,
  `coe_pod` varchar(20) DEFAULT NULL COMMENT 'conector principal',
  `cal_pod` varchar(20) DEFAULT NULL COMMENT 'carril mas volt',
  `cot_pod` varchar(20) DEFAULT NULL COMMENT 'Conectores PCI-Express',
  `coc_pod` varchar(20) DEFAULT NULL COMMENT 'Conectores SATA',
  `sli_pod` varchar(20) DEFAULT NULL,
  `cro_pod` varchar(20) DEFAULT NULL,
  `enr_pod` varchar(20) DEFAULT NULL COMMENT 'Entrada de Voltaje',
  `ran_pod` varchar(20) DEFAULT NULL COMMENT 'Rango de Frecuencia de Entrada',
  `ent_pod` varchar(20) DEFAULT NULL COMMENT 'Entrada de Corriente',
  `sal_pod` varchar(20) DEFAULT NULL COMMENT 'Salida',
  `mtb_pod` varchar(20) DEFAULT NULL COMMENT 'MTBF',
  `nor_pod` varchar(20) DEFAULT NULL COMMENT 'Cumple con la(s) norma(s)',
  `con_pod` varchar(50) DEFAULT NULL COMMENT 'Conectores',
  `dim_pod` varchar(20) DEFAULT NULL COMMENT 'dimension',
  `pes_pod` varchar(20) DEFAULT NULL COMMENT 'peso',
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fp`),
  KEY `id_mar` (`id_mar`),
  CONSTRAINT `psu_ibfk_1` FOREIGN KEY (`id_mar`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `psu` */

/*Table structure for table `soket` */

DROP TABLE IF EXISTS `soket`;

CREATE TABLE `soket` (
  `id_soket` int(11) NOT NULL AUTO_INCREMENT,
  `soket` varchar(100) DEFAULT NULL,
  `generacion` varchar(100) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_soket`),
  KEY `id_pro` (`soket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `soket` */

/*Table structure for table `tarjeta_madre` */

DROP TABLE IF EXISTS `tarjeta_madre`;

CREATE TABLE `tarjeta_madre` (
  `id_tm` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca` int(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `modelo_chip` varchar(100) DEFAULT NULL,
  `pci_x1` varchar(100) DEFAULT NULL,
  `pci` varchar(100) DEFAULT NULL,
  `pci_x16` varchar(100) DEFAULT NULL,
  `sata3` varchar(100) DEFAULT NULL,
  `sata6` varchar(100) DEFAULT NULL,
  `canales_audio` varchar(100) DEFAULT NULL,
  `ps2` varchar(100) DEFAULT NULL,
  `usb` varchar(100) DEFAULT NULL,
  `usb3` varchar(100) DEFAULT NULL,
  `vga` varchar(100) DEFAULT NULL,
  `hdmi` varchar(100) DEFAULT NULL,
  `rj45` varchar(100) DEFAULT NULL,
  `pueto_audio` varchar(100) DEFAULT NULL,
  `atx24` varchar(100) DEFAULT NULL,
  `atx4` varchar(100) DEFAULT NULL,
  `cpu_fan` varchar(100) DEFAULT NULL,
  `chas_fan` varchar(100) DEFAULT NULL,
  `atx` varchar(100) DEFAULT NULL COMMENT 'TAMAÑO DE TARJETA',
  `com` varchar(100) DEFAULT NULL COMMENT 'PUERTO',
  `bios` varchar(100) DEFAULT NULL,
  `id_soket` varchar(100) DEFAULT NULL,
  `ranuras_ram` varchar(100) DEFAULT NULL,
  `memoria_compa` varchar(100) DEFAULT NULL,
  `maximo_soporte_ram` varchar(100) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tm`),
  KEY `id_marca` (`id_marca`),
  KEY `id_soket` (`id_soket`),
  CONSTRAINT `tarjeta_madre_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  CONSTRAINT `tarjeta_madre_ibfk_2` FOREIGN KEY (`id_soket`) REFERENCES `soket` (`soket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tarjeta_madre` */

/*Table structure for table `tarjeta_video` */

DROP TABLE IF EXISTS `tarjeta_video`;

CREATE TABLE `tarjeta_video` (
  `id_tv` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de tarjeta de video',
  `id_marca` int(11) DEFAULT NULL COMMENT 'id de marcas',
  `modelo` varchar(30) DEFAULT NULL COMMENT 'modelo de la tarjeta',
  `chipset` varchar(30) DEFAULT NULL COMMENT 'modelos del chpcep',
  `gpu` varchar(20) DEFAULT NULL COMMENT 'gpu del graficos',
  `seri` varchar(20) DEFAULT NULL COMMENT 'serie dela marca',
  `cuda_cores` varchar(20) DEFAULT NULL,
  `boost_clock` varchar(20) DEFAULT NULL,
  `memoria_mt` varchar(10) DEFAULT NULL,
  `tipo_mt` varchar(10) DEFAULT NULL,
  `interfaz_mt` varchar(10) DEFAULT NULL,
  `frecuencia_mt` varchar(10) DEFAULT NULL,
  `directx` varchar(10) DEFAULT NULL,
  `maxi_reso_digital` varchar(10) DEFAULT NULL,
  `interfaz` varchar(20) DEFAULT NULL,
  `hdmi` varchar(10) DEFAULT NULL,
  `dvi` varchar(10) DEFAULT NULL,
  `vga` varchar(10) DEFAULT NULL,
  `displayport` varchar(10) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tv`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `tarjeta_video_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tarjeta_video` */

/*Table structure for table `tred` */

DROP TABLE IF EXISTS `tred`;

CREATE TABLE `tred` (
  `id_tred` int(11) NOT NULL AUTO_INCREMENT COMMENT 'tarjeta de red',
  `id_mar` int(11) DEFAULT NULL,
  `car_tred` varchar(1000) DEFAULT NULL COMMENT 'Características',
  `est_tred` varchar(100) DEFAULT NULL COMMENT 'Estándares Industriales',
  `int_tred` varchar(30) DEFAULT NULL COMMENT 'Interfaz',
  `bus_tred` varchar(30) DEFAULT NULL COMMENT 'Tipo de Bus',
  `tip_tred` varchar(30) DEFAULT NULL COMMENT 'Tipo de Tarjeta',
  `red_tred` varchar(30) DEFAULT NULL COMMENT 'Redes Compatibles',
  `tam_tred` varchar(30) DEFAULT NULL COMMENT 'Tamaño del Buffer',
  `tas_tred` varchar(30) DEFAULT NULL COMMENT 'Tasa de Transferencia de Datos Máxima',
  `pue_tred` varchar(30) DEFAULT NULL COMMENT 'Puertos Externos',
  `con_tred` varchar(30) DEFAULT NULL COMMENT 'Tipo(s) de Conector(es)',
  `com_tred` varchar(50) DEFAULT NULL COMMENT 'Compatibilidad',
  `pes_tred` varchar(30) DEFAULT NULL COMMENT 'peso',
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tred`),
  KEY `id_mar` (`id_mar`),
  CONSTRAINT `tred_ibfk_1` FOREIGN KEY (`id_mar`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tred` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(250) DEFAULT NULL,
  `perfil` enum('Administador','empresa_pro','normal') DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `app` varchar(50) DEFAULT NULL,
  `apm` varchar(50) DEFAULT NULL,
  `fotoPerfil` varchar(255) DEFAULT 'sombrau.png',
  `activo` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_user`,`nick`,`email`,`pass`,`perfil`,`nombre`,`app`,`apm`,`fotoPerfil`,`activo`) values (2,'roka','roka@hotmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','empresa_pro','Jonathan','Hernandez','Cisneros','images.jpg',1),(4,'Jon','j_sis_27@hotmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','Administador','','','','sombrau.png',1),(6,'eduardo','eduardo@hotmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','empresa_pro','Eduardo','Solano','Baez','sombrau.png',1),(7,'ariel','ariel@gmail.com.mx','$2y$10$GjujWMKwEN/3VfaVbKnoUenY4Et0foM/.ycYs1PdZIV3DDEVZvNT2','normal','ariel','solano','baez','images.jpg',1),(13,NULL,'fanny@gmail.com','$2y$10$MbovhKBjyeAIuDYIcUJqoOc8UHJZd1GhtgIACQbHGZvtX0DX1pKqe','empresa_pro','Fanny','Solano','Baez','Girl_jpg.png',1),(16,'rigo','rigoberto@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','Administador','Rigoberto','Solano','Barranco','profile-photo.jpg',1),(20,'kira','ekiradg@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','Administador','','','','s.jpg',1),(21,NULL,'rgio@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','empresa_pro','rigo','sola','barra','sombrau.png',1),(22,NULL,'rigo@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','empresa_pro','rigo','sola','barra','sombrau.png',1),(23,NULL,'barra@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','empresa_pro','rigo','sola','barra','sombrau.png',1),(24,NULL,'jona@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','empresa_pro','jon','hern','cisne','sombrau.png',1),(26,'Jonathan','jsis27@hotmail.com','$2y$10$t6FayJ2hDBE8ZdoFk6/qouApgB54t2ZkB29/RTwjxe2lKuDIA2Cbq','normal','','','','sombrau.png',1),(33,NULL,'Iroka@hotmail.com','$2y$10$BMwCsTvTvRte20KF084eMuCm/ECvrtDeU48oo0kbm0MzsybGJZhzu','empresa_pro','prueba','prueba','prueba','sombrau.png',1),(34,NULL,'Diroka@hotmail.com','$2y$10$NCo6oh2PqpIe6tuyyAnoAedp18IXJwp1fBPPfGl3dEU3oVtghr5g.','empresa_pro','njn','jn','jn','sombrau.png',1),(35,'Roko','solano@gmail.com','$2y$10$ej5eTbGZRRRYrO0tCDDvEOxDrMsKNiOGUS49Iq9kjwkvzuXdUBmL.','normal','','','','600x600.jpg',1),(36,'Adriana','ivonne@gmail.com','$2y$10$Hhdj9Q85FmkWpZ4tnt2nQuh6RKuQft7LB61Tz5B4e8ibSpdRx4Vxi','normal','Ivonne','Baez','Hernández','s.jpg',1),(37,'Azteca','azteca@hotmail.com','$2y$10$mvBUkUOZT7/A7UX8ecfMJOSUnVoSTN..13S0AzgxE.y1hE/Zl6yxG','normal','','','','006-2-768x1024.jpg',1),(39,NULL,'toluco@hotmail.com','$2y$10$RKd.7Ye5OBH18VI7orvTZOmX0qWQPkU0RbMioByoXdDUmvB5kJe9W','empresa_pro','Alfredo','Acosta','Peréz','sombrau.png',1);

/*Table structure for table `venta` */

DROP TABLE IF EXISTS `venta`;

CREATE TABLE `venta` (
  `id_v` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_v`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `venta` */

/*Table structure for table `ventadetalle` */

DROP TABLE IF EXISTS `ventadetalle`;

CREATE TABLE `ventadetalle` (
  `id_vd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID DE VENTA DETALLE',
  `id_v` int(11) DEFAULT NULL COMMENT 'ID DE VENTA',
  `id_pro` int(11) DEFAULT NULL COMMENT 'ID DEL PRODUCTO',
  `costo` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_vd`),
  KEY `id_v` (`id_v`),
  CONSTRAINT `ventadetalle_ibfk_1` FOREIGN KEY (`id_v`) REFERENCES `venta` (`id_v`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ventadetalle` */

/* Function  structure for function  `marca_usada` */

/*!50003 DROP FUNCTION IF EXISTS `marca_usada` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `marca_usada`(id_in INT) RETURNS tinyint(1)
BEGIN
	DECLARE id_m_out INT;
	SET id_m_out = (
			SELECT DISTINCT id_marca FROM `accesorios` WHERE id_marca=id_in  	
			UNION SELECT DISTINCT id_marca FROM `dd` WHERE id_marca=id_in  	
				 
	);
	IF id_m_out > 0 THEN
		RETURN TRUE;
	 ELSE
		RETURN FALSE;
	 END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `alta_acce` */

/*!50003 DROP PROCEDURE IF EXISTS  `alta_acce` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `alta_acce`(
    IN nombre_acce_in varchar(250),
    in id_marca_in int,
    in interfaz_in varchar(100) ,
    in canales_audio_in VARCHAR(100),
    in conpatibilidad_in VARCHAR(100),
    IN dimension_in VARCHAR(100),
    IN peso_in VARCHAR(100),
    IN diseño_in VARCHAR(100),
    IN tipo_t_in VARCHAR(100),
    IN frecuencia_in VARCHAR(100))
BEGIN
	INSERT INTO `accesorios` (nombre_acce,id_marca,`interfaz`, `canales_audio`,  `conpatibilidad`, `dimension`,
  `peso`,`diseño`,`tipo_t`,`frecuencia`,activo) VALUES
  (
    nombre_acce_in,
    id_marca_in,
    interfaz_in,
    canales_audio_in,
    conpatibilidad_in,
    dimension_in,
    peso_in,
    diseño_in,
    tipo_t_in,
    frecuencia_in,
    1
  ) ;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `alta_marca` */

/*!50003 DROP PROCEDURE IF EXISTS  `alta_marca` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `alta_marca`(in marca_in varchar(200), in logo_in varchar(200))
BEGIN
	insert into marca(marca,logo,activo) value (marca_in,logo_in,1);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `del_marca` */

/*!50003 DROP PROCEDURE IF EXISTS  `del_marca` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `del_marca`(id_in INT)
BEGIN
		
	DECLARE existe BOOLEAN;     
	SET existe = marca_usada (id_in);
	IF  existe = TRUE THEN
		UPDATE `marca` SET activo = '0' WHERE `id_marca` = id_in;
	 ELSE
		DELETE FROM `marca` WHERE `id_marca` = id_in;
	 END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modificar_marca` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificar_marca` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_marca`(
	IN id_marca_in INT,
	IN marca_in VARCHAR(50), 
	IN logo_in varchar(200),
	IN activo_in INT
)
BEGIN
	update `assemble`.`marca`
	set 
	`marca` = marca_in,
	`logo` = logo_in,
	`activo` = activo_in
	where `id_marca` = id_marca_in;
    END */$$
DELIMITER ;

/*Table structure for table `view_marcas` */

DROP TABLE IF EXISTS `view_marcas`;

/*!50001 DROP VIEW IF EXISTS `view_marcas` */;
/*!50001 DROP TABLE IF EXISTS `view_marcas` */;

/*!50001 CREATE TABLE  `view_marcas`(
 `id_marca` int(11) ,
 `marca` varchar(80) ,
 `logo` varchar(200) ,
 `activo` int(11) 
)*/;

/*View structure for view view_marcas */

/*!50001 DROP TABLE IF EXISTS `view_marcas` */;
/*!50001 DROP VIEW IF EXISTS `view_marcas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_marcas` AS (select `marca`.`id_marca` AS `id_marca`,`marca`.`marca` AS `marca`,`marca`.`logo` AS `logo`,`marca`.`activo` AS `activo` from `marca`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
