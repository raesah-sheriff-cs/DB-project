create table page_subscription (
user_id varchar(50),
page_id varchar(50),
page_sub_date DATE,
foreign key(user_id) references user_profile(user_id),
foreign key(page_id) references page(page_id)
);

INSERT INTO page_subscription (user_id,page_id,page_sub_date) VALUES
	 ('afernely2m@dedecms.com','page1','2024-03-08'),
	 ('aweinham2h@bbc.co.uk','page2','2024-03-08'),
	 ('jallgood34@discovery.com','page3','2024-03-07'),
	 ('syukhov39@wikipedia.org','page4','2024-03-06'),
	 ('jgarred3r@w3.org','page5','2024-03-05'),
	 ('kmangion3s@cbsnews.com','page6','2024-03-04'),
	 ('ltemplar3v@reddit.com','page7','2024-03-03'),
	 ('selbourn8f@intel.com','page8','2024-03-02'),
	 ('noswal4j@tinypic.com','page9','2024-03-01'),
	 ('jmatyas4q@etsy.com','page10','2024-02-29'),
	 ('dilsley4n@constantcontact.com','page11','2024-02-28'),
	 ('smaccheyne4u@theguardian.com','page12','2024-02-27'),
	 ('scater4v@altervista.org','page13','2024-02-26'),
	 ('gdahlbom56@buzzfeed.com','page14','2024-02-25'),
	 ('bcess8m@artisteer.com','page15','2024-02-24');
