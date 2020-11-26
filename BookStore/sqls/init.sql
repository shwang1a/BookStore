use test;

DROP TABLE IF EXISTS `Book`;

CREATE TABLE `Book` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` longtext NOT NULL,
  `Genre` longtext,
  `Price` decimal(65,30) NOT NULL,
  `PublishDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4;


LOCK TABLES `Book` WRITE;

INSERT INTO `Book` VALUES (1,'Book1','Genre1',20.000000000000000000000000000000,'2012-04-23 00:00:00.000000'),(2,'Book2','Genre2',30.000000000000000000000000000000,'2008-06-13 00:00:00.000000');

