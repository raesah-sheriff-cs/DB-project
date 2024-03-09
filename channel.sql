create table channel(
channel_id varchar(50),
roadmap_id varchar(50),
channel_name varchar(50),
user_count integer,
user_active varchar(20),
CONSTRAINT pk_channel PRIMARY KEY (channel_id),
CONSTRAINT fk_channel_subroadmap FOREIGN KEY (roadmap_id),

);