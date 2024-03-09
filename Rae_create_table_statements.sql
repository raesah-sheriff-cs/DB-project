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

create table Event(
event_id INTEGER not null,
event_name VARCHAR(50) not null,
event_date Date not null,
event_info VARCHAR(200),
primary key(event_id));

create table Event_Registration(
user_id VARCHAR(50) not null,
event_id INTEGER not null,
registration_date date,
constraint user_pkey_fkey_event_registration
foreign key(user_id) references user_profile(user_id),
constraint event_pkey_fkey_event_registration
foreign key(event_id) references Event(event_id));

create table Newsletter(
newsletter_id INTEGER not null,
newsletter_name VARCHAR(30),
newsletter_content VARCHAR(200),
primary key(newsletter_id));

create table Newsletter_Subscription(
user_id VARCHAR(50) not null,
event_id INTEGER not null,
newsletter_sub_date Date,
constraint user_pkey_fkey_newsletter_subscription
foreign key(user_id) references user_profile(user_id),
constraint event_pkey_newsletter_subscription
foreign key(event_id) references Event(event_id));

select * from user_profile;
select * from Event;
select * from Event_Registration;
select * from Newsletter;
select * from Newsletter_Subscription;