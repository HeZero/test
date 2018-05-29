use fp_world;

--
-- Table structure for table `user_account_unique`
-- 用户基本信息表
-- 

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info`(
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`uuid` varchar(40) NOT NULL COMMENT '唯一id',
	`user_name` varchar(40) NOT NULL COMMENT '用户名',
	`nickname` varchar(20) COMMENT '昵称',
	`integral` int(20) COMMENT '0' COMMENT '积分',
	`match_num` int(10) NOT NULL DEFAULT 1 COMMENT '对局',
	`use_type` varchar() COMMENT '用户类型',
	`level` int NOT NULL DEFAULT 0 COMMENT '等级',
	`money` decimal(20) DEFAULT 0 COMMENT '',
	`create_time` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` bigint(20) NULL COMMENT '更新时间',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用户基本信息表';


--
-- Table structure for table `user_account_unique`
-- 消费流水表
-- 

DROP TABLE IF EXISTS `consume_record`;
CREATE TABLE IF NOT EXISTS `consume_record`(
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`uuid` varchar(40) NOT NULL COMMENT '唯一id',
	`user_uuid` varchar(40) NOT NULL COMMENT '用户id',
	`type` varchar(40) NOT NULL COMMENT '流水类型',
	`op_type` varchar(20) COMMENT '操作类型：出，入',
	`present_amount` decimal(20) DEFAULT 0 COMMENT '操作之前的金额',
	`amount` decimal(20) DEFAULT 0 COMMENT '操作金额',
	`create_time` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` bigint(20) NULL COMMENT '更新时间',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='消费流水表';

--
-- Table structure for table `user_member_card`
-- 会员卡表
-- 

-- DROP TABLE IF EXISTS `user_member_card`;
-- CREATE TABLE IF NOT EXISTS `user_member_card`(
-- 	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
-- 	`uuid` varchar(40) NOT NULL COMMENT '唯一id',
-- 	`user_name` varchar(40) NOT NULL COMMENT '用户名',
-- 	`nickname` varchar(20) COMMENT '昵称',
-- 	`integral` int(20) COMMENT '0' COMMENT '积分',
-- 	`match_num` int(10) NOT NULL DEFAULT 1 COMMENT '对局',
-- 	`level` int NOT NULL DEFAULT 0 COMMENT '等级',
-- 	`create_time` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
-- 	`update_time` bigint(20) NULL COMMENT '更新时间',
-- 	PRIMARY KEY (`id`)
-- )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='会员卡表';


--
-- Table structure for table `user_game`
-- 用户游戏表
-- 

DROP TABLE IF EXISTS `user_game`;
CREATE TABLE `user_game` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_uuid` varchar(40) NOT NULL COMMENT '用户id',
  `name` varchar(40) NOT NULL COMMENT '游戏名',
  `client` varchar(128) NOT NULL COMMENT '客户端',
  `nick_ingame` varchar(128) NOT NULL COMMENT '游戏昵称',
  `wechat_num` varchar(128) NOT NULL COMMENT '邀请账号name',
  `qq_num`  VARCHAR(70) NOT NULL DEFAULT ''  COMMENT '设备号',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '更新时间'
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name`),
  KEY `idx_user_uuid` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用户游戏表';


--
-- Table structure for table `user_account_unique`
-- 用户对战表
-- 

DROP TABLE IF EXISTS `user_match`;
CREATE TABLE IF NOT EXISTS `user_match`(
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`uuid` varchar(40) NOT NULL COMMENT '唯一id',
	`publisher` varchar(40) NOT NULL COMMENT '发布者',
	`subscriber` varchar(20) COMMENT '订阅者',
	`ad_fee` int(20) COMMENT '0' COMMENT '广告费',
	`play_num` int(10) NOT NULL DEFAULT 1 COMMENT '对局人数',
	`client` varchar() COMMENT '客户端',
	`title` int NOT NULL DEFAULT 0 COMMENT '标题',
	`create_time` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` bigint(20) NULL COMMENT '更新时间',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用户对战表';

--
-- Table structure for table `article`
-- 文章表
-- 

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `author` varchar(40) NOT NULL COMMENT '作者',
  `title` varchar(40) NOT NULL COMMENT '标题',
  `content` varchar(128) NOT NULL COMMENT '内容',
  `type` varchar(128) NOT NULL COMMENT '类型',
  `img_url`  VARCHAR(70) NOT NULL DEFAULT ''  COMMENT '图片链接',
  `status` varchar(128) NOT NULL COMMENT '状态',
  `see_num` varchar(128) NOT NULL COMMENT '查看人数',
  `up_num` varchar(128) NOT NULL COMMENT '点赞人数',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '更新时间'
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name`),
  KEY `idx_user_uuid` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';


--
-- Table structure for table `goods`
-- 商品表
-- 

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uuid` varchar(40) NOT NULL COMMENT '唯一id',
  `name` varchar(40) NOT NULL COMMENT '商品名称',
  `type` varchar(40) NOT NULL COMMENT '商品类型',
  `price` varchar(128) NOT NULL COMMENT '价格',
  `total_amount` varchar(128) NOT NULL COMMENT '库存',
  `remain_amount`  VARCHAR(70) NOT NULL DEFAULT ''  COMMENT '剩余',
  `status` varchar(128) NOT NULL COMMENT '是否下架',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '更新时间'
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name`),
  KEY `idx_user_uuid` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';


--
-- Table structure for table `goods`
--  订单表
-- 

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uuid` varchar(40) NOT NULL COMMENT '唯一id',
  `goods_uuid` varchar(40) NOT NULL COMMENT '商品ID',
  `goods_num` varchar(40) NOT NULL COMMENT '商品数量',
  `price` varchar(128) NOT NULL COMMENT '商品价格',
  `total_money` varchar(128) NOT NULL COMMENT '总金额',
  `user_uuid` varchar(40) NOT NULL COMMENT '兑换用户uuid',
  `name` varchar(40) NOT NULL COMMENT '兑换用户名',
  `phone` varchar(40) NOT NULL COMMENT '联系电话',
  `address` varchar(128) NOT NULL COMMENT '地址',
  `status` varchar(128) NOT NULL COMMENT '订单状态',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '更新时间'
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name`),
  KEY `idx_user_uuid` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';




