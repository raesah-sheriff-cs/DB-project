CREATE TABLE reaction (
reaction_id INTEGER,
post_id INTEGER,
user_id VARCHAR(50),
post_body VARCHAR (3000),
post_date DATE,
post_destination INTEGER, 
CONSTRAINT pk_reaction PRIMARY KEY (reaction_id),
CONSTRAINT fk_reaction_user FOREIGN KEY (user_id) REFERENCES user_profile(user_id),
CONSTRAINT fk_reaction_post FOREIGN KEY (post_id) REFERENCES post(post_id)); 


INSERT INTO reaction (reaction_id,post_id,user_id,post_body,post_date,post_destination) VALUES
	 (10100,1,'afernely2m@dedecms.com','Just had a great meeting with the team! #TeamBuilding #Success','2024-03-08',2),
	 (2020,2,'aweinham2h@bbc.co.uk','Reflecting on the challenges we overcame this week. #Resilience','2024-03-08',5),
	 (3030,3,'jallgood34@discovery.com','Excited to announce our new project launch! 🎉 #NewBeginnings','2024-03-07',1),
	 (4040,4,'syukhov39@wikipedia.org','Celebrating a colleague birthday in the office.🎂 #TeamCelebration','2024-03-06',3),
	 (5050,5,'jgarred3r@w3.org','Thoughts on the latest industry news. Share your opinions! #IndustryInsights','2024-03-05',4),
	 (6060,6,'kmangion3s@cbsnews.com','Behind-the-scenes look at our creative process. 🎨 #CreativeFlow','2024-03-04',1),
	 (7070,7,'ltemplar3v@reddit.com','Highlighting the importance of work-life balance. #WellnessWednesday','2024-03-03',2),
	 (8080,8,'selbourn8f@intel.com','Throwback to a successful event we hosted last month. #ThrowbackThursday','2024-03-03',4),
	 (9090,9,'noswal4j@tinypic.com','Sharing insights from a recent industry conference. #ConferenceHighlights','2024-03-01',5),
	 (1010,10,'jmatyas4q@etsy.com','Exploring new ideas for our upcoming project. Any suggestions? #Brainstorming','2024-02-29',3),
	 (1111,11,'dilsley4n@constantcontact.com','Discussing industry trends and innovations. What are your thoughts? #TechTalk','2024-02-28',2),
	 (1212,12,'smaccheyne4u@theguardian.com','A quick update on our ongoing projects. #ProjectUpdate','2024-02-27',1),
	 (1313,13,'scater4v@altervista.org','Sharing some behind-the-scenes moments at the office. #OfficeLife','2021-12-03',4),
	 (1414,14,'gdahlbom56@buzzfeed.com','Just learned a new skill today! 💡 #LearningJourney','2021-03-18',3),
	 (1515,15,'bcess8m@artisteer.com','Discussing industry trends and innovations. What are your thoughts?','2021-07-06',5);
