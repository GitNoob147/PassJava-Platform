DROP TABLE IF EXISTS `question_list`;
CREATE TABLE `question_list`  (
  `id` bigint(20) NOT NULL ,
  `question_title` varchar(500) DEFAULT NULL COMMENT '题目标题',
  `question_answer` varchar(500) DEFAULT NULL COMMENT '题目解答',
  `question_difficulty_level` tinyint(4) DEFAULT 0 COMMENT '题目难度等级',
  `sort` int(11) DEFAULT 1 COMMENT '排序',
  `subtitle` varchar(500) DEFAULT NULL COMMENT '副标题',
  `question_type` bigint(20) DEFAULT 0 COMMENT '题目类型',
  `status` tinyint(1) DEFAULT 0 COMMENT '是否显示（0.不显示，1.显示）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='题目-题目表';

DROP TABLE IF EXISTS `question_type_list`;
CREATE TABLE `question_type_list`  (
  `id` bigint(20) NOT NULL,
  `type_name` varchar(64) DEFAULT NULL COMMENT '类型名称',
  `type_logo_path` varchar(500) DEFAULT NULL COMMENT '类型logo路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='题目-题目类型表';


