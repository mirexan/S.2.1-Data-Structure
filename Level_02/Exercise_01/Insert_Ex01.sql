SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Users;
TRUNCATE TABLE Tag;
TRUNCATE TABLE Channel;
TRUNCATE TABLE Video;
TRUNCATE TABLE Playlist;
TRUNCATE TABLE Video_Vote;
TRUNCATE TABLE Tag_Video;
TRUNCATE TABLE Comment;
TRUNCATE TABLE Subscription;
TRUNCATE TABLE Video_Playlist;
TRUNCATE TABLE Comment_Vote;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Users (email, password, username, birth, gender, country, postal_code) VALUES
('john.doe@example.com', 'pass123', 'JohnDoe', '1990-05-15', 'Male', 'USA', '90210'),
('jane.smith@example.com', 'pass456', 'JaneSmith', '1992-08-20', 'Female', 'Canada', 'M5V 2T6'),
('alex.g@example.com', 'pass789', 'AlexG', '1998-11-01', 'Non Binary', 'UK', 'SW1A 0AA'),
('lisa.murphy@example.com', 'pass101', 'LisaM', '2001-03-30', 'Female', 'USA', '10001');

INSERT INTO Tag (tag_name) VALUES
('Gaming'),
('Cooking'),
('Tech'),
('Vlog'),
('Music');

INSERT INTO Channel (user_id, name, description, creation_date) VALUES
(1, 'Johns Tech World', 'All about the latest gadgets.', '2023-01-10'),
(2, 'Janes Kitchen', 'Easy recipes for everyone.', '2023-02-15');

INSERT INTO Video (user_id, title, description, file_size, video_file_name, duration, thumbnail, video_status, uploaded_date) VALUES
(1, 'New Smartphone Unboxing', 'Reviewing the latest smartphone.', 1024, 'vid001.mp4', '00:15:30', '/thumb/001.jpg', 'Public', '2025-01-15 10:00:00'),
(1, 'Top 5 Laptops of 2025', 'My favorite laptops this year.', 1536, 'vid002.mp4', '00:22:10', '/thumb/002.jpg', 'Public', '2025-02-01 12:00:00'),
(2, 'Easy Pasta Recipe', 'Quick 10-minute pasta.', 800, 'vid003.mp4', '00:08:45', '/thumb/003.jpg', 'Private', '2025-02-20 18:00:00');

INSERT INTO Playlist (user_id, name, creation_date, status) VALUES
(3, 'Tech Reviews', '2025-02-02', 'Public'),
(1, 'My Favorites', '2025-02-21', 'Private');

INSERT INTO Video_Vote (video_id, user_id, vote_type, creation_date) VALUES
(1, 3, 'like', '2025-01-15 11:00:00'),
(1, 2, 'like', '2025-01-16 14:20:00'),
(2, 3, 'dislike', '2025-02-01 13:00:00'),
(3, 1, 'like', '2025-02-20 19:00:00');

INSERT INTO Tag_Video (tag_id, video_id) VALUES
(3, 1),
(4, 1), 
(3, 2),
(2, 3);

INSERT INTO Comment (user_id, video_id, text, creation_date) VALUES
(3, 1, 'Great review, thanks!', '2025-01-15 11:05:00'),
(2, 1, 'What about the battery life?', '2025-01-16 14:22:00'),
(1, 3, 'Looks delicious!', '2025-02-20 19:01:00');

INSERT INTO Subscription (user_id, channel_id) VALUES
(3, 1),
(3, 2),
(1, 2);

INSERT INTO Video_Playlist (playlist_id, video_id) VALUES
(1, 1),
(1, 2),
(2, 3);

INSERT INTO Comment_Vote (user_id, comment_id, vote_type, vote_datetime) VALUES
(1, 1, 'like', '2025-01-15 12:00:00'),
(3, 3, 'like', '2025-02-20 20:00:00'),
(1, 2, 'dislike', '2025-01-17 09:00:00');

UPDATE Video SET num_likes = 2, num_dislikes = 0 WHERE video_id = 1;
UPDATE Video SET num_likes = 0, num_dislikes = 1 WHERE video_id = 2;
UPDATE Video SET num_likes = 1, num_dislikes = 0 WHERE video_id = 3;
