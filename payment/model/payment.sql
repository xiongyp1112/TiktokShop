CREATE TABLE `payments` (
                            `id` BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '支付ID',
                            `transaction_id` VARCHAR(64) NOT NULL UNIQUE COMMENT '交易ID',
                            `order_id` VARCHAR(64) NOT NULL COMMENT '订单ID',
                            `user_id` BIGINT NOT NULL COMMENT '用户ID',
                            `amount` DECIMAL(10,2) NOT NULL COMMENT '支付金额',
                            `credit_card_number` VARCHAR(20) NOT NULL COMMENT '信用卡号',
                            `credit_card_cvv` INT NOT NULL COMMENT '信用卡CVV',
                            `credit_card_expiration_year` INT NOT NULL COMMENT '信用卡有效期（年）',
                            `credit_card_expiration_month` INT NOT NULL COMMENT '信用卡有效期（月）',
                            `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            INDEX (`order_id`),
                            INDEX (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付记录表';
