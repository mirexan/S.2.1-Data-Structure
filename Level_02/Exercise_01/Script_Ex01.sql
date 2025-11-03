CREATE DATABASE IF NOT EXISTS Youtube;
USE Youtube;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;


DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user`(
user_id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(60) NOT NULL UNIQUE,
password VARCHAR(60) NOT NULL,
username VARCHAR(60) NOT NULL,
birth DATE NOT NULL,
gender ENUM('Male','Female','Non Binary') NOT NULL,
country VARCHAR(60) NOT NULL,
postal_code VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS video;
CREATE TABLE IF NOT EXISTS video (
video_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
title VARCHAR(60) NOT NULL,
description TEXT NULL,
file_size INT NOT NULL,
video_file_name VARCHAR(60) NOT NULL,
duration TIME NOT NULL,
thumbnail VARCHAR(60) NULL,
num_views BIGINT DEFAULT 0,
num_likes BIGINT DEFAULT 0,
num_dislikes BIGINT DEFAULT 0,
video_status ENUM('Public','Unlisted','Private'),
uploaded_date DATETIME NOT NULL,
FOREIGN KEY (user_id) REFERENCES `user`(user_id)
);

DROP TABLE IF EXISTS video_vote;
CREATE TABLE IF NOT EXISTS video_vote(
video_id INT NOT NULL,
user_id INT NOT NULL,
vote_type ENUM('like', 'dislike') NOT NULL,
creation_date DATETIME NOT NULL,
PRIMARY KEY(video_id,user_id),
FOREIGN KEY (video_id) REFERENCES video(video_id),
FOREIGN KEY (user_id) REFERENCES `user`(user_id)
);

DROP TABLE IF EXISTS tag;
CREATE TABLE IF NOT EXISTS tag(
tag_id INT AUTO_INCREMENT PRIMARY KEY,
tag_name VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS tag_video;
CREATE TABLE IF NOT EXISTS tag_video(
tag_id INT NOT NULL,
video_id INT NOT NULL,
PRIMARY KEY(tag_id,video_id),
FOREIGN KEY (tag_id) REFERENCES tag(tag_id),
FOREIGN KEY (video_id) REFERENCES video(video_id)
);

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
comment_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
video_id INT NOT NULL,
text VARCHAR(255) NOT NULL,
creation_date DATETIME NOT NULL,
FOREIGN KEY (user_id) REFERENCES `user`(user_id),
FOREIGN KEY (video_id) REFERENCES video(video_id)
);

DROP TABLE IF EXISTS comment_vote;
CREATE TABLE IF NOT EXISTS comment_vote(
user_id INT NOT NULL,
comment_id INT NOT NULL,
vote_type ENUM('like', 'dislike') NOT NULL,
vote_datetime DATETIME NOT NULL,
PRIMARY KEY(user_id,comment_id),
FOREIGN KEY (user_id) REFERENCES `user`(user_id),
FOREIGN KEY (comment_id) REFERENCES `comment`(comment_id)
);

DROP TABLE IF EXISTS `channel`;
CREATE TABLE IF NOT EXISTS `channel` (
channel_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
name VARCHAR(60) NOT NULL,
description TEXT NULL,
creation_date DATE NOT NULL,
FOREIGN KEY (user_id) REFERENCES `user`(user_id)
);

DROP TABLE IF EXISTS subscription;
CREATE TABLE IF NOT EXISTS subscription(
subscription_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
channel_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES `user`(user_id),
FOREIGN KEY (channel_id) REFERENCES `channel`(channel_id)
);

DROP TABLE IF EXISTS playlist;
CREATE TABLE IF NOT EXISTS playlist (
playlist_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
name VARCHAR(60) NOT NULL,
creation_date DATE NOT NULL,
status ENUM('Public','Private') NOT NULL,
FOREIGN KEY (user_id) REFERENCES `user`(user_id)
);

DROP TABLE IF EXISTS video_playlist;
CREATE TABLE IF NOT EXISTS video_playlist (
video_playlist_id INT AUTO_INCREMENT PRIMARY KEY,
playlist_id INT NOT NULL,
video_id INT NOT NULL,
FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
FOREIGN KEY (video_id) REFERENCES video(video_id)
);

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;