-- 注意一下字符集，这块按公司规定来
CREATE DATABASE IF NOT EXISTS micro_user DEFAULT CHARACTER SET = utf8mb4;

USE micro_user;

-- 创建 tbl_user 表
CREATE TABLE IF NOT EXISTS tbl_user (
	`id` BIGINT AUTO_INCREMENT PRIMARY KEY,
	`username` VARCHAR(128) NOT NULL COMMENT '用户名，帐号',
	`password` CHAR(40) NOT NULL COMMENT '用户密码，SHA-1加密',
	`nickname` VARCHAR(128) COMMENT '用户昵称',
	`create_time` DATETIME NOT NULL COMMENT '创建时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
