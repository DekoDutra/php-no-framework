-- ************************************** `user`

CREATE TABLE `user`
(
    `id`         int NOT NULL ,
    `email`      varchar(45) NOT NULL ,
    `password`   varchar(100) NOT NULL ,
    `name`       varchar(45) NOT NULL ,
    `tax_code`   int NOT NULL ,
    `created_at` datetime NOT NULL ,
    `updated_at` datetime NOT NULL ,

    PRIMARY KEY (`id`)
);