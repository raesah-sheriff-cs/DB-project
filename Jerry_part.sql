DROP TABLE IF EXISTS user_connection;
DROP TABLE IF EXISTS post;
drop table if exists channel_subscription;
drop table if exists channel_editor;
drop table if exists channel;
drop table if exists roadmap_subscription;
drop table if exists roadmap;
DROP TABLE IF EXISTS user_profile; 
DROP TABLE IF EXISTS reaction;

create table roadmap(
roadmap_id integer,
roadmap_name varchar(100),
user_count integer,
user_active varchar(20),
CONSTRAINT pk_roadmap PRIMARY KEY (roadmap_id)
);

create table roadmap_subscription(
user_id VARCHAR(50),
roadmap_id integer,
roadmap_sub_date date,
CONSTRAINT pk_roadmap_Subscription PRIMARY KEY (user_id, roadmap_id),
CONSTRAINT fk_roadmap_Subuser FOREIGN KEY (user_id) REFERENCES user_profile(user_id),
CONSTRAINT fk_roadmap_Subsroadmap FOREIGN KEY (roadmap_id) REFERENCES roadmap(roadmap_id)
);


create table channel(
channel_id varchar(50),
roadmap_id integer,
channel_name varchar(50),
user_count integer,
user_active varchar(20),
CONSTRAINT pk_channel PRIMARY KEY (channel_id),
CONSTRAINT fk_channel_subroadmap FOREIGN KEY (roadmap_id) REFERENCES roadmap(roadmap_id)
);

create table channel_editor(
user_id varchar(50),
editor_id varchar(50),
additional_channel_edit varchar(50),
role varchar(30),
feedback_system varchar(1000),
custom_profile varchar(2000),
user_active varchar(20),
CONSTRAINT pk_channel_channel_editorid PRIMARY KEY (editor_id),
CONSTRAINT fk_channel_editor_user FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
);


create table channel_subscription(
user_id varchar(50),
channel_id varchar(50),
editor_id varchar(50),
channel_sub_date date,
CONSTRAINT pk_channel_subself PRIMARY KEY (user_id, channel_id, editor_id),
CONSTRAINT fk_channel_subuser FOREIGN KEY (user_id) REFERENCES user_profile(user_id),
CONSTRAINT fk_channel_subchannel FOREIGN KEY (channel_id) REFERENCES channel(channel_id),
CONSTRAINT fk_channel_subeditor FOREIGN KEY (editor_id) REFERENCES channel_editor(editor_id)
);

insert into roadmap(roadmap_id , roadmap_name, user_count , user_active )values
(12345, 'Brooke', 15, 'Active'),
(23456, 'Larry', 30, 'Active'),
(34567, 'James', 20, 'Active'),
(45678, 'Kate', 5, 'Active'),
(56789, 'Ron', 40, 'Active'),
(67890, 'Peter', 32, 'Active'),
(98765, 'Nickola', 11, 'Active'),
(87654, 'Tom', 67, 'Active'),
(76543, 'Toby', 41, 'Active'),
(65432, 'Betty',21, 'Active'),
(54321, 'Jerry', 39, 'Active'),
(43210, 'Hyrum', 33, 'Active'),
(98761, 'Jordan', 61, 'Active'),
(87612, 'Jacky', 78, 'Active'),
(76513, 'Yee', 87, 'Active');

insert into roadmap_subscription(user_id, roadmap_id, roadmap_sub_date) values
('ceacle0@unesco.org', '12345', '2023-05-10'),
('ecornthwaite1@pinterest.com', '23456', '2023-05-11'),
('raves2@tumblr.com', '34567', '2023-05-12'),
('emanlow3@merriam-webster.com', '45678', '2023-05-13'),
('dgeare4@blog.com', '56789', '2023-05-14'),
('sdaintrey5@facebook.com', '67890', '2023-05-15'),
('rlease6@ask.com', '98765', '2023-05-16'),
('cdartnell7@bing.com', '87654', '2023-05-17'),
('ckingaby8@google.com', '76543', '2023-05-18'),
('schallicum9@forbes.com', '65432', '2023-05-19'),
('bdwelleya@tripadvisor.com', '54321', '2023-05-20'),
('ngowansonb@sina.com.cn', '43210', '2023-05-21'),
('edanielec@amazon.com', '98761', '2023-05-22'),
('poswickd@reverbnation.com', '87612', '2023-05-23'),
('ckindreade@goo.gl', '76513', '2023-05-24');



insert into channel (channel_id, roadmap_id, channel_name, user_count, user_active) values
('channel1', 12345, 'Technology Talks', 10, 'Active'),
('channel2', 23456, 'Marketing Masters', 20, 'Active'),
('channel3', 34567, 'Design Dojo', 15, 'Active'),
('channel4', 45678, 'Finance Forum', 5, 'Active'),
('channel5', 56789, 'Health Hub', 30, 'Active'),
('channel6', 67890, 'Business Briefs', 8, 'Active'),
('channel7', 98765, 'Artistic Avenue', 12, 'Active'),
('channel8', 87654, 'Leadership Lounge', 25, 'Active'),
('channel9', 76543, 'Education Emporium', 18, 'Active'),
('channel10', 65432, 'Sports Summit', 3, 'Active'),
('channel11', 54321, 'Food Fiesta', 22, 'Active'),
('channel12', 43210, 'Travel Tribe', 9, 'Active'),
('channel13', 98761, 'Music Mingle', 14, 'Active'),
('channel14', 87612, 'Entertainment Exchange', 7, 'Active'),
('channel15', 76513, 'Fashion Frenzy', 11, 'Active');

INSERT INTO channel_editor (user_id, editor_id, additional_channel_edit, role, feedback_system, custom_profile, user_active)VALUES
('ceacle0@unesco.org', 'editor1', 'channel21', 'Content Manager', 'Providing valuable insights for improvement.', 'Experienced content creator with a passion for storytelling.', 'Active'),
('ecornthwaite1@pinterest.com', 'editor2', 'channel22', 'Marketing Specialist', 'Analyzing campaign performance and optimizing strategies.', 'Digital marketing expert with a focus on ROI.', 'Active'),
('raves2@tumblr.com', 'editor3', 'channel23', 'Design Lead', 'Offering design suggestions for a better user experience.', 'Creative thinker with an eye for detail.', 'Active'),
('emanlow3@merriam-webster.com', 'editor4', 'channel24', 'Financial Advisor', 'Providing financial analysis and investment recommendations.', 'Certified financial planner with expertise in wealth management.', 'Active'),
('dgeare4@blog.com', 'editor5', 'channel25', 'Health Consultant', 'Offering advice on nutrition and lifestyle choices.', 'Health and wellness coach dedicated to helping others achieve their goals.', 'Active'),
('sdaintrey5@facebook.com', 'editor6', 'channel26', 'Business Analyst', 'Analyzing market trends and providing strategic insights.', 'Experienced analyst with a passion for data-driven decision-making.', 'Active'),
('rlease6@ask.com', 'editor7', 'channel27', 'Art Director', 'Providing artistic direction and feedback on visual content.', 'Award-winning artist with a keen eye for aesthetics.', 'Active'),
('cdartnell7@bing.com', 'editor8', 'channel28', 'Leadership Coach', 'Offering guidance on leadership development and team management.', 'Certified executive coach with a track record of success.', 'Active'),
('ckingaby8@google.com', 'editor9', 'channel29', 'Educational Advisor', 'Providing educational resources and support for learning initiatives.', 'Passionate educator dedicated to student success.', 'Active'),
('schallicum9@forbes.com', 'editor10', 'channel30', 'Sports Analyst', 'Analyzing game strategies and player performance.', 'Sports enthusiast with a knack for statistical analysis.', 'Active'),
('bdwelleya@tripadvisor.com', 'editor11', 'channel31', 'Food Critic', 'Offering reviews and recommendations for culinary experiences.', 'Foodie with a palate for excellence.', 'Active'),
('ngowansonb@sina.com.cn', 'editor12', 'channel32', 'Travel Blogger', 'Sharing travel tips and destination guides for adventurers.', 'Wanderlust explorer with a passion for storytelling.', 'Active'),
('edanielec@amazon.com', 'editor13', 'channel33', 'Music Curator', 'Curating playlists and recommending new music discoveries.', 'Music aficionado with an ear for great tunes.', 'Active'),
('poswickd@reverbnation.com', 'editor14', 'channel34', 'Entertainment Reporter', 'Providing coverage and insights on the latest entertainment news.', 'Pop culture enthusiast with a finger on the pulse.', 'Active'),
('ckindreade@goo.gl', 'editor15', 'channel35', 'Fashion Stylist', 'Offering fashion tips and advice for style-conscious individuals.', 'Trendsetter with an eye for chic designs.', 'Active');

insert into channel_subscription(user_id , channel_id, editor_id, channel_sub_date) values
('ceacle0@unesco.org', 'channel1', 'editor1', '2023-01-01'),
('ecornthwaite1@pinterest.com', 'channel2', 'editor2', '2023-01-02'),
('raves2@tumblr.com', 'channel3', 'editor3', '2023-01-03'),
('emanlow3@merriam-webster.com', 'channel4', 'editor4', '2023-01-04'),
('dgeare4@blog.com', 'channel5', 'editor5', '2023-01-05'),
('sdaintrey5@facebook.com', 'channel6', 'editor6', '2023-01-06'),
('rlease6@ask.com', 'channel7', 'editor7', '2023-01-07'),
('cdartnell7@bing.com', 'channel8', 'editor8', '2023-01-08'),
('ckingaby8@google.com', 'channel9', 'editor9', '2023-01-09'),
('schallicum9@forbes.com', 'channel10', 'editor10', '2023-01-10'),
('bdwelleya@tripadvisor.com', 'channel11', 'editor11', '2023-01-11'),
('ngowansonb@sina.com.cn', 'channel12', 'editor12', '2023-01-12'),
('edanielec@amazon.com', 'channel13', 'editor13', '2023-01-13'),
('poswickd@reverbnation.com', 'channel14', 'editor14', '2023-01-14'),
('ckindreade@goo.gl', 'channel15', 'editor15', '2023-01-15');








