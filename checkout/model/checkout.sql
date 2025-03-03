CREATE TABLE `checkouts` (
                             `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '结账ID',
                             `user_id` BIGINT NOT NULL COMMENT '用户ID',
                             `firstname` VARCHAR(50) NOT NULL COMMENT '姓',
                             `lastname` VARCHAR(50) NOT NULL COMMENT '名',
                             `email` VARCHAR(255) NOT NULL COMMENT '邮箱',
                             `street_address` VARCHAR(255) NOT NULL COMMENT '街道地址',
                             `city` VARCHAR(100) NOT NULL COMMENT '城市',
                             `state` VARCHAR(100) NOT NULL COMMENT '省/州',
                             `country` VARCHAR(100) NOT NULL COMMENT '国家',
                             `zip_code` VARCHAR(20) NOT NULL COMMENT '邮政编码',
                             `credit_card_number` VARCHAR(20) NOT NULL COMMENT '信用卡号',
                             `credit_card_cvv` INT NOT NULL COMMENT '信用卡CVV',
                             `credit_card_expiration_year` INT NOT NULL COMMENT '信用卡有效期（年）',
                             `credit_card_expiration_month` INT NOT NULL COMMENT '信用卡有效期（月）',
                             `order_id` VARCHAR(64) NOT NULL COMMENT '订单ID',
                             `transaction_id` VARCHAR(64) NOT NULL COMMENT '交易ID',
                             `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                             INDEX (`user_id`),
                             INDEX (`order_id`),
                             INDEX (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='结账记录表';
