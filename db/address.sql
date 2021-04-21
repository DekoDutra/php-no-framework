-- ************************************** `address`

CREATE TABLE `address`
(
    `id`         int NOT NULL ,
    `address`    varchar(45) NOT NULL ,
    `number`     int NOT NULL ,
    `complement` varchar(45) NOT NULL ,
    `city`       varchar(45) NOT NULL ,
    `state`      varchar(2) NOT NULL ,
    `post_code`  int NOT NULL ,
    `id_user`    int NOT NULL ,
    `type`       int NOT NULL ,
    `default`    int NOT NULL ,
    `created_at` datetime NOT NULL ,
    `updated_at` datetime NOT NULL ,

    PRIMARY KEY (`id`),
    KEY `fkIdx_62` (`id_user`),
    CONSTRAINT `FK_61` FOREIGN KEY `fkIdx_62` (`id_user`) REFERENCES `user` (`id`)
);