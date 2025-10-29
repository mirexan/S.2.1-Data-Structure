CREATE DATABASE IF NOT EXISTS Youtube;
USE Youtube;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;


DROP TABLE IF EXISTS Users;
CREATE TABLE IF NOT EXISTS Users(
user_id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(60) NOT NULL UNIQUE,
password VARCHAR(60) NOT NULL,
username VARCHAR(60) NOT NULL,
birth DATE NOT NULL,
gender ENUM('Male','Female','Non Binary') NOT NULL,
country VARCHAR(60) NOT NULL,
postal_code VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS Video;
CREATE TABLE IF NOT EXISTS Video (
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
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

DROP TABLE IF EXISTS Video_Vote;
CREATE TABLE IF NOT EXISTS Video_Vote(
video_id INT NOT NULL,
user_id INT NOT NULL,
vote_type ENUM('like', 'dislike') NOT NULL,
creation_date DATETIME NOT NULL,
PRIMARY KEY(video_id,user_id),
FOREIGN KEY (video_id) REFERENCES Video(video_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

DROP TABLE IF EXISTS Tag;
CREATE TABLE IF NOT EXISTS Tag(
tag_id INT AUTO_INCREMENT PRIMARY KEY,
tag_name VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS Tag_Video;
CREATE TABLE IF NOT EXISTS Tag_Video(
tag_id INT NOT NULL,
video_id INT NOT NULL,
PRIMARY KEY(tag_id,video_id),
FOREIGN KEY (tag_id) REFERENCES Tag(tag_id),
FOREIGN KEY (video_id) REFERENCES Video(video_id)
);

DROP TABLE IF EXISTS Comment;
CREATE TABLE IF NOT EXISTS Comment (
comment_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
video_id INT NOT NULL,
text VARCHAR(255) NOT NULL,
creation_date DATETIME NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (video_id) REFERENCES Video(video_id)
);

DROP TABLE IF EXISTS Comment_Vote;
CREATE TABLE IF NOT EXISTS Comment_Vote(
user_id INT NOT NULL,
comment_id INT NOT NULL,
vote_type ENUM('like', 'dislike') NOT NULL,
vote_datetime DATETIME NOT NULL,
PRIMARY KEY(user_id,comment_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (comment_id) REFERENCES Comment(comment_id)
);

DROP TABLE IF EXISTS Channel;
CREATE TABLE IF NOT EXISTS Channel (
channel_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
name VARCHAR(60) NOT NULL,
description TEXT NULL,
creation_date DATE NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

DROP TABLE IF EXISTS Subscription;
CREATE TABLE IF NOT EXISTS Subscription(
subscription_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
channel_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (channel_id) REFERENCES Channel(channel_id)
);

DROP TABLE IF EXISTS Playlist;
CREATE TABLE IF NOT EXISTS Playlist (
Playlist_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
name VARCHAR(60) NOT NULL,
creation_date DATE NOT NULL,
status ENUM('Public','Private') NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

DROP TABLE IF EXISTS Video_Playlist;
CREATE TABLE IF NOT EXISTS Video_Playlist (
video_playlist_id INT AUTO_INCREMENT PRIMARY KEY,
playlist_id INT NOT NULL,
video_id INT NOT NULL,
FOREIGN KEY (playlist_id) REFERENCES Playlist(playlist_id),
FOREIGN KEY (video_id) REFERENCES Video(video_id)
);

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;