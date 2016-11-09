DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
    `cat_id`    INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    `cat_name`  TEXT,
    `item_id`   INTEGER,
    `s_number`  INTEGER DEFAULT 99,
    `addtime`   INTEGER DEFAULT 0
, parent_cat_id INT( 10 ) NOT NULL DEFAULT '0', level INT( 10 ) NOT NULL DEFAULT '2');


DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
    `item_id`   INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    `item_name` TEXT,
    `item_description`  TEXT,
    `uid`   INTEGER,
    `username`  TEXT,
    `password`  TEXT,
    `addtime`   INTEGER,
    `last_update_time`  INTEGER DEFAULT 0
, item_domain text NOT NULL DEFAULT '', item_type INT( 1 ) NOT NULL DEFAULT '1');

DROP TABLE IF EXISTS `item_member`;
CREATE TABLE `item_member` (
    `item_member_id`    INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    `item_id`   INTEGER,
    `uid`   INTEGER,
    `username`  TEXT,
    `addtime`   INTEGER DEFAULT 0
, member_group_id INT( 1 ) NOT NULL DEFAULT '1');

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
    `page_id`   INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    `author_uid`    INTEGER,
    `author_username`   TEXT,
    `item_id`   INTEGER,
    `cat_id`    INTEGER,
    `page_title`    TEXT,
    `page_content`  TEXT,
    `s_number`  INTEGER DEFAULT 99,
    `addtime`   INTEGER DEFAULT 0
, page_comments text NOT NULL DEFAULT '');


DROP TABLE IF EXISTS `page_history`;
CREATE TABLE `page_history` (
    `page_history_id`   INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    `page_id`   INTEGER,
    `author_uid`    INTEGER,
    `author_username`   TEXT,
    `item_id`   INTEGER,
    `cat_id`    INTEGER,
    `page_title`    TEXT,
    `page_content`  TEXT,
    `s_number`  INTEGER,
    `addtime`   INTEGER
, page_comments text NOT NULL DEFAULT '');

DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
        `id`  INTEGER PRIMARY KEY ,
        `uid` int(10) NOT NULL DEFAULT '0',
        `username` CHAR(200) NOT NULL DEFAULT '',
        `template_title` CHAR(200) NOT NULL DEFAULT '' ,
        `template_content` text NOT NULL DEFAULT '',
        `addtime` int(11) NOT NULL DEFAULT '0'
        );


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
    `uid`   INTEGER PRIMARY KEY AUTO_INCREMENT,
    `username`  TEXT,
    `groupid`   INTEGER DEFAULT 2,
    `name`  TEXT,
    `avatar`    TEXT,
    `avatar_small`  TEXT,
    `email` TEXT,
    `password`  TEXT,
    `cookie_token`  BLOB,
    `cookie_token_expire`   TEXT ,
    `reg_time`  INTEGER DEFAULT 0,
    `last_login_time`   INTEGER DEFAULT 0
);

DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
        `id`  INTEGER PRIMARY KEY ,
        `uid` int(10) NOT NULL DEFAULT '0',
        `token` CHAR(200) NOT NULL DEFAULT '',
        `token_expire` int(11) NOT NULL DEFAULT '0' ,
        `ip` CHAR(200) NOT NULL DEFAULT '',
        `addtime` int(11) NOT NULL DEFAULT '0'
        )


