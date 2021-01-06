DROP TABLE IF EXISTS `member_list`;
CREATE TABLE `member_list`  (
  `id` bigint(20) NOT NULL ,
  `app_open_id` int(11) NOT NULL COMMENT '小程序openID',
  `service_open_id` varchar(64) NOT NULL COMMENT '小服务号openID',
  `wexin_union_id` varchar(64) NOT NULL COMMENT '微信unionID',
  `member_level_id` bigint(20) NOT NULL COMMENT '会员等级ID',
  `user_name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `phone_number` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `mailbox` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `head_portrait` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` tinyint(1) default 0 COMMENT '性别（0.男，1.女）',
  `birthday` date default null COMMENT '生日',
  `city` varchar(500) DEFAULT NULL COMMENT '所在城市',
  `user_source` tinyint(4) default 0 COMMENT '用户来源',
  `integral` int(11) default 0 COMMENT '积分',
  `registration_time` datetime default NULL COMMENT '注册时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-会员表';

DROP TABLE IF EXISTS `member_integral_change`;
CREATE TABLE `member_integral_change`  (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL COMMENT '会员ID',
  `change_value` int(11) DEFAULT 0 COMMENT '改变的值',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `integral_source` tinyint(4) default 0 COMMENT '积分来源',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-积分值历史变化表';


