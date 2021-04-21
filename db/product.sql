-- ************************************** `product`

CREATE TABLE `product`
(
    `id`          int NOT NULL ,
    `name`        varchar(45) NOT NULL ,
    `description` varchar(150) NOT NULL ,
    `image`       varchar(45) NOT NULL ,
    `price`       double NOT NULL ,

    PRIMARY KEY (`id`)
);