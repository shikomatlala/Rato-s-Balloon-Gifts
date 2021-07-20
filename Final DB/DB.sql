DROP TABLE tfoodtype CASCADE CONSTRAINTS;
DROP TABLE tfoodgroup CASCADE CONSTRAINTS;
DROP TABLE tfood CASCADE CONSTRAINTS;
DROP TABLE tsupplier CASCADE CONSTRAINTS;
DROP TABLE titem CASCADE CONSTRAINTS;
DROP TABLE titemorder CASCADE CONSTRAINTS;
DROP TABLE titemorder CASCADE CONSTRAINTS;
DROP TABLE tfooditem CASCADE CONSTRAINTS;

CREATE TABLE tfoodtype
(
foodtypeid NUMBER(10) PRIMARY KEY,
foodtype VARCHAR2(40 CHAR)
);


CREATE TABLE tfoodgroup
(
foodgroupid NUMBER(10) PRIMARY KEY,
foodgroup VARCHAR2(45),
foodtypeid NUMBER(10),
CONSTRAINT fk_foodtype FOREIGN KEY(foodtypeid) REFERENCES tfoodtype(foodtypeid)
);

CREATE TABLE tfood
(
foodid NUMBER(10) PRIMARY KEY,
foodname VARCHAR2(45),
foodgroupid NUMBER(10),
CONSTRAINT fk_foodgroup FOREIGN KEY(foodgroupid) REFERENCES tfoodgroup(foodgroupid)
);

CREATE TABLE tsupplier
(
supplierid VARCHAR2(10 CHAR) PRIMARY KEY, 
suppliername VARCHAR2(20 CHAR),
supplieraddress VARCHAR2(100 CHAR),
supplieremail VARCHAR2(40 CHAR),
suppliercontanctcode VARCHAR2(4),
suppliercontacts VARCHAR2(10)
);

CREATE TABLE tfooditem
(
fitemid VARCHAR2(15 CHAR) PRIMARY KEY,
fitemname VARCHAR2(40 CHAR),
fitemprice NUMBER(6,2),
fitembrand VARCHAR2(40 CHAR),
fitemdescription VARCHAR2(40 CHAR),
foodid NUMBER(10),
fitemweightype VARCHAR(2 CHAR),
fitemweight NUMBER(5,2),
CONSTRAINT fk_foodid FOREIGN KEY(foodid) REFERENCES tfood(foodid)
);

CREATE TABLE titemorder
(
orderid VARCHAR2(30 CHAR) PRIMARY KEY,
itemid VARCHAR2(15 CHAR),
itemcount NUMBER(10),
supplierid VARCHAR2(10 CHAR) ,
orderdate DATE DEFAULT SYSDATE,
supplydate DATE DEFAULT SYSDATE,
orderamount NUMBER(10,2),
CONSTRAINT fk_itemid FOREIGN KEY(itemid) REFERENCES tfooditem(fitemid),
CONSTRAINT fk_supplierid FOREIGN KEY(supplierid) REFERENCES tsupplier(supplierid)
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
INSERT INTO tfood VALUES (16,'Beef exludes ground',6);
INSERT INTO tfood VALUES (17,'Ground beef',6);
INSERT INTO tfood VALUES (18,'Pork',6);
INSERT INTO tfood VALUES (19,'Lamb',6);
INSERT INTO tfood VALUES (20,'Liver meat',6);
INSERT INTO tfood VALUES (21,'Goat',6);
INSERT INTO tfood VALUES (23,'Organ meat',6);
INSERT INTO tfood VALUES (24,'Chicken whole piece',7);
INSERT INTO tfood VALUES (25,'Chicken patty',7);
INSERT INTO tfood VALUES (26,'Turkey',7);
INSERT INTO tfood VALUES (27,'Chicken nugget',7);
INSERT INTO tfood VALUES (28,'Chicken tender',7);
INSERT INTO tfood VALUES (29,'Duck',7);
INSERT INTO tfood VALUES (30,'Other Poultry',7);
INSERT INTO tfood VALUES (31,'Fish',8);
INSERT INTO tfood VALUES (32,'ShellFish',8);
INSERT INTO tfood VALUES (33,'Egg',9);
INSERT INTO tfood VALUES (34,'Cold cut',10);
INSERT INTO tfood VALUES (35,'Bacon',10);
INSERT INTO tfood VALUES (36,'Frankfurter',10);
INSERT INTO tfood VALUES (37,'Sausage',10);
INSERT INTO tfood VALUES (38,'Cured meat',10);
INSERT INTO tfood VALUES (39,'Beans',11);
INSERT INTO tfood VALUES (40,'Nuts',11);
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
INSERT INTO tfood VALUES (140,'White Potatoe',32);
INSERT INTO tfood VALUES (141,'French fries',32);
INSERT INTO tfood VALUES (142,'Mashed potatoes',32);
INSERT INTO tfood VALUES (143,' White potatoe mixtures',32);
INSERT INTO tfood VALUES (144,'Other fried white potatoe',32);
INSERT INTO tfood VALUES (145,'White baked potatoe',32);
INSERT INTO tfood VALUES (146,'White  boiled potatoe',32);
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
INSERT INTO tfood VALUES (183,' Pickled vegetable',41);
INSERT INTO tfood VALUES (184,' Other sauce',41);
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


INSERT INTO tsupplier VALUES(20,'Time Fright',NULL, 'orders@timefright.com', '+27','0112349011');

INSERT INTO tfooditem VALUES(1, 'Jelly Babies', 12.00, 'Maynards', '03-MAR-2021',109,'g', 30);
INSERT INTO tfooditem VALUES(2, 'PS', 16.00, 'Cardberry', '27-NOV-2021',108,'g', 30);
INSERT INTO tfooditem VALUES(3, 'Mommy Mellos', 19.00, 'Nestle', '03-MAR-2022',109,'g', 30);


INSERT INTO titemorder VALUES(1,1,30,20,'19-NOV-2020', '21-JAN-2022', 870);
INSERT INTO titemorder VALUES(2,2,20,20,'19-NOV-2020', '21-JAN-2022', 989.2);
INSERT INTO titemorder VALUES(3,3,4,20,'19-NOV-2020', '21-JAN-2022', 70);
