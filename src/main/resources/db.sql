-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(64) NOT NULL COMMENT '账号id',
  `username` varchar(64) NOT NULL COMMENT '账号名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `roleid` varchar(100) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', '1');
INSERT INTO `t_user` VALUES ('2', 'admin3', '123456', '1');
INSERT INTO `t_user` VALUES ('3', 'zhangfei', '234567', '2');
INSERT INTO `t_user` VALUES ('4', 'zhangsan', '234567', '2');


-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` varchar(64) NOT NULL COMMENT '权限id',
  `roleid` varchar(64) NOT NULL COMMENT '角色id',
  `permissionname` varchar(64) NOT NULL COMMENT '权限名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '1', 'admin:*');
INSERT INTO `t_permission` VALUES ('2', '2', 'user.*');




-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(64) NOT NULL COMMENT '角色id',
  `rolename` varchar(64) NOT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'admin');
INSERT INTO `t_role` VALUES ('2', 'user');






