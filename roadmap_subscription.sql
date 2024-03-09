create table roadmap_subscription(
user_id VARCHAR(50),
roadmap_id varchar(50),
roadmap_sub_date date,
CONSTRAINT pk_roadmap_Subscription PRIMARY KEY (user_id, roadmap_id),
CONSTRAINT fk_roadmap_Subuser FOREIGN KEY (user_id),
CONSTRAINT fk_roadmap_Subsroadmap FOREIGN KEY (roadmap_id)
);