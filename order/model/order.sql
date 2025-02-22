CREATE TABLE `orders` (
                          `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID',
                          `order_id` VARCHAR(50) NOT NULL UNIQUE COMMENT '订单唯一编号',
                          `user_id` INT UNSIGNED NOT NULL COMMENT '用户ID',
                          `user_currency` VARCHAR(10) NOT NULL COMMENT '用户货币单位',
                          `email` VARCHAR(255) NOT NULL COMMENT '用户邮箱',
                          `street_address` VARCHAR(255) NOT NULL COMMENT '街道地址',
                          `city` VARCHAR(100) NOT NULL COMMENT '城市',
                          `state` VARCHAR(100) NOT NULL COMMENT '州/省份',
                          `country` VARCHAR(100) NOT NULL COMMENT '国家',
                          `zip_code` INT NOT NULL COMMENT '邮政编码',
                          `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
                          `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单更新时间',
                          `status` VARCHAR(20) DEFAULT 'pending' COMMENT '订单状态 (pending, paid, shipped, completed)',
                          PRIMARY KEY (`id`),
                          INDEX `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

CREATE TABLE `order_items` (
                               `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单商品ID',
                               `order_id` VARCHAR(50) NOT NULL COMMENT '订单唯一编号',
                               `product_id` INT UNSIGNED NOT NULL COMMENT '商品ID',
                               `quantity` INT NOT NULL COMMENT '商品数量',
                               `cost` DECIMAL(10,2) NOT NULL COMMENT '商品总价',
                               `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                               PRIMARY KEY (`id`),
                               INDEX `idx_order_id` (`order_id`),
                               FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单商品表';
