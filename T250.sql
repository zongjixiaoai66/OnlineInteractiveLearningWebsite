/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t250`;
CREATE DATABASE IF NOT EXISTS `t250` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t250`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/zaixianxuexi/upload/1641803130275.jpg'),
	(2, '轮播图2', 'http://localhost:8080/zaixianxuexi/upload/1641803350980.png'),
	(3, '轮播图3', 'http://localhost:8080/zaixianxuexi/upload/1641871096682.png');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(5, 'forum_types', '讨论类型名称', 1, '讨论类型1', NULL, NULL, '2022-01-10 06:34:39'),
	(6, 'forum_types', '讨论类型名称', 2, '讨论类型2', NULL, NULL, '2022-01-10 06:34:39'),
	(7, 'forum_types', '讨论类型名称', 3, '讨论类型3', NULL, NULL, '2022-01-10 06:34:39'),
	(8, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-01-10 06:34:39'),
	(9, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-01-10 06:34:39'),
	(10, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-01-10 06:34:39'),
	(11, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-01-10 06:34:39'),
	(12, 'banji_types', '班级类型名称', 1, '班级1', NULL, NULL, '2022-01-10 06:34:39'),
	(13, 'banji_types', '班级类型名称', 2, '班级2', NULL, NULL, '2022-01-10 06:34:39'),
	(14, 'banji_types', '班级类型名称', 3, '班级3', NULL, NULL, '2022-01-10 06:34:39'),
	(15, 'zuoye_types', '作业类型名称', 1, '作业类型1', NULL, NULL, '2022-01-10 06:34:39'),
	(16, 'zuoye_types', '作业类型名称', 2, '作业类型2', NULL, NULL, '2022-01-10 06:34:39'),
	(17, 'gonggao_types', '公告类型名称', 1, '公告类型1', NULL, NULL, '2022-01-10 06:34:40'),
	(18, 'gonggao_types', '公告类型名称', 2, '公告类型2', NULL, NULL, '2022-01-10 06:34:40'),
	(19, 'examquestion_types', '试题类型', 1, '单选题', NULL, NULL, '2022-01-10 06:34:40'),
	(20, 'examquestion_types', '试题类型', 2, '多选题', NULL, NULL, '2022-01-10 06:34:40'),
	(21, 'examquestion_types', '试题类型', 3, '判断题', NULL, NULL, '2022-01-10 06:34:40'),
	(22, 'examquestion_types', '试题类型', 4, '填空题', NULL, NULL, '2022-01-10 06:34:40'),
	(23, 'exampaper_types', '试卷状态', 1, '启用', NULL, NULL, '2022-01-10 06:34:40'),
	(24, 'exampaper_types', '试卷状态', 2, '禁用', NULL, NULL, '2022-01-10 06:34:40'),
	(25, 'kecheng_types', '课程类型名称', 1, '课程类型1', NULL, NULL, '2022-01-10 08:04:40'),
	(26, 'kecheng_types', '课程类型名称', 2, '课程类型2', NULL, NULL, '2022-01-10 08:04:40'),
	(27, 'kecheng_types', '课程类型名称', 3, '课程类型3', NULL, NULL, '2022-01-10 08:04:40'),
	(28, 'kecheng_types', '课程类型名称', 4, '课程类型4', NULL, NULL, '2022-01-10 08:04:40'),
	(31, 'kecheng_types', '课程类型名称', 5, '课程类型5', NULL, NULL, '2022-01-11 03:11:14');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='试卷表';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `exampaper_name`, `exampaper_date`, `exampaper_myscore`, `exampaper_types`, `exampaper_delete`, `create_time`) VALUES
	(6, '试卷1', 100, 0, 1, 1, '2022-01-10 07:21:45'),
	(7, '试卷2', 101, 99, 1, 1, '2022-01-10 07:41:42'),
	(8, '试卷3', 60, 20, 1, 1, '2022-01-11 03:16:17');

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `exampaper_id`, `examquestion_name`, `examquestion_options`, `examquestion_score`, `examquestion_answer`, `examquestion_analysis`, `examquestion_types`, `examquestion_sequence`, `create_time`) VALUES
	(32, 6, '多选题1', '[{"text":"A","code":"A"},{"text":"答案是b","code":"B"},{"text":"传","code":"C"}]', 10, 'B,A', '答案解析', 2, 1, '2022-01-10 08:17:27'),
	(33, 6, '单选题试题2', '[{"text":"啊","code":"A"},{"text":"吧","code":"B"},{"text":"传","code":"C"},{"text":"答案是d","code":"D"}]', 10, 'D', '无', 1, 2, '2022-01-10 08:20:34'),
	(34, 6, '判断试题3', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 5, 'A', '无', 3, 3, '2022-01-10 08:21:09'),
	(35, 6, '单选题题目4', '[{"text":"2","code":"B"},{"text":"1","code":"A"},{"text":"3","code":"C"},{"text":"答案是d","code":"D"}]', 6, 'D', '答案解析1', 1, 3, '2022-01-10 08:22:19'),
	(36, 7, '试题1', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 10, 'B', '无', 3, 1, '2022-01-10 08:25:14'),
	(37, 6, '8', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 8, 'B', '0.0', 3, 1, '2022-01-10 09:34:20'),
	(38, 7, '99', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 9, 'A', '9.1', 3, 2, '2022-01-10 09:43:32'),
	(39, 6, '11', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 11, 'A', '11', 3, 11, '2022-01-10 09:44:10'),
	(40, 7, '999', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 99, 'A', '999', 3, 999, '2022-01-10 09:50:41'),
	(41, 8, '试题1', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 10, 'A', '无', 3, 1, '2022-01-11 03:16:37'),
	(42, 8, '1', '[{"text":"a","code":"A"},{"text":"c","code":"C"},{"text":"答案是d","code":"D"}]', 10, 'D', 'wu', 1, 2, '2022-01-11 03:17:23');

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int NOT NULL COMMENT '考试用户',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3 COMMENT='考试记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `examrecord_uuid_number`, `yonghu_id`, `exampaper_id`, `total_score`, `insert_time`, `create_time`) VALUES
	(80, '1641807000057', 1, 6, 16, '2022-01-10 09:30:00', '2022-01-10 09:30:00'),
	(81, '1641870340581', 1, 7, 108, '2022-01-11 03:05:41', '2022-01-11 03:05:41'),
	(82, '1720148783025', 1, 8, 10, '2024-07-05 03:06:23', '2024-07-05 03:06:23');

DROP TABLE IF EXISTS `examredetails`;
CREATE TABLE IF NOT EXISTS `examredetails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb3 COMMENT='答题详情表';

DELETE FROM `examredetails`;
INSERT INTO `examredetails` (`id`, `examredetails_uuid_number`, `yonghu_id`, `examquestion_id`, `examredetails_myanswer`, `examredetails_myscore`, `create_time`) VALUES
	(271, '1641807000057', 1, 34, 'B', 0, '2022-01-10 09:30:02'),
	(272, '1641807000057', 1, 35, 'D', 6, '2022-01-10 09:30:12'),
	(273, '1641807000057', 1, 33, 'D', 10, '2022-01-10 09:31:54'),
	(274, '1641807000057', 1, 32, 'B', 0, '2022-01-10 09:32:03'),
	(275, '1641870340581', 1, 40, 'A', 99, '2022-01-11 03:05:45'),
	(276, '1641870340581', 1, 38, 'A', 9, '2022-01-11 03:05:50'),
	(277, '1641870340581', 1, 36, 'A', 0, '2022-01-11 03:05:53'),
	(278, '1720148783025', 1, 42, 'A', 0, '2024-07-05 03:06:25'),
	(279, '1720148783025', 1, 41, 'A', 10, '2024-07-05 03:06:27');

DROP TABLE IF EXISTS `examrewrongquestion`;
CREATE TABLE IF NOT EXISTS `examrewrongquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `exampaper_id` int NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 COMMENT='错题表';

DELETE FROM `examrewrongquestion`;
INSERT INTO `examrewrongquestion` (`id`, `yonghu_id`, `exampaper_id`, `examquestion_id`, `examredetails_myanswer`, `insert_time`, `create_time`) VALUES
	(100, 1, 6, 32, '未作答', '2022-01-10 09:14:57', '2022-01-10 09:14:57'),
	(101, 1, 6, 33, '未作答', '2022-01-10 09:14:57', '2022-01-10 09:14:57'),
	(102, 1, 6, 34, '未作答', '2022-01-10 09:14:57', '2022-01-10 09:14:57'),
	(103, 1, 6, 35, '未作答', '2022-01-10 09:14:57', '2022-01-10 09:14:57'),
	(104, 1, 7, 36, 'A', '2022-01-10 09:28:08', '2022-01-10 09:28:08'),
	(105, 1, 6, 34, 'B', '2022-01-10 09:30:02', '2022-01-10 09:30:02'),
	(106, 1, 6, 32, 'B', '2022-01-10 09:32:03', '2022-01-10 09:32:03'),
	(107, 1, 7, 36, 'A', '2022-01-11 03:05:53', '2022-01-11 03:05:53'),
	(108, 1, 8, 42, 'A', '2024-07-05 03:06:25', '2024-07-05 03:06:25');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '讨论标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '讨论类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='讨论';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `laoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '讨论2', NULL, NULL, 6, '讨论2的内容', NULL, 2, 1, '2022-01-10 07:58:46', NULL, '2022-01-10 07:58:46'),
	(2, NULL, NULL, NULL, 6, '111', 1, NULL, 2, '2022-01-10 08:03:29', NULL, '2022-01-10 08:03:29'),
	(3, '讨论1', 1, NULL, NULL, '33', NULL, 2, 1, '2022-01-11 03:03:31', NULL, '2022-01-11 03:03:31'),
	(4, NULL, 1, NULL, NULL, '评论1', 3, NULL, 2, '2022-01-11 03:03:42', NULL, '2022-01-11 03:03:42'),
	(5, NULL, NULL, NULL, 6, '还成呀', 3, NULL, 2, '2022-01-11 03:11:35', NULL, '2022-01-11 03:11:35'),
	(6, NULL, NULL, 1, NULL, '11', 3, NULL, 2, '2022-01-11 03:28:20', NULL, '2022-01-11 03:28:20'),
	(7, NULL, 2, NULL, NULL, '嗯嗯嗯', 3, NULL, 2, '2022-01-11 03:30:44', NULL, '2022-01-11 03:30:44');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/zaixianxuexi/upload/1641804977858.jpg', 1, '2022-01-10 06:34:40', '<p>公告详情1111</p>', '2022-01-10 06:34:40'),
	(2, '公告2', 'http://localhost:8080/zaixianxuexi/upload/1641870730914.jpg', 1, '2022-01-11 03:12:19', '<p>公告2的内容</p>', '2022-01-11 03:12:19');

DROP TABLE IF EXISTS `huida`;
CREATE TABLE IF NOT EXISTS `huida` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuoye_id` int DEFAULT NULL COMMENT '作业',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `huifu_file` varchar(200) DEFAULT NULL COMMENT '回答文件',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='回答';

DELETE FROM `huida`;
INSERT INTO `huida` (`id`, `zuoye_id`, `yonghu_id`, `huifu_file`, `create_time`) VALUES
	(3, 3, 1, 'http://localhost:8080/zaixianxuexi/upload/1641868958052.rar', '2022-01-11 02:42:40'),
	(4, 5, 2, 'http://localhost:8080/zaixianxuexi/upload/1641871911136.rar', '2022-01-11 03:31:53');

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_content` text COMMENT '课程介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='课程';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `kecheng_name`, `kecheng_photo`, `kecheng_types`, `kecheng_content`, `create_time`) VALUES
	(1, '课程1', 'http://localhost:8080/zaixianxuexi/upload/1641802041861.jpg', 1, '<p>课程1的介绍</p>', '2022-01-10 08:07:29'),
	(2, '课程2', 'http://localhost:8080/zaixianxuexi/upload/1641802060251.jpg', 2, '<p>课程2的详情</p>', '2022-01-10 08:07:47'),
	(3, '课程3', 'http://localhost:8080/zaixianxuexi/upload/1641870752607.jpg', 3, '<p>课程3的介绍</p>', '2022-01-11 03:12:42');

DROP TABLE IF EXISTS `kechengshipin`;
CREATE TABLE IF NOT EXISTS `kechengshipin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `kechengshipin_name` varchar(200) DEFAULT NULL COMMENT '视频名称  Search111 ',
  `kechengshipin_photo` varchar(200) DEFAULT NULL COMMENT '视频照片',
  `kechengshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `kechengshipin_file` varchar(200) DEFAULT NULL COMMENT '课程资料',
  `shangpin_content` text COMMENT '视频简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='课程视频';

DELETE FROM `kechengshipin`;
INSERT INTO `kechengshipin` (`id`, `kecheng_id`, `kechengshipin_name`, `kechengshipin_photo`, `kechengshipin_video`, `kechengshipin_file`, `shangpin_content`, `create_time`) VALUES
	(1, 1, '课程1的视频1标题', 'http://localhost:8080/zaixianxuexi/upload/1641802079903.jpg', 'http://localhost:8080/zaixianxuexi/upload/1641802084436.mp4', 'http://localhost:8080/zaixianxuexi/upload/1641802097277.rar', '<p>课程1的视频1详情内容</p>', '2022-01-10 08:08:52'),
	(2, 1, '课程1的视频2', 'http://localhost:8080/zaixianxuexi/upload/1641802233266.jpg', 'http://localhost:8080/zaixianxuexi/upload/1641802246405.mp4', 'http://localhost:8080/zaixianxuexi/upload/1641802239887.rar', '<p>课程2的视频2的详情</p>', '2022-01-10 08:10:57'),
	(3, 3, '课程3的视频1', 'http://localhost:8080/zaixianxuexi/upload/1641870785485.jfif', 'http://localhost:8080/zaixianxuexi/upload/1641870790866.mp4', 'http://localhost:8080/zaixianxuexi/upload/1641870799740.rar', '<p>课程3的视频1</p>', '2022-01-11 03:13:28'),
	(4, 3, '课程3的视频2', 'http://localhost:8080/zaixianxuexi/upload/1641870842138.jfif', 'http://localhost:8080/zaixianxuexi/upload/1641870832309.mp4', 'http://localhost:8080/zaixianxuexi/upload/1641870827461.rar', '<p>课程3的视频2的介绍</p>', '2022-01-11 03:14:14');

DROP TABLE IF EXISTS `kechengshipin_liuyan`;
CREATE TABLE IF NOT EXISTS `kechengshipin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechengshipin_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `kechengshipin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='课程留言';

DELETE FROM `kechengshipin_liuyan`;
INSERT INTO `kechengshipin_liuyan` (`id`, `kechengshipin_id`, `yonghu_id`, `kechengshipin_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 2, 1, '888', NULL, '2022-01-10 09:57:28', NULL, '2022-01-10 09:57:28'),
	(2, 1, 1, '留言1', '回复1', '2022-01-11 03:04:09', '2022-01-11 03:14:28', '2022-01-10 07:21:15');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号 Search111 ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_name`, `laoshi_phone`, `laoshi_photo`, `sex_types`, `laoshi_email`, `create_time`) VALUES
	(1, '老师1', '123456', '老师1', '17703786901', 'http://localhost:8080/zaixianxuexi/upload/1641802450698.jpg', 1, '11@qq.com', '2022-01-10 08:14:19'),
	(2, '老师2', '123456', '老师2', '17703786902', 'http://localhost:8080/zaixianxuexi/upload/1641802534243.jpg', 2, '22@qq.com', '2022-01-10 08:15:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'tytl7maaoserww3adciks459kpwhf38w', '2022-01-10 06:20:09', '2024-07-05 04:03:59'),
	(2, 1, 'a1', 'yonghu', '用户', 'exow4aeb2fwgmacgeouks9kcgsc1jmvt', '2022-01-10 08:29:41', '2022-01-11 03:17:53'),
	(3, 1, 'a1', 'laoshi', '老师', 'u4tk2xoywq8x24uo3sgeikb27kh2lc6m', '2022-01-10 09:53:58', '2024-07-05 04:05:25'),
	(4, 1, 'a1', 'yonghu', '学生', 'bstqgvi1hti1shlcbumeuj0g6nsth59x', '2022-01-11 03:03:06', '2024-07-05 04:05:56'),
	(5, 2, 'a2', 'yonghu', '学生', '2ffew45kx9q5imp356fsx3mtfj43nl8d', '2022-01-11 03:29:55', '2022-01-11 04:29:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int DEFAULT NULL COMMENT '班级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `banji_types`, `create_time`) VALUES
	(1, '学生1', '123456', '学生1', '17703786901', '410224199610232001', 'http://localhost:8080/zaixianxuexi/upload/1641800942724.jpg', 1, '11@qq.com', 1, '2022-01-10 07:21:15'),
	(2, '学生2', '123456', '学生2', '17703786902', '410224199610232002', 'http://localhost:8080/zaixianxuexi/upload/1641801041934.jpg', 1, '22@qq.com', 2, '2022-01-10 07:50:53'),
	(3, '学生3', '123456', '学生3', '17703786903', '410224199610232003', 'http://localhost:8080/zaixianxuexi/upload/1641801384986.jpg', 1, '33@qq.com', 1, '2022-01-10 07:56:39');

DROP TABLE IF EXISTS `zuoye`;
CREATE TABLE IF NOT EXISTS `zuoye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业唯一编号 Search111 ',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称 Search111 ',
  `zuoye_types` int NOT NULL COMMENT '作业类型 ',
  `banji_types` int NOT NULL COMMENT '班级类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业发布时间 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_content` text COMMENT '作业详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='作业';

DELETE FROM `zuoye`;
INSERT INTO `zuoye` (`id`, `laoshi_id`, `zuoye_uuid_number`, `zuoye_name`, `zuoye_types`, `banji_types`, `insert_time`, `zuoye_file`, `zuoye_content`, `create_time`) VALUES
	(2, 1, '1641863781910', '作业1', 1, 1, '2022-01-11 01:17:33', 'http://localhost:8080/zaixianxuexi/upload/1641863845931.rar', '<p>作业1的介绍</p>', '2022-01-11 01:17:33'),
	(3, 1, '1641863856358', '作恶2', 1, 1, '2022-01-11 01:17:59', 'http://localhost:8080/zaixianxuexi/upload/1641863872801.rar', '<p>作业2的文件</p>', '2022-01-11 01:17:59'),
	(4, 1, '1641867419067', '作业3', 2, 2, '2022-01-11 02:17:39', 'http://localhost:8080/zaixianxuexi/upload/1641867439091.rar', '<p>作业3的详情</p>', '2022-01-11 02:17:39'),
	(5, 1, '1641871737870', '作业4', 1, 2, '2022-01-11 03:29:28', 'http://localhost:8080/zaixianxuexi/upload/1641871757412.rar', '<p>作业4的详情介绍</p>', '2022-01-11 03:29:28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
