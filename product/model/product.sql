CREATE TABLE `products` (
                            `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID',
                            `name` VARCHAR(255) NOT NULL COMMENT '商品名称',
                            `description` TEXT COMMENT '商品描述',
                            `picture` VARCHAR(512) COMMENT '商品图片URL',
                            `price` DECIMAL(10,2) NOT NULL COMMENT '商品价格',
                            `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';
