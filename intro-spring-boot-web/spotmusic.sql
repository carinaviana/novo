/*
SQLyog Ultimate v8.61 
MySQL - 5.5.62 : Database - dbspotmusic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbspotmusic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbspotmusic`;

/*Table structure for table `musicas` */

DROP TABLE IF EXISTS `musicas`;

CREATE TABLE `musicas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `banda` varchar(50) NOT NULL,
  `nota` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `id_playlist_fk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5o45l3v93edflf20yov4b0e1l` (`id_playlist_fk`),
  CONSTRAINT `FK5o45l3v93edflf20yov4b0e1l` FOREIGN KEY (`id_playlist_fk`) REFERENCES `playlists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `musicas` */

insert  into `musicas`(`id`,`banda`,`nota`,`titulo`,`id_playlist_fk`) values (1,'bandateste',8,'musicateste',1);

/*Table structure for table `playlists` */

DROP TABLE IF EXISTS `playlists`;

CREATE TABLE `playlists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `playlists` */

insert  into `playlists`(`id`,`descricao`,`nome`) values (1,'teste1','teste1'),(2,'teste2','teste2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
