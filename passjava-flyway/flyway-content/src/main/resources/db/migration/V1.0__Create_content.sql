DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `id` bigint(20) NOT NULL,
  `picture_path` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `title` varchar(500) DEFAULT NULL COMMENT '标题',
  `sort` int(255) DEFAULT 1 COMMENT '排序',
  `status` tinyint(1)  DEFAULT 0 COMMENT '状态（是否显示：0.不显示，1.显示）',
  `jump_type` tinyint(4) DEFAULT 0 COMMENT '跳转类型',
  `jump_path` varchar(500) DEFAULT NULL COMMENT '跳转路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='内容-横幅广告表';

DROP TABLE IF EXISTS `real_time_info`;
CREATE TABLE `real_time_info`  (
  `id` bigint(20) NOT NULL,
  `picture_path` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `title` varchar(500) DEFAULT NULL COMMENT '标题',
  `sort` int(255) DEFAULT 1 COMMENT '排序',
  `status` tinyint(1)  DEFAULT 0 COMMENT '状态（是否显示：0.不显示，1.显示）',
  `jump_path` varchar(500) DEFAULT NULL COMMENT '跳转路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='内容-资讯表';


