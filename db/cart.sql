-- ***************************************************;


-- ************************************** `cart`

CREATE TABLE `cart`
(
    `id`         int NOT NULL ,
    `metadata`   json NOT NULL ,
    `id_user`    int NOT NULL ,
    `created_at` datetime NOT NULL ,
    `updated_at` datetime NOT NULL ,

    PRIMARY KEY (`id`),
    KEY `fkIdx_50` (`id_user`),
    CONSTRAINT `FK_49` FOREIGN KEY `fkIdx_50` (`id_user`) REFERENCES `user` (`id`)
);
