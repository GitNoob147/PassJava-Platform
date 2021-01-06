DROP TABLE IF EXISTS `channel_list`;
CREATE TABLE `channel_list`  (
  `id` bigint(20) NOT NULL,
  `channel_name` varchar(100) DEFAULT NULL COMMENT '渠道名称',
  `channel_app_id` varchar(100) DEFAULT NULL COMMENT '渠道APPID',
  `channel_app_secret` varchar(500) DEFAULT NULL COMMENT '渠道APPsecret',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道-渠道表';

DROP TABLE IF EXISTS `channel_certification`;
CREATE TABLE `channel_certification`  (
  `id` bigint(20) NOT NULL,
  `channel_id` bigint(20) NOT NULL COMMENT '渠道ID',
  `assert_tocken` varchar(500) DEFAULT NULL COMMENT 'assert_tocken',
  `expire_date` datetime DEFAULT NULL COMMENT '到期时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道-认证表';


