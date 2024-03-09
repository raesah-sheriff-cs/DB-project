create table channel_editor(
user_id varchar(50),
editor varchar(50),
additional_channel_edit varchar(50),
role varchar(30),
feedback_system varchar(1000),
custom_profile varchar(2000),
user_active varchar(20),
CONSTRAINT pk_channel PRIMARY KEY (channel_id),
CONSTRAINT fk_channel_subroadmap FOREIGN KEY (roadmap_id),
);
