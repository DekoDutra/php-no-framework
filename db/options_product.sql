-- ************************************** `options_product`

CREATE TABLE `options_product`
(
    `id`         int NOT NULL ,
    `id_product` int NOT NULL ,
    `id_option`  int NOT NULL ,

    PRIMARY KEY (`id`),
    KEY `fkIdx_29` (`id_product`),
    CONSTRAINT `FK_28` FOREIGN KEY `fkIdx_29` (`id_product`) REFERENCES `product` (`id`),
    KEY `fkIdx_34` (`id_option`),
    CONSTRAINT `FK_33` FOREIGN KEY `fkIdx_34` (`id_option`) REFERENCES `options` (`id`)
);
