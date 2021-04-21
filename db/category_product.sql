
-- ************************************** `category_product`

CREATE TABLE `category_product`
(
    `id`          int NOT NULL ,
    `id_product`  int NOT NULL ,
    `id_category` int NOT NULL ,

    PRIMARY KEY (`id`),
    KEY `fkIdx_11` (`id_product`),
    CONSTRAINT `FK_10` FOREIGN KEY `fkIdx_11` (`id_product`) REFERENCES `product` (`id`),
    KEY `fkIdx_19` (`id_category`),
    CONSTRAINT `FK_17` FOREIGN KEY `fkIdx_19` (`id_category`) REFERENCES `category` (`id`)
);
