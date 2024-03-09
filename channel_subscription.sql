create table channel_subscription(
user_id varchar(50),
channel_id varchar(50),
editor_id varchar(50),
channel_sub_date date,
CONSTRAINT pk_channel_subself PRIMARY KEY (user_id, channel_id, editor_id),
CONSTRAINT fk_channel_subuser FOREIGN KEY (user_id),
CONSTRAINT fk_channel_subchannel FOREIGN KEY (channel_id),
CONSTRAINT fk_channel_subeditor FOREIGN KEY (editor_id)
);
