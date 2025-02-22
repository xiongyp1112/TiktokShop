CREATE TABLE `carts` (
                         `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '购物车ID',
                         `user_id` BIGINT NOT NULL COMMENT '用户ID',
                         `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                         INDEX (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='购物车表';

CREATE TABLE `cart_items` (
                              `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '购物车项ID',
                              `cart_id` BIGINT NOT NULL COMMENT '购物车ID',
                              `product_id` BIGINT NOT NULL COMMENT '商品ID',
                              `quantity` INT NOT NULL DEFAULT 1 COMMENT '商品数量',
                              `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                              `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                              INDEX (`cart_id`),
                              INDEX (`product_id`),
                              CONSTRAINT `fk_cart_items_cart` FOREIGN KEY (`cart_id`) REFERENCES `carts`(`id`) ON DELETE CASCADE,
                              CONSTRAINT `fk_cart_items_product` FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='购物车商品表';
