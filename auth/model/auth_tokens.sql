CREATE TABLE `auth_tokens` (
                               `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                               `user_id` BIGINT NOT NULL COMMENT '用户ID',
                               `token` VARCHAR(512) NOT NULL UNIQUE COMMENT '用户认证 Token',
                               `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                               `expires_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
                               PRIMARY KEY (`id`),
                               INDEX `idx_user_id` (`user_id`),
                               INDEX `idx_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户认证 Token 表';
