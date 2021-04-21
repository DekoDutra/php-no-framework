-- ************************************** `order`

CREATE TABLE `order`
(
    `id`          int NOT NULL ,
    `id_billing`  int NOT NULL ,
    `id_delivery` int NOT NULL ,
    `id_cart`     int NOT NULL ,
    `created_at`  datetime NOT NULL ,
    `updated_at`  datetime NOT NULL ,
    `status`      int NOT NULL ,

    PRIMARY KEY (`id`),
    KEY `fkIdx_72` (`id_billing`),
    CONSTRAINT `FK_71` FOREIGN KEY `fkIdx_72` (`id_billing`) REFERENCES `address` (`id`),
    KEY `fkIdx_75` (`id_delivery`),
    CONSTRAINT `FK_74` FOREIGN KEY `fkIdx_75` (`id_delivery`) REFERENCES `address` (`id`),
    KEY `fkIdx_78` (`id_cart`),
    CONSTRAINT `FK_77` FOREIGN KEY `fkIdx_78` (`id_cart`) REFERENCES `cart` (`id`)
);