CREATE TABLE `users` (
                         `id` INT NOT NULL AUTO_INCREMENT COMMENT '用户ID',
                         `email` VARCHAR(255) NOT NULL UNIQUE COMMENT '邮箱',
                         `password` VARCHAR(255) NOT NULL COMMENT '密码',
                         `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
