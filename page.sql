create table page (
page_id varchar(50),
page_name varchar(50),
page_content varchar(50),
follower_count integer,
primary key(page_id));


INSERT INTO page (page_id,page_name,page_content,follower_count) VALUES
	 ('page1','LinkedIn Tech Insights','Stay updated with the latest in technology',5000),
	 ('page2','Business Success Strategies','Tips and insights for business growth',10000),
	 ('page3','Professional Development Hub','Enhance your professional skills',7500),
	 ('page4','Finance and Investments','Financial news and investment advice',3000),
	 ('page5','Career Opportunities Network','Explore new career opportunities',12000),
	 ('page6','Leadership Excellence','Inspiring leadership and management insights',8000),
	 ('page7','LinkedIn Style Trends','Professional fashion and style updates',9000),
	 ('page8','Entrepreneurial Spirit','Stories of successful entrepreneurs',6000),
	 ('page9','LinkedIn Nature Connections','Appreciating nature in the professional world',4500),
	 ('page10','LinkedIn Movie Buffs','Discussing the intersection of film and business',11000),
	 ('page11','Melodies of Success','Exploring the impact of music on professional life',8500),
	 ('page12','Gaming in the Workplace','Balancing work and gaming interests',7000),
	 ('page13','Pet-Friendly Workplaces','Promoting pet-friendly office environments',4000),
	 ('page14','Artistry in Business','Fusing creativity and professionalism',5500),
	 ('page15','Scientific Minds in Business','Connecting science and business innovations',9500);
