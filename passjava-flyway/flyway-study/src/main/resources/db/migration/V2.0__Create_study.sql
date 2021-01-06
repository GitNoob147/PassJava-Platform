DROP TABLE IF EXISTS `length_of_study`;
CREATE TABLE `length_of_study`  (
  `id` bigint(20) NOT NULL,
  `question_type_id` bigint(20) NOT NULL COMMENT '题目类型ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `study_length` int(11) NOT NULL COMMENT '学习时长',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学习-用户学习时长表';

DROP TABLE IF EXISTS `browsing_history`;
CREATE TABLE `browsing_history`  (
  `id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL COMMENT '题目ID',
  `question_type_id` bigint(20) NOT NULL COMMENT '题目类型ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP   COMMENT '创建时间' ,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学习-用户学习浏览记录表';


