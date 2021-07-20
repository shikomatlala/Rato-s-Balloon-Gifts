DROP TABLE tfoodtype CASCADE CONSTRAINTS;
DROP TABLE tfoodgroup CASCADE CONSTRAINTS;
DROP TABLE tfood CASCADE CONSTRAINTS;
DROP TABLE tsupplier CASCADE CONSTRAINTS;
DROP TABLE titemorder CASCADE CONSTRAINTS;
DROP TABLE tfooditem CASCADE CONSTRAINTS;
DROP TABLE tgift CASCADE CONSTRAINTS;
DROP TABLE tballoontype CASCADE CONSTRAINTS;
DROP TABLE tballoon CASCADE CONSTRAINTS;
DROP TABLE tballoonorder CASCADE CONSTRAINTS;
DROP TABLE tballoon_gift CASCADE CONSTRAINTS;
DROP TABLE tbox CASCADE CONSTRAINTS;
DROP TABLE tfooditem_gift CASCADE CONSTRAINTS;
DROP TABLE tcustomer_ CASCADE CONSTRAINTS;
DROP TABLE torder CASCADE CONSTRAINTS;
DROP TABLE tmessage CASCADE CONSTRAINTS;


CREATE TABLE tsupplier
(
id 		VARCHAR2(10 CHAR) PRIMARY KEY, 
name 		VARCHAR2(20 CHAR),
address 	VARCHAR2(100 CHAR),
email 		VARCHAR2(40 CHAR),
contanctcode 	VARCHAR2(4),
contacts 	VARCHAR2(10)
);

INSERT INTO tsupplier VALUES(20,'Time Fright',NULL, 'orders@timefright.com', '+27','0112349011');
INSERT INTO tsupplier VALUES(21,'Crazy Balloons',NULL,'orders@crazyballoons.com','+27','0752231110');




CREATE TABLE titemorder
(
orderid 		NUMBER(7) PRIMARY KEY,
itemcount 		NUMBER(10),
supplierid 		VARCHAR2(10 CHAR),
orderdate 		DATE DEFAULT SYSDATE,
supplydate 		DATE DEFAULT SYSDATE,
ordercost 		NUMBER(10,2),
itemcost		NUMBER(10,2),
CONSTRAINT fk_supplierid FOREIGN KEY(supplierid) REFERENCES tsupplier(id)
);

INSERT INTO titemorder VALUES (9,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (10,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (11,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (12,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (13,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (14,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (15,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (16,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (17,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (18,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (19,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (20,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (21,200,21,'08-APRIL-2021','08-APRIL-2021',90,0.6);
INSERT INTO titemorder VALUES (22,200,21,'08-APRIL-2021','08-APRIL-2021',8000,42.5);
INSERT INTO titemorder VALUES (23,200,21,'08-APRIL-2021','08-APRIL-2021',4000,23);
INSERT INTO titemorder VALUES (24,200,21,'08-APRIL-2021','08-APRIL-2021',13758.28,70.99);
INSERT INTO titemorder VALUES (25,200,21,'08-APRIL-2021','08-APRIL-2021',7560,45.36);
INSERT INTO titemorder VALUES (26,200,21,'08-APRIL-2021','08-APRIL-2021',4500,22.5);



CREATE TABLE tballoontype
(
id			NUMBER(3) PRIMARY KEY,
balloontype		VARCHAR2(20)
);

INSERT INTO tballoontype VALUES (1,'Caption Balloon');
INSERT INTO tballoontype VALUES (2,'Color Burst Balloon');
INSERT INTO tballoontype VALUES (3,'Special Balloon');
INSERT INTO tballoontype VALUES (4,'Character Balloon');
INSERT INTO tballoontype VALUES (5,'Shape Balloon');



CREATE TABLE tballoon
(
id			NUMBER(7) PRIMARY KEY,
price			NUMBER(6,2),
name			VARCHAR2(15),
typeid 			NUMBER(1),
stockcount		NUMBER(5),
CONSTRAINT fk_typeid FOREIGN KEY(typeid) REFERENCES tballoontype(id)
);

INSERT INTO tballoon VALUES (1, 2,'Lime Green',2,200);
INSERT INTO tballoon VALUES (2, 2,'Cream Blue',2,200);
INSERT INTO tballoon VALUES (3, 2,'Marroon',2,200);
INSERT INTO tballoon VALUES (4, 2,'Sweet Pink',2,200);
INSERT INTO tballoon VALUES (5, 2,'Yellow Lemon',2,200);
INSERT INTO tballoon VALUES (6, 2,'Green Ocean',2,200); 
INSERT INTO tballoon VALUES (7, 2,'Dark Chocolate',2,200);
INSERT INTO tballoon VALUES (8, 2,'Marble Grey',2,200);
INSERT INTO tballoon VALUES (9, 2,'Snow Blue',2,200);
INSERT INTO tballoon VALUES (10,2,'Red Apple',2,200);
INSERT INTO tballoon VALUES (11,2,'Purple Grape',2,200);
INSERT INTO tballoon VALUES (12,2,'Ocean Blue',2,200);
INSERT INTO tballoon VALUES (13,2,'Vanila Cream',2,200);


INSERT INTO tballoon VALUES (14,50,'Invisible Air',1,200);
INSERT INTO tballoon VALUES (15,40,'Water Globe',1,200);
INSERT INTO tballoon VALUES (16,79.99,'Clear Moon',1,200);
INSERT INTO tballoon VALUES (17,54,'Cristal Ball',1,200);
INSERT INTO tballoon VALUES (18,30,'North Pole',1,200);


CREATE TABLE tballoonorder
(
balloonid		NUMBER(7),
orderid			NUMBER(7),
CONSTRAINT fk_bo_balloonid FOREIGN KEY(balloonid) REFERENCES tballoon(id),
CONSTRAINT fk_bo_orderid FOREIGN KEY(orderid) REFERENCES titemorder(orderid)
);
INSERT INTO tballoonorder VALUES (1,9);
INSERT INTO tballoonorder VALUES (2,10);
INSERT INTO tballoonorder VALUES (3,11);
INSERT INTO tballoonorder VALUES (4,12);
INSERT INTO tballoonorder VALUES (5,13);
INSERT INTO tballoonorder VALUES (6,14);
INSERT INTO tballoonorder VALUES (7,15);
INSERT INTO tballoonorder VALUES (8,16);
INSERT INTO tballoonorder VALUES (9,17);
INSERT INTO tballoonorder VALUES (10,18);
INSERT INTO tballoonorder VALUES (11,19);
INSERT INTO tballoonorder VALUES (12,20);
INSERT INTO tballoonorder VALUES (13,21);
INSERT INTO tballoonorder VALUES (14,22);
INSERT INTO tballoonorder VALUES (15,23);
INSERT INTO tballoonorder VALUES (16,24);
INSERT INTO tballoonorder VALUES (17,25);
INSERT INTO tballoonorder VALUES (18,26);






CREATE TABLE tbox
(
id			NUMBER(2) PRIMARY KEY,
name			VARCHAR2(20),
boxsize			NUMBER(2),
price			NUMBER(6,2)
);


INSERT INTO tbox VALUES (1, 'Love Nest',1,50);
INSERT INTO tbox VALUES (2, 'Bouble Bath',2,80);
INSERT INTO tbox VALUES (3, 'Eden Paradise', 3, 100);
INSERT INTO tbox VALUES (4, 'Put a Ring on It',1, 70);

CREATE TABLE tmessage
(
id			NUMBER(7) PRIMARY KEY,
message			VARCHAR2(200),
price			NUMBER(6,2)
);

INSERT INTO tmessage VALUES (1,'Tsholo, you are a miracle in my life',3);














CREATE TABLE tcustomer_
(
id 			NUMBER(7) PRIMARY KEY,
name 			VARCHAR2(20),
surname 		VARCHAR2(20),
phonenumber 		VARCHAR2(10),
email 			VARCHAR2(30), 
physicaladdress 	VARCHAR2(50)
);

INSERT INTO tcustomer_ VALUES (1,'Shiko','Matlala','0765870538','shikomatlala@gmail.com','6328 Block S, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (2,'Katlego','Moloelang','0768459026','vincentmolelwang@gmail.com','345 Block D, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (3,'Lerato','Marokoane','0794922817','leratomarokoane@gmail.com','0112 Morula View, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (4,'Siphiwe','Ndou','0825991574','ssndou@gamil.com','150 Block A, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (5,'Lebogang','Ledwaba','0712047449','lebzaledwaba@gamil.com','335 Block D, Mabopane. 0190');
INSERT INTO tcustomer_ VALUES (6,'Refilwe','Shilaluke','0721644964','refturus@gmail.com','6328 Block S, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (7,'Irene','Matlala','0834080362','irenematlala11@gamil.com','6328 Block S, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (8,'Senzo','Kekana','0720619904','senzo90sk@gmail.com','6164 Block S, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (9,'Bonolo','Marokoane','0677350110','bonolomarokoane@gamil.com','0112 Morula View, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (10,'Gomolemo,'Marokoane','0677350110','bonolomarokoane@gamil.com','0112 Morula View, Mabopane, 0190');
INSERT INTO tcustomer_ VALUES (11,'Katlego','Rabothata','0768459026','vincentmolelwang@gmail.com','345 Block D, Mabopane, 0190');


CREATE TABLE tfoodtype
(
foodtypeid 			NUMBER(10) PRIMARY KEY,
foodtype 			VARCHAR2(40 CHAR)
);

INSERT INTO tfoodtype VALUES (1,'Dairy'); 
INSERT INTO tfoodtype VALUES (2,'Protein Food');
INSERT INTO tfoodtype VALUES (3,'Mixed Dish');
INSERT INTO tfoodtype VALUES (4,'Grain');
INSERT INTO tfoodtype VALUES (5,'Snack');
INSERT INTO tfoodtype VALUES (6,'Fruit');
INSERT INTO tfoodtype VALUES (7,'Vegetable');
INSERT INTO tfoodtype VALUES (8,'Beverage Not Alchoholic');
INSERT INTO tfoodtype VALUES (9,'Beverage Alchoholic');
INSERT INTO tfoodtype VALUES (10,'Water');
INSERT INTO tfoodtype VALUES (11,'Fat');
INSERT INTO tfoodtype VALUES (12,'Condiment');
INSERT INTO tfoodtype VALUES (13,'Sugar');
INSERT INTO tfoodtype VALUES (14,'Baby Food');
INSERT INTO tfoodtype VALUES (15,'Other');


CREATE TABLE tfoodgroup
(
foodgroupid 		NUMBER(10) PRIMARY KEY,
foodgroup 		VARCHAR2(45),
foodtypeid 		NUMBER(10),
CONSTRAINT fk_foodtype FOREIGN KEY(foodtypeid) REFERENCES tfoodtype(foodtypeid)
);

INSERT INTO tfoodgroup VALUES (1,'Milk',1);
INSERT INTO tfoodgroup VALUES (2,'Flavoured Milk',1);
INSERT INTO tfoodgroup VALUES (3,'Dairy Drink',1);
INSERT INTO tfoodgroup VALUES (4,'Cheese',1);
INSERT INTO tfoodgroup VALUES (5,'Yogurt',1);
INSERT INTO tfoodgroup VALUES (6,'Dair substitute',1);
INSERT INTO tfoodgroup VALUES (7,'Meat',2);
INSERT INTO tfoodgroup VALUES (8,'Poultry',2);
INSERT INTO tfoodgroup VALUES (9,'Seafood',2);
INSERT INTO tfoodgroup VALUES (10,'Egg',2);
INSERT INTO tfoodgroup VALUES (11,'Cured Meat',2);
INSERT INTO tfoodgroup VALUES (12,'Plant-Based Protein Food',2);
INSERT INTO tfoodgroup VALUES (13,'Poultry',2);
INSERT INTO tfoodgroup VALUES (14,'Grain- based',3);
INSERT INTO tfoodgroup VALUES (15,'Asian',3);
INSERT INTO tfoodgroup VALUES (16,'Mexican',3);
INSERT INTO tfoodgroup VALUES (17,'Pizza',3);
INSERT INTO tfoodgroup VALUES (18,'Sandwiche',3);
INSERT INTO tfoodgroup VALUES (19,'Soup',3);
INSERT INTO tfoodgroup VALUES (20,'Cooked grain',4);
INSERT INTO tfoodgroup VALUES (21,'Bread',4);
INSERT INTO tfoodgroup VALUES (22,'Quick Bread',4);
INSERT INTO tfoodgroup VALUES (23,'Ready-to-Eat Cereal',4);
INSERT INTO tfoodgroup VALUES (24,'Cooked Cereal',4);
INSERT INTO tfoodgroup VALUES (25,'Grain Roll',4);
INSERT INTO tfoodgroup VALUES (26,'Tortilla',4);
INSERT INTO tfoodgroup VALUES (27,'Other Bread Product',4);
INSERT INTO tfoodgroup VALUES (28,'Savory Snack',5);
INSERT INTO tfoodgroup VALUES (29,'Cracker',5);
INSERT INTO tfoodgroup VALUES (30,'Meal Bar',5);
INSERT INTO tfoodgroup VALUES (31,'Sweet Bakery Product',5);
INSERT INTO tfoodgroup VALUES (32,'Candy',5);
INSERT INTO tfoodgroup VALUES (33,'Dessert',5);
INSERT INTO tfoodgroup VALUES (34,'Fruit',6);
INSERT INTO tfoodgroup VALUES (35,'Vegetable excluding Potatoe',7);
INSERT INTO tfoodgroup VALUES (36,'White Potatoe',7);
INSERT INTO tfoodgroup VALUES (37,'Juice 100%',8);
INSERT INTO tfoodgroup VALUES (38,'Diet Beverage',8);
INSERT INTO tfoodgroup VALUES (39,'Sweetend Beverage',8);
INSERT INTO tfoodgroup VALUES (40,'Coffee',8);
INSERT INTO tfoodgroup VALUES (41,'Tea',8);
INSERT INTO tfoodgroup VALUES (42,'Alchoholic Beverage',9);
INSERT INTO tfoodgroup VALUES (43,'Plain Water',10);
INSERT INTO tfoodgroup VALUES (44,'Flavoured water',10);
INSERT INTO tfoodgroup VALUES (45,'Enhanced Water',10);
INSERT INTO tfoodgroup VALUES (46,'Fat',11);
INSERT INTO tfoodgroup VALUES (47,'Oil',11);
INSERT INTO tfoodgroup VALUES (48,'Condiment',12);
INSERT INTO tfoodgroup VALUES (49,'Source',12);
INSERT INTO tfoodgroup VALUES (50,'Sugar',13);
INSERT INTO tfoodgroup VALUES (51,'Baby Food',14);
INSERT INTO tfoodgroup VALUES (52,'Baby Beverage',14);
INSERT INTO tfoodgroup VALUES (53,'Infant Formular',14);
INSERT INTO tfoodgroup VALUES (54,'Human Milk',14);
INSERT INTO tfoodgroup VALUES (55,'Other',15);

CREATE TABLE tfood
(
foodid 			NUMBER(10) PRIMARY KEY,
foodname 		VARCHAR2(45),
foodgroupid 		NUMBER(10),
CONSTRAINT fk_foodgroup FOREIGN KEY(foodgroupid) REFERENCES tfoodgroup(foodgroupid)
);

INSERT INTO tfood VALUES (1,'Milk whole',1);
INSERT INTO tfood VALUES (2,'Milk reduced Fat',1);
INSERT INTO tfood VALUES (3,'Milk lowfat',1);
INSERT INTO tfood VALUES (4,'Milk nonfat',1);
INSERT INTO tfood VALUES (5,'Flavoured milk whole',2);
INSERT INTO tfood VALUES (6,'Flavoured milk reducted fat',2);
INSERT INTO tfood VALUES (7,'Flavoured milk lowfat',2);
INSERT INTO tfood VALUES (8,'Flavoured milk nonfat',2);
INSERT INTO tfood VALUES (9,'Milk shakes',3);
INSERT INTO tfood VALUES (10,'Milk substitutes',3);
INSERT INTO tfood VALUES (11,'Other dairy drinks',3);
INSERT INTO tfood VALUES (12,'Cheese',4);
INSERT INTO tfood VALUES (13,'Cottage ricotta cheese',4);
INSERT INTO tfood VALUES (14,'Yogurt Greek',5);
INSERT INTO tfood VALUES (15,'Yogurt regular',5);
INSERT INTO tfood VALUES (16,'Beef exludes ground',7);
INSERT INTO tfood VALUES (17,'Ground beef',7);
INSERT INTO tfood VALUES (18,'Pork',7);
INSERT INTO tfood VALUES (19,'Lamb',7);
INSERT INTO tfood VALUES (20,'Liver meat',7);
INSERT INTO tfood VALUES (21,'Goat',7);
INSERT INTO tfood VALUES (23,'Organ meat',7);
INSERT INTO tfood VALUES (24,'Chicken whole piece',8);
INSERT INTO tfood VALUES (25,'Chicken patty',8);
INSERT INTO tfood VALUES (26,'Turkey',8);
INSERT INTO tfood VALUES (27,'Chicken nugget',8);
INSERT INTO tfood VALUES (28,'Chicken tender',8);
INSERT INTO tfood VALUES (29,'Duck',8);
INSERT INTO tfood VALUES (30,'Other Poultry',8);
INSERT INTO tfood VALUES (31,'Fish',9);
INSERT INTO tfood VALUES (32,'ShellFish',9);
INSERT INTO tfood VALUES (33,'Egg',10);
INSERT INTO tfood VALUES (34,'Cold cut',11);
INSERT INTO tfood VALUES (35,'Bacon',11);
INSERT INTO tfood VALUES (36,'Frankfurter',11);
INSERT INTO tfood VALUES (37,'Sausage',11);
INSERT INTO tfood VALUES (38,'Cured meat',11);
INSERT INTO tfood VALUES (39,'Beans',12);
INSERT INTO tfood VALUES (40,'Nuts',12);
INSERT INTO tfood VALUES (41,'Processed soy product',11);
INSERT INTO tfood VALUES (42,'Pease',11);
INSERT INTO tfood VALUES (43,'Legumes',11);
INSERT INTO tfood VALUES (44,'Seeds',11);
INSERT INTO tfood VALUES (45,'Meat mixed dish',12);
INSERT INTO tfood VALUES (46,'Poultry mixed dish',12);
INSERT INTO tfood VALUES (47,'Seafood mixed dish',12);
INSERT INTO tfood VALUES (48,'Rice mixed dish',13);
INSERT INTO tfood VALUES (49,'Pasta dish excludes macaroni and cheese',13); 
INSERT INTO tfood VALUES (50,'Macaroni and Cheese',13);
INSERT INTO tfood VALUES (51,'Turnover',13);
INSERT INTO tfood VALUES (52,'Other grain-based item',13);
INSERT INTO tfood VALUES (53,'Fried rice',14);
INSERT INTO tfood VALUES (54,'Sitr-fry',14);
INSERT INTO tfood VALUES (55,'Egg roll',14);
INSERT INTO tfood VALUES (56,'Lo/chow mein',14);
INSERT INTO tfood VALUES (57,'Soy-basd sauce mixture',14);
INSERT INTO tfood VALUES (58,'Dumbling',14);
INSERT INTO tfood VALUES (59,'Sushi',14);
INSERT INTO tfood VALUES (60,'Burrito and taco',15);
INSERT INTO tfood VALUES (61,'Nachos',15);
INSERT INTO tfood VALUES (62,'Pizza',16);
INSERT INTO tfood VALUES (63,'Burger',17);
INSERT INTO tfood VALUES (64,'Chicken turkey sandwithe',17);
INSERT INTO tfood VALUES (65,'Egg breakfast sandwitce',17);
INSERT INTO tfood VALUES (66,'Frankfurter sandwitche',17);
INSERT INTO tfood VALUES (67,'Other sandwitche',17);
INSERT INTO tfood VALUES (68,'Noodles',17);
INSERT INTO tfood VALUES (69,'Cooked grans',17);
INSERT INTO tfood VALUES (70,'Soup',18);
INSERT INTO tfood VALUES (71,'Rice',19);
INSERT INTO tfood VALUES (72,'Paster',19);
INSERT INTO tfood VALUES (73,'Yeast brea',20);
INSERT INTO tfood VALUES (74,'Roll',20);
INSERT INTO tfood VALUES (75,'Bagel',20);
INSERT INTO tfood VALUES (76,'Tortilla',20);
INSERT INTO tfood VALUES (77,'Bun Grain',20);
INSERT INTO tfood VALUES (78,'Biscuit',21);
INSERT INTO tfood VALUES (79,'Pencake',21);
INSERT INTO tfood VALUES (80,'English muffin',21);
INSERT INTO tfood VALUES (81,'Muffin',21);
INSERT INTO tfood VALUES (82,'Quick bread',21);
INSERT INTO tfood VALUES (83,'Waffle',21);
INSERT INTO tfood VALUES (84,'French toast',21);
INSERT INTO tfood VALUES (85,'Ready-to-eat high sugar(>21.2g/100g)',22);
INSERT INTO tfood VALUES (86,'Ready-to-eat low sugar (<= 21.2g/100g)',22);
INSERT INTO tfood VALUES (87,'Oatmeal',23);
INSERT INTO tfood VALUES (88,'Grits',23);
INSERT INTO tfood VALUES (89,'Other cooked cerel',23);
INSERT INTO tfood VALUES (90,'Potatoe chips',24);
INSERT INTO tfood VALUES (91,'Tortilla chips',24);
INSERT INTO tfood VALUES (92,'Popcorn',24);
INSERT INTO tfood VALUES (93,'Pretzel',24);
INSERT INTO tfood VALUES (94,'Corn chips',24);
INSERT INTO tfood VALUES (95,'Other chips',25);
INSERT INTO tfood VALUES (96,'Snack mix',24);
INSERT INTO tfood VALUES (97,'Cracker excludes saltines',25);
INSERT INTO tfood VALUES (98,'Saltine cracker',25);
INSERT INTO tfood VALUES (99,'Cereal bar',26);
INSERT INTO tfood VALUES (100,'Nutrition bar',26);
INSERT INTO tfood VALUES (101,'Cake',27);
INSERT INTO tfood VALUES (102,'Cookie',27);
INSERT INTO tfood VALUES (103,'Doughnut',27);
INSERT INTO tfood VALUES (104,'Brownie',27);
INSERT INTO tfood VALUES (105,'Sweet roll',27);
INSERT INTO tfood VALUES (106,'Pastrie',27);
INSERT INTO tfood VALUES (107,'Cake pie',27);
INSERT INTO tfood VALUES (108,'Candy containing chocolate',28);
INSERT INTO tfood VALUES (109,'Candy not containing chocolate',28);
INSERT INTO tfood VALUES (110,'Ice cream',29);
INSERT INTO tfood VALUES (111,'Pudding',29);
INSERT INTO tfood VALUES (112,'Gelatin',29);
INSERT INTO tfood VALUES (113,'Sorbet',29);
INSERT INTO tfood VALUES (114,'Frozen dairy deset',29);
INSERT INTO tfood VALUES (115,'Apple',30);
INSERT INTO tfood VALUES (116,'Banana',30);
INSERT INTO tfood VALUES (117,'Grape',30);
INSERT INTO tfood VALUES (118,'Peach',30);
INSERT INTO tfood VALUES (119,'Berries',30);
INSERT INTO tfood VALUES (120,'Citru fruit',30);
INSERT INTO tfood VALUES (121,'Melon',30);
INSERT INTO tfood VALUES (122,'Dried fruit',30);
INSERT INTO tfood VALUES (123,'Other fruit',30);
INSERT INTO tfood VALUES (124,'fruid salad',30);
INSERT INTO tfood VALUES (125,'Nectarine',30);
INSERT INTO tfood VALUES (126,'Tomatoe',31);
INSERT INTO tfood VALUES (127,'Carrot',31);
INSERT INTO tfood VALUES (128,'Other Red vegetable',31);
INSERT INTO tfood VALUES (129,'Dark green vegetable excludes lettuce',31);
INSERT INTO tfood VALUES (130,'Lettuce',31);
INSERT INTO tfood VALUES (131,'String bean',31);
INSERT INTO tfood VALUES (132,'Onion',31);
INSERT INTO tfood VALUES (133,'Corn',31);
INSERT INTO tfood VALUES (134,'Other starchy vegetable',31);
INSERT INTO tfood VALUES (135,'Other vegetable',31);
INSERT INTO tfood VALUES (136,'Vegetable mixed dish',31);
INSERT INTO tfood VALUES (137,'Vegetable combination',31);
INSERT INTO tfood VALUES (138,' Orange vegetable',31);
INSERT INTO tfood VALUES (139,'Lettuce salad',31);
INSERT INTO tfood VALUES (140,'White Potatoe',36);
INSERT INTO tfood VALUES (141,'French fries',36);
INSERT INTO tfood VALUES (142,'Mashed potatoes',36);
INSERT INTO tfood VALUES (143,' White potatoe mixtures',36);
INSERT INTO tfood VALUES (144,'Other fried white potatoe',36);
INSERT INTO tfood VALUES (145,'White baked potatoe',36);
INSERT INTO tfood VALUES (146,'White  boiled potatoe',36);
INSERT INTO tfood VALUES (147,'Citrus juice',33);
INSERT INTO tfood VALUES (148,'Apple juice',33);
INSERT INTO tfood VALUES (149,'Other fruit juice',33);
INSERT INTO tfood VALUES (150,'Vegetable juice',33);
INSERT INTO tfood VALUES (151,'Diet soft drink',34);
INSERT INTO tfood VALUES (152,'Diet sport energy drink',34);
INSERT INTO tfood VALUES (153,'Other diet drink',34);
INSERT INTO tfood VALUES (154,'Soft drink',35);
INSERT INTO tfood VALUES (155,'Fruit drink',35);
INSERT INTO tfood VALUES (156,'Sport  energy drink',35);
INSERT INTO tfood VALUES (157,'Nutritional beverage',35);
INSERT INTO tfood VALUES (158,'Smoothie grain drink',35);
INSERT INTO tfood VALUES (159,'Coffee',36);
INSERT INTO tfood VALUES (160,'Tea',36);
INSERT INTO tfood VALUES (161,'Beer',37);
INSERT INTO tfood VALUES (162,'Wine',37);
INSERT INTO tfood VALUES (163,'Liquor',37);
INSERT INTO tfood VALUES (164,'cocktail',37);
INSERT INTO tfood VALUES (165,'Tap water',38	);
INSERT INTO tfood VALUES (166,'Bottled water',38);
INSERT INTO tfood VALUES (167,'Butter animal fat',40);
INSERT INTO tfood VALUES (168,'Margarine',40);
INSERT INTO tfood VALUES (169,'Cream cheese',40);
INSERT INTO tfood VALUES (170,'Cream',40);
INSERT INTO tfood VALUES (171,'Mayonaise',40);
INSERT INTO tfood VALUES (172,'Salad dressing',40);
INSERT INTO tfood VALUES (173,'Sour cream',40);
INSERT INTO tfood VALUES (174,'Whipped cream',40);
INSERT INTO tfood VALUES (175,' Cream substitute',40);
INSERT INTO tfood VALUES (176,'Tomato-based condiment',41);
INSERT INTO tfood VALUES (177,'Soy-based condiment',41);
INSERT INTO tfood VALUES (178,'Mustard',41);
INSERT INTO tfood VALUES (179,'Olives',41);
INSERT INTO tfood VALUES (180,'Pasta sauce tomato-based',41);
INSERT INTO tfood VALUES (181,'Dip',41);
INSERT INTO tfood VALUES (182,'Other condiment',41);
INSERT INTO tfood VALUES (183,'Pickled vegetable',41);
INSERT INTO tfood VALUES (184,'Other sauce',41);
INSERT INTO tfood VALUES (185,'Gravie',41);
INSERT INTO tfood VALUES (186,'Sugar',42);
INSERT INTO tfood VALUES (187,'Sugar substitue',42);
INSERT INTO tfood VALUES (188,'Jams',42);
INSERT INTO tfood VALUES (189,'Honey',42);
INSERT INTO tfood VALUES (190,'Syrups',42);
INSERT INTO tfood VALUES (191,'Sugar Topping',42);
INSERT INTO tfood VALUES (192,'Baby food:  cerea',43);
INSERT INTO tfood VALUES (193,'Baby food: fruit',43);
INSERT INTO tfood VALUES (194,'Baby food: vegetable',43);
INSERT INTO tfood VALUES (195,'Baby food: meat',43);
INSERT INTO tfood VALUES (196,'Baby food: yogurt',43);
INSERT INTO tfood VALUES (197,'Baby food: snack',43);
INSERT INTO tfood VALUES (198,'Baby food: sweet',43);
INSERT INTO tfood VALUES (199,'Baby food: dinner',43);
INSERT INTO tfood VALUES (200,'Baby juice',44);
INSERT INTO tfood VALUES (201,'Baby water',44);
INSERT INTO tfood VALUES (202,'Formula ready-to-feed',45);
INSERT INTO tfood VALUES (203,'Formula prepared from powder',45);
INSERT INTO tfood VALUES (204,'Formula prepared from concentrate',45);
INSERT INTO tfood VALUES (205,'Human milk',46);
INSERT INTO tfood VALUES (206,'Protein powder',47);
INSERT INTO tfood VALUES (207,'Not included in a food category',47);
INSERT INTO tfood VALUES (208,'Nutritional powders',47);





CREATE TABLE tfooditem
(
id 			NUMBER(7) PRIMARY KEY,
name 			VARCHAR2(40 CHAR),
price 			NUMBER(6,2),
brand 			VARCHAR2(40 CHAR),
description 		VARCHAR2(40 CHAR),
foodid 			NUMBER(10),
weightype 		VARCHAR(2 CHAR),
weight 			NUMBER(5,2),
stockcount		NUMBER(5),
CONSTRAINT fk_foodid FOREIGN KEY(foodid) REFERENCES tfood(foodid)
);
INSERT INTO tfooditem VALUES(9, 'Aero Dark Chocolate', NULL, 'Nestle', '03-MAR-2022',109,'g', 30, NULL);
INSERT INTO tfooditem VALUES(10, 'Aero Duet White and Milk Chocolate', NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(11, 'Aero Peppermint Milk Chocolate', NULL, 'Nestle','03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(12, 'Aero Smooth Milk Chocolate Slab',NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(13, 'Aero Bar-One Large Chocolate', NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(14, 'KitKat 4 Fingers Dark Chocolate Bar', NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(15, 'KitKat 4 Fingers Milk Chocolate Bar', NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(16, 'KitKat Chunky Chocolate Bar', NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(17, 'KitKat Chunky Peanut Chocolate Bar', NULL, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(18, 'Cheese and Onion Flavoured Potato Chips', NULL, 'Simba', '03-MAR-2022',125,'g', 90,NULL);
INSERT INTO tfooditem VALUES(19, 'Chilli Biltong Flavoured Potato Chips', NULL, 'Simba', '03-MAR-2022',125,'g', 90,NULL);
INSERT INTO tfooditem VALUES(20, 'Creamy Chedder Flavoured Potato Chips', NULL, 'Simba', '03-MAR-2022',125,'g', 90,NULL);
INSERT INTO tfooditem VALUES(21, 'Mexican Chili Flavoured Potato Chips', NULL, 'Simba', '03-MAR-2022',125,'g', 90,NULL);
INSERT INTO tfooditem VALUES(22, 'Salt and Vinegar Flavoured Potato Chips', NULL, 'Simba', '03-MAR-2022',125,'g', 90,NULL);
INSERT INTO tfooditem VALUES(21, 'Smoked Beef Flavoured Potato Chips', NULL, 'Simba', '03-MAR-2022',125,'g', 90,NULL);

INSERT INTO tfooditem VALUES(1, 'Jelly Babies', 12.00, 'Maynards', '03-MAR-2021',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(2, 'PS', 16.00, 'Cardberry', '27-NOV-2021',108,'g', 30,NULL);
INSERT INTO tfooditem VALUES(3, 'Sour Candy', 11.00, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(4, 'Doritos', 16.00, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(5, 'Lunch Bar', 12.00, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(6, 'Lint Balls', 59.00, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(7, 'Whispers', 18.00, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);
INSERT INTO tfooditem VALUES(8, 'Kisses', 30.00, 'Nestle', '03-MAR-2022',109,'g', 30,NULL);






CREATE TABLE torder
(
id 			NUMBER(7) PRIMARY KEY,
orderdate 		DATE,
custid 			NUMBER,
CONSTRAINT fk_custid FOREIGN KEY (custid) REFERENCES tcustomer_(id)
);

INSERT INTO torder VALUES (4,'05-APRIL-2021',1);
INSERT INTO torder VALUES (5,'07-APRIL-2021',8);


CREATE TABLE tgift
(
id			NUMBER(7) PRIMARY KEY,
orderid			NUMBER(7),
boxid			NUMBER(2),
messageid		NUMBER(7),
CONSTRAINT fk_boxid FOREIGN KEY(boxid) REFERENCES tbox(id),
CONSTRAINT fk_messageid FOREIGN KEY(messageid) REFERENCES tmessage(id)
);

INSERT INTO tgift VALUES(6,4,3,1);
INSERT INTO tgift VALUES(7,5,NULL,NULL);
									 							

CREATE TABLE tfooditem_gift
(
fooditemid		NUMBER(7),
giftid			NUMBER(7),
CONSTRAINT fk_fooditemid FOREIGN KEY(fooditemid) REFERENCES tfooditem(id),
CONSTRAINT fk_fg_giftid FOREIGN KEY(giftid) REFERENCES tgift(id)
);					

INSERT INTO tfooditem_gift VALUES(6,6);
INSERT INTO tfooditem_gift VALUES(1,6);
INSERT INTO tfooditem_gift VALUES(1,6);
INSERT INTO tfooditem_gift VALUES(2,6);
INSERT INTO tfooditem_gift VALUES(4,6);
INSERT INTO tfooditem_gift VALUES(3,6);
INSERT INTO tfooditem_gift VALUES(8,6);
INSERT INTO tfooditem_gift VALUES(5,6);


CREATE TABLE tballoon_gift 
(
balloonid		NUMBER(7),
giftid			NUMBER(7),
caption			VARCHAR2(200),
CONSTRAINT fk_bg_giftid FOREIGN KEY(giftid) REFERENCES tgift(id),
CONSTRAINT fk_balloonid FOREIGN KEY(balloonid) REFERENCES tballoon(id)
);

INSERT INTO tballoon_gift VALUES(14,6,'Happy Birth Day Tsholofelo, I love you');
INSERT INTO tballoon_gift VALUES(1,6,NULL);
INSERT INTO tballoon_gift VALUES(2,6,NULL);
INSERT INTO tballoon_gift VALUES(5,6,NULL);
INSERT INTO tballoon_gift VALUES(5,6,NULL);
INSERT INTO tballoon_gift VALUES(5,6,NULL);
INSERT INTO tballoon_gift VALUES(5,6,NULL);
INSERT INTO tballoon_gift VALUES(1,7,NULL);
INSERT INTO tballoon_gift VALUES(1,7,NULL);
INSERT INTO tballoon_gift VALUES(3,7,NULL);
INSERT INTO tballoon_gift VALUES(3,7,NULL);
INSERT INTO tballoon_gift VALUES(3,7,NULL);
INSERT INTO tballoon_gift VALUES(15,7,'Happy Birth day Mom, you are the best');



