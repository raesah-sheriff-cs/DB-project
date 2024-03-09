DROP TABLE IF EXISTS user_connection;
DROP TABLE IF EXISTS user_feed;
DROP TABLE IF EXISTS honors_awards; 
DROP TABLE IF EXISTS education;
DROP TABLE IF EXISTS experience;
DROP TABLE IF EXISTS user_profile; 


create table user_profile (
	user_id VARCHAR(50) PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	current_position VARCHAR(50),
	company_name VARCHAR(50),
	industry VARCHAR(13),
	country VARCHAR(50),
	city VARCHAR(50),
	postal_code VARCHAR(50),
	headline TEXT,
	connections INT,
	email VARCHAR(50),
	profile_views INT,
	last_login DATE

);


CREATE TABLE user_connection (
user_id VARCHAR(50),
connection_user_id VARCHAR(50),
date_connected DATE,
CONSTRAINT pk_user_connection PRIMARY KEY (user_id, connection_user_id),
CONSTRAINT fk_user_connection FOREIGN KEY (user_id) REFERENCES user_profile(user_id),
CONSTRAINT fk_connection_user_id FOREIGN KEY (connection_user_id) REFERENCES user_profile(user_id)
); 

/*
CREATE TABLE user_feed (
user_id VARCHAR(50),
date_updated DATE, 
update_type VARCHAR(50),
post_id INTEGER,
event_id INTEGER,
newsletter_id INTEGER,
page_id INTEGER,
roadmap_id INTEGER,
channel_id INTEGER,
CONSTRAINT pk_user_feed PRIMARY KEY (user_id),
CONSTRAINT fk_user_feed FOREIGN KEY (user_id) REFERENCES user_profile(user_id),
CONSTRAINT fk_user_feed_post FOREIGN KEY (post_id) REFERENCES post(post_id),
CONSTRAINT fk_user_feed_event FOREIGN KEY (event_id) REFERENCES event(event_id),
CONSTRAINT fk_user_feed_newsletter FOREIGN KEY (newsletter_id) REFERENCES newsletter(newsletter_id),
CONSTRAINT fk_user_feed_page FOREIGN KEY (page_id) REFERENCES page(page_id),
CONSTRAINT fk_user_feed_roadmap FOREIGN KEY (roadmap_id) REFERENCES roadmap(roadmap_id),
CONSTRAINT fk_user_feed_channel FOREIGN KEY (channel_id) REFERENCES channel(channel_id)
);
*/


CREATE TABLE honors_awards (
honors_awards_id INTEGER,
user_id VARCHAR(50),
title VARCHAR(50),
issuer VARCHAR (100),
issue_date DATE,
description VARCHAR (100),
CONSTRAINT pk_honors_awards PRIMARY KEY (honors_awards_id),
CONSTRAINT fk_honors_awards FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
);

CREATE TABLE education (
education_id INTEGER,
user_id VARCHAR(50),
school VARCHAR (100) NOT NULL,
academic_degree VARCHAR (50),
field_of_study VARCHAR (50),
start_date DATE NOT NULL,
end_date DATE,
currently_enrolled BOOLEAN,
CONSTRAINT pk_education PRIMARY KEY (education_id),
CONSTRAINT fk_education FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
);

CREATE TABLE experience (
experience_id INTEGER,
user_id VARCHAR(50),
job_title VARCHAR (50) NOT NULL,
employment_type VARCHAR (50),
company_name VARCHAR (50) NOT NULL, 
location_city VARCHAR (50),
location_country VARCHAR(50),
location_type VARCHAR(50),
start_date DATE NOT NULL,
end_date DATE,
currently_working BOOLEAN,
CONSTRAINT pk_experience PRIMARY KEY (experience_id),
CONSTRAINT fk_experience  FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
); 