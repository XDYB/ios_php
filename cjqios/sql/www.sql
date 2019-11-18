-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-10-22 22:17:04
-- 服务器版本： 5.6.44-log
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_aae_me`
--

-- --------------------------------------------------------

--
-- 表的结构 `cmf_admin_menu`
--

CREATE TABLE IF NOT EXISTS `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

--
-- 转存表中的数据 `cmf_admin_menu`
--

INSERT INTO `cmf_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', '插件管理'),
(2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理'),
(3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'),
(4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'),
(5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子'),
(6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口'),
(7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理'),
(8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'),
(9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'),
(10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'),
(11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'),
(12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'),
(13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'),
(14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'),
(15, 6, 1, 0, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置'),
(16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'),
(17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板'),
(18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交'),
(19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试'),
(20, 6, 1, 1, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理'),
(21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表'),
(22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加'),
(23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'),
(24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑'),
(25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'),
(26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除'),
(27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'),
(28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单'),
(29, 6, 1, 0, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理'),
(30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航'),
(31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'),
(32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航'),
(33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'),
(34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航'),
(35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'),
(36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'),
(37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'),
(38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'),
(39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'),
(40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'),
(41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'),
(42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表'),
(43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用'),
(44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置'),
(45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'),
(46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装'),
(47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'),
(48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件'),
(49, 109, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组'),
(50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'),
(51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'),
(52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'),
(53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色'),
(54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交'),
(55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色'),
(56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限'),
(57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交'),
(58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站'),
(59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原'),
(60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'),
(61, 6, 1, 0, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理'),
(62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则'),
(63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交'),
(64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑'),
(65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交'),
(66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除'),
(67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用'),
(68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用'),
(69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序'),
(70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL'),
(71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息'),
(72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'),
(73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改'),
(74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'),
(75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置'),
(76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'),
(77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存'),
(78, 6, 1, 0, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'),
(79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'),
(80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'),
(81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'),
(82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'),
(83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'),
(84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'),
(85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'),
(86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'),
(87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'),
(88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'),
(89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'),
(90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'),
(91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'),
(92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'),
(93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储'),
(94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交'),
(95, 6, 1, 0, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'),
(96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'),
(97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'),
(98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'),
(99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'),
(100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'),
(101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'),
(102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'),
(103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'),
(104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'),
(105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存'),
(106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'),
(107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'),
(108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'),
(109, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'),
(110, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理'),
(111, 110, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'),
(112, 110, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'),
(113, 110, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'),
(114, 110, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'),
(115, 110, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改'),
(116, 110, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'),
(117, 110, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'),
(118, 110, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'),
(119, 110, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'),
(120, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理'),
(121, 120, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表'),
(122, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'),
(123, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'),
(124, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'),
(125, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'),
(126, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'),
(127, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'),
(128, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'),
(129, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'),
(130, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序'),
(131, 120, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表'),
(132, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'),
(133, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'),
(134, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'),
(135, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'),
(136, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'),
(137, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序'),
(138, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'),
(139, 120, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理'),
(140, 139, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面'),
(141, 139, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'),
(142, 139, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面'),
(143, 139, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'),
(144, 139, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面'),
(145, 120, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签'),
(146, 145, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'),
(147, 145, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'),
(148, 145, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'),
(149, 145, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'),
(150, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'),
(151, 150, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'),
(152, 109, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'),
(153, 152, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'),
(154, 153, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'),
(155, 153, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'),
(156, 152, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'),
(157, 156, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定'),
(158, 6, 1, 0, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理'),
(159, 158, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作'),
(160, 158, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交'),
(161, 158, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作'),
(162, 0, 1, 1, 40, 'Admin', 'Members', 'default', '', '会员管理', 'arrows', ''),
(163, 162, 1, 1, 10000, 'Admin', 'Members', 'index', '', '会员列表', '', ''),
(164, 6, 1, 1, 10000, 'Admin', 'Systems', 'index', '', '公共配置', '', ''),
(165, 0, 1, 1, 60, 'Admin', 'Download', 'default', '', '下载管理', 'download', ''),
(166, 165, 1, 1, 10000, 'Admin', 'Download', 'index', '', '下载列表', '', ''),
(167, 162, 1, 1, 10000, 'Admin', 'members', 'charge', '', '充值记录', '', ''),
(168, 165, 1, 1, 10000, 'Admin', 'Download', 'charge', '', '手动添加下载数', '', ''),
(169, 0, 0, 1, 50, 'Admin', 'App', 'default', '', '应用管理', 'android', ''),
(170, 169, 1, 1, 10000, 'Admin', 'App', 'index', '', '应用列表', '', ''),
(171, 109, 1, 1, 10000, 'User', 'admin_index', 'auth_info_manage', '', '认证信息管理', '', ''),
(172, 0, 1, 1, 10000, 'Admin', 'Certificate', 'index', '', '证书管理', 'certificate', ''),
(173, 0, 1, 1, 10000, 'Admin', 'Report', 'index', '', '举报管理', 'envelope-open-o', ''),
(174, 165, 1, 1, 10000, 'admin', 'Download', 'supindex', '', '超级签名下载次数', '', ''),
(175, 165, 1, 1, 10000, 'admin', 'Download', 'sup_add_charge', '', '手动添加超级签名次数', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_asset`
--

CREATE TABLE IF NOT EXISTS `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

--
-- 转存表中的数据 `cmf_asset`
--

INSERT INTO `cmf_asset` (`id`, `user_id`, `file_size`, `create_time`, `status`, `download_times`, `file_key`, `filename`, `file_path`, `file_md5`, `file_sha1`, `suffix`, `more`) VALUES
(1, 8888, 26597, 1570892106, 1, 0, 'c48d5a97da1826a0fcca22fe7bb9f6bbfb56e5393ed5f7e297fca6145cac35d7', 'QQ图片20191010190515.jpg', 'default/20191012/053ad1cd982ad2d33cf4df6ba7ef1a29.jpg', 'c48d5a97da1826a0fcca22fe7bb9f6bb', '9cb9a9bbdfd03c22d518653f23d17a5024ba2286', 'jpg', NULL),
(2, 8889, 239578, 1571597651, 1, 0, '58d83904d71294811ec8f6cd88a6d60b33fef6234f26cbcc6fa7013f4f50494f', 'l09.png', 'default/20191021/3a849e1ef47b281889a597cd9749e448.png', '58d83904d71294811ec8f6cd88a6d60b', '5d29f7d523a29ee8874b17f997bf35c20742a085', 'png', NULL),
(3, 1, 62313, 1571650910, 1, 0, 'a88bc6751392b9c5bcd33863cc378719b2cfe6bdd1eb6c91f4fce4f71842b305', '1.png', 'default/20191021/e1cfb213aacd3d7c33d1b8a190b27fce.png', 'a88bc6751392b9c5bcd33863cc378719', '126b42a0ae44844a67742e3dded3131e32ed2e8e', 'png', NULL),
(4, 1, 417766, 1571650920, 1, 0, '6557ba4618ee1d011de958d905e22acde960dd0e943d5f0efd48a61882b80cbd', '2.png', 'default/20191021/826df4f13d94dbe943bc8609d1d41906.png', '6557ba4618ee1d011de958d905e22acd', 'bb4d89b20d69ce851be5b637a2164766caa663f7', 'png', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_auth_access`
--

CREATE TABLE IF NOT EXISTS `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限授权表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_auth_rule`
--

CREATE TABLE IF NOT EXISTS `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件'
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

--
-- 转存表中的数据 `cmf_auth_rule`
--

INSERT INTO `cmf_auth_rule` (`id`, `status`, `app`, `type`, `name`, `param`, `title`, `condition`) VALUES
(1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''),
(2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''),
(3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''),
(4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', ''),
(5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''),
(6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''),
(7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''),
(8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''),
(9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''),
(10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''),
(11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''),
(12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''),
(13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''),
(14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''),
(15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', ''),
(16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', ''),
(17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', ''),
(18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''),
(19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''),
(20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', ''),
(21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''),
(22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', ''),
(23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''),
(24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', ''),
(25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''),
(26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', ''),
(27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''),
(28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', ''),
(29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''),
(30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', ''),
(31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''),
(32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', ''),
(33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''),
(34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''),
(35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''),
(36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''),
(37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''),
(38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''),
(39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''),
(40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', ''),
(41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''),
(42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', ''),
(43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''),
(44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''),
(45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''),
(46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''),
(47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', ''),
(48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', ''),
(49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', ''),
(50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', ''),
(51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', ''),
(52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', ''),
(53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', ''),
(54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', ''),
(55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', ''),
(56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', ''),
(57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', ''),
(58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', ''),
(59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', ''),
(60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', ''),
(61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', ''),
(62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', ''),
(63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', ''),
(64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', ''),
(65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', ''),
(66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', ''),
(67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', ''),
(68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', ''),
(69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''),
(70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''),
(71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''),
(72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', ''),
(73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''),
(74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''),
(75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''),
(76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''),
(77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''),
(78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''),
(79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''),
(80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''),
(81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''),
(82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''),
(83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', ''),
(84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', ''),
(85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', ''),
(86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', ''),
(87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', ''),
(88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', ''),
(89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', ''),
(90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', ''),
(91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', ''),
(92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', ''),
(93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', ''),
(94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''),
(95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''),
(96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''),
(97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''),
(98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''),
(99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''),
(100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''),
(101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''),
(102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''),
(103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''),
(104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', ''),
(105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''),
(106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''),
(107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''),
(108, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''),
(109, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', ''),
(110, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''),
(111, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''),
(112, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''),
(113, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''),
(114, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', ''),
(115, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''),
(116, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''),
(117, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''),
(118, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''),
(119, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', ''),
(120, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', ''),
(121, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', ''),
(122, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', ''),
(123, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', ''),
(124, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', ''),
(125, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', ''),
(126, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', ''),
(127, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', ''),
(128, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', ''),
(129, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', ''),
(130, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', ''),
(131, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', ''),
(132, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', ''),
(133, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', ''),
(134, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', ''),
(135, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', ''),
(136, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', ''),
(137, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', ''),
(138, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', ''),
(139, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', ''),
(140, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', ''),
(141, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', ''),
(142, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', ''),
(143, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', ''),
(144, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', ''),
(145, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', ''),
(146, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', ''),
(147, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', ''),
(148, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', ''),
(149, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', ''),
(150, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', ''),
(151, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''),
(152, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''),
(153, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''),
(154, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''),
(155, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''),
(156, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''),
(157, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', ''),
(158, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', ''),
(159, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', ''),
(160, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', ''),
(161, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', ''),
(162, 1, 'Admin', 'admin_url', 'Admin/Members/default', '', '会员管理', ''),
(163, 1, 'Admin', 'admin_url', 'Admin/Members/index', '', '会员列表', ''),
(164, 1, 'Admin', 'admin_url', 'Admin/Systems/index', '', '公共配置', ''),
(165, 1, 'Admin', 'admin_url', 'Admin/Download/default', '', '下载管理', ''),
(166, 1, 'Admin', 'admin_url', 'Admin/Download/index', '', '下载列表', ''),
(167, 1, 'Admin', 'admin_url', 'Admin/members/charge', '', '充值记录', ''),
(168, 1, 'Admin', 'admin_url', 'Admin/Download/charge', '', '手动添加下载数', ''),
(169, 1, 'Admin', 'admin_url', 'Admin/App/default', '', '应用管理', ''),
(170, 1, 'Admin', 'admin_url', 'Admin/App/index', '', '应用列表', ''),
(171, 1, 'User', 'admin_url', 'User/admin_index/auth_info_manage', '', '认证信息管理', ''),
(172, 1, 'Admin', 'admin_url', 'Admin/Certificate/index', '', '证书管理', ''),
(173, 1, 'Admin', 'admin_url', 'Admin/Report/index', '', '举报管理', ''),
(174, 1, 'admin', 'admin_url', 'admin/Download/supindex', '', '超级签名下载次数', ''),
(175, 1, 'admin', 'admin_url', 'admin/Download/sup_add_charge', '', '手动添加超级签名次数', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_charge`
--

CREATE TABLE IF NOT EXISTS `cmf_charge` (
  `id` int(100) NOT NULL,
  `uid` int(100) DEFAULT NULL COMMENT '用户id',
  `download` varchar(100) DEFAULT NULL COMMENT '手动添加下载数',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_charge`
--

INSERT INTO `cmf_charge` (`id`, `uid`, `download`, `addtime`) VALUES
(1, 8890, '1000', 1571651055);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_charge_log`
--

CREATE TABLE IF NOT EXISTS `cmf_charge_log` (
  `id` int(100) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单号：创建订单时生成',
  `trade_id` varchar(50) DEFAULT NULL COMMENT '支付商家订单ID，支付成功后由支付商家返回',
  `trade_time` int(11) DEFAULT NULL COMMENT '支付成功的时间',
  `uid` int(100) DEFAULT NULL COMMENT '充值用户id',
  `download_id` int(100) DEFAULT NULL,
  `download_download` varchar(100) DEFAULT NULL COMMENT '下载次数',
  `d_gift` varchar(10) DEFAULT NULL COMMENT '赠送次数',
  `download_coin` varchar(100) DEFAULT NULL COMMENT '购买金额',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `subject` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `body` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `type` varchar(255) DEFAULT NULL COMMENT '充值类型',
  `status` int(2) DEFAULT '1' COMMENT '1充值成功 2充值失败 3订单未支付 4订单支付失败 5订单支付成功',
  `goods_type` int(1) NOT NULL DEFAULT '1' COMMENT '1普通下载，2超级签名'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_charge_log`
--

INSERT INTO `cmf_charge_log` (`id`, `order_id`, `trade_id`, `trade_time`, `uid`, `download_id`, `download_download`, `d_gift`, `download_coin`, `addtime`, `subject`, `body`, `type`, `status`, `goods_type`) VALUES
(1, '201910212029233', NULL, NULL, 8892, 2, '100', '0', '1500', 1571660942, '充值超级签名下载次数 100 送0', '充值超级签名下载次数 100 送0', '支付宝', 3, 2),
(2, '20191021203018739', NULL, NULL, 8892, 5, '10', '0', '25', 1571661018, '充值超级签名下载次数 10 送0', '充值超级签名下载次数 10 送0', '支付宝', 3, 2),
(3, '2019102120302026', NULL, NULL, 8892, 5, '10', '0', '25', 1571661020, '充值超级签名下载次数 10 送0', '充值超级签名下载次数 10 送0', '支付宝', 3, 2),
(4, '2019102210393482', NULL, NULL, 8890, 5, '10', '0', '25', 1571711942, '充值超级签名下载次数 10 送0', '充值超级签名下载次数 10 送0', '支付宝', 3, 2),
(5, '20191022103919327', NULL, NULL, 8890, 9, '10000', '0', '14000', 1571711958, '充值超级签名下载次数 10000 送0', '充值超级签名下载次数 10000 送0', '支付宝', 3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_comment`
--

CREATE TABLE IF NOT EXISTS `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text CHARACTER SET utf8 COMMENT '原文地址',
  `content` text CHARACTER SET utf8 COMMENT '评论内容',
  `more` text CHARACTER SET utf8 COMMENT '扩展属性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_config`
--

CREATE TABLE IF NOT EXISTS `cmf_config` (
  `id` int(10) NOT NULL COMMENT '系统设置',
  `code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '配置名称',
  `title` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '标题',
  `group_id` varchar(50) CHARACTER SET gbk DEFAULT NULL COMMENT '分组名称',
  `val` text CHARACTER SET gbk COMMENT '配置值',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `value_scope` varchar(50) CHARACTER SET gbk DEFAULT NULL COMMENT '值的范围',
  `title_scope` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '对应value_scope的中文解释',
  `desc` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '描述',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_config`
--

INSERT INTO `cmf_config` (`id`, `code`, `title`, `group_id`, `val`, `type`, `sort`, `value_scope`, `title_scope`, `desc`, `status`) VALUES
(239, 'system_message', '系统公告', '手机端设置', '严禁上传色情、反动、非法博彩类APP，违反该规则的 App 将被删除，屡次上传者将被封禁账号, 并上报给有关部门', 0, 0, '', '', '手机端设置', 1),
(241, 'system_sms', '短信开启', '手机端设置', '0', 4, 0, '0,1', '是,否', '是否开启短信功能', 1),
(242, 'system_sms_key', '短信key值', '手机端设置', '', 0, 0, '', '', '短信key值', 1),
(243, 'system_sms_id', '短信id', '手机端设置', '', 0, 0, '', '', '短信id', 1),
(244, 'system_sms_ip', '短信发送IP限制', '手机端设置', '1', 4, 0, '0,1', '限制,不限制', '短信发送IP限制', 1),
(245, 'system_sms_sum', '短信发送每天限制条数', '手机端设置', '10', 0, 0, '', '', '短信发送每天限制条数', 1),
(246, 'system_parsing', '软件包解析地址', '软件包解析地址', 'https://192.168.0.107:1234/upload', 0, 0, '', '', '软件包解析地址', 0),
(247, 'app_file_max_size', 'APP文件上传的最大限制', '上传设置', '120', 0, 0, '', '', '', 1),
(248, 'service_qq', '客服QQ', '手机端设置', '97013266', 0, 0, '', '', '', 1),
(249, 'new_reg_give_count', '新注册赠送下载数量', '手机端设置', '50', 0, 0, '', '', '', 1),
(250, 'app_key_shield', 'app名称', '关键词屏蔽', '次货,二狗', 1, 0, '', '', 'app名称关键词屏蔽', 1),
(251, 'ipa_name', '包名关键词', '关键词屏蔽', '', 1, 0, '', '', '包名关键词屏蔽', 1),
(252, 'ali_save_access_key', '阿里云存储key', '存储配置', 'LTAIxtr5txtxm4Il', 0, 0, NULL, NULL, NULL, 1),
(253, 'ali_save_access_secret', '阿里云存储Secret', '存储配置', 'heu5QOMvYHEAEhFFCHJJaSeDPKDI3N', 0, 0, NULL, NULL, NULL, 1),
(254, 'ali_save_upload_url', '阿里云存储上传地址', '存储配置', 'http://oss-cn-shanghai.aliyuncs.com', 0, 0, NULL, NULL, NULL, 1),
(255, 'ali_save_down_url', '阿里云存储下载地址', '存储配置', 'https://chaojimao.oss-cn-shanghai.aliyuncs.com', 0, 0, NULL, NULL, NULL, 1),
(256, 'ali_save_bucket', '阿里云存储空间', '存储配置', 'chaojimao', 0, 0, NULL, NULL, NULL, 1),
(257, 'system_type', '短信发送方式', '手机端设置', '1', 4, 0, '0,1', '互亿无线,阿里云', '', 1),
(258, 'aliyun_access_key_id', '阿里云短信账号', '短信配置', 'LTAI4Fg6uXYAiZcfwa2YhCZk', 0, 0, NULL, NULL, NULL, 1),
(259, 'aliyun_access_secret', '阿里云短信密钥', '短信配置', 'A3kxznCAWjIH7ZVRW0hreEL5EhBYs2', 0, 0, NULL, NULL, NULL, 1),
(260, 'aliyun_sms_tpl_id', '阿里云短信模板ID', '短信配置', 'SMS_148805148', 0, 0, NULL, NULL, NULL, 1),
(261, 'aliyun_sms_sign', '阿里云短信签名', '短信配置', '美度分发', 0, 0, NULL, NULL, NULL, 1),
(262, 'down_max_num', '并发最大下载数', '超级签名下载配置', '10000', 0, 0, NULL, NULL, '并发最大下载数', 1),
(263, 'down_cancel_time', '取消下载时长', '超级签名下载配置', '60', 0, 0, NULL, NULL, '点击取消下载取消下载状态 秒', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_download`
--

CREATE TABLE IF NOT EXISTS `cmf_download` (
  `id` int(100) NOT NULL,
  `coin` varchar(255) DEFAULT NULL COMMENT '金额',
  `download` int(11) DEFAULT NULL COMMENT '购买下载次数',
  `gift` int(11) DEFAULT NULL COMMENT '购买赠送下载次数：大于0有效',
  `recommend` smallint(2) DEFAULT NULL COMMENT '推荐购买状态：0-不推荐；1-推荐',
  `status` smallint(2) DEFAULT NULL COMMENT '下载购买状态：0-不显示；1-显示',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_download`
--

INSERT INTO `cmf_download` (`id`, `coin`, `download`, `gift`, `recommend`, `status`, `addtime`) VALUES
(1, '30', 1000, 0, 1, 1, 1571057968),
(2, '10000', 300, 100, 1, 1, 1571057987),
(3, '500', 20000, 200, 0, 1, 1571058011),
(4, '1000', 45000, 500, 1, 1, 1571058034);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_downloading`
--

CREATE TABLE IF NOT EXISTS `cmf_downloading` (
  `id` int(32) NOT NULL,
  `appid` int(255) DEFAULT NULL,
  `addtime` int(32) DEFAULT NULL COMMENT '时间',
  `num` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COMMENT='正在下载表';

--
-- 转存表中的数据 `cmf_downloading`
--

INSERT INTO `cmf_downloading` (`id`, `appid`, `addtime`, `num`) VALUES
(4, 2, 1571651489, '67741571651489'),
(5, 2, 1571651561, '77371571651561'),
(7, 2, 1571651726, '45641571651726'),
(8, 3, 1571651824, '67311571651824'),
(13, 3, 1571653038, '58671571653038'),
(14, 4, 1571653503, '82921571653503'),
(15, 4, 1571653511, '60201571653511'),
(17, 4, 1571653653, '70751571653653'),
(19, 4, 1571655585, '23391571655585'),
(20, 4, 1571655686, '82591571655686'),
(21, 4, 1571655708, '17481571655708'),
(22, 4, 1571655710, '31281571655710'),
(23, 4, 1571655811, '28651571655811'),
(24, 5, 1571656652, '93651571656652'),
(25, 5, 1571656716, '22091571656716'),
(26, 4, 1571657280, '26001571657280'),
(27, 4, 1571657367, '21111571657367'),
(28, 5, 1571658315, '80161571658315'),
(29, 5, 1571658527, '79851571658527'),
(30, 5, 1571706915, '63841571706915'),
(31, 5, 1571707079, '41481571707079'),
(32, 4, 1571711851, '82801571711851'),
(33, 5, 1571714966, '84201571714966'),
(36, 5, 1571720856, '46101571720856'),
(37, 5, 1571722468, '21831571722468'),
(38, 5, 1571748081, '66351571748081'),
(40, 5, 1571748915, '85751571748915'),
(42, 5, 1571750316, '11231571750316'),
(43, 5, 1571750394, '62421571750394'),
(44, 5, 1571750562, '39361571750562'),
(45, 6, 1571752279, '91361571752279');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_hook`
--

CREATE TABLE IF NOT EXISTS `cmf_hook` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

--
-- 转存表中的数据 `cmf_hook`
--

INSERT INTO `cmf_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`) VALUES
(1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化'),
(2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始'),
(3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化'),
(4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始'),
(5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤'),
(6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束'),
(7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法'),
(8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束'),
(9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化'),
(10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化'),
(11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码'),
(12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始'),
(13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前'),
(14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始'),
(15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前'),
(16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前'),
(17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前'),
(18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始'),
(19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前'),
(20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始'),
(21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前'),
(22, 3, 1, '评论区', 'comment', '', '评论区'),
(23, 3, 1, '留言区', 'guestbook', '', '留言区'),
(24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘'),
(25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前'),
(26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前'),
(27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面'),
(28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换'),
(29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后'),
(30, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前'),
(31, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_hook_plugin`
--

CREATE TABLE IF NOT EXISTS `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

--
-- 转存表中的数据 `cmf_hook_plugin`
--

INSERT INTO `cmf_hook_plugin` (`id`, `list_order`, `status`, `hook`, `plugin`) VALUES
(1, 10000, 1, 'send_mobile_verification_code', 'MobileCodeDemo');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_ios_certificate`
--

CREATE TABLE IF NOT EXISTS `cmf_ios_certificate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `team_id` varchar(255) NOT NULL,
  `iss` varchar(255) NOT NULL,
  `kid` varchar(255) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `p12_pwd` varchar(255) NOT NULL,
  `p12_file` varchar(255) NOT NULL,
  `p8_file` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0私有1共有',
  `status` tinyint(1) NOT NULL COMMENT '0未启用1启用',
  `total_count` int(11) NOT NULL,
  `limit_count` int(11) NOT NULL,
  `mark` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cmf_ios_certificate`
--

INSERT INTO `cmf_ios_certificate` (`id`, `user_id`, `team_id`, `iss`, `kid`, `tid`, `p12_pwd`, `p12_file`, `p8_file`, `create_time`, `type`, `status`, `total_count`, `limit_count`, `mark`) VALUES
(23, 8893, 'STXV226RJJ', 'fe47c831-83de-4d68-a59f-0278f7ed9c1f', '4HM32SRA8W', '9PTD6L7C44', '123456', '/certificate/STXV226RJJ/20191022/516e884d00474d3cec6561cba8d560c1.p12', '/certificate/STXV226RJJ/20191022/c28818e4b87d27ee3bae9d84f8fe43ea.p8', 1571752230, 1, 1, 100, 100, 'STXV226RJJ'),
(24, 1, 'CAQ2GUX4NV', '4b5d5c7c-9f48-438f-8f05-0dbd3e6709c8', 'BPRS9H85WL', 'CX664UV6PH', '123456', '/certificate/CAQ2GUX4NV/20191022/1a7aaef0306e7835e2fdd1310da9b7a3.p12', '/certificate/CAQ2GUX4NV/20191022/0e6b054c03e979fb6f97fcfa75ac70ef.p8', 1571748684, 1, 0, 100, 100, 'CAQ2GUX4NV');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_ios_udid_list`
--

CREATE TABLE IF NOT EXISTS `cmf_ios_udid_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `app_id` int(11) NOT NULL COMMENT '对应的应用ID',
  `udid` varchar(100) NOT NULL COMMENT 'UDID',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `device` varchar(50) NOT NULL COMMENT '设备',
  `certificate` int(11) NOT NULL COMMENT '证书ID'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cmf_ios_udid_list`
--

INSERT INTO `cmf_ios_udid_list` (`id`, `user_id`, `app_id`, `udid`, `create_time`, `device`, `certificate`) VALUES
(1, 8891, 5, '5be05e942003a16e1bba15588207fa72a0e1fe4e', 1571658542, '67AV9T597D', 22);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_link`
--

CREATE TABLE IF NOT EXISTS `cmf_link` (
  `id` bigint(20) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_nav`
--

CREATE TABLE IF NOT EXISTS `cmf_nav` (
  `id` int(10) unsigned NOT NULL,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

--
-- 转存表中的数据 `cmf_nav`
--

INSERT INTO `cmf_nav` (`id`, `is_main`, `name`, `remark`) VALUES
(1, 1, '主导航', '主导航'),
(2, 0, '底部导航', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_nav_menu`
--

CREATE TABLE IF NOT EXISTS `cmf_nav_menu` (
  `id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

--
-- 转存表中的数据 `cmf_nav_menu`
--

INSERT INTO `cmf_nav_menu` (`id`, `nav_id`, `parent_id`, `status`, `list_order`, `name`, `target`, `href`, `icon`, `path`) VALUES
(1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_option`
--

CREATE TABLE IF NOT EXISTS `cmf_option` (
  `id` bigint(20) unsigned NOT NULL,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

--
-- 转存表中的数据 `cmf_option`
--

INSERT INTO `cmf_option` (`id`, `autoload`, `option_name`, `option_value`) VALUES
(7, 1, 'site_info', '{"site_name":"\\u9b54\\u7b7e","site_seo_title":"\\u79fb\\u52a8\\u5e94\\u7528\\u5185\\u6d4b|\\u514d\\u8d39App\\u5e94\\u7528\\u5206\\u53d1\\u6258\\u7ba1|iOS\\u8bc1\\u4e66\\u7b7e\\u540d|\\u7f51\\u9875\\u5c01\\u5305","site_seo_keywords":"\\u9b54\\u7b7e,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u7b7e\\u540d,APP\\u7b7e\\u540d,\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8d26\\u53f7,app\\u4f01\\u4e1a\\u7b7e\\u540d,\\u8d85\\u7ea7VIP\\u7b7e\\u540d,\\u5185\\u6d4b\\u5206\\u53d1\\u6258\\u7ba1,app\\u5185\\u6d4b,app\\u6258\\u7ba1\\u5206\\u53d1,app\\u6d4b\\u8bd5,\\u5185\\u6d4b,android\\u5185\\u6d4b,beta test,Beta app,testflight,\\u514d\\u8d39\\u5185\\u6d4b,app\\u4e0b\\u8f7d,\\u5185\\u6d4bSDK,udid\\u83b7\\u53d6\\uff0cpgy,\\u5b89\\u5353\\u5185\\u6d4b,\\u5185\\u6d4b,\\u4f01\\u4e1a\\u7b7e\\u540d,APP\\u4f01\\u4e1a\\u7b7e\\u540d,\\u84b2\\u516c\\u82f1\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8bc1\\u4e66,\\u4f01\\u4e1a\\u8bc1\\u4e66,\\u4f01\\u4e1a\\u8bc1\\u4e66\\u7b7e\\u540d,apple\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8d26\\u53f7, \\u4f01\\u4e1a\\u7b7e\\u540d, \\u4f01\\u4e1a\\u8d26\\u53f7, apple\\u4f01\\u4e1a\\u8d26\\u53f7, apple \\u4f01\\u4e1a\\u8d26\\u53f7, apple\\u4f01\\u4e1a\\u8bc1\\u4e66, apple \\u4f01\\u4e1a\\u8bc1\\u4e66, \\u4f01\\u4e1a\\u8d26\\u53f7, \\u4f01\\u4e1a\\u5206\\u53d1, \\u4f01\\u4e1a\\u5206\\u53d1, \\u4f01\\u4e1a\\u5206\\u53d1","site_seo_description":"\\u4e00\\u53e3\\u9752\\u79d1\\u6280-\\u9b54\\u7b7e\\u4e13\\u4e1a\\u5e94\\u7528\\u5206\\u53d1\\u5185\\u6d4b\\u7b7e\\u540d\\u670d\\u52a1\\u5546\\uff0c\\u63d0\\u4f9b\\u4e00\\u7ad9\\u5f0f\\u5e94\\u7528\\u4f01\\u4e1a\\u7b7e\\u540d\\uff0c\\u8d85\\u7ea7VIP\\u7b7e\\u540d\\uff0c\\u626b\\u7801\\u4e0b\\u8f7d\\u5b89\\u88c5\\uff0c\\u5e94\\u7528\\u6258\\u7ba1\\uff0c\\u7f51\\u9875\\u5c01\\u88c5\\uff0c\\u5e94\\u7528\\u5ba1\\u6838\\u4e0a\\u67b6\\u7b49\\u670d\\u52a1\\u3002\\u4e13\\u4e1a\\u6280\\u672f\\u56e2\\u961f\\u4e3a\\u4f60\\u5e94\\u7528\\u5206\\u53d1\\u5185\\u6d4b\\u4fdd\\u9a7e\\u62a4\\u822a\\uff0c\\u89e3\\u51b3\\u5f00\\u53d1\\u8005app\\u5185\\u6d4b\\u5206\\u53d1\\u6258\\u7ba1\\u65f6\\u7e41\\u6742\\u4f4e\\u6548\\u7684\\u95ee\\u9898","site_icp":"\\u9102ICP\\u590718028016\\u53f7-3","site_admin_email":"97013266@qq.com","site_analytics":"","urlmode":"1","html_suffix":""}'),
(8, 1, 'storage', '{"storages":{"Qiniu":{"name":"\\u4e03\\u725b\\u4e91\\u5b58\\u50a8","driver":"\\\\plugins\\\\qiniu\\\\lib\\\\Qiniu"}},"type":"Qiniu"}'),
(9, 1, 'cmf_settings', '{"open_registration":"1","banned_usernames":""}'),
(10, 1, 'cdn_settings', '{"cdn_static_root":""}'),
(11, 1, 'admin_settings', '{"admin_password":"","admin_style":"flatadmin"}'),
(12, 1, 'upload_setting', '{"max_files":"20","chunk_size":"512","file_types":{"image":{"upload_max_filesize":"10240","extensions":"jpg,jpeg,png,gif,bmp4"},"video":{"upload_max_filesize":"10240","extensions":"mp4,avi,wmv,rm,rmvb,mkv"},"audio":{"upload_max_filesize":"10240","extensions":"mp3,wma,wav"},"file":{"upload_max_filesize":"10240","extensions":"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar"}}}');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_plugin`
--

CREATE TABLE IF NOT EXISTS `cmf_plugin` (
  `id` int(11) unsigned NOT NULL COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

--
-- 转存表中的数据 `cmf_plugin`
--

INSERT INTO `cmf_plugin` (`id`, `type`, `has_admin`, `status`, `create_time`, `name`, `title`, `demo_url`, `hooks`, `author`, `author_url`, `version`, `description`, `config`) VALUES
(14, 1, 0, 1, 0, 'Qiniu', '七牛云存储', '', '', 'ThinkCMF', '', '1.0', '七牛云存储', '{"accessKey":"vN8o1-H6BytAaX60TvSlhGHeDHRIUfGJkIfzeKj_","secretKey":"DG0FdRyc27_r2HiYTo0-3F3tXdZZviXb5o3Ef1Zy","protocol":"http","domain":"chaojimao.maozhouapi.com.qiniudns.com","bucket":"chaojimao","style_separator":"!","styles_watermark":"watermark","styles_avatar":"avatar","styles_thumbnail120x120":"thumbnail120x120","styles_thumbnail300x300":"thumbnail300x300","styles_thumbnail640x640":"thumbnail640x640","styles_thumbnail1080x1080":"thumbnail1080x1080"}'),
(15, 1, 0, 1, 0, 'MobileCodeDemo', '手机验证码演示插件', '', '', 'ThinkCMF', '', '1.0', '手机验证码演示插件', '{"account_sid":"","auth_token":"","app_id":"","template_id":"","expire_minute":"30"}');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_category`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

--
-- 转存表中的数据 `cmf_portal_category`
--

INSERT INTO `cmf_portal_category` (`id`, `parent_id`, `post_count`, `status`, `delete_time`, `list_order`, `name`, `description`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `more`) VALUES
(1, 0, 0, 1, 0, 10000, '充值协议', '充值协议', '0-1', '', '', '', 'list', 'article', '{"thumbnail":""}'),
(2, 0, 0, 1, 0, 10000, '法律法规', '法律法规', '0-2', '', '', '', 'list', 'article', '{"thumbnail":""}');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_category_post`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 分类文章对应表';

--
-- 转存表中的数据 `cmf_portal_category_post`
--

INSERT INTO `cmf_portal_category_post` (`id`, `post_id`, `category_id`, `list_order`, `status`) VALUES
(1, 1, 1, 10000, 1),
(2, 2, 2, 10000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_post`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

--
-- 转存表中的数据 `cmf_portal_post`
--

INSERT INTO `cmf_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(1, 0, 1, 1, 1, 1, 1, 0, 0, 43, 3, 0, 1567478956, 1567478995, 1567478940, 0, '超级签名充值协议', '超级签名充值协议', '', '', '&lt;p&gt;超级签名充值协议&lt;/p&gt;', NULL, '{"thumbnail":"","template":""}'),
(2, 0, 1, 1, 1, 1, 1, 0, 0, 5, 0, 0, 1567668866, 1570020090, 1567668780, 0, '法律法规', '法律法规', '', '', '\n&lt;p style=&quot;margin-top:20px;margin-right:0;margin-bottom:15px;margin-left:0;text-align:center;background:white;border:none;padding:0;padding:0 0 15px 0&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:36px;font-family:微软雅黑;color:#333333&quot;&gt;多肉应用审核规范&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:20px;margin-right:0;margin-bottom:20px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;目录（Contents）&lt;/span&gt;&lt;/p&gt;\n&lt;ul class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: disc;&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;、条款（&lt;/span&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;Terms and Conditions&lt;/span&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;）&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;、应用功能（&lt;/span&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;Functionality&lt;/span&gt;&lt;span style=&quot;color:#57B99D&quot;&gt;）&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 微软雅黑; color: rgb(87, 185, 157);&quot;&gt;3、应用展示（App Properties）和广告（AD）&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 微软雅黑; color: rgb(87, 185, 157);&quot;&gt;4、应用内容（Contents of App）&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 微软雅黑; color: rgb(87, 185, 157);&quot;&gt;5、损坏设备（Damage to Device）&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 微软雅黑; color: rgb(87, 185, 157);&quot;&gt;6、法律要求（Legal Requirements）&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 微软雅黑; color: rgb(87, 185, 157);&quot;&gt;7、应用视频预览审核（Video Demo Review）&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;01&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、概述（Overview）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;多肉是国内领先的应用内测分发平台，我们希望为全球的开发者提供一个能够有效提高应用内测分发效率的平台。我们很高兴您参与到多肉内测分发开发者行列中来，我们愿与开发者一起学习、交流与成长，并不断更好的为您提供方便、快捷的应用分发测试服务，共同打造良好的开发者生态圈！ 这个文档会及时更新并完善，请每位多肉开发者密切关注。我们的每一次修改将根据最新法律法规，以保证开发者及用户的合法权益为基准，做到公平对待所有开发者，努力营造积极、健康的移动互联网应用环境。我们期望得到优质、可靠、健康的应用，希望您也如我们一样，所以开发者们需要了解，多肉内测分发平台收录应用的一些原则：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;02&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、应用功能（Functionality）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;2.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用功能存在问题&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.1.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用强制或诱导修改系统默认设置&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.1.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用功能需要依赖于第三方应用才能实现&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.1.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用需要登录，但应用内不提供注册通道，请在完善资料处填写测试账号。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.1.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;注册账号功能不可用，应用审核时尝试3次都无法成功注册&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.1.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用登录账号功能不可用，应用审核时尝试3次都无法成功登录&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.1.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用需要其他硬件设备支持，审核人员无法进行测试&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;2.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用描述和实际功能不符&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.2.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在欺骗用户下载使用的行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;2.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;申请危险权限或权限和功能不符&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.3.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用申请的权限和其实际功能不符&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.3.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用实际功能不需常驻通知栏却常驻通知栏&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.3.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用无法关闭常驻通知提示&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.3.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用实际功能不需开机启动却开机启动&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.3.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用在安装或者运行前强制重启设备&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;2.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用功能存在使用限制&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.4.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用功能仅供部分用户使用，比如限制用户的地域或仅供组织内部使用等，请在应用介绍内说明具体限制范围&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;2.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用存在恶意行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在恶意行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未经用户许可发送短信，建议使用返回验证码等方式&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在病毒&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在吸费行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用消耗过多的网络流量&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未经用户许可拨打电话&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.7 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用修改主叫号码，主要功能用于欺骗被叫用户&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;2.5.8 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未运行，但是仍会启动GPS、蓝牙等系统功能&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;03&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、应用展示和广告（App Properties &amp;amp; AD）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;3.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用展示内容存在问题&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用内容存在侵权行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用名称包含非法内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用名称存在侵权行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用介绍或更新说明包含非法内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用介绍或更新说明中包含侵权内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;简介中使用了极限词或虚假承诺等违反新广告法的内容（如“最”“第一”“唯一”“NO.1”“必备”“免费送”“100%” “全球”“顶尖”“首”等）；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.1.7 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;简介中包含违规内容（如侵权、色情、恐怖暴力、反动等）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;3.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用展示的图片资源存在问题&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用截图和应用实际的界面不符&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用截图模糊不清，无法分辨截图内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用截图存在非法内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用截图存在侵权行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用截图的通知栏中包含与应用功能无关内容，请仅保留手机系统自带的信号、运营商信息等提示&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用展示的ICON和安装到设备上的ICON不一致，请您自行对比应用在页面展示和手机端展示的ICON&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.7 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用ICON存在非法内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.2.8 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用ICON存在侵权行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;3.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;广告相关&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未经用户许可或默认勾选创建桌面快捷方式&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未经用户许可默认安装或默认勾选安装第三方应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未经用户许可修改系统默认设置&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在诱导用户点击广告的行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在通知栏广告&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用多次发现存在通知栏广告行为，将不再收录&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.7 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在强制积分墙，在启动时强制要求换取积分才能使用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.8 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在强制积分墙，在使用时强制要求换取积分&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.9 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用具有诱导用户赚取积分兑换货币或奖品的功能&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.10 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;暂不收录：赚取积分以兑换话费、现金等奖品的应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.11 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在抢占锁屏的行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.12 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用广告存在模仿系统通知或警告的行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.13 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用的主要目的是展示广告或者市场营销&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.14 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用使用过程中频繁弹出悬浮窗广告，中断用户操作，影响用户体验&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.15 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用包含空广告栏位&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;3.3.16 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用广告中包含不良或违法信息&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;04&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;4&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、应用内容（Contents of App）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用存在暴力内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.1.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;任何带有诽谤、人身攻击或者侮辱个人或者团体的应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.1.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在人类或动物被杀、被虐待、被伤害等图片或内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.1.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用过分描述暴力或虐待儿童&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.1.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用对武器进行过于逼真的表述（如不能涉及武器的制造工艺和参数等），并鼓励违法或滥用武器&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用存在色情内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.2.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用包含色情内容或者过分展现性器官，但又不是旨在艺术审美或情感&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.2.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用中存在允许用户提交色情内容，如允许用户发布色情照片、文字等&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.2.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;情趣用品商城类应用禁止存在社区、论坛等允许用户发布帖子、信息和评论帖子等功能和模块，请您将以上模块进行删除&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.2.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用介绍、应用截图、描述语等含有色情内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用存在非法金钱交易或内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.3.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用具有现金或者流通货币赌博功能&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;政治问题&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.4.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用不能包含对国家领导人诽谤、人身攻击或者侮辱性的内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.4.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用包含反政府、反社会内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.4.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;存在政治错误的应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;用户使用感受&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;多肉内测平台暂不收录：游戏类应用，包括单机游戏、网络游戏或H5游戏的应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;多肉内测平台暂不收录：彩票类应用，含有购买彩票、代购彩票等彩票交易功能的应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;多肉内测平台暂不收录：主要功能需要获取Root权限后才可使用的应&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用设计的功能不能为主要是令用户厌恶、恐惧&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用不能具有易引起用户不适或者比较粗俗的内容，如对血腥和色情场面的过分展现&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用中所有的“敌人”角色，都不能针对任何一个现实的种族、文化、政府或公司，以及任何一个真实的个体&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.7 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用中涉及的宗教内容都应该是翻译准确和使用恰当的，并且不存在误导行为。使用这些内容的目的应该是教育意义的而不是煽动性的&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.5.8 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;存在针对某一宗教、文化或种族的诽谤、侮辱或攻击的内容，或有可能让这部分群体人们造成情感伤害的内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.6 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用内抽奖相关功能及内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.6.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用中的竞赛和抽奖活动必须由该应用开发者来发起&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.6.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;竞赛和抽奖活动必须在应用的用户协议中有清晰详细的描述，且这些竞赛或抽奖活动和多肉应用内测专家无关，多肉应用内测专家不承担任何相关法律责任&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;4.7 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;开发者行为不当&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.7.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;开发者对已经明确版权归属的应用私自进行破解、汉化、反编译或重新打包，应用将被驳回且开发者将被取消多肉账户&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;4.7.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;开发者提交的应用存在问题或开发者自身原因，开发者应主动申请驳回、删除或下架&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;05&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、损坏设备（Damage to Device）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;5.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;用户运行该应用有可能损坏设备&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;5.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用如会迅速消耗电量或者造成设备过热&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;5.2.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未启动，但不断使用GPS等功能导致用户电量迅速消耗&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;5.2.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未启动，但会长时间占用CPU、内存等导致设备过热&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;06&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;6&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、法律要求（Legal Requirements）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;6.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;违反国家法律法规&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.1.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用都必须遵守当地的所有法律法规，开发者都有义务熟悉并遵守相关的法律法规&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;6.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用允许共享违法的文件或内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.2.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用怂恿或鼓励犯罪或暴力行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.2.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用鼓励酒驾或公布没有经过交通管理部门允许的酒驾检测点数据&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.2.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用过度宣传酒精或者危险物品（如毒药、爆炸物等），或者鼓励未成年人消费香烟和酒精饮料&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;6.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用存在侵犯版权行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.3.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用为破解、盗版或未获得版权所有者授权的应用&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.3.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;单本图书类应用请提供版权证明 ，书城类应用请提供免责声明，以上文件均需以附件形式发送到审核邮箱：190646521@qq.com。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;6.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;应用存在欺诈行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.4.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用存在欺骗、伪造或者误导用户的行为&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;6.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;隐私保护&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.5.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未提示用户或未经用户授权情况下不得搜集、传输或者使用用户的位置信息&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.5.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用未经用户许可且在用户不知情的情况下不得传输和使用用户的隐私数据，如通讯录、照片和短信记录等&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.5.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用不得强制要求用户共享其个人信息，如邮件地址或生日等信息&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.5.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用不得搜集未成年人信息数据&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;6.5.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;开发者的应用会窃取用户密码或者其他用户个人数据的将被取消多肉账户&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;a name=&quot;07&quot; href=&quot;&quot;&gt;&lt;/a&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;7&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、应用视频预览审核（Video Demo Review）&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:25px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;7.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#333333&quot;&gt;视频内容存在问题&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;7.1.1 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用视频内容过于简单，未突出应用特点，宣传价值较小&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;7.1.2 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用视频中，操作演示过快，请放慢演示&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;7.1.3 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用视频内容与应用功能或介绍信息不符&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;7.1.4 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用视频存在侵权内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;7.1.5 &lt;/span&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;应用视频存在色情、血腥暴力、政治、赌博等内容&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;text-align:left;line-height:50px;background:white&quot;&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;8&lt;/span&gt;&lt;span style=&quot;font-size:24px;font-family:微软雅黑;color:#333333&quot;&gt;、提交之后：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-bottom:10px;text-align:left;line-height:28px;background:white&quot;&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑;color:#878F92&quot;&gt;在您将应用上传至多肉内测分发平台后，您的应用随时会进入审核流程，还请您密切关注您应用的审核状态，并谨记以下几点：&lt;/span&gt;&lt;/p&gt;\n&lt;ul type=&quot;disc&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;(1) &lt;/span&gt;&lt;span style=&quot;font-size:      14px;font-family:微软雅黑&quot;&gt;时间安排：多肉审核团队将会全年全日无休，按照《多肉应用审核规范》检查您的应用。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;(2) &lt;/span&gt;&lt;span style=&quot;font-size:      14px;font-family:微软雅黑&quot;&gt;状态更新：若您的应用被下架，您可在「应用管理」中查看到下架状态，或收到多肉的短信和邮件通知。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;(3) &lt;/span&gt;&lt;span style=&quot;font-size:      14px;font-family:微软雅黑&quot;&gt;应用下架：我们的目标是公平、持续地遵循这些准则，但是金无足赤、人无完人。如果您的应用被下架，但您存在疑问，或希望提供其他信息，请您前往多肉「应用管理」中心，点击申诉可直接与我们联系。或以邮件的形式联系我方申诉邮箱：190646521@qq.com，邮件内容需包含您的多肉账号信息（无需提供密码），方便我们查询具体情况，我们的审核团队会尽快与您取得联络。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;(4) &lt;/span&gt;&lt;span style=&quot;font-size:      14px;font-family:微软雅黑&quot;&gt;下架反馈：多肉愿与开发者积极交流，请您配合我方审核要求提供有效材料信息接受应用重审，若您的应用确实存在误封情况，我们会第一时间为您恢复应用上架，同时也可帮助我们改进多肉应用审核流程。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:微软雅黑&quot;&gt;(5) &lt;/span&gt;&lt;span style=&quot;font-size:      14px;font-family:微软雅黑&quot;&gt;游戏审核：多肉为更好的服务广大开发者，保障开发者和我方的利益，多肉现支持合规的游戏类应用分发，需附有该应用的游戏文网文，软件著作权登记证，ICP 许可证等相关文件。当审核判定应用为游戏类应用时，将在您的「应用管理」及邮箱中提供补充相关文件的说明，点击链接上传相关文件即可。多肉审核团队将尽快对您的游戏应用和资质证明进行审核。一旦通过审核，您的游戏应用将自动恢复上架，之后您可以继续上传您的更新版本。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n', NULL, '{"thumbnail":"","template":""}');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_tag`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

--
-- 转存表中的数据 `cmf_portal_tag`
--

INSERT INTO `cmf_portal_tag` (`id`, `status`, `recommended`, `post_count`, `name`) VALUES
(1, 1, 0, 0, '超级签名充值协议'),
(2, 1, 0, 0, '法律法规');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_tag_post`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 标签文章对应表';

--
-- 转存表中的数据 `cmf_portal_tag_post`
--

INSERT INTO `cmf_portal_tag_post` (`id`, `tag_id`, `post_id`, `status`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_recycle_bin`
--

CREATE TABLE IF NOT EXISTS `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_report_record`
--

CREATE TABLE IF NOT EXISTS `cmf_report_record` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL COMMENT '举报人邮箱',
  `reason` varchar(50) NOT NULL COMMENT '原因',
  `content` varchar(255) NOT NULL COMMENT '描述内容',
  `app_id` int(11) NOT NULL COMMENT '举报的应用ID',
  `file` varchar(255) NOT NULL COMMENT '证据文件',
  `create_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_role`
--

CREATE TABLE IF NOT EXISTS `cmf_role` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

--
-- 转存表中的数据 `cmf_role`
--

INSERT INTO `cmf_role` (`id`, `parent_id`, `status`, `create_time`, `update_time`, `list_order`, `name`, `remark`) VALUES
(1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！'),
(2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_role_user`
--

CREATE TABLE IF NOT EXISTS `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色对应表';

--
-- 转存表中的数据 `cmf_role_user`
--

INSERT INTO `cmf_role_user` (`id`, `role_id`, `user_id`) VALUES
(11, 2, 8);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_route`
--

CREATE TABLE IF NOT EXISTS `cmf_route` (
  `id` int(11) NOT NULL COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

--
-- 转存表中的数据 `cmf_route`
--

INSERT INTO `cmf_route` (`id`, `list_order`, `status`, `type`, `full_url`, `url`) VALUES
(1, 5000, 1, 2, 'portal/List/index?id=1', '充值协议'),
(2, 4999, 1, 2, 'portal/Article/index?cid=1', '充值协议/:id'),
(3, 5000, 1, 2, 'portal/List/index?id=2', '法律法规'),
(4, 4999, 1, 2, 'portal/Article/index?cid=2', '法律法规/:id');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_slide`
--

CREATE TABLE IF NOT EXISTS `cmf_slide` (
  `id` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_slide_item`
--

CREATE TABLE IF NOT EXISTS `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_super_download_log`
--

CREATE TABLE IF NOT EXISTS `cmf_super_download_log` (
  `id` int(32) NOT NULL,
  `uid` int(32) NOT NULL COMMENT '上传app用户ID',
  `app_id` int(32) NOT NULL COMMENT 'appid',
  `cid` int(32) NOT NULL COMMENT '证书ID',
  `udid` varchar(50) NOT NULL,
  `device` varchar(50) NOT NULL COMMENT '设备',
  `type` int(1) NOT NULL COMMENT '1公有，2私有',
  `ip` varchar(50) NOT NULL COMMENT '下载IP地址',
  `addtime` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='超级签名下载使用下载池记录';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_super_num`
--

CREATE TABLE IF NOT EXISTS `cmf_super_num` (
  `id` int(11) NOT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1公有，2私有',
  `num` int(32) DEFAULT NULL COMMENT '次数',
  `coin` varchar(255) DEFAULT NULL COMMENT '金额',
  `gift` int(32) DEFAULT '0' COMMENT '赠送次数',
  `orderno` int(11) DEFAULT NULL COMMENT '排序',
  `addtime` int(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_super_num`
--

INSERT INTO `cmf_super_num` (`id`, `type`, `num`, `coin`, `gift`, `orderno`, `addtime`) VALUES
(1, 1, 10, '160', 0, 1, 1570927842),
(2, 1, 100, '1500', 0, 2, 1570927852),
(3, 1, 1000, '14000', 0, 3, 1570927875),
(4, 1, 10000, '130000', 0, 4, 1570927894),
(5, 2, 10, '25', 0, 1, 1570927904),
(6, 2, 100, '250', 0, 2, 1570927915),
(7, 2, 1000, '2400', 0, 3, 1570927926),
(8, 2, 5000, '9000', 0, 4, 1570927966),
(9, 2, 10000, '14000', 0, 5, 1570928009);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_super_signature_ipa`
--

CREATE TABLE IF NOT EXISTS `cmf_super_signature_ipa` (
  `id` int(32) NOT NULL,
  `appid` int(32) NOT NULL COMMENT '原始文件ipaid',
  `supurl` varchar(255) NOT NULL COMMENT '生成的ipa',
  `udid` varchar(50) NOT NULL COMMENT 'udid',
  `addtime` int(32) NOT NULL COMMENT '添加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_sup_charge_log`
--

CREATE TABLE IF NOT EXISTS `cmf_sup_charge_log` (
  `id` int(11) NOT NULL,
  `uid` int(32) DEFAULT NULL COMMENT '用户ID',
  `num` int(32) DEFAULT NULL COMMENT '次数',
  `type` int(1) DEFAULT NULL COMMENT '1公有，2私有',
  `addtime` int(32) DEFAULT NULL COMMENT '添加时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='手动添加超级签名下载记录';

--
-- 转存表中的数据 `cmf_sup_charge_log`
--

INSERT INTO `cmf_sup_charge_log` (`id`, `uid`, `num`, `type`, `addtime`) VALUES
(1, 8890, 1000, 1, 1571651074),
(2, 8890, 1000, 2, 1571651080),
(3, 8891, 1000, 1, 1571656570),
(4, 8893, 10, 1, 1571752205);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_theme`
--

CREATE TABLE IF NOT EXISTS `cmf_theme` (
  `id` int(11) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题描述'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_theme`
--

INSERT INTO `cmf_theme` (`id`, `create_time`, `update_time`, `status`, `is_compiled`, `theme`, `name`, `version`, `demo_url`, `thumbnail`, `author`, `author_url`, `lang`, `keywords`, `description`) VALUES
(19, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_theme_file`
--

CREATE TABLE IF NOT EXISTS `cmf_theme_file` (
  `id` int(11) NOT NULL,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COMMENT '模板更多配置,用户临时保存的配置'
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_theme_file`
--

INSERT INTO `cmf_theme_file` (`id`, `is_public`, `list_order`, `theme`, `name`, `action`, `file`, `description`, `more`, `config_more`, `draft_more`) VALUES
(105, 0, 10, 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","name":"hot_articles_category_id","value":"1","type":"text","tip":"","rule":[]}}}', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","name":"hot_articles_category_id","value":"1","type":"text","tip":"","rule":[]}}}', NULL),
(106, 0, 10, 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=''''>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=''''>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', NULL),
(107, 0, 5, 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"","rule":{"require":true}}}}', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"","rule":{"require":true}}}}', NULL),
(108, 0, 10, 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(109, 0, 10, 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(110, 0, 10, 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', NULL),
(111, 1, 0, '97013266', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', NULL),
(112, 1, 1, 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_third_party_user`
--

CREATE TABLE IF NOT EXISTS `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user`
--

CREATE TABLE IF NOT EXISTS `cmf_user` (
  `id` bigint(20) unsigned NOT NULL,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  `accessKey` varchar(255) DEFAULT NULL COMMENT '七牛 ak密钥',
  `secretKey` varchar(255) DEFAULT NULL COMMENT '七牛sk密钥',
  `bucket` varchar(255) DEFAULT NULL COMMENT '七牛储存名称',
  `valid_time` int(100) DEFAULT '1' COMMENT '有效时间',
  `domain` varchar(255) DEFAULT NULL COMMENT '七牛储存外链默认域名',
  `downloads` varchar(255) DEFAULT '0' COMMENT '总下载数',
  `sup_down_prive` varchar(32) NOT NULL DEFAULT '0' COMMENT '超级签名私有',
  `sup_down_public` varchar(32) NOT NULL DEFAULT '0' COMMENT '超级签名公有'
) ENGINE=InnoDB AUTO_INCREMENT=8894 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

--
-- 转存表中的数据 `cmf_user`
--

INSERT INTO `cmf_user` (`id`, `user_type`, `sex`, `birthday`, `last_login_time`, `score`, `coin`, `create_time`, `user_status`, `user_login`, `user_pass`, `user_nickname`, `user_email`, `user_url`, `avatar`, `signature`, `last_login_ip`, `user_activation_key`, `mobile`, `more`, `accessKey`, `secretKey`, `bucket`, `valid_time`, `domain`, `downloads`, `sup_down_prive`, `sup_down_public`) VALUES
(1, 1, 0, -28800, 1571752068, 0, 0, 1513673890, 1, 'admin', '###5c79e0908ee01e87a42c0a6398b99ee1', '超级猫', '208620005@qq.com', 'https://maozhouapi.com', 'http://api2.meidulm.com/default/20191012/053ad1cd982ad2d33cf4df6ba7ef1a29.jpg', '各类高端程序搭建QQ208620005', '120.253.153.66', '', '', NULL, 'H-ZQeU6VnHvhNNrrsBcc7L3_fkZJjZTiRE8njXzg', '84f28-hG5IzFiE3Hge1Bk7EjUIUZI8xE-4Macpe4', 'clientapp', 1, 'p6fwhxlcm.bkt.clouddn.com', '88888', '0', '0'),
(8888, 2, 0, 0, 1571058055, 0, 0, 1570892075, 1, 'qq208620005', '###5c79e0908ee01e87a42c0a6398b99ee1', '超级猫科技', '', 'https://ios8.cn', 'http://api2.meidulm.com/default/20191012/053ad1cd982ad2d33cf4df6ba7ef1a29.jpg', '', '111.173.155.206', '', '17683983198', NULL, NULL, NULL, NULL, 1, NULL, '88888', '0', '0'),
(8889, 2, 0, 0, 1571597641, 0, 0, 1571597641, 0, '', '###5c79e0908ee01e87a42c0a6398b99ee1', 'sdsd', '', '', '', '', '58.208.186.245', '', '17768068216', NULL, NULL, NULL, NULL, 1, NULL, '50', '0', '0'),
(8890, 2, 0, 0, 1571651170, 0, 0, 1571650815, 1, '', '###5c79e0908ee01e87a42c0a6398b99ee1', '小费', '', '', 'http://api2.meidulm.com/default/20191021/826df4f13d94dbe943bc8609d1d41906.png', '', '112.65.140.94', '', '18163783003', NULL, NULL, NULL, NULL, 1, NULL, '1050', '1000', '1000'),
(8891, 2, 0, 0, 1571748020, 0, 0, 1571656178, 1, '', '###30bb3251b12bfe25a2615ef91b95b936', 'jun3321', '', '', '', '', '49.72.104.30', '', '18962626822', NULL, NULL, NULL, NULL, 1, NULL, '50', '0', '1000'),
(8892, 2, 0, 0, 1571660758, 0, 0, 1571660758, 1, '', '###5c79e0908ee01e87a42c0a6398b99ee1', 'tttxxx', '', '', '', '', '58.48.84.213', '', '18672334060', NULL, NULL, NULL, NULL, 1, NULL, '50', '0', '0'),
(8893, 2, 0, 0, 1571752181, 0, 0, 1571752181, 1, '', '###5c79e0908ee01e87a42c0a6398b99ee1', '15516262002', '', '', '', '', '120.253.153.66', '', '15516262002', NULL, NULL, NULL, NULL, 1, NULL, '50', '0', '10');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_action`
--

CREATE TABLE IF NOT EXISTS `cmf_user_action` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_action_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_auth_info`
--

CREATE TABLE IF NOT EXISTS `cmf_user_auth_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `user_real_name` varchar(50) NOT NULL COMMENT '用户真实姓名',
  `card_number` varchar(50) NOT NULL COMMENT '身份证号码',
  `card_img1` varchar(255) NOT NULL COMMENT '身份证正面',
  `card_img2` varchar(255) NOT NULL COMMENT '身份证反面',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态0审核中,1审核通过,2拒绝',
  `create_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_favorite`
--

CREATE TABLE IF NOT EXISTS `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

--
-- 转存表中的数据 `cmf_user_favorite`
--

INSERT INTO `cmf_user_favorite` (`id`, `user_id`, `title`, `url`, `description`, `table_name`, `object_id`, `create_time`) VALUES
(1, 48, '超级签名充值协议', '{"action":"portal\\/Article\\/index","param":{"id":1}}', '超级签名充值协议', 'portal_post', 1, 1567479065);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_link_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_link_log` (
  `id` int(32) NOT NULL,
  `uid` int(32) NOT NULL,
  `appid` int(32) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '1失效',
  `addtime` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户生成链接记录';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_login_attempt`
--

CREATE TABLE IF NOT EXISTS `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_posted`
--

CREATE TABLE IF NOT EXISTS `cmf_user_posted` (
  `id` int(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '七牛上传文件的地址',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `uid` int(100) DEFAULT NULL COMMENT '用户id',
  `way` int(2) DEFAULT '0' COMMENT '0公开 1密码安装 2邀请安装',
  `instructions` varchar(255) DEFAULT NULL COMMENT '版本更新说明',
  `introduce` varchar(255) DEFAULT NULL COMMENT '应用介绍',
  `version` varchar(255) DEFAULT NULL COMMENT '版本号',
  `big` varchar(255) DEFAULT NULL COMMENT '文件大小  单位MB',
  `build` varchar(255) DEFAULT NULL COMMENT '编译版本号',
  `bundle` varchar(255) DEFAULT NULL COMMENT '文件包名',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `type` varchar(100) DEFAULT NULL COMMENT '0 android 1 ios 类型',
  `img` longtext COMMENT '???????base64',
  `er_img` varchar(255) DEFAULT NULL COMMENT '二维码图片路径',
  `er_logo` varchar(255) DEFAULT '' COMMENT '二维码标识',
  `posted_id` int(100) DEFAULT NULL COMMENT '合并id ',
  `url_name` varchar(100) DEFAULT '0' COMMENT '文件原文件名',
  `status` int(2) DEFAULT '1' COMMENT '状态：1正常，2审核中，3已删除，4官方删除',
  `super_sign_count` int(11) NOT NULL COMMENT '个人证书剩余设备数',
  `public_super_sign_count` int(11) NOT NULL COMMENT '证书池剩余设备数',
  `is_open_super_sign` tinyint(1) NOT NULL DEFAULT '0',
  `download_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1超级签名公有，2私有',
  `only_download` int(1) NOT NULL DEFAULT '0' COMMENT '是否开启唯一下载1',
  `test_type` int(1) NOT NULL DEFAULT '0' COMMENT '1内测，2企业'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_user_posted`
--

INSERT INTO `cmf_user_posted` (`id`, `url`, `addtime`, `name`, `uid`, `way`, `instructions`, `introduce`, `version`, `big`, `build`, `bundle`, `endtime`, `type`, `img`, `er_img`, `er_logo`, `posted_id`, `url_name`, `status`, `super_sign_count`, `public_super_sign_count`, `is_open_super_sign`, `download_type`, `only_download`, `test_type`) VALUES
(6, 'upload/super_signature/20191022/00a2aa5c43a94f625ebf713cb5bfb091.ipa', 1571752258, '猫昼3D游戏', 8893, 0, NULL, NULL, '1.0.2.1', '61.36', '9.0', 'com.maozhou.U3DMJ', 1574344258, '1', 'data:image/png;base64,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', '', '82gZIW', NULL, '猫昼3D游戏', 1, 0, 0, 1, 1, 0, 0);
INSERT INTO `cmf_user_posted` (`id`, `url`, `addtime`, `name`, `uid`, `way`, `instructions`, `introduce`, `version`, `big`, `build`, `bundle`, `endtime`, `type`, `img`, `er_img`, `er_logo`, `posted_id`, `url_name`, `status`, `super_sign_count`, `public_super_sign_count`, `is_open_super_sign`, `download_type`, `only_download`, `test_type`) VALUES
(5, 'upload/super_signature/20191021/6e2eec9ca19c076736d19ac5426473af.ipa', 1571656461, '长城趣牌', 8891, 0, NULL, NULL, '1', '86.81', '8.0', 'org.huixiongyule.cc', 1574248461, '1', 'data:image/png;base64,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', '', 'JB9QWm', NULL, '长城趣牌', 1, 0, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_posted_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_posted_log` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL COMMENT '用户id',
  `posted_id` int(100) DEFAULT NULL COMMENT '文件包id',
  `creattime` int(11) DEFAULT NULL COMMENT '下载时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_score_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_score_log` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_token`
--

CREATE TABLE IF NOT EXISTS `cmf_user_token` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

--
-- 转存表中的数据 `cmf_user_token`
--

INSERT INTO `cmf_user_token` (`id`, `user_id`, `expire_time`, `create_time`, `token`, `device_type`) VALUES
(3, 1, 1587304068, 1571752068, '87bde88def81afed7182f2ae09c0e30eaa8af06e25c2123bdaabd0e9f0eb072a', 'web'),
(4, 8, 1531376937, 1515824937, '3661aca8bd2b6c9785b55b9f7df036f034f2ea74e0965c1b290859e5e35354ea', 'web');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_valid_time`
--

CREATE TABLE IF NOT EXISTS `cmf_valid_time` (
  `id` int(100) NOT NULL,
  `mun` int(100) DEFAULT '1' COMMENT '有效时间 天',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_valid_time`
--

INSERT INTO `cmf_valid_time` (`id`, `mun`, `addtime`) VALUES
(1, 30, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_verification_code`
--

CREATE TABLE IF NOT EXISTS `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

--
-- 转存表中的数据 `cmf_verification_code`
--

INSERT INTO `cmf_verification_code` (`id`, `count`, `send_time`, `expire_time`, `code`, `account`) VALUES
(1, 1, 1571720742, 1571722542, '729427', '17768068216'),
(2, 1, 1571650787, 1571652587, '562611', '18163783003'),
(3, 1, 1571656132, 1571657932, '715116', '18962626822'),
(4, 1, 1571660702, 1571662502, '243930', '18672334060'),
(5, 1, 1571752140, 1571753940, '459178', '15516262002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmf_admin_menu`
--
ALTER TABLE `cmf_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `parentid` (`parent_id`),
  ADD KEY `model` (`controller`);

--
-- Indexes for table `cmf_asset`
--
ALTER TABLE `cmf_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_auth_access`
--
ALTER TABLE `cmf_auth_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `rule_name` (`rule_name`) USING BTREE;

--
-- Indexes for table `cmf_auth_rule`
--
ALTER TABLE `cmf_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `module` (`app`,`status`,`type`);

--
-- Indexes for table `cmf_charge`
--
ALTER TABLE `cmf_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_charge_log`
--
ALTER TABLE `cmf_charge_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_comment`
--
ALTER TABLE `cmf_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_post_ID` (`object_id`),
  ADD KEY `comment_approved_date_gmt` (`status`),
  ADD KEY `comment_parent` (`parent_id`),
  ADD KEY `table_id_status` (`table_name`,`object_id`,`status`),
  ADD KEY `createtime` (`create_time`);

--
-- Indexes for table `cmf_config`
--
ALTER TABLE `cmf_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`) USING BTREE;

--
-- Indexes for table `cmf_download`
--
ALTER TABLE `cmf_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_downloading`
--
ALTER TABLE `cmf_downloading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_hook`
--
ALTER TABLE `cmf_hook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_hook_plugin`
--
ALTER TABLE `cmf_hook_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_ios_certificate`
--
ALTER TABLE `cmf_ios_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_ios_udid_list`
--
ALTER TABLE `cmf_ios_udid_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_link`
--
ALTER TABLE `cmf_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_visible` (`status`);

--
-- Indexes for table `cmf_nav`
--
ALTER TABLE `cmf_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_nav_menu`
--
ALTER TABLE `cmf_nav_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_option`
--
ALTER TABLE `cmf_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `cmf_plugin`
--
ALTER TABLE `cmf_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_portal_category`
--
ALTER TABLE `cmf_portal_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_portal_category_post`
--
ALTER TABLE `cmf_portal_category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_taxonomy_id` (`category_id`);

--
-- Indexes for table `cmf_portal_post`
--
ALTER TABLE `cmf_portal_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  ADD KEY `post_parent` (`parent_id`),
  ADD KEY `post_author` (`user_id`),
  ADD KEY `post_date` (`create_time`) USING BTREE;

--
-- Indexes for table `cmf_portal_tag`
--
ALTER TABLE `cmf_portal_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_portal_tag_post`
--
ALTER TABLE `cmf_portal_tag_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_taxonomy_id` (`post_id`);

--
-- Indexes for table `cmf_recycle_bin`
--
ALTER TABLE `cmf_recycle_bin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_report_record`
--
ALTER TABLE `cmf_report_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_role`
--
ALTER TABLE `cmf_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`parent_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `cmf_role_user`
--
ALTER TABLE `cmf_role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cmf_route`
--
ALTER TABLE `cmf_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_slide`
--
ALTER TABLE `cmf_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_slide_item`
--
ALTER TABLE `cmf_slide_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_cid` (`slide_id`);

--
-- Indexes for table `cmf_super_download_log`
--
ALTER TABLE `cmf_super_download_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_super_num`
--
ALTER TABLE `cmf_super_num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_super_signature_ipa`
--
ALTER TABLE `cmf_super_signature_ipa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_sup_charge_log`
--
ALTER TABLE `cmf_sup_charge_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_theme`
--
ALTER TABLE `cmf_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_theme_file`
--
ALTER TABLE `cmf_theme_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_third_party_user`
--
ALTER TABLE `cmf_third_party_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user`
--
ALTER TABLE `cmf_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login` (`user_login`),
  ADD KEY `user_nickname` (`user_nickname`);

--
-- Indexes for table `cmf_user_action`
--
ALTER TABLE `cmf_user_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_action_log`
--
ALTER TABLE `cmf_user_action_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_object_action` (`user_id`,`object`,`action`),
  ADD KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`);

--
-- Indexes for table `cmf_user_auth_info`
--
ALTER TABLE `cmf_user_auth_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_favorite`
--
ALTER TABLE `cmf_user_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`user_id`);

--
-- Indexes for table `cmf_user_link_log`
--
ALTER TABLE `cmf_user_link_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_login_attempt`
--
ALTER TABLE `cmf_user_login_attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_posted`
--
ALTER TABLE `cmf_user_posted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_posted_log`
--
ALTER TABLE `cmf_user_posted_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_score_log`
--
ALTER TABLE `cmf_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_user_token`
--
ALTER TABLE `cmf_user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_valid_time`
--
ALTER TABLE `cmf_valid_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_verification_code`
--
ALTER TABLE `cmf_verification_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmf_admin_menu`
--
ALTER TABLE `cmf_admin_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `cmf_asset`
--
ALTER TABLE `cmf_asset`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cmf_auth_access`
--
ALTER TABLE `cmf_auth_access`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_auth_rule`
--
ALTER TABLE `cmf_auth_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `cmf_charge`
--
ALTER TABLE `cmf_charge`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_charge_log`
--
ALTER TABLE `cmf_charge_log`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cmf_comment`
--
ALTER TABLE `cmf_comment`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_config`
--
ALTER TABLE `cmf_config`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '系统设置',AUTO_INCREMENT=264;
--
-- AUTO_INCREMENT for table `cmf_download`
--
ALTER TABLE `cmf_download`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cmf_downloading`
--
ALTER TABLE `cmf_downloading`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cmf_hook`
--
ALTER TABLE `cmf_hook`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `cmf_hook_plugin`
--
ALTER TABLE `cmf_hook_plugin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_ios_certificate`
--
ALTER TABLE `cmf_ios_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cmf_ios_udid_list`
--
ALTER TABLE `cmf_ios_udid_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_link`
--
ALTER TABLE `cmf_link`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_nav`
--
ALTER TABLE `cmf_nav`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_nav_menu`
--
ALTER TABLE `cmf_nav_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_option`
--
ALTER TABLE `cmf_option`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cmf_plugin`
--
ALTER TABLE `cmf_plugin`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cmf_portal_category`
--
ALTER TABLE `cmf_portal_category`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_portal_category_post`
--
ALTER TABLE `cmf_portal_category_post`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_portal_post`
--
ALTER TABLE `cmf_portal_post`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_portal_tag`
--
ALTER TABLE `cmf_portal_tag`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_portal_tag_post`
--
ALTER TABLE `cmf_portal_tag_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_recycle_bin`
--
ALTER TABLE `cmf_recycle_bin`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_report_record`
--
ALTER TABLE `cmf_report_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_role`
--
ALTER TABLE `cmf_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmf_role_user`
--
ALTER TABLE `cmf_role_user`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cmf_route`
--
ALTER TABLE `cmf_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cmf_slide`
--
ALTER TABLE `cmf_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_slide_item`
--
ALTER TABLE `cmf_slide_item`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_super_download_log`
--
ALTER TABLE `cmf_super_download_log`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_super_num`
--
ALTER TABLE `cmf_super_num`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cmf_super_signature_ipa`
--
ALTER TABLE `cmf_super_signature_ipa`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_sup_charge_log`
--
ALTER TABLE `cmf_sup_charge_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cmf_theme`
--
ALTER TABLE `cmf_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `cmf_theme_file`
--
ALTER TABLE `cmf_theme_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `cmf_third_party_user`
--
ALTER TABLE `cmf_third_party_user`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user`
--
ALTER TABLE `cmf_user`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8894;
--
-- AUTO_INCREMENT for table `cmf_user_action`
--
ALTER TABLE `cmf_user_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_action_log`
--
ALTER TABLE `cmf_user_action_log`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_auth_info`
--
ALTER TABLE `cmf_user_auth_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_favorite`
--
ALTER TABLE `cmf_user_favorite`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_user_link_log`
--
ALTER TABLE `cmf_user_link_log`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_login_attempt`
--
ALTER TABLE `cmf_user_login_attempt`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_posted`
--
ALTER TABLE `cmf_user_posted`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cmf_user_posted_log`
--
ALTER TABLE `cmf_user_posted_log`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_score_log`
--
ALTER TABLE `cmf_user_score_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_user_token`
--
ALTER TABLE `cmf_user_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cmf_valid_time`
--
ALTER TABLE `cmf_valid_time`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_verification_code`
--
ALTER TABLE `cmf_verification_code`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
