set datestyle to mdy;
--select * from orderdetails where orderid = 11077 and productid = 77;
--select * from orders;
insert into categories(categoryid,categoryname,description) values(1,'beverages','soft drinks, coffees, teas, beers, and ales');
insert into categories(categoryid,categoryname,description) values(2,'condiments','sweet and savory sauces, relishes, spreads, and seasonings');
insert into categories(categoryid,categoryname,description) values(3,'confections','desserts, candies, and sweet breads');
insert into categories(categoryid,categoryname,description) values(4,'dairy products','cheeses');
insert into categories(categoryid,categoryname,description) values(5,'grains/cereals','breads, crackers, pasta, and cereal');
insert into categories(categoryid,categoryname,description) values(6,'meat/poultry','prepared meats');
insert into categories(categoryid,categoryname,description) values(7,'produce','dried fruit and bean curd');
insert into categories(categoryid,categoryname,description) values(8,'seafood','seaweed and fish');

insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(1,'exotic liquids','charlotte cooper','purchasing manager','49 gilbert st.','london',null,'ec1 4sd','uk','(171); 555-2222',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(2,'new orleans cajun delights','shelley burke','order administrator','p.o. box 78934','new orleans','la','70117','usa','(100); 555-4822',null,'#cajun.htm#');
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(3,'grandma kelly''s homestead','regina murphy','sales representative','707 oxford rd.','ann arbor','mi','48104','usa','(313); 555-5735','(313); 555-3349',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(4,'tokyo traders','yoshi nagase','marketing manager','9-8 sekimai musashino-shi','tokyo',null,'100','japan','(03); 3555-5011',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(5,'cooperativa de quesos ''las cabras''','antonio del valle saavedra','export administrator','calle del rosal 4','oviedo','asturias','33007','spain','(98) 598 76 54',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(6,'mayumi''s','mayumi ohno','marketing representative','92 setsuko chuo-ku','osaka',null,'545','japan','(06) 431-7877',null,'mayumi''s (on the world wide web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#');
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(7,'pavlova, ltd.','ian devling','marketing manager','74 rose st. moonie ponds','melbourne','victoria','3058','australia','(03); 444-2343','(03); 444-6588',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(8,'specialty biscuits, ltd.','peter wilson','sales representative','29 king''s way','manchester',null,'m14 gsd','uk','(161); 555-4448',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(9,'pb knäckebröd ab','lars peterson','sales agent','kaloadagatan 13','göteborg',null,'s-345 67','sweden','031-987 65 43','031-987 65 91',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(10,'refrescos americanas ltda','carlos diaz','marketing manager','av. das americanas 12.890','sao paulo',null,'5442','brazil','(11); 555 4640',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(11,'heli süßwaren gmbh & co. kg','petra winkler','sales manager','tiergartenstraße 5','berlin',null,'10785','germany','(010); 9984510',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(12,'plutzer lebensmittelgroßmärkte ag','martin bein','international marketing mgr.','bogenallee 51','frankfurt',null,'60439','germany','(069) 992755',null,'plutzer (on the world wide web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#');
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(13,'nord-ost-fisch handelsgesellschaft mbh','sven petersen','coordinator foreign markets','frahmredder 112a','cuxhaven',null,'27478','germany','(04721); 8713','(04721); 8714',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(14,'formaggi fortini s.r.l.','elio rossi','sales representative','viale dante, 75','ravenna',null,'48100','italy','(0544); 60323','(0544); 60603','#formaggi.htm#');
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(15,'norske meierier','beate vileid','marketing manager','hatlevegen 5','sandvika',null,'1320','norway','(0);2-953010',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(16,'bigfoot breweries','cheryl saylor','regional account rep.','3400 - 8th avenue suite 210','bend','or','97101','usa','(503); 555-9931',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(17,'svensk sjöföda ab','michael björn','sales representative','brovallavägen 231','stockholm',null,'s-123 45','sweden','08-123 45 67',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(18,'aux joyeux ecclésiastiques','guylène nodier','sales manager','203, rue des francs-bourgeois','paris',null,'75004','france','(1); 03.83.00.68','(1); 03.83.00.62',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(19,'new england seafood cannery','robb merchant','wholesale account agent','order processing dept. 2100 paul revere blvd.','boston','ma','02134','usa','(617) 555-3267','(617) 555-3389',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(20,'leka trading','chandra leka','owner','471 serangoon loop, suite #402','singapore',null,'0512','singapore','555-8787',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(21,'lyngbysild','niels petersen','sales manager','lyngbysild fiskebakken 10','lyngby',null,'2800','denmark','43844108','43844115',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(22,'zaanse snoepfabriek','dirk luchte','accounting manager','verkoop rijnweg 22','zaandam',null,'9999 zz','netherlands','(12345); 1212','(12345); 1210',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(23,'karkki oy','anne heikkonen','product manager','valtakatu 12','lappeenranta',null,'53120','finland','(953); 10956',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(24,'g''day, mate','wendy mackenzie','sales representative','170 prince edward parade hunter''s hill','sydney','nsw','2042','australia','(02); 555-5914','(02); 555-4873','g''day mate (on the world wide web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#');
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(25,'ma maison','jean-guy lauzon','marketing manager','2960 rue st. laurent','montréal','québec','h1j 1c3','canada','(514); 555-9022',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(26,'pasta buttini s.r.l.','giovanni giudici','order administrator','via dei gelsomini, 153','salerno',null,'84100','italy','(089) 6547665','(089) 6547667',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(27,'escargots nouveaux','marie delamare','sales manager','22, rue h. voiron','montceau',null,'71300','france','85.57.00.07',null,null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(28,'gai pâturage','eliane noz','sales representative','bat. b 3, rue des alpes','annecy',null,'74000','france','38.76.98.06','38.76.98.58',null);
insert into  suppliers(supplierid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax,homepage) values(29,'forêts d''érables','chantal goulet','accounting manager','148 rue chasseur','ste-hyacinthe','québec','j2s 7s8','canada','(514); 555-2955','(514); 555-2921',null);

insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(1,'chai',1,1,'10 boxes x 20 bags',18,39,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(2,'chang',1,1,'24 - 12 oz bottles',19,17,40,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(3,'aniseed syrup',1,2,'12 - 550 ml bottles',10,13,70,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(4,'chef anton''s cajun seasoning',2,2,'48 - 6 oz jars',22,53,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(5,'chef anton''s gumbo mix',2,2,'36 boxes',21.35,0,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(6,'grandma''s boysenberry spread',3,2,'12 - 8 oz jars',25,120,0,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(7,'uncle bob''s organic dried pears',3,7,'12 - 1 lb pkgs.',30,15,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(8,'northwoods cranberry sauce',3,2,'12 - 12 oz jars',40,6,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(9,'mishi kobe niku',4,6,'18 - 500 g pkgs.',97,29,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(10,'ikura',4,8,'12 - 200 ml jars',31,31,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(11,'queso cabrales',5,4,'1 kg pkg.',21,22,30,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(12,'queso manchego la pastora',5,4,'10 - 500 g pkgs.',38,86,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(13,'konbu',6,8,'2 kg box',6,24,0,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(14,'tofu',6,7,'40 - 100 g pkgs.',23.25,35,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(15,'genen shouyu',6,2,'24 - 250 ml bottles',15.5,39,0,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(16,'pavlova',7,3,'32 - 500 g boxes',17.45,29,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(17,'alice mutton',7,6,'20 - 1 kg tins',39,0,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(18,'carnarvon tigers',7,8,'16 kg pkg.',62.5,42,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(19,'teatime chocolate biscuits',8,3,'10 boxes x 12 pieces',9.2,25,0,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(20,'sir rodney''s marmalade',8,3,'30 gift boxes',81,40,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(21,'sir rodney''s scones',8,3,'24 pkgs. x 4 pieces',10,3,40,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(22,'gustaf''s knäckebröd',9,5,'24 - 500 g pkgs.',21,104,0,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(23,'tunnbröd',9,5,'12 - 250 g pkgs.',9,61,0,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(24,'guaraná fantástica',10,1,'12 - 355 ml cans',4.5,20,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(25,'nunuca nuß-nougat-creme',11,3,'20 - 450 g glasses',14,76,0,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(26,'gumbär gummibärchen',11,3,'100 - 250 g bags',31.23,15,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(27,'schoggi schokolade',11,3,'100 - 100 g pieces',43.9,49,0,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(28,'rössle sauerkraut',12,7,'25 - 825 g cans',45.6,26,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(29,'thüringer rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79,0,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(30,'nord-ost matjeshering',13,8,'10 - 200 g glasses',25.89,10,0,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(31,'gorgonzola telino',14,4,'12 - 100 g pkgs',12.5,0,70,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(32,'mascarpone fabioli',14,4,'24 - 200 g pkgs.',32,9,40,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(33,'geitost',15,4,'500 g',2.5,112,0,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(34,'sasquatch ale',16,1,'24 - 12 oz bottles',14,111,0,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(35,'steeleye stout',16,1,'24 - 12 oz bottles',18,20,0,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(36,'inlagd sill',17,8,'24 - 250 g  jars',19,112,0,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(37,'gravad lax',17,8,'12 - 500 g pkgs.',26,11,50,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(38,'côte de blaye',18,1,'12 - 75 cl bottles',263.5,17,0,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(39,'chartreuse verte',18,1,'750 cc per bottle',18,69,0,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(40,'boston crab meat',19,8,'24 - 4 oz tins',18.4,123,0,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(41,'jack''s new england clam chowder',19,8,'12 - 12 oz cans',9.65,85,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(42,'singaporean hokkien fried mee',20,5,'32 - 1 kg pkgs.',14,26,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(43,'ipoh coffee',20,1,'16 - 500 g tins',46,17,10,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(44,'gula malacca',20,2,'20 - 2 kg bags',19.45,27,0,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(45,'rogede sild',21,8,'1k pkg.',9.5,5,70,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(46,'spegesild',21,8,'4 - 450 g glasses',12,95,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(47,'zaanse koeken',22,3,'10 - 4 oz boxes',9.5,36,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(48,'chocolade',22,3,'10 pkgs.',12.75,15,70,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(49,'maxilaku',23,3,'24 - 50 g pkgs.',20,10,60,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(50,'valkoinen suklaa',23,3,'12 - 100 g bars',16.25,65,0,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(51,'manjimup dried apples',24,7,'50 - 300 g pkgs.',53,20,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(52,'filo mix',24,5,'16 - 2 kg boxes',7,38,0,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(53,'perth pasties',24,6,'48 pieces',32.8,0,0,0,'1');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(54,'tourtière',25,6,'16 pies',7.45,21,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(55,'pâté chinois',25,6,'24 boxes x 2 pies',24,115,0,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(56,'gnocchi di nonna alice',26,5,'24 - 250 g pkgs.',38,21,10,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(57,'ravioli angelo',26,5,'24 - 250 g pkgs.',19.5,36,0,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(58,'escargots de bourgogne',27,8,'24 pieces',13.25,62,0,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(59,'raclette courdavault',28,4,'5 kg pkg.',55,79,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(60,'camembert pierrot',28,4,'15 - 300 g rounds',34,19,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(61,'sirop d''érable',29,2,'24 - 500 ml bottles',28.5,113,0,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(62,'tarte au sucre',29,3,'48 pies',49.3,17,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(63,'vegie-spread',7,2,'15 - 625 g jars',43.9,24,0,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(64,'wimmers gute semmelknödel',12,5,'20 bags x 4 pieces',33.25,22,80,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(65,'louisiana fiery hot pepper sauce',2,2,'32 - 8 oz bottles',21.05,76,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(66,'louisiana hot spiced okra',2,2,'24 - 8 oz jars',17,4,100,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(67,'laughing lumberjack lager',16,1,'24 - 12 oz bottles',14,52,0,10,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(68,'scottish longbreads',8,3,'10 boxes x 8 pieces',12.5,6,10,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(69,'gudbrandsdalsost',15,4,'10 kg pkg.',36,26,0,15,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(70,'outback lager',7,1,'24 - 355 ml bottles',15,15,10,30,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(71,'flotemysost',15,4,'10 - 500 g pkgs.',21.5,26,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(72,'mozzarella di giovanni',14,4,'24 - 200 g pkgs.',34.8,14,0,0,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(73,'röd kaviar',17,8,'24 - 150 g jars',15,101,0,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(74,'longlife tofu',4,7,'5 kg pkg.',10,4,20,5,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(75,'rhönbräu klosterbier',12,1,'24 - 0.5 l bottles',7.75,125,0,25,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(76,'lakkalikööri',23,1,'500 ml',18,57,0,20,'0');
insert into  products(productid,productname,supplierid,categoryid,quantityperunit,unitprice,unitsinstock,unitsonorder,reorderlevel,discontinued) values(77,'original frankfurter grüne soße',12,2,'12 boxes',13,32,0,15,'0');

insert into  shippers(shipperid,companyname,phone) values(1,'speedy express','(503); 555-9831');
insert into  shippers(shipperid,companyname,phone) values(2,'united package','(503); 555-3199');
insert into  shippers(shipperid,companyname,phone) values(3,'federal shipping','(503); 555-9931');

insert into  customers values('alfki','alfreds futterkiste','maria anders','sales representative','obere str. 57','berlin',null,'12209','germany','030-0074321','030-0076545');
insert into  customers values('anatr','ana trujillo emparedados y helados','ana trujillo','owner','avda. de la constitución 2222','méxico d.f.',null,'05021','mexico','(5); 555-4729','(5); 555-3745');
insert into  customers values('anton','antonio moreno taquería','antonio moreno','owner','mataderos  2312','méxico d.f.',null,'05023','mexico','(5); 555-3932',null);
insert into  customers values('arout','around the horn','thomas hardy','sales representative','120 hanover sq.','london',null,'wa1 1dp','uk','(171); 555-7788','(171); 555-6750');
insert into  customers values('bergs','berglunds snabbköp','christina berglund','order administrator','berguvsvägen  8','luleå',null,'s-958 22','sweden','0921-12 34 65','0921-12 34 67');
insert into  customers values('blaus','blauer see delikatessen','hanna moos','sales representative','forsterstr. 57','mannheim',null,'68306','germany','0621-08460','0621-08924');
insert into  customers values('blonp','blondesddsl père et fils','frédérique citeaux','marketing manager','24, place kléber','strasbourg',null,'67000','france','88.60.15.31','88.60.15.32');
insert into  customers values('bolid','bólido comidas preparadas','martín sommer','owner','c/ araquil, 67','madrid',null,'28023','spain','(91); 555 22 82','(91); 555 91 99');
insert into  customers values('bonap','bon app''','laurence lebihan','owner','12, rue des bouchers','marseille',null,'13008','france','91.24.45.40','91.24.45.41');
insert into  customers values('bottm','bottom-dollar markets','elizabeth lincoln','accounting manager','23 tsawassen blvd.','tsawassen','bc','t2f 8m4','canada','(604); 555-4729','(604); 555-3745');
insert into  customers values('bsbev','b''s beverages','victoria ashworth','sales representative','fauntleroy circus','london',null,'ec2 5nt','uk','(171); 555-1212',null);
insert into  customers values('cactu','cactus comidas para llevar','patricio simpson','sales agent','cerrito 333','buenos aires',null,'1010','argentina','(1); 135-5555','(1); 135-4892');
insert into  customers values('centc','centro comercial moctezuma','francisco chang','marketing manager','sierras de granada 9993','méxico d.f.',null,'05022','mexico','(5); 555-3392','(5); 555-7293');
insert into  customers values('chops','chop-suey chinese','yang wang','owner','hauptstr. 29','bern',null,'3012','switzerland','0452-076545',null);
insert into  customers values('commi','comércio mineiro','pedro afonso','sales associate','av. dos lusíadas, 23','sao paulo','sp','05432-043','brazil','(11); 555-7647',null);
insert into  customers values('consh','consolidated holdings','elizabeth brown','sales representative','berkeley gardens 12  brewery','london',null,'wx1 6lt','uk','(171); 555-2282','(171); 555-9199');
insert into  customers values('dracd','drachenblut delikatessen','sven ottlieb','order administrator','walserweg 21','aachen',null,'52066','germany','0241-039123','0241-059428');
insert into  customers values('dumon','du monde entier','janine labrune','owner','67, rue des cinquante otages','nantes',null,'44000','france','40.67.88.88','40.67.89.89');
insert into  customers values('eastc','eastern connection','ann devon','sales agent','35 king george','london',null,'wx3 6fw','uk','(171); 555-0297','(171); 555-3373');
insert into  customers values('ernsh','ernst handel','roland mendel','sales manager','kirchgasse 6','graz',null,'8010','austria','7675-3425','7675-3426');
insert into  customers values('famia','familia arquibaldo','aria cruz','marketing assistant','rua orós, 92','sao paulo','sp','05442-030','brazil','(11); 555-9857',null);
insert into  customers values('fissa','fissa fabrica inter. salchichas s.a.','diego roel','accounting manager','c/ moralzarzal, 86','madrid',null,'28034','spain','(91); 555 94 44','(91); 555 55 93');
insert into  customers values('folig','folies gourmandes','martine rancé','assistant sales agent','184, chaussée de tournai','lille',null,'59000','france','20.16.10.16','20.16.10.17');
insert into  customers values('folko','folk och fä hb','maria larsson','owner','åkergatan 24','bräcke',null,'s-844 67','sweden','0695-34 67 21',null);
insert into  customers values('frank','frankenversand','peter franken','marketing manager','berliner platz 43','münchen',null,'80805','germany','089-0877310','089-0877451');
insert into  customers values('franr','france restauration','carine schmitt','marketing manager','54, rue royale','nantes',null,'44000','france','40.32.21.21','40.32.21.20');
insert into  customers values('frans','franchi s.p.a.','paolo accorti','sales representative','via monte bianco 34','torino',null,'10100','italy','011-4988260','011-4988261');
insert into  customers values('furib','furia bacalhau e frutos do mar','lino rodriguez','sales manager','jardim das rosas n. 32','lisboa',null,'1675','portugal','(1); 354-2534','(1); 354-2535');
insert into  customers values('galed','galería del gastrónomo','eduardo saavedra','marketing manager','rambla de cataluña, 23','barcelona',null,'08022','spain','(93); 203 4560','(93); 203 4561');
insert into  customers values('godos','godos cocina típica','josé pedro freyre','sales manager','c/ romero, 33','sevilla',null,'41101','spain','(95); 555 82 82',null);
insert into  customers values('gourl','gourmet lanchonetes','andré fonseca','sales associate','av. brasil, 442','campinas','sp','04876-786','brazil','(11); 555-9482',null);
insert into  customers values('greal','great lakes food market','howard snyder','marketing manager','2732 baker blvd.','eugene','or','97403','usa','(503); 555-7555',null);
insert into  customers values('grosr','grosella-restaurante','manuel pereira','owner','5ª ave. los palos grandes','caracas','df','1081','venezuela','(2); 283-2951','(2); 283-3397');
insert into  customers values('hanar','hanari carnes','mario pontes','accounting manager','rua do paço, 67','rio de janeiro','rj','05454-876','brazil','(21); 555-0091','(21); 555-8765');
insert into  customers values('hilaa','hilarion-abastos','carlos hernández','sales representative','carrera 22 con ave. carlos soublette #8-35','san cristóbal','táchira','5022','venezuela','(5); 555-1340','(5); 555-1948');
insert into  customers values('hungc','hungry coyote import store','yoshi latimer','sales representative','city center plaza 516 main st.','elgin','or','97827','usa','(503); 555-6874','(503); 555-2376');
insert into  customers values('hungo','hungry owl all-night grocers','patricia mckenna','sales associate','8 johnstown road','cork','co. cork',null,'ireland','2967 542','2967 3333');
insert into  customers values('islat','island trading','helen bennett','marketing manager','garden house crowther way','cowes','isle of wight','po31 7pj','uk','(198) 555-8888',null);
insert into  customers values('koene','königlich essen','philip cramer','sales associate','maubelstr. 90','brandenburg',null,'14776','germany','0555-09876',null);
insert into  customers values('lacor','la corne d''abondance','daniel tonini','sales representative','67, avenue de l''europe','versailles',null,'78000','france','30.59.84.10','30.59.85.11');
insert into  customers values('lamai','la maison d''asie','annette roulet','sales manager','1 rue alsace-lorraine','toulouse',null,'31000','france','61.77.61.10','61.77.61.11');
insert into  customers values('laugb','laughing bacchus wine cellars','yoshi tannamuri','marketing assistant','1900 oak st.','vancouver','bc','v3f 2k1','canada','(604); 555-3392','(604); 555-7293');
insert into  customers values('lazyk','lazy k kountry store','john steel','marketing manager','12 orchestra terrace','walla walla','wa','99362','usa','(509) 555-7969','(509) 555-6221');
insert into  customers values('lehms','lehmanns marktstand','renate messner','sales representative','magazinweg 7','frankfurt a.m.',null,'60528','germany','069-0245984','069-0245874');
insert into  customers values('letss','let''s stop n shop','jaime yorres','owner','87 polk st. suite 5','san francisco','ca','94117','usa','(415); 555-5938',null);
insert into  customers values('lilas','lila-supermercado','carlos gonzález','accounting manager','carrera 52 con ave. bolívar #65-98 llano largo','barquisimeto','lara','3508','venezuela','(9) 331-6954','(9) 331-7256');
insert into  customers values('linod','lino-delicateses','felipe izquierdo','owner','ave. 5 de mayo porlamar','i. de margarita','nueva esparta','4980','venezuela','(8) 34-56-12','(8) 34-93-93');
insert into  customers values('lonep','lonesome pine restaurant','fran wilson','sales manager','89 chiaroscuro rd.','portland','or','97219','usa','(503); 555-9573','(503); 555-9646');
insert into  customers values('magaa','magazzini alimentari riuniti','giovanni rovelli','marketing manager','via ludovico il moro 22','bergamo',null,'24100','italy','035-640230','035-640231');
insert into  customers values('maisd','maison dewey','catherine dewey','sales agent','rue joseph-bens 532','bruxelles',null,'b-1180','belgium','(02); 201 24 67','(02); 201 24 68');
insert into  customers values('merep','mère paillarde','jean fresnière','marketing assistant','43 rue st. laurent','montréal','québec','h1j 1c3','canada','(514); 555-8054','(514); 555-8055');
insert into  customers values('morgk','morgenstern gesundkost','alexander feuer','marketing assistant','heerstr. 22','leipzig',null,'04179','germany','0342-023176',null);
insert into  customers values('norts','north/south','simon crowther','sales associate','south house 300 queensbridge','london',null,'sw7 1rz','uk','(171); 555-7733','(171); 555-2530');
insert into  customers values('ocean','océano atlántico ltda.','yvonne moncada','sales agent','ing. gustavo moncada 8585 piso 20-a','buenos aires',null,'1010','argentina','(1); 135-5333','(1); 135-5535');
insert into  customers values('oldwo','old world delicatessen','rene phillips','sales representative','2743 bering st.','anchorage','ak','99508','usa','(907) 555-7584','(907) 555-2880');
insert into  customers values('ottik','ottilies käseladen','henriette pfalzheim','owner','mehrheimerstr. 369','köln',null,'50739','germany','0221-0644327','0221-0765721');
insert into  customers values('paris','paris spécialités','marie bertrand','owner','265, boulevard charonne','paris',null,'75012','france','(1); 42.34.22.66','(1); 42.34.22.77');
insert into  customers values('peric','pericles comidas clásicas','guillermo fernández','sales representative','calle dr. jorge cash 321','méxico d.f.',null,'05033','mexico','(5); 552-3745','(5); 545-3745');
insert into  customers values('picco','piccolo und mehr','georg pipps','sales manager','geislweg 14','salzburg',null,'5020','austria','6562-9722','6562-9723');
insert into  customers values('prini','princesa isabel vinhos','isabel de castro','sales representative','estrada da saúde n. 58','lisboa',null,'1756','portugal','(1); 356-5634',null);
insert into  customers values('quede','que delícia','bernardo batista','accounting manager','rua da panificadora, 12','rio de janeiro','rj','02389-673','brazil','(21); 555-4252','(21); 555-4545');
insert into  customers values('queen','queen cozinha','lúcia carvalho','marketing assistant','alameda dos canàrios, 891','sao paulo','sp','05487-020','brazil','(11); 555-1189',null);
insert into  customers values('quick','quick-stop','horst kloss','accounting manager','taucherstraße 10','cunewalde',null,'01307','germany','0372-035188',null);
insert into  customers values('ranch','rancho grande','sergio gutiérrez','sales representative','av. del libertador 900','buenos aires',null,'1010','argentina','(1); 123-5555','(1); 123-5556');
insert into  customers values('rattc','rattlesnake canyon grocery','paula wilson','assistant sales representative','2817 milton dr.','albuquerque','nm','87110','usa','(505); 555-5939','(505); 555-3620');
insert into  customers values('reggc','reggiani caseifici','maurizio moroni','sales associate','strada provinciale 124','reggio emilia',null,'42100','italy','0522-556721','0522-556722');
insert into  customers values('ricar','ricardo adocicados','janete limeira','assistant sales agent','av. copacabana, 267','rio de janeiro','rj','02389-890','brazil','(21); 555-3412',null);
insert into  customers values('ricsu','richter supermarkt','michael holz','sales manager','grenzacherweg 237','genève',null,'1203','switzerland','0897-034214',null);
insert into  customers values('romey','romero y tomillo','alejandra camino','accounting manager','gran vía, 1','madrid',null,'28001','spain','(91); 745 6200','(91); 745 6210');
insert into  customers values('santg','santé gourmet','jonas bergulfsen','owner','erling skakkes gate 78','stavern',null,'4110','norway','07-98 92 35','07-98 92 47');
insert into  customers values('savea','save-a-lot markets','jose pavarotti','sales representative','187 suffolk ln.','boise','id','83720','usa','(208) 555-8097',null);
insert into  customers values('seves','seven seas imports','hari kumar','sales manager','90 wadhurst rd.','london',null,'ox15 4nb','uk','(171); 555-1717','(171); 555-5646');
insert into  customers values('simob','simons bistro','jytte petersen','owner','vinbæltet 34','kobenhavn',null,'1734','denmark','31 12 34 56','31 13 35 57');
insert into  customers values('specd','spécialités du monde','dominique perrier','marketing manager','25, rue lauriston','paris',null,'75016','france','(1); 47.55.60.10','(1); 47.55.60.20');
insert into  customers values('splir','split rail beer & ale','art braunschweiger','sales manager','p.o. box 555','lander','wy','82520','usa','(307) 555-4680','(307) 555-6525');
insert into  customers values('suprd','suprêmes délices','pascale cartrain','accounting manager','boulevard tirou, 255','charleroi',null,'b-6000','belgium','(071); 23 67 22 20','(071); 23 67 22 21');
insert into  customers values('thebi','the big cheese','liz nixon','marketing manager','89 jefferson way suite 2','portland','or','97201','usa','(503); 555-3612',null);
insert into  customers values('thecr','the cracker box','liu wong','marketing assistant','55 grizzly peak rd.','butte','mt','59801','usa','(406) 555-5834','(406) 555-8083');
insert into  customers values('tomsp','toms spezialitäten','karin josephs','marketing manager','luisenstr. 48','münster',null,'44087','germany','0251-031259','0251-035695');
insert into  customers values('tortu','tortuga restaurante','miguel angel paolino','owner','avda. azteca 123','méxico d.f.',null,'05033','mexico','(5); 555-2933',null);
insert into  customers values('tradh','tradição hipermercados','anabela domingues','sales representative','av. inês de castro, 414','sao paulo','sp','05634-030','brazil','(11); 555-2167','(11); 555-2168');
insert into  customers values('traih','trail''s head gourmet provisioners','helvetius nagy','sales associate','722 davinci blvd.','kirkland','wa','98034','usa','(206) 555-8257','(206) 555-2174');
insert into  customers values('vaffe','vaffeljernet','palle ibsen','sales manager','smagsloget 45','århus',null,'8200','denmark','86 21 32 43','86 22 33 44');
insert into  customers values('victe','victuailles en stock','mary saveley','sales agent','2, rue du commerce','lyon',null,'69004','france','78.32.54.86','78.32.54.87');
insert into  customers values('vinet','vins et alcools chevalier','paul henriot','accounting manager','59 rue de l''abbaye','reims',null,'51100','france','26.47.15.10','26.47.15.11');
insert into  customers values('wandk','die wandernde kuh','rita müller','sales representative','adenauerallee 900','stuttgart',null,'70563','germany','0711-020361','0711-035428');
insert into  customers values('warth','wartian herkku','pirkko koskitalo','accounting manager','torikatu 38','oulu',null,'90110','finland','981-443655','981-443655');
insert into  customers values('welli','wellington importadora','paula parente','sales manager','rua do mercado, 12','resende','sp','08737-363','brazil','(14); 555-8122',null);
insert into  customers values('whitc','white clover markets','karl jablonski','owner','305 - 14th ave. s. suite 3b','seattle','wa','98128','usa','(206) 555-4112','(206) 555-4115');
insert into  customers values('wilmk','wilman kala','matti karttunen','owner/marketing assistant','keskuskatu 45','helsinki',null,'21240','finland','90-224 8858','90-224 8858');
insert into  customers values('wolza','wolski  zajazd','zbyszek piestrzeniewicz','owner','ul. filtrowa 68','warszawa',null,'01-012','poland','(26) 642-7012','(26) 642-7012');

insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(2,'fuller','andrew','vice president, sales','dr.','02/19/1952','08/14/1992','908 w. capital way','tacoma','wa','98401','usa','(206) 555-9482','3457','andrew received his bts commercial in 1974 and a ph.d. in international marketing from the university of dallas in 1981.  he is fluent in french and italian and reads german.  he joined the company as a sales representative, was promoted to sales manager in january 1992 and to vice president of sales in march 1993.  andrew is a member of the sales management roundtable, the seattle chamber of commerce, and the pacific rim importers association.',null,'http://accweb/emmployees/fuller.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(1,'davolio','nancy','sales representative','ms.','12/08/1948','05/01/1992','507 - 20th ave. e.
apt. 2a','seattle','wa','98122','usa','(206) 555-9857','5467','education includes a ba in psychology from colorado state university in 1970.  she also completed the art of the cold call.  nancy is a member of toastmasters international.',2,'http://accweb/emmployees/davolio.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(3,'leverling','janet','sales representative','ms.','08/30/1963','04/01/1992','722 moss bay blvd.','kirkland','wa','98033','usa','(206) 555-3412','3355','janet has a bs degree in chemistry from boston college (1984);.  she has also completed a certificate program in food retailing management.  janet was hired as a sales associate in 1991 and promoted to sales representative in february 1992.',2,'http://accweb/emmployees/leverling.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(4,'peacock','margaret','sales representative','mrs.','09/19/1937','05/03/1993','4110 old redmond rd.','redmond','wa','98052','usa','(206) 555-8122','5176','margaret holds a ba in english literature from concordia college (1958) and an ma from the american institute of culinary arts (1966).  she was assigned to the london office temporarily from july through november 1992.',2,'http://accweb/emmployees/peacock.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(5,'buchanan','steven','sales manager','mr.','03/04/1955','10/17/1993','14 garrett hill','london',null,'sw1 8jr','uk','(71); 555-4848','3453','steven buchanan graduated from st. andrews university, scotland, with a bsc degree in 1976.  upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the seattle office and then returned to his permanent post in london.  he was promoted to sales manager in march 1993.  mr. buchanan has completed the courses successful telemarketing and international sales management.  he is fluent in french.',2,'http://accweb/emmployees/buchanan.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(6,'suyama','michael','sales representative','mr.','07/02/1963','10/17/1993','coventry house
miner rd.','london',null,'ec2 7jr','uk','(71); 555-7773','428','michael is a graduate of sussex university (ma, economics, 1983); and the university of california at los angeles (mba, marketing, 1986).  he has also taken the courses multi-cultural selling and time management for the sales professional.  he is fluent in japanese and can read and write french, portuguese, and spanish.',5,'http://accweb/emmployees/davolio.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(7,'king','robert','sales representative','mr.','05/29/1960','01/02/1994','edgeham hollow
winchester way','london',null,'rg1 9sp','uk','(71); 555-5598','465','robert king served in the peace corps and traveled extensively before completing his degree in english at the university of michigan in 1992, the year he joined the company.  after completing a course entitled selling in europe, he was transferred to the london office in march 1993.',5,'http://accweb/emmployees/davolio.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(8,'callahan','laura','inside sales coordinator','ms.','01/09/1958','03/05/1994','4726 - 11th ave. n.e.','seattle','wa','98105','usa','(206) 555-1189','2344','laura received a ba in psychology from the university of washington.  she has also completed a course in business french.  she reads and writes french.',2,'http://accweb/emmployees/davolio.bmp');
insert into  employees(employeeid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,homephone,extension,notes,reportsto,photopath) values(9,'dodsworth','anne','sales representative','ms.','01/27/1966','11/15/1994','7 houndstooth rd.','london',null,'wg2 7lt','uk','(71); 555-4444','452','anne has a ba degree in english from st. lawrence college.  she is fluent in french and german.',5,'http://accweb/emmployees/davolio.bmp');

-- tabla region
insert into region values (1,'eastern');
insert into region values (2,'western');
insert into region values (3,'northern');
insert into region values (4,'southern');

-- tabla territories
insert into territories values ('01581','westboro',1);
insert into territories values ('01730','bedford',1);
insert into territories values ('01833','georgetow',1);
insert into territories values ('02116','boston',1);
insert into territories values ('02139','cambridge',1);
insert into territories values ('02184','braintree',1);
insert into territories values ('02903','providence',1);
insert into territories values ('03049','hollis',3);
insert into territories values ('03801','portsmouth',3);
insert into territories values ('06897','wilton',1);
insert into territories values ('07960','morristown',1);
insert into territories values ('08837','edison',1);
insert into territories values ('10019','new york',1);
insert into territories values ('10038','new york',1);
insert into territories values ('11747','mellvile',1);
insert into territories values ('14450','fairport',1);
insert into territories values ('19428','philadelphia',3);
insert into territories values ('19713','neward',1);
insert into territories values ('20852','rockville',1);
insert into territories values ('27403','greensboro',1);
insert into territories values ('27511','cary',1);
insert into territories values ('29202','columbia',4);
insert into territories values ('30346','atlanta',4);
insert into territories values ('31406','savannah',4);
insert into territories values ('32859','orlando',4);
insert into territories values ('33607','tampa',4);
insert into territories values ('40222','louisville',1);
insert into territories values ('44122','beachwood',3);
insert into territories values ('45839','findlay',3);
insert into territories values ('48075','southfield',3);
insert into territories values ('48084','troy',3);
insert into territories values ('48304','bloomfield hills',3);
insert into territories values ('53404','racine',3);
insert into territories values ('55113','roseville',3);
insert into territories values ('55439','minneapolis',3);
insert into territories values ('60179','hoffman estates',2);
insert into territories values ('60601','chicago',2);
insert into territories values ('72716','bentonville',4);
insert into territories values ('75234','dallas',4);
insert into territories values ('78759','austin',4);
insert into territories values ('80202','denver',2);
insert into territories values ('80909','colorado springs',2);
insert into territories values ('85014','phoenix',2);
insert into territories values ('85251','scottsdale',2);
insert into territories values ('90405','santa monica',2);
insert into territories values ('94025','menlo park',2);
insert into territories values ('94105','san francisco',2);
insert into territories values ('95008','campbell',2);
insert into territories values ('95054','santa clara',2);
insert into territories values ('95060','santa cruz',2);
insert into territories values ('98004','bellevue',2);
insert into territories values ('98052','redmond',2);
insert into territories values ('98104','seattle',2);

-- tabla employeeterritories
insert into employeeterritories values (1,'06897');
insert into employeeterritories values (1,'19713');
insert into employeeterritories values (2,'01581');
insert into employeeterritories values (2,'01730');
insert into employeeterritories values (2,'01833');
insert into employeeterritories values (2,'02116');
insert into employeeterritories values (2,'02139');
insert into employeeterritories values (2,'02184');
insert into employeeterritories values (2,'40222');
insert into employeeterritories values (3,'30346');
insert into employeeterritories values (3,'31406');
insert into employeeterritories values (3,'32859');
insert into employeeterritories values (3,'33607');
insert into employeeterritories values (4,'20852');
insert into employeeterritories values (4,'27403');
insert into employeeterritories values (4,'27511');
insert into employeeterritories values (5,'02903');
insert into employeeterritories values (5,'07960');
insert into employeeterritories values (5,'08837');
insert into employeeterritories values (5,'10019');
insert into employeeterritories values (5,'10038');
insert into employeeterritories values (5,'11747');
insert into employeeterritories values (5,'14450');
insert into employeeterritories values (6,'85014');
insert into employeeterritories values (6,'85251');
insert into employeeterritories values (6,'98004');
insert into employeeterritories values (6,'98052');
insert into employeeterritories values (6,'98104');
insert into employeeterritories values (7,'60179');
insert into employeeterritories values (7,'60601');
insert into employeeterritories values (7,'80202');
insert into employeeterritories values (7,'80909');
insert into employeeterritories values (7,'90405');
insert into employeeterritories values (7,'94025');
insert into employeeterritories values (7,'94105');
insert into employeeterritories values (7,'95008');
insert into employeeterritories values (7,'95054');
insert into employeeterritories values (7,'95060');
insert into employeeterritories values (8,'19428');
insert into employeeterritories values (8,'44122');
insert into employeeterritories values (8,'45839');
insert into employeeterritories values (8,'53404');
insert into employeeterritories values (9,'03049');
insert into employeeterritories values (9,'03801');
insert into employeeterritories values (9,'48075');
insert into employeeterritories values (9,'48084');
insert into employeeterritories values (9,'48304');
insert into employeeterritories values (9,'55113');
insert into employeeterritories values (9,'55439');


-- tabla orders
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10248,n'vinet',5,'7/4/1996','8/1/1996','7/16/1996',3,32.38,
	n'vins et alcools chevalier',n'59 rue de l''abbaye',n'reims',
	null,n'51100',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10249,n'tomsp',6,'7/5/1996','8/16/1996','7/10/1996',1,11.61,
	n'toms spezialitäten',n'luisenstr. 48',n'münster',
	null,n'44087',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10250,n'hanar',4,'7/8/1996','8/5/1996','7/12/1996',2,65.83,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10251,n'victe',3,'7/8/1996','8/5/1996','7/15/1996',1,41.34,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10252,n'suprd',4,'7/9/1996','8/6/1996','7/11/1996',2,51.30,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10253,n'hanar',3,'7/10/1996','7/24/1996','7/16/1996',2,58.17,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10254,n'chops',5,'7/11/1996','8/8/1996','7/23/1996',2,22.98,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10255,n'ricsu',9,'7/12/1996','8/9/1996','7/15/1996',3,148.33,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10256,n'welli',3,'7/15/1996','8/12/1996','7/17/1996',2,13.97,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10257,n'hilaa',4,'7/16/1996','8/13/1996','7/22/1996',3,81.91,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10258,n'ernsh',1,'7/17/1996','8/14/1996','7/23/1996',1,140.51,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10259,n'centc',4,'7/18/1996','8/15/1996','7/25/1996',3,3.25,
	n'centro comercial moctezuma',n'sierras de granada 9993',n'méxico d.f.',
	null,n'05022',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10260,n'ottik',4,'7/19/1996','8/16/1996','7/29/1996',1,55.09,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10261,n'quede',4,'7/19/1996','8/16/1996','7/30/1996',2,3.05,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10262,n'rattc',8,'7/22/1996','8/19/1996','7/25/1996',3,48.29,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10263,n'ernsh',9,'7/23/1996','8/20/1996','7/31/1996',3,146.06,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10264,n'folko',6,'7/24/1996','8/21/1996','8/23/1996',3,3.67,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10265,n'blonp',2,'7/25/1996','8/22/1996','8/12/1996',1,55.28,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10266,n'warth',3,'7/26/1996','9/6/1996','7/31/1996',3,25.73,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10267,n'frank',4,'7/29/1996','8/26/1996','8/6/1996',1,208.58,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10268,n'grosr',8,'7/30/1996','8/27/1996','8/2/1996',3,66.29,
	n'grosella-restaurante',n'5ª ave. los palos grandes',n'caracas',
	n'df',n'1081',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10269,n'whitc',5,'7/31/1996','8/14/1996','8/9/1996',1,4.56,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10270,n'warth',1,'8/1/1996','8/29/1996','8/2/1996',1,136.54,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10271,n'splir',6,'8/1/1996','8/29/1996','8/30/1996',2,4.54,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10272,n'rattc',6,'8/2/1996','8/30/1996','8/6/1996',2,98.03,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10273,n'quick',3,'8/5/1996','9/2/1996','8/12/1996',3,76.07,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10274,n'vinet',6,'8/6/1996','9/3/1996','8/16/1996',1,6.01,
	n'vins et alcools chevalier',n'59 rue de l''abbaye',n'reims',
	null,n'51100',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10275,n'magaa',1,'8/7/1996','9/4/1996','8/9/1996',1,26.93,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10276,n'tortu',8,'8/8/1996','8/22/1996','8/14/1996',3,13.84,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10277,n'morgk',2,'8/9/1996','9/6/1996','8/13/1996',3,125.77,
	n'morgenstern gesundkost',n'heerstr. 22',n'leipzig',
	null,n'04179',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10278,n'bergs',8,'8/12/1996','9/9/1996','8/16/1996',2,92.69,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10279,n'lehms',8,'8/13/1996','9/10/1996','8/16/1996',2,25.83,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10280,n'bergs',2,'8/14/1996','9/11/1996','9/12/1996',1,8.98,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10281,n'romey',4,'8/14/1996','8/28/1996','8/21/1996',1,2.94,
	n'romero y tomillo',n'gran vía, 1',n'madrid',
	null,n'28001',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10282,n'romey',4,'8/15/1996','9/12/1996','8/21/1996',1,12.69,
	n'romero y tomillo',n'gran vía, 1',n'madrid',
	null,n'28001',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10283,n'lilas',3,'8/16/1996','9/13/1996','8/23/1996',3,84.81,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10284,n'lehms',4,'8/19/1996','9/16/1996','8/27/1996',1,76.56,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10285,n'quick',1,'8/20/1996','9/17/1996','8/26/1996',2,76.83,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10286,n'quick',8,'8/21/1996','9/18/1996','8/30/1996',3,229.24,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10287,n'ricar',8,'8/22/1996','9/19/1996','8/28/1996',3,12.76,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10288,n'reggc',4,'8/23/1996','9/20/1996','9/3/1996',1,7.45,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10289,n'bsbev',7,'8/26/1996','9/23/1996','8/28/1996',3,22.77,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10290,n'commi',8,'8/27/1996','9/24/1996','9/3/1996',1,79.70,
	n'comércio mineiro',n'av. dos lusíadas, 23',n'sao paulo',
	n'sp',n'05432-043',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10291,n'quede',6,'8/27/1996','9/24/1996','9/4/1996',2,6.40,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10292,n'tradh',1,'8/28/1996','9/25/1996','9/2/1996',2,1.35,
	n'tradiçao hipermercados',n'av. inês de castro, 414',n'sao paulo',
	n'sp',n'05634-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10293,n'tortu',1,'8/29/1996','9/26/1996','9/11/1996',3,21.18,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10294,n'rattc',4,'8/30/1996','9/27/1996','9/5/1996',2,147.26,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10295,n'vinet',2,'9/2/1996','9/30/1996','9/10/1996',2,1.15,
	n'vins et alcools chevalier',n'59 rue de l''abbaye',n'reims',
	null,n'51100',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10296,n'lilas',6,'9/3/1996','10/1/1996','9/11/1996',1,0.12,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10297,n'blonp',5,'9/4/1996','10/16/1996','9/10/1996',2,5.74,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10298,n'hungo',6,'9/5/1996','10/3/1996','9/11/1996',2,168.22,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10299,n'ricar',4,'9/6/1996','10/4/1996','9/13/1996',2,29.76,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10300,n'magaa',2,'9/9/1996','10/7/1996','9/18/1996',2,17.68,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10301,n'wandk',8,'9/9/1996','10/7/1996','9/17/1996',2,45.08,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10302,n'suprd',4,'9/10/1996','10/8/1996','10/9/1996',2,6.27,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10303,n'godos',7,'9/11/1996','10/9/1996','9/18/1996',2,107.83,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10304,n'tortu',1,'9/12/1996','10/10/1996','9/17/1996',2,63.79,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10305,n'oldwo',8,'9/13/1996','10/11/1996','10/9/1996',3,257.62,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10306,n'romey',1,'9/16/1996','10/14/1996','9/23/1996',3,7.56,
	n'romero y tomillo',n'gran vía, 1',n'madrid',
	null,n'28001',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10307,n'lonep',2,'9/17/1996','10/15/1996','9/25/1996',2,0.56,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10308,n'anatr',7,'9/18/1996','10/16/1996','9/24/1996',3,1.61,
	n'ana trujillo emparedados y helados',n'avda. de la constitución 2222',n'méxico d.f.',
	null,n'05021',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10309,n'hungo',3,'9/19/1996','10/17/1996','10/23/1996',1,47.30,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10310,n'thebi',8,'9/20/1996','10/18/1996','9/27/1996',2,17.52,
	n'the big cheese',n'89 jefferson way suite 2',n'portland',
	n'or',n'97201',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10311,n'dumon',1,'9/20/1996','10/4/1996','9/26/1996',3,24.69,
	n'du monde entier',n'67, rue des cinquante otages',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10312,n'wandk',2,'9/23/1996','10/21/1996','10/3/1996',2,40.26,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10313,n'quick',2,'9/24/1996','10/22/1996','10/4/1996',2,1.96,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10314,n'rattc',1,'9/25/1996','10/23/1996','10/4/1996',2,74.16,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10315,n'islat',4,'9/26/1996','10/24/1996','10/3/1996',2,41.76,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10316,n'rattc',1,'9/27/1996','10/25/1996','10/8/1996',3,150.15,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10317,n'lonep',6,'9/30/1996','10/28/1996','10/10/1996',1,12.69,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10318,n'islat',8,'10/1/1996','10/29/1996','10/4/1996',2,4.73,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10319,n'tortu',7,'10/2/1996','10/30/1996','10/11/1996',3,64.50,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10320,n'warth',5,'10/3/1996','10/17/1996','10/18/1996',3,34.57,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10321,n'islat',3,'10/3/1996','10/31/1996','10/11/1996',2,3.43,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10322,n'peric',7,'10/4/1996','11/1/1996','10/23/1996',3,0.40,
	n'pericles comidas clásicas',n'calle dr. jorge cash 321',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10323,n'koene',4,'10/7/1996','11/4/1996','10/14/1996',1,4.88,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10324,n'savea',9,'10/8/1996','11/5/1996','10/10/1996',1,214.27,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10325,n'koene',1,'10/9/1996','10/23/1996','10/14/1996',3,64.86,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10326,n'bolid',4,'10/10/1996','11/7/1996','10/14/1996',2,77.92,
	n'bólido comidas preparadas',n'c/ araquil, 67',n'madrid',
	null,n'28023',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10327,n'folko',2,'10/11/1996','11/8/1996','10/14/1996',1,63.36,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10328,n'furib',4,'10/14/1996','11/11/1996','10/17/1996',3,87.03,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10329,n'splir',4,'10/15/1996','11/26/1996','10/23/1996',2,191.67,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10330,n'lilas',3,'10/16/1996','11/13/1996','10/28/1996',1,12.75,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10331,n'bonap',9,'10/16/1996','11/27/1996','10/21/1996',1,10.19,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10332,n'merep',3,'10/17/1996','11/28/1996','10/21/1996',2,52.84,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10333,n'warth',5,'10/18/1996','11/15/1996','10/25/1996',3,0.59,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10334,n'victe',8,'10/21/1996','11/18/1996','10/28/1996',2,8.56,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10335,n'hungo',7,'10/22/1996','11/19/1996','10/24/1996',2,42.11,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10336,n'prini',7,'10/23/1996','11/20/1996','10/25/1996',2,15.51,
	n'princesa isabel vinhos',n'estrada da saúde n. 58',n'lisboa',
	null,n'1756',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10337,n'frank',4,'10/24/1996','11/21/1996','10/29/1996',3,108.26,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10338,n'oldwo',4,'10/25/1996','11/22/1996','10/29/1996',3,84.21,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10339,n'merep',2,'10/28/1996','11/25/1996','11/4/1996',2,15.66,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10340,n'bonap',1,'10/29/1996','11/26/1996','11/8/1996',3,166.31,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10341,n'simob',7,'10/29/1996','11/26/1996','11/5/1996',3,26.78,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10342,n'frank',4,'10/30/1996','11/13/1996','11/4/1996',2,54.83,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10343,n'lehms',4,'10/31/1996','11/28/1996','11/6/1996',1,110.37,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10344,n'whitc',4,'11/1/1996','11/29/1996','11/5/1996',2,23.29,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10345,n'quick',2,'11/4/1996','12/2/1996','11/11/1996',2,249.06,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10346,n'rattc',3,'11/5/1996','12/17/1996','11/8/1996',3,142.08,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10347,n'famia',4,'11/6/1996','12/4/1996','11/8/1996',3,3.10,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10348,n'wandk',4,'11/7/1996','12/5/1996','11/15/1996',2,0.78,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10349,n'splir',7,'11/8/1996','12/6/1996','11/15/1996',1,8.63,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10350,n'lamai',6,'11/11/1996','12/9/1996','12/3/1996',2,64.19,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10351,n'ernsh',1,'11/11/1996','12/9/1996','11/20/1996',1,162.33,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10352,n'furib',3,'11/12/1996','11/26/1996','11/18/1996',3,1.30,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10353,n'picco',7,'11/13/1996','12/11/1996','11/25/1996',3,360.63,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10354,n'peric',8,'11/14/1996','12/12/1996','11/20/1996',3,53.80,
	n'pericles comidas clásicas',n'calle dr. jorge cash 321',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10355,n'arout',6,'11/15/1996','12/13/1996','11/20/1996',1,41.95,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10356,n'wandk',6,'11/18/1996','12/16/1996','11/27/1996',2,36.71,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10357,n'lilas',1,'11/19/1996','12/17/1996','12/2/1996',3,34.88,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10358,n'lamai',5,'11/20/1996','12/18/1996','11/27/1996',1,19.64,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10359,n'seves',5,'11/21/1996','12/19/1996','11/26/1996',3,288.43,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10360,n'blonp',4,'11/22/1996','12/20/1996','12/2/1996',3,131.70,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10361,n'quick',1,'11/22/1996','12/20/1996','12/3/1996',2,183.17,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10362,n'bonap',3,'11/25/1996','12/23/1996','11/28/1996',1,96.04,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10363,n'dracd',4,'11/26/1996','12/24/1996','12/4/1996',3,30.54,
	n'drachenblut delikatessen',n'walserweg 21',n'aachen',
	null,n'52066',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10364,n'eastc',1,'11/26/1996','1/7/1997','12/4/1996',1,71.97,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10365,n'anton',3,'11/27/1996','12/25/1996','12/2/1996',2,22.00,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10366,n'galed',8,'11/28/1996','1/9/1997','12/30/1996',2,10.14,
	n'galería del gastronómo',n'rambla de cataluña, 23',n'barcelona',
	null,n'8022',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10367,n'vaffe',7,'11/28/1996','12/26/1996','12/2/1996',3,13.55,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10368,n'ernsh',2,'11/29/1996','12/27/1996','12/2/1996',2,101.95,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10369,n'splir',8,'12/2/1996','12/30/1996','12/9/1996',2,195.68,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10370,n'chops',6,'12/3/1996','12/31/1996','12/27/1996',2,1.17,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10371,n'lamai',1,'12/3/1996','12/31/1996','12/24/1996',1,0.45,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10372,n'queen',5,'12/4/1996','1/1/1997','12/9/1996',2,890.78,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10373,n'hungo',4,'12/5/1996','1/2/1997','12/11/1996',3,124.12,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10374,n'wolza',1,'12/5/1996','1/2/1997','12/9/1996',3,3.94,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10375,n'hungc',3,'12/6/1996','1/3/1997','12/9/1996',2,20.12,
	n'hungry coyote import store',n'city center plaza 516 main st.',n'elgin',
	n'or',n'97827',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10376,n'merep',1,'12/9/1996','1/6/1997','12/13/1996',2,20.39,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10377,n'seves',1,'12/9/1996','1/6/1997','12/13/1996',3,22.21,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10378,n'folko',5,'12/10/1996','1/7/1997','12/19/1996',3,5.44,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10379,n'quede',2,'12/11/1996','1/8/1997','12/13/1996',1,45.03,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10380,n'hungo',8,'12/12/1996','1/9/1997','1/16/1997',3,35.03,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10381,n'lilas',3,'12/12/1996','1/9/1997','12/13/1996',3,7.99,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10382,n'ernsh',4,'12/13/1996','1/10/1997','12/16/1996',1,94.77,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10383,n'arout',8,'12/16/1996','1/13/1997','12/18/1996',3,34.24,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10384,n'bergs',3,'12/16/1996','1/13/1997','12/20/1996',3,168.64,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10385,n'splir',1,'12/17/1996','1/14/1997','12/23/1996',2,30.96,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10386,n'famia',9,'12/18/1996','1/1/1997','12/25/1996',3,13.99,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10387,n'santg',1,'12/18/1996','1/15/1997','12/20/1996',2,93.63,
	n'santé gourmet',n'erling skakkes gate 78',n'stavern',
	null,n'4110',n'norway');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10388,n'seves',2,'12/19/1996','1/16/1997','12/20/1996',1,34.86,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10389,n'bottm',4,'12/20/1996','1/17/1997','12/24/1996',2,47.42,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10390,n'ernsh',6,'12/23/1996','1/20/1997','12/26/1996',1,126.38,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10391,n'dracd',3,'12/23/1996','1/20/1997','12/31/1996',3,5.45,
	n'drachenblut delikatessen',n'walserweg 21',n'aachen',
	null,n'52066',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10392,n'picco',2,'12/24/1996','1/21/1997','1/1/1997',3,122.46,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10393,n'savea',1,'12/25/1996','1/22/1997','1/3/1997',3,126.56,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10394,n'hungc',1,'12/25/1996','1/22/1997','1/3/1997',3,30.34,
	n'hungry coyote import store',n'city center plaza 516 main st.',n'elgin',
	n'or',n'97827',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10395,n'hilaa',6,'12/26/1996','1/23/1997','1/3/1997',1,184.41,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10396,n'frank',1,'12/27/1996','1/10/1997','1/6/1997',3,135.35,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10397,n'prini',5,'12/27/1996','1/24/1997','1/2/1997',1,60.26,
	n'princesa isabel vinhos',n'estrada da saúde n. 58',n'lisboa',
	null,n'1756',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10398,n'savea',2,'12/30/1996','1/27/1997','1/9/1997',3,89.16,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10399,n'vaffe',8,'12/31/1996','1/14/1997','1/8/1997',3,27.36,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10400,n'eastc',1,'1/1/1997','1/29/1997','1/16/1997',3,83.93,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10401,n'rattc',1,'1/1/1997','1/29/1997','1/10/1997',1,12.51,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10402,n'ernsh',8,'1/2/1997','2/13/1997','1/10/1997',2,67.88,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10403,n'ernsh',4,'1/3/1997','1/31/1997','1/9/1997',3,73.79,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10404,n'magaa',2,'1/3/1997','1/31/1997','1/8/1997',1,155.97,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10405,n'linod',1,'1/6/1997','2/3/1997','1/22/1997',1,34.82,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10406,n'queen',7,'1/7/1997','2/18/1997','1/13/1997',1,108.04,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10407,n'ottik',2,'1/7/1997','2/4/1997','1/30/1997',2,91.48,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10408,n'folig',8,'1/8/1997','2/5/1997','1/14/1997',1,11.26,
	n'folies gourmandes',n'184, chaussée de tournai',n'lille',
	null,n'59000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10409,n'ocean',3,'1/9/1997','2/6/1997','1/14/1997',1,29.83,
	n'océano atlántico ltda.',n'ing. gustavo moncada 8585 piso 20-a',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10410,n'bottm',3,'1/10/1997','2/7/1997','1/15/1997',3,2.40,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10411,n'bottm',9,'1/10/1997','2/7/1997','1/21/1997',3,23.65,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10412,n'warth',8,'1/13/1997','2/10/1997','1/15/1997',2,3.77,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10413,n'lamai',3,'1/14/1997','2/11/1997','1/16/1997',2,95.66,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10414,n'famia',2,'1/14/1997','2/11/1997','1/17/1997',3,21.48,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10415,n'hungc',3,'1/15/1997','2/12/1997','1/24/1997',1,0.20,
	n'hungry coyote import store',n'city center plaza 516 main st.',n'elgin',
	n'or',n'97827',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10416,n'warth',8,'1/16/1997','2/13/1997','1/27/1997',3,22.72,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10417,n'simob',4,'1/16/1997','2/13/1997','1/28/1997',3,70.29,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10418,n'quick',4,'1/17/1997','2/14/1997','1/24/1997',1,17.55,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10419,n'ricsu',4,'1/20/1997','2/17/1997','1/30/1997',2,137.35,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10420,n'welli',3,'1/21/1997','2/18/1997','1/27/1997',1,44.12,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10421,n'quede',8,'1/21/1997','3/4/1997','1/27/1997',1,99.23,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10422,n'frans',2,'1/22/1997','2/19/1997','1/31/1997',1,3.02,
	n'franchi s.p.a.',n'via monte bianco 34',n'torino',
	null,n'10100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10423,n'gourl',6,'1/23/1997','2/6/1997','2/24/1997',3,24.50,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10424,n'merep',7,'1/23/1997','2/20/1997','1/27/1997',2,370.61,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10425,n'lamai',6,'1/24/1997','2/21/1997','2/14/1997',2,7.93,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10426,n'galed',4,'1/27/1997','2/24/1997','2/6/1997',1,18.69,
	n'galería del gastronómo',n'rambla de cataluña, 23',n'barcelona',
	null,n'8022',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10427,n'picco',4,'1/27/1997','2/24/1997','3/3/1997',2,31.29,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10428,n'reggc',7,'1/28/1997','2/25/1997','2/4/1997',1,11.09,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10429,n'hungo',3,'1/29/1997','3/12/1997','2/7/1997',2,56.63,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10430,n'ernsh',4,'1/30/1997','2/13/1997','2/3/1997',1,458.78,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10431,n'bottm',4,'1/30/1997','2/13/1997','2/7/1997',2,44.17,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10432,n'splir',3,'1/31/1997','2/14/1997','2/7/1997',2,4.34,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10433,n'prini',3,'2/3/1997','3/3/1997','3/4/1997',3,73.83,
	n'princesa isabel vinhos',n'estrada da saúde n. 58',n'lisboa',
	null,n'1756',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10434,n'folko',3,'2/3/1997','3/3/1997','2/13/1997',2,17.92,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10435,n'consh',8,'2/4/1997','3/18/1997','2/7/1997',2,9.21,
	n'consolidated holdings',n'berkeley gardens 12  brewery',n'london',
	null,n'wx1 6lt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10436,n'blonp',3,'2/5/1997','3/5/1997','2/11/1997',2,156.66,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10437,n'warth',8,'2/5/1997','3/5/1997','2/12/1997',1,19.97,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10438,n'tomsp',3,'2/6/1997','3/6/1997','2/14/1997',2,8.24,
	n'toms spezialitäten',n'luisenstr. 48',n'münster',
	null,n'44087',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10439,n'merep',6,'2/7/1997','3/7/1997','2/10/1997',3,4.07,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10440,n'savea',4,'2/10/1997','3/10/1997','2/28/1997',2,86.53,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10441,n'oldwo',3,'2/10/1997','3/24/1997','3/14/1997',2,73.02,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10442,n'ernsh',3,'2/11/1997','3/11/1997','2/18/1997',2,47.94,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10443,n'reggc',8,'2/12/1997','3/12/1997','2/14/1997',1,13.95,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10444,n'bergs',3,'2/12/1997','3/12/1997','2/21/1997',3,3.50,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10445,n'bergs',3,'2/13/1997','3/13/1997','2/20/1997',1,9.30,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10446,n'tomsp',6,'2/14/1997','3/14/1997','2/19/1997',1,14.68,
	n'toms spezialitäten',n'luisenstr. 48',n'münster',
	null,n'44087',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10447,n'ricar',4,'2/14/1997','3/14/1997','3/7/1997',2,68.66,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10448,n'ranch',4,'2/17/1997','3/17/1997','2/24/1997',2,38.82,
	n'rancho grande',n'av. del libertador 900',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10449,n'blonp',3,'2/18/1997','3/18/1997','2/27/1997',2,53.30,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10450,n'victe',8,'2/19/1997','3/19/1997','3/11/1997',2,7.23,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10451,n'quick',4,'2/19/1997','3/5/1997','3/12/1997',3,189.09,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10452,n'savea',8,'2/20/1997','3/20/1997','2/26/1997',1,140.26,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10453,n'arout',1,'2/21/1997','3/21/1997','2/26/1997',2,25.36,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10454,n'lamai',4,'2/21/1997','3/21/1997','2/25/1997',3,2.74,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10455,n'warth',8,'2/24/1997','4/7/1997','3/3/1997',2,180.45,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10456,n'koene',8,'2/25/1997','4/8/1997','2/28/1997',2,8.12,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10457,n'koene',2,'2/25/1997','3/25/1997','3/3/1997',1,11.57,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10458,n'suprd',7,'2/26/1997','3/26/1997','3/4/1997',3,147.06,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10459,n'victe',4,'2/27/1997','3/27/1997','2/28/1997',2,25.09,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10460,n'folko',8,'2/28/1997','3/28/1997','3/3/1997',1,16.27,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10461,n'lilas',1,'2/28/1997','3/28/1997','3/5/1997',3,148.61,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10462,n'consh',2,'3/3/1997','3/31/1997','3/18/1997',1,6.17,
	n'consolidated holdings',n'berkeley gardens 12  brewery',n'london',
	null,n'wx1 6lt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10463,n'suprd',5,'3/4/1997','4/1/1997','3/6/1997',3,14.78,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10464,n'furib',4,'3/4/1997','4/1/1997','3/14/1997',2,89.00,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10465,n'vaffe',1,'3/5/1997','4/2/1997','3/14/1997',3,145.04,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10466,n'commi',4,'3/6/1997','4/3/1997','3/13/1997',1,11.93,
	n'comércio mineiro',n'av. dos lusíadas, 23',n'sao paulo',
	n'sp',n'05432-043',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10467,n'magaa',8,'3/6/1997','4/3/1997','3/11/1997',2,4.93,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10468,n'koene',3,'3/7/1997','4/4/1997','3/12/1997',3,44.12,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10469,n'whitc',1,'3/10/1997','4/7/1997','3/14/1997',1,60.18,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10470,n'bonap',4,'3/11/1997','4/8/1997','3/14/1997',2,64.56,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10471,n'bsbev',2,'3/11/1997','4/8/1997','3/18/1997',3,45.59,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10472,n'seves',8,'3/12/1997','4/9/1997','3/19/1997',1,4.20,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10473,n'islat',1,'3/13/1997','3/27/1997','3/21/1997',3,16.37,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10474,n'peric',5,'3/13/1997','4/10/1997','3/21/1997',2,83.49,
	n'pericles comidas clásicas',n'calle dr. jorge cash 321',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10475,n'suprd',9,'3/14/1997','4/11/1997','4/4/1997',1,68.52,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10476,n'hilaa',8,'3/17/1997','4/14/1997','3/24/1997',3,4.41,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10477,n'prini',5,'3/17/1997','4/14/1997','3/25/1997',2,13.02,
	n'princesa isabel vinhos',n'estrada da saúde n. 58',n'lisboa',
	null,n'1756',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10478,n'victe',2,'3/18/1997','4/1/1997','3/26/1997',3,4.81,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10479,n'rattc',3,'3/19/1997','4/16/1997','3/21/1997',3,708.95,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10480,n'folig',6,'3/20/1997','4/17/1997','3/24/1997',2,1.35,
	n'folies gourmandes',n'184, chaussée de tournai',n'lille',
	null,n'59000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10481,n'ricar',8,'3/20/1997','4/17/1997','3/25/1997',2,64.33,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10482,n'lazyk',1,'3/21/1997','4/18/1997','4/10/1997',3,7.48,
	n'lazy k kountry store',n'12 orchestra terrace',n'walla walla',
	n'wa',n'99362',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10483,n'whitc',7,'3/24/1997','4/21/1997','4/25/1997',2,15.28,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10484,n'bsbev',3,'3/24/1997','4/21/1997','4/1/1997',3,6.88,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10485,n'linod',4,'3/25/1997','4/8/1997','3/31/1997',2,64.45,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10486,n'hilaa',1,'3/26/1997','4/23/1997','4/2/1997',2,30.53,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10487,n'queen',2,'3/26/1997','4/23/1997','3/28/1997',2,71.07,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10488,n'frank',8,'3/27/1997','4/24/1997','4/2/1997',2,4.93,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10489,n'picco',6,'3/28/1997','4/25/1997','4/9/1997',2,5.29,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10490,n'hilaa',7,'3/31/1997','4/28/1997','4/3/1997',2,210.19,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10491,n'furib',8,'3/31/1997','4/28/1997','4/8/1997',3,16.96,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10492,n'bottm',3,'4/1/1997','4/29/1997','4/11/1997',1,62.89,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10493,n'lamai',4,'4/2/1997','4/30/1997','4/10/1997',3,10.64,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10494,n'commi',4,'4/2/1997','4/30/1997','4/9/1997',2,65.99,
	n'comércio mineiro',n'av. dos lusíadas, 23',n'sao paulo',
	n'sp',n'05432-043',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10495,n'laugb',3,'4/3/1997','5/1/1997','4/11/1997',3,4.65,
	n'laughing bacchus wine cellars',n'2319 elm st.',n'vancouver',
	n'bc',n'v3f 2k1',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10496,n'tradh',7,'4/4/1997','5/2/1997','4/7/1997',2,46.77,
	n'tradiçao hipermercados',n'av. inês de castro, 414',n'sao paulo',
	n'sp',n'05634-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10497,n'lehms',7,'4/4/1997','5/2/1997','4/7/1997',1,36.21,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10498,n'hilaa',8,'4/7/1997','5/5/1997','4/11/1997',2,29.75,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10499,n'lilas',4,'4/8/1997','5/6/1997','4/16/1997',2,102.02,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10500,n'lamai',6,'4/9/1997','5/7/1997','4/17/1997',1,42.68,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10501,n'blaus',9,'4/9/1997','5/7/1997','4/16/1997',3,8.85,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10502,n'peric',2,'4/10/1997','5/8/1997','4/29/1997',1,69.32,
	n'pericles comidas clásicas',n'calle dr. jorge cash 321',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10503,n'hungo',6,'4/11/1997','5/9/1997','4/16/1997',2,16.74,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10504,n'whitc',4,'4/11/1997','5/9/1997','4/18/1997',3,59.13,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10505,n'merep',3,'4/14/1997','5/12/1997','4/21/1997',3,7.13,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10506,n'koene',9,'4/15/1997','5/13/1997','5/2/1997',2,21.19,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10507,n'anton',7,'4/15/1997','5/13/1997','4/22/1997',1,47.45,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10508,n'ottik',1,'4/16/1997','5/14/1997','5/13/1997',2,4.99,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10509,n'blaus',4,'4/17/1997','5/15/1997','4/29/1997',1,0.15,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10510,n'savea',6,'4/18/1997','5/16/1997','4/28/1997',3,367.63,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10511,n'bonap',4,'4/18/1997','5/16/1997','4/21/1997',3,350.64,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10512,n'famia',7,'4/21/1997','5/19/1997','4/24/1997',2,3.53,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10513,n'wandk',7,'4/22/1997','6/3/1997','4/28/1997',1,105.65,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10514,n'ernsh',3,'4/22/1997','5/20/1997','5/16/1997',2,789.95,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10515,n'quick',2,'4/23/1997','5/7/1997','5/23/1997',1,204.47,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10516,n'hungo',2,'4/24/1997','5/22/1997','5/1/1997',3,62.78,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10517,n'norts',3,'4/24/1997','5/22/1997','4/29/1997',3,32.07,
	n'north/south',n'south house 300 queensbridge',n'london',
	null,n'sw7 1rz',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10518,n'tortu',4,'4/25/1997','5/9/1997','5/5/1997',2,218.15,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10519,n'chops',6,'4/28/1997','5/26/1997','5/1/1997',3,91.76,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10520,n'santg',7,'4/29/1997','5/27/1997','5/1/1997',1,13.37,
	n'santé gourmet',n'erling skakkes gate 78',n'stavern',
	null,n'4110',n'norway');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10521,n'cactu',8,'4/29/1997','5/27/1997','5/2/1997',2,17.22,
	n'cactus comidas para llevar',n'cerrito 333',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10522,n'lehms',4,'4/30/1997','5/28/1997','5/6/1997',1,45.33,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10523,n'seves',7,'5/1/1997','5/29/1997','5/30/1997',2,77.63,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10524,n'bergs',1,'5/1/1997','5/29/1997','5/7/1997',2,244.79,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10525,n'bonap',1,'5/2/1997','5/30/1997','5/23/1997',2,11.06,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10526,n'warth',4,'5/5/1997','6/2/1997','5/15/1997',2,58.59,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10527,n'quick',7,'5/5/1997','6/2/1997','5/7/1997',1,41.90,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10528,n'greal',6,'5/6/1997','5/20/1997','5/9/1997',2,3.35,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10529,n'maisd',5,'5/7/1997','6/4/1997','5/9/1997',2,66.69,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10530,n'picco',3,'5/8/1997','6/5/1997','5/12/1997',2,339.22,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10531,n'ocean',7,'5/8/1997','6/5/1997','5/19/1997',1,8.12,
	n'océano atlántico ltda.',n'ing. gustavo moncada 8585 piso 20-a',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10532,n'eastc',7,'5/9/1997','6/6/1997','5/12/1997',3,74.46,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10533,n'folko',8,'5/12/1997','6/9/1997','5/22/1997',1,188.04,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10534,n'lehms',8,'5/12/1997','6/9/1997','5/14/1997',2,27.94,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10535,n'anton',4,'5/13/1997','6/10/1997','5/21/1997',1,15.64,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10536,n'lehms',3,'5/14/1997','6/11/1997','6/6/1997',2,58.88,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10537,n'ricsu',1,'5/14/1997','5/28/1997','5/19/1997',1,78.85,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10538,n'bsbev',9,'5/15/1997','6/12/1997','5/16/1997',3,4.87,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10539,n'bsbev',6,'5/16/1997','6/13/1997','5/23/1997',3,12.36,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10540,n'quick',3,'5/19/1997','6/16/1997','6/13/1997',3,1007.64,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10541,n'hanar',2,'5/19/1997','6/16/1997','5/29/1997',1,68.65,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10542,n'koene',1,'5/20/1997','6/17/1997','5/26/1997',3,10.95,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10543,n'lilas',8,'5/21/1997','6/18/1997','5/23/1997',2,48.17,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10544,n'lonep',4,'5/21/1997','6/18/1997','5/30/1997',1,24.91,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10545,n'lazyk',8,'5/22/1997','6/19/1997','6/26/1997',2,11.92,
	n'lazy k kountry store',n'12 orchestra terrace',n'walla walla',
	n'wa',n'99362',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10546,n'victe',1,'5/23/1997','6/20/1997','5/27/1997',3,194.72,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10547,n'seves',3,'5/23/1997','6/20/1997','6/2/1997',2,178.43,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10548,n'tomsp',3,'5/26/1997','6/23/1997','6/2/1997',2,1.43,
	n'toms spezialitäten',n'luisenstr. 48',n'münster',
	null,n'44087',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10549,n'quick',5,'5/27/1997','6/10/1997','5/30/1997',1,171.24,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10550,n'godos',7,'5/28/1997','6/25/1997','6/6/1997',3,4.32,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10551,n'furib',4,'5/28/1997','7/9/1997','6/6/1997',3,72.95,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10552,n'hilaa',2,'5/29/1997','6/26/1997','6/5/1997',1,83.22,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10553,n'warth',2,'5/30/1997','6/27/1997','6/3/1997',2,149.49,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10554,n'ottik',4,'5/30/1997','6/27/1997','6/5/1997',3,120.97,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10555,n'savea',6,'6/2/1997','6/30/1997','6/4/1997',3,252.49,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10556,n'simob',2,'6/3/1997','7/15/1997','6/13/1997',1,9.80,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10557,n'lehms',9,'6/3/1997','6/17/1997','6/6/1997',2,96.72,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10558,n'arout',1,'6/4/1997','7/2/1997','6/10/1997',2,72.97,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10559,n'blonp',6,'6/5/1997','7/3/1997','6/13/1997',1,8.05,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10560,n'frank',8,'6/6/1997','7/4/1997','6/9/1997',1,36.65,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10561,n'folko',2,'6/6/1997','7/4/1997','6/9/1997',2,242.21,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10562,n'reggc',1,'6/9/1997','7/7/1997','6/12/1997',1,22.95,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10563,n'ricar',2,'6/10/1997','7/22/1997','6/24/1997',2,60.43,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10564,n'rattc',4,'6/10/1997','7/8/1997','6/16/1997',3,13.75,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10565,n'merep',8,'6/11/1997','7/9/1997','6/18/1997',2,7.15,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10566,n'blonp',9,'6/12/1997','7/10/1997','6/18/1997',1,88.40,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10567,n'hungo',1,'6/12/1997','7/10/1997','6/17/1997',1,33.97,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10568,n'galed',3,'6/13/1997','7/11/1997','7/9/1997',3,6.54,
	n'galería del gastronómo',n'rambla de cataluña, 23',n'barcelona',
	null,n'8022',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10569,n'rattc',5,'6/16/1997','7/14/1997','7/11/1997',1,58.98,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10570,n'merep',3,'6/17/1997','7/15/1997','6/19/1997',3,188.99,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10571,n'ernsh',8,'6/17/1997','7/29/1997','7/4/1997',3,26.06,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10572,n'bergs',3,'6/18/1997','7/16/1997','6/25/1997',2,116.43,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10573,n'anton',7,'6/19/1997','7/17/1997','6/20/1997',3,84.84,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10574,n'traih',4,'6/19/1997','7/17/1997','6/30/1997',2,37.60,
	n'trail''s head gourmet provisioners',n'722 davinci blvd.',n'kirkland',
	n'wa',n'98034',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10575,n'morgk',5,'6/20/1997','7/4/1997','6/30/1997',1,127.34,
	n'morgenstern gesundkost',n'heerstr. 22',n'leipzig',
	null,n'04179',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10576,n'tortu',3,'6/23/1997','7/7/1997','6/30/1997',3,18.56,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10577,n'traih',9,'6/23/1997','8/4/1997','6/30/1997',2,25.41,
	n'trail''s head gourmet provisioners',n'722 davinci blvd.',n'kirkland',
	n'wa',n'98034',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10578,n'bsbev',4,'6/24/1997','7/22/1997','7/25/1997',3,29.60,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10579,n'letss',1,'6/25/1997','7/23/1997','7/4/1997',2,13.73,
	n'let''s stop n shop',n'87 polk st. suite 5',n'san francisco',
	n'ca',n'94117',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10580,n'ottik',4,'6/26/1997','7/24/1997','7/1/1997',3,75.89,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10581,n'famia',3,'6/26/1997','7/24/1997','7/2/1997',1,3.01,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10582,n'blaus',3,'6/27/1997','7/25/1997','7/14/1997',2,27.71,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10583,n'warth',2,'6/30/1997','7/28/1997','7/4/1997',2,7.28,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10584,n'blonp',4,'6/30/1997','7/28/1997','7/4/1997',1,59.14,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10585,n'welli',7,'7/1/1997','7/29/1997','7/10/1997',1,13.41,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10586,n'reggc',9,'7/2/1997','7/30/1997','7/9/1997',1,0.48,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10587,n'quede',1,'7/2/1997','7/30/1997','7/9/1997',1,62.52,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10588,n'quick',2,'7/3/1997','7/31/1997','7/10/1997',3,194.67,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10589,n'greal',8,'7/4/1997','8/1/1997','7/14/1997',2,4.42,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10590,n'merep',4,'7/7/1997','8/4/1997','7/14/1997',3,44.77,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10591,n'vaffe',1,'7/7/1997','7/21/1997','7/16/1997',1,55.92,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10592,n'lehms',3,'7/8/1997','8/5/1997','7/16/1997',1,32.10,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10593,n'lehms',7,'7/9/1997','8/6/1997','8/13/1997',2,174.20,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10594,n'oldwo',3,'7/9/1997','8/6/1997','7/16/1997',2,5.24,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10595,n'ernsh',2,'7/10/1997','8/7/1997','7/14/1997',1,96.78,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10596,n'whitc',8,'7/11/1997','8/8/1997','8/12/1997',1,16.34,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10597,n'picco',7,'7/11/1997','8/8/1997','7/18/1997',3,35.12,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10598,n'rattc',1,'7/14/1997','8/11/1997','7/18/1997',3,44.42,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10599,n'bsbev',6,'7/15/1997','8/26/1997','7/21/1997',3,29.98,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10600,n'hungc',4,'7/16/1997','8/13/1997','7/21/1997',1,45.13,
	n'hungry coyote import store',n'city center plaza 516 main st.',n'elgin',
	n'or',n'97827',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10601,n'hilaa',7,'7/16/1997','8/27/1997','7/22/1997',1,58.30,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10602,n'vaffe',8,'7/17/1997','8/14/1997','7/22/1997',2,2.92,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10603,n'savea',8,'7/18/1997','8/15/1997','8/8/1997',2,48.77,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10604,n'furib',1,'7/18/1997','8/15/1997','7/29/1997',1,7.46,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10605,n'merep',1,'7/21/1997','8/18/1997','7/29/1997',2,379.13,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10606,n'tradh',4,'7/22/1997','8/19/1997','7/31/1997',3,79.40,
	n'tradiçao hipermercados',n'av. inês de castro, 414',n'sao paulo',
	n'sp',n'05634-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10607,n'savea',5,'7/22/1997','8/19/1997','7/25/1997',1,200.24,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10608,n'tomsp',4,'7/23/1997','8/20/1997','8/1/1997',2,27.79,
	n'toms spezialitäten',n'luisenstr. 48',n'münster',
	null,n'44087',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10609,n'dumon',7,'7/24/1997','8/21/1997','7/30/1997',2,1.85,
	n'du monde entier',n'67, rue des cinquante otages',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10610,n'lamai',8,'7/25/1997','8/22/1997','8/6/1997',1,26.78,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10611,n'wolza',6,'7/25/1997','8/22/1997','8/1/1997',2,80.65,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10612,n'savea',1,'7/28/1997','8/25/1997','8/1/1997',2,544.08,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10613,n'hilaa',4,'7/29/1997','8/26/1997','8/1/1997',2,8.11,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10614,n'blaus',8,'7/29/1997','8/26/1997','8/1/1997',3,1.93,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10615,n'wilmk',2,'7/30/1997','8/27/1997','8/6/1997',3,0.75,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10616,n'greal',1,'7/31/1997','8/28/1997','8/5/1997',2,116.53,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10617,n'greal',4,'7/31/1997','8/28/1997','8/4/1997',2,18.53,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10618,n'merep',1,'8/1/1997','9/12/1997','8/8/1997',1,154.68,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10619,n'merep',3,'8/4/1997','9/1/1997','8/7/1997',3,91.05,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10620,n'laugb',2,'8/5/1997','9/2/1997','8/14/1997',3,0.94,
	n'laughing bacchus wine cellars',n'2319 elm st.',n'vancouver',
	n'bc',n'v3f 2k1',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10621,n'islat',4,'8/5/1997','9/2/1997','8/11/1997',2,23.73,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10622,n'ricar',4,'8/6/1997','9/3/1997','8/11/1997',3,50.97,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10623,n'frank',8,'8/7/1997','9/4/1997','8/12/1997',2,97.18,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10624,n'thecr',4,'8/7/1997','9/4/1997','8/19/1997',2,94.80,
	n'the cracker box',n'55 grizzly peak rd.',n'butte',
	n'mt',n'59801',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10625,n'anatr',3,'8/8/1997','9/5/1997','8/14/1997',1,43.90,
	n'ana trujillo emparedados y helados',n'avda. de la constitución 2222',n'méxico d.f.',
	null,n'05021',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10626,n'bergs',1,'8/11/1997','9/8/1997','8/20/1997',2,138.69,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10627,n'savea',8,'8/11/1997','9/22/1997','8/21/1997',3,107.46,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10628,n'blonp',4,'8/12/1997','9/9/1997','8/20/1997',3,30.36,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10629,n'godos',4,'8/12/1997','9/9/1997','8/20/1997',3,85.46,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10630,n'koene',1,'8/13/1997','9/10/1997','8/19/1997',2,32.35,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10631,n'lamai',8,'8/14/1997','9/11/1997','8/15/1997',1,0.87,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10632,n'wandk',8,'8/14/1997','9/11/1997','8/19/1997',1,41.38,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10633,n'ernsh',7,'8/15/1997','9/12/1997','8/18/1997',3,477.90,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10634,n'folig',4,'8/15/1997','9/12/1997','8/21/1997',3,487.38,
	n'folies gourmandes',n'184, chaussée de tournai',n'lille',
	null,n'59000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10635,n'magaa',8,'8/18/1997','9/15/1997','8/21/1997',3,47.46,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10636,n'warth',4,'8/19/1997','9/16/1997','8/26/1997',1,1.15,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10637,n'queen',6,'8/19/1997','9/16/1997','8/26/1997',1,201.29,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10638,n'linod',3,'8/20/1997','9/17/1997','9/1/1997',1,158.44,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10639,n'santg',7,'8/20/1997','9/17/1997','8/27/1997',3,38.64,
	n'santé gourmet',n'erling skakkes gate 78',n'stavern',
	null,n'4110',n'norway');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10640,n'wandk',4,'8/21/1997','9/18/1997','8/28/1997',1,23.55,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10641,n'hilaa',4,'8/22/1997','9/19/1997','8/26/1997',2,179.61,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10642,n'simob',7,'8/22/1997','9/19/1997','9/5/1997',3,41.89,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10643,n'alfki',6,'8/25/1997','9/22/1997','9/2/1997',1,29.46,
	n'alfreds futterkiste',n'obere str. 57',n'berlin',
	null,n'12209',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10644,n'welli',3,'8/25/1997','9/22/1997','9/1/1997',2,0.14,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10645,n'hanar',4,'8/26/1997','9/23/1997','9/2/1997',1,12.41,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10646,n'hungo',9,'8/27/1997','10/8/1997','9/3/1997',3,142.33,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10647,n'quede',4,'8/27/1997','9/10/1997','9/3/1997',2,45.54,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10648,n'ricar',5,'8/28/1997','10/9/1997','9/9/1997',2,14.25,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10649,n'maisd',5,'8/28/1997','9/25/1997','8/29/1997',3,6.20,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10650,n'famia',5,'8/29/1997','9/26/1997','9/3/1997',3,176.81,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10651,n'wandk',8,'9/1/1997','9/29/1997','9/11/1997',2,20.60,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10652,n'gourl',4,'9/1/1997','9/29/1997','9/8/1997',2,7.14,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10653,n'frank',1,'9/2/1997','9/30/1997','9/19/1997',1,93.25,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10654,n'bergs',5,'9/2/1997','9/30/1997','9/11/1997',1,55.26,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10655,n'reggc',1,'9/3/1997','10/1/1997','9/11/1997',2,4.41,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10656,n'greal',6,'9/4/1997','10/2/1997','9/10/1997',1,57.15,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10657,n'savea',2,'9/4/1997','10/2/1997','9/15/1997',2,352.69,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10658,n'quick',4,'9/5/1997','10/3/1997','9/8/1997',1,364.15,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10659,n'queen',7,'9/5/1997','10/3/1997','9/10/1997',2,105.81,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10660,n'hungc',8,'9/8/1997','10/6/1997','10/15/1997',1,111.29,
	n'hungry coyote import store',n'city center plaza 516 main st.',n'elgin',
	n'or',n'97827',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10661,n'hungo',7,'9/9/1997','10/7/1997','9/15/1997',3,17.55,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10662,n'lonep',3,'9/9/1997','10/7/1997','9/18/1997',2,1.28,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10663,n'bonap',2,'9/10/1997','9/24/1997','10/3/1997',2,113.15,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10664,n'furib',1,'9/10/1997','10/8/1997','9/19/1997',3,1.27,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10665,n'lonep',1,'9/11/1997','10/9/1997','9/17/1997',2,26.31,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10666,n'ricsu',7,'9/12/1997','10/10/1997','9/22/1997',2,232.42,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10667,n'ernsh',7,'9/12/1997','10/10/1997','9/19/1997',1,78.09,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10668,n'wandk',1,'9/15/1997','10/13/1997','9/23/1997',2,47.22,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10669,n'simob',2,'9/15/1997','10/13/1997','9/22/1997',1,24.39,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10670,n'frank',4,'9/16/1997','10/14/1997','9/18/1997',1,203.48,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10671,n'franr',1,'9/17/1997','10/15/1997','9/24/1997',1,30.34,
	n'france restauration',n'54, rue royale',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10672,n'bergs',9,'9/17/1997','10/1/1997','9/26/1997',2,95.75,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10673,n'wilmk',2,'9/18/1997','10/16/1997','9/19/1997',1,22.76,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10674,n'islat',4,'9/18/1997','10/16/1997','9/30/1997',2,0.90,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10675,n'frank',5,'9/19/1997','10/17/1997','9/23/1997',2,31.85,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10676,n'tortu',2,'9/22/1997','10/20/1997','9/29/1997',2,2.01,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10677,n'anton',1,'9/22/1997','10/20/1997','9/26/1997',3,4.03,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10678,n'savea',7,'9/23/1997','10/21/1997','10/16/1997',3,388.98,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10679,n'blonp',8,'9/23/1997','10/21/1997','9/30/1997',3,27.94,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10680,n'oldwo',1,'9/24/1997','10/22/1997','9/26/1997',1,26.61,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10681,n'greal',3,'9/25/1997','10/23/1997','9/30/1997',3,76.13,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10682,n'anton',3,'9/25/1997','10/23/1997','10/1/1997',2,36.13,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10683,n'dumon',2,'9/26/1997','10/24/1997','10/1/1997',1,4.40,
	n'du monde entier',n'67, rue des cinquante otages',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10684,n'ottik',3,'9/26/1997','10/24/1997','9/30/1997',1,145.63,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10685,n'gourl',4,'9/29/1997','10/13/1997','10/3/1997',2,33.75,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10686,n'picco',2,'9/30/1997','10/28/1997','10/8/1997',1,96.50,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10687,n'hungo',9,'9/30/1997','10/28/1997','10/30/1997',2,296.43,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10688,n'vaffe',4,'10/1/1997','10/15/1997','10/7/1997',2,299.09,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10689,n'bergs',1,'10/1/1997','10/29/1997','10/7/1997',2,13.42,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10690,n'hanar',1,'10/2/1997','10/30/1997','10/3/1997',1,15.80,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10691,n'quick',2,'10/3/1997','11/14/1997','10/22/1997',2,810.05,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10692,n'alfki',4,'10/3/1997','10/31/1997','10/13/1997',2,61.02,
	n'alfred''s futterkiste',n'obere str. 57',n'berlin',
	null,n'12209',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10693,n'whitc',3,'10/6/1997','10/20/1997','10/10/1997',3,139.34,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10694,n'quick',8,'10/6/1997','11/3/1997','10/9/1997',3,398.36,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10695,n'wilmk',7,'10/7/1997','11/18/1997','10/14/1997',1,16.72,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10696,n'whitc',8,'10/8/1997','11/19/1997','10/14/1997',3,102.55,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10697,n'linod',3,'10/8/1997','11/5/1997','10/14/1997',1,45.52,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10698,n'ernsh',4,'10/9/1997','11/6/1997','10/17/1997',1,272.47,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10699,n'morgk',3,'10/9/1997','11/6/1997','10/13/1997',3,0.58,
	n'morgenstern gesundkost',n'heerstr. 22',n'leipzig',
	null,n'04179',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10700,n'savea',3,'10/10/1997','11/7/1997','10/16/1997',1,65.10,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10701,n'hungo',6,'10/13/1997','10/27/1997','10/15/1997',3,220.31,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10702,n'alfki',4,'10/13/1997','11/24/1997','10/21/1997',1,23.94,
	n'alfred''s futterkiste',n'obere str. 57',n'berlin',
	null,n'12209',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10703,n'folko',6,'10/14/1997','11/11/1997','10/20/1997',2,152.30,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10704,n'queen',6,'10/14/1997','11/11/1997','11/7/1997',1,4.78,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10705,n'hilaa',9,'10/15/1997','11/12/1997','11/18/1997',2,3.52,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10706,n'oldwo',8,'10/16/1997','11/13/1997','10/21/1997',3,135.63,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10707,n'arout',4,'10/16/1997','10/30/1997','10/23/1997',3,21.74,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10708,n'thebi',6,'10/17/1997','11/28/1997','11/5/1997',2,2.96,
	n'the big cheese',n'89 jefferson way suite 2',n'portland',
	n'or',n'97201',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10709,n'gourl',1,'10/17/1997','11/14/1997','11/20/1997',3,210.80,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10710,n'frans',1,'10/20/1997','11/17/1997','10/23/1997',1,4.98,
	n'franchi s.p.a.',n'via monte bianco 34',n'torino',
	null,n'10100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10711,n'savea',5,'10/21/1997','12/2/1997','10/29/1997',2,52.41,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10712,n'hungo',3,'10/21/1997','11/18/1997','10/31/1997',1,89.93,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10713,n'savea',1,'10/22/1997','11/19/1997','10/24/1997',1,167.05,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10714,n'savea',5,'10/22/1997','11/19/1997','10/27/1997',3,24.49,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10715,n'bonap',3,'10/23/1997','11/6/1997','10/29/1997',1,63.20,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10716,n'ranch',4,'10/24/1997','11/21/1997','10/27/1997',2,22.57,
	n'rancho grande',n'av. del libertador 900',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10717,n'frank',1,'10/24/1997','11/21/1997','10/29/1997',2,59.25,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10718,n'koene',1,'10/27/1997','11/24/1997','10/29/1997',3,170.88,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10719,n'letss',8,'10/27/1997','11/24/1997','11/5/1997',2,51.44,
	n'let''s stop n shop',n'87 polk st. suite 5',n'san francisco',
	n'ca',n'94117',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10720,n'quede',8,'10/28/1997','11/11/1997','11/5/1997',2,9.53,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10721,n'quick',5,'10/29/1997','11/26/1997','10/31/1997',3,48.92,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10722,n'savea',8,'10/29/1997','12/10/1997','11/4/1997',1,74.58,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10723,n'whitc',3,'10/30/1997','11/27/1997','11/25/1997',1,21.72,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10724,n'merep',8,'10/30/1997','12/11/1997','11/5/1997',2,57.75,
	n'mère paillarde',n'43 rue st. laurent',n'montréal',
	n'québec',n'h1j 1c3',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10725,n'famia',4,'10/31/1997','11/28/1997','11/5/1997',3,10.83,
	n'familia arquibaldo',n'rua orós, 92',n'sao paulo',
	n'sp',n'05442-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10726,n'eastc',4,'11/3/1997','11/17/1997','12/5/1997',1,16.56,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10727,n'reggc',2,'11/3/1997','12/1/1997','12/5/1997',1,89.90,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10728,n'queen',4,'11/4/1997','12/2/1997','11/11/1997',2,58.33,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10729,n'linod',8,'11/4/1997','12/16/1997','11/14/1997',3,141.06,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10730,n'bonap',5,'11/5/1997','12/3/1997','11/14/1997',1,20.12,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10731,n'chops',7,'11/6/1997','12/4/1997','11/14/1997',1,96.65,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10732,n'bonap',3,'11/6/1997','12/4/1997','11/7/1997',1,16.97,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10733,n'bergs',1,'11/7/1997','12/5/1997','11/10/1997',3,110.11,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10734,n'gourl',2,'11/7/1997','12/5/1997','11/12/1997',3,1.63,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10735,n'letss',6,'11/10/1997','12/8/1997','11/21/1997',2,45.97,
	n'let''s stop n shop',n'87 polk st. suite 5',n'san francisco',
	n'ca',n'94117',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10736,n'hungo',9,'11/11/1997','12/9/1997','11/21/1997',2,44.10,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10737,n'vinet',2,'11/11/1997','12/9/1997','11/18/1997',2,7.79,
	n'vins et alcools chevalier',n'59 rue de l''abbaye',n'reims',
	null,n'51100',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10738,n'specd',2,'11/12/1997','12/10/1997','11/18/1997',1,2.91,
	n'spécialités du monde',n'25, rue lauriston',n'paris',
	null,n'75016',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10739,n'vinet',3,'11/12/1997','12/10/1997','11/17/1997',3,11.08,
	n'vins et alcools chevalier',n'59 rue de l''abbaye',n'reims',
	null,n'51100',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10740,n'whitc',4,'11/13/1997','12/11/1997','11/25/1997',2,81.88,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10741,n'arout',4,'11/14/1997','11/28/1997','11/18/1997',3,10.96,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10742,n'bottm',3,'11/14/1997','12/12/1997','11/18/1997',3,243.73,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10743,n'arout',1,'11/17/1997','12/15/1997','11/21/1997',2,23.72,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10744,n'vaffe',6,'11/17/1997','12/15/1997','11/24/1997',1,69.19,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10745,n'quick',9,'11/18/1997','12/16/1997','11/27/1997',1,3.52,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10746,n'chops',1,'11/19/1997','12/17/1997','11/21/1997',3,31.43,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10747,n'picco',6,'11/19/1997','12/17/1997','11/26/1997',1,117.33,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10748,n'savea',3,'11/20/1997','12/18/1997','11/28/1997',1,232.55,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10749,n'islat',4,'11/20/1997','12/18/1997','12/19/1997',2,61.53,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10750,n'warth',9,'11/21/1997','12/19/1997','11/24/1997',1,79.30,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10751,n'ricsu',3,'11/24/1997','12/22/1997','12/3/1997',3,130.79,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10752,n'norts',2,'11/24/1997','12/22/1997','11/28/1997',3,1.39,
	n'north/south',n'south house 300 queensbridge',n'london',
	null,n'sw7 1rz',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10753,n'frans',3,'11/25/1997','12/23/1997','11/27/1997',1,7.70,
	n'franchi s.p.a.',n'via monte bianco 34',n'torino',
	null,n'10100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10754,n'magaa',6,'11/25/1997','12/23/1997','11/27/1997',3,2.38,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10755,n'bonap',4,'11/26/1997','12/24/1997','11/28/1997',2,16.71,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10756,n'splir',8,'11/27/1997','12/25/1997','12/2/1997',2,73.21,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10757,n'savea',6,'11/27/1997','12/25/1997','12/15/1997',1,8.19,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10758,n'ricsu',3,'11/28/1997','12/26/1997','12/4/1997',3,138.17,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10759,n'anatr',3,'11/28/1997','12/26/1997','12/12/1997',3,11.99,
	n'ana trujillo emparedados y helados',n'avda. de la constitución 2222',n'méxico d.f.',
	null,n'05021',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10760,n'maisd',4,'12/1/1997','12/29/1997','12/10/1997',1,155.64,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10761,n'rattc',5,'12/2/1997','12/30/1997','12/8/1997',2,18.66,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10762,n'folko',3,'12/2/1997','12/30/1997','12/9/1997',1,328.74,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10763,n'folig',3,'12/3/1997','12/31/1997','12/8/1997',3,37.35,
	n'folies gourmandes',n'184, chaussée de tournai',n'lille',
	null,n'59000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10764,n'ernsh',6,'12/3/1997','12/31/1997','12/8/1997',3,145.45,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10765,n'quick',3,'12/4/1997','1/1/1998','12/9/1997',3,42.74,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10766,n'ottik',4,'12/5/1997','1/2/1998','12/9/1997',1,157.55,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10767,n'suprd',4,'12/5/1997','1/2/1998','12/15/1997',3,1.59,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10768,n'arout',3,'12/8/1997','1/5/1998','12/15/1997',2,146.32,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10769,n'vaffe',3,'12/8/1997','1/5/1998','12/12/1997',1,65.06,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10770,n'hanar',8,'12/9/1997','1/6/1998','12/17/1997',3,5.32,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10771,n'ernsh',9,'12/10/1997','1/7/1998','1/2/1998',2,11.19,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10772,n'lehms',3,'12/10/1997','1/7/1998','12/19/1997',2,91.28,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10773,n'ernsh',1,'12/11/1997','1/8/1998','12/16/1997',3,96.43,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10774,n'folko',4,'12/11/1997','12/25/1997','12/12/1997',1,48.20,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10775,n'thecr',7,'12/12/1997','1/9/1998','12/26/1997',1,20.25,
	n'the cracker box',n'55 grizzly peak rd.',n'butte',
	n'mt',n'59801',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10776,n'ernsh',1,'12/15/1997','1/12/1998','12/18/1997',3,351.53,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10777,n'gourl',7,'12/15/1997','12/29/1997','1/21/1998',2,3.01,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10778,n'bergs',3,'12/16/1997','1/13/1998','12/24/1997',1,6.79,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10779,n'morgk',3,'12/16/1997','1/13/1998','1/14/1998',2,58.13,
	n'morgenstern gesundkost',n'heerstr. 22',n'leipzig',
	null,n'04179',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10780,n'lilas',2,'12/16/1997','12/30/1997','12/25/1997',1,42.13,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10781,n'warth',2,'12/17/1997','1/14/1998','12/19/1997',3,73.16,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10782,n'cactu',9,'12/17/1997','1/14/1998','12/22/1997',3,1.10,
	n'cactus comidas para llevar',n'cerrito 333',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10783,n'hanar',4,'12/18/1997','1/15/1998','12/19/1997',2,124.98,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10784,n'magaa',4,'12/18/1997','1/15/1998','12/22/1997',3,70.09,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10785,n'grosr',1,'12/18/1997','1/15/1998','12/24/1997',3,1.51,
	n'grosella-restaurante',n'5ª ave. los palos grandes',n'caracas',
	n'df',n'1081',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10786,n'queen',8,'12/19/1997','1/16/1998','12/23/1997',1,110.87,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10787,n'lamai',2,'12/19/1997','1/2/1998','12/26/1997',1,249.93,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10788,n'quick',1,'12/22/1997','1/19/1998','1/19/1998',2,42.70,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10789,n'folig',1,'12/22/1997','1/19/1998','12/31/1997',2,100.60,
	n'folies gourmandes',n'184, chaussée de tournai',n'lille',
	null,n'59000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10790,n'gourl',6,'12/22/1997','1/19/1998','12/26/1997',1,28.23,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10791,n'frank',6,'12/23/1997','1/20/1998','1/1/1998',2,16.85,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10792,n'wolza',1,'12/23/1997','1/20/1998','12/31/1997',3,23.79,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10793,n'arout',3,'12/24/1997','1/21/1998','1/8/1998',3,4.52,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10794,n'quede',6,'12/24/1997','1/21/1998','1/2/1998',1,21.49,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10795,n'ernsh',8,'12/24/1997','1/21/1998','1/20/1998',2,126.66,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10796,n'hilaa',3,'12/25/1997','1/22/1998','1/14/1998',1,26.52,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10797,n'dracd',7,'12/25/1997','1/22/1998','1/5/1998',2,33.35,
	n'drachenblut delikatessen',n'walserweg 21',n'aachen',
	null,n'52066',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10798,n'islat',2,'12/26/1997','1/23/1998','1/5/1998',1,2.33,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10799,n'koene',9,'12/26/1997','2/6/1998','1/5/1998',3,30.76,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10800,n'seves',1,'12/26/1997','1/23/1998','1/5/1998',3,137.44,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10801,n'bolid',4,'12/29/1997','1/26/1998','12/31/1997',2,97.09,
	n'bólido comidas preparadas',n'c/ araquil, 67',n'madrid',
	null,n'28023',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10802,n'simob',4,'12/29/1997','1/26/1998','1/2/1998',2,257.26,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10803,n'welli',4,'12/30/1997','1/27/1998','1/6/1998',1,55.23,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10804,n'seves',6,'12/30/1997','1/27/1998','1/7/1998',2,27.33,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10805,n'thebi',2,'12/30/1997','1/27/1998','1/9/1998',3,237.34,
	n'the big cheese',n'89 jefferson way suite 2',n'portland',
	n'or',n'97201',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10806,n'victe',3,'12/31/1997','1/28/1998','1/5/1998',2,22.11,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10807,n'frans',4,'12/31/1997','1/28/1998','1/30/1998',1,1.36,
	n'franchi s.p.a.',n'via monte bianco 34',n'torino',
	null,n'10100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10808,n'oldwo',2,'1/1/1998','1/29/1998','1/9/1998',3,45.53,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10809,n'welli',7,'1/1/1998','1/29/1998','1/7/1998',1,4.87,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10810,n'laugb',2,'1/1/1998','1/29/1998','1/7/1998',3,4.33,
	n'laughing bacchus wine cellars',n'2319 elm st.',n'vancouver',
	n'bc',n'v3f 2k1',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10811,n'linod',8,'1/2/1998','1/30/1998','1/8/1998',1,31.22,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10812,n'reggc',5,'1/2/1998','1/30/1998','1/12/1998',1,59.78,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10813,n'ricar',1,'1/5/1998','2/2/1998','1/9/1998',1,47.38,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10814,n'victe',3,'1/5/1998','2/2/1998','1/14/1998',3,130.94,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10815,n'savea',2,'1/5/1998','2/2/1998','1/14/1998',3,14.62,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10816,n'greal',4,'1/6/1998','2/3/1998','2/4/1998',2,719.78,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10817,n'koene',3,'1/6/1998','1/20/1998','1/13/1998',2,306.07,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10818,n'magaa',7,'1/7/1998','2/4/1998','1/12/1998',3,65.48,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10819,n'cactu',2,'1/7/1998','2/4/1998','1/16/1998',3,19.76,
	n'cactus comidas para llevar',n'cerrito 333',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10820,n'rattc',3,'1/7/1998','2/4/1998','1/13/1998',2,37.52,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10821,n'splir',1,'1/8/1998','2/5/1998','1/15/1998',1,36.68,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10822,n'traih',6,'1/8/1998','2/5/1998','1/16/1998',3,7.00,
	n'trail''s head gourmet provisioners',n'722 davinci blvd.',n'kirkland',
	n'wa',n'98034',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10823,n'lilas',5,'1/9/1998','2/6/1998','1/13/1998',2,163.97,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10824,n'folko',8,'1/9/1998','2/6/1998','1/30/1998',1,1.23,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10825,n'dracd',1,'1/9/1998','2/6/1998','1/14/1998',1,79.25,
	n'drachenblut delikatessen',n'walserweg 21',n'aachen',
	null,n'52066',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10826,n'blonp',6,'1/12/1998','2/9/1998','2/6/1998',1,7.09,
	n'blondel père et fils',n'24, place kléber',n'strasbourg',
	null,n'67000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10827,n'bonap',1,'1/12/1998','1/26/1998','2/6/1998',2,63.54,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10828,n'ranch',9,'1/13/1998','1/27/1998','2/4/1998',1,90.85,
	n'rancho grande',n'av. del libertador 900',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10829,n'islat',9,'1/13/1998','2/10/1998','1/23/1998',1,154.72,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10830,n'tradh',4,'1/13/1998','2/24/1998','1/21/1998',2,81.83,
	n'tradiçao hipermercados',n'av. inês de castro, 414',n'sao paulo',
	n'sp',n'05634-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10831,n'santg',3,'1/14/1998','2/11/1998','1/23/1998',2,72.19,
	n'santé gourmet',n'erling skakkes gate 78',n'stavern',
	null,n'4110',n'norway');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10832,n'lamai',2,'1/14/1998','2/11/1998','1/19/1998',2,43.26,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10833,n'ottik',6,'1/15/1998','2/12/1998','1/23/1998',2,71.49,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10834,n'tradh',1,'1/15/1998','2/12/1998','1/19/1998',3,29.78,
	n'tradiçao hipermercados',n'av. inês de castro, 414',n'sao paulo',
	n'sp',n'05634-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10835,n'alfki',1,'1/15/1998','2/12/1998','1/21/1998',3,69.53,
	n'alfred''s futterkiste',n'obere str. 57',n'berlin',
	null,n'12209',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10836,n'ernsh',7,'1/16/1998','2/13/1998','1/21/1998',1,411.88,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10837,n'bergs',9,'1/16/1998','2/13/1998','1/23/1998',3,13.32,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10838,n'linod',3,'1/19/1998','2/16/1998','1/23/1998',3,59.28,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10839,n'tradh',3,'1/19/1998','2/16/1998','1/22/1998',3,35.43,
	n'tradiçao hipermercados',n'av. inês de castro, 414',n'sao paulo',
	n'sp',n'05634-030',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10840,n'linod',4,'1/19/1998','3/2/1998','2/16/1998',2,2.71,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10841,n'suprd',5,'1/20/1998','2/17/1998','1/29/1998',2,424.30,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10842,n'tortu',1,'1/20/1998','2/17/1998','1/29/1998',3,54.42,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10843,n'victe',4,'1/21/1998','2/18/1998','1/26/1998',2,9.26,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10844,n'picco',8,'1/21/1998','2/18/1998','1/26/1998',2,25.22,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10845,n'quick',8,'1/21/1998','2/4/1998','1/30/1998',1,212.98,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10846,n'suprd',2,'1/22/1998','3/5/1998','1/23/1998',3,56.46,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10847,n'savea',4,'1/22/1998','2/5/1998','2/10/1998',3,487.57,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10848,n'consh',7,'1/23/1998','2/20/1998','1/29/1998',2,38.24,
	n'consolidated holdings',n'berkeley gardens 12  brewery',n'london',
	null,n'wx1 6lt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10849,n'koene',9,'1/23/1998','2/20/1998','1/30/1998',2,0.56,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10850,n'victe',1,'1/23/1998','3/6/1998','1/30/1998',1,49.19,
	n'victuailles en stock',n'2, rue du commerce',n'lyon',
	null,n'69004',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10851,n'ricar',5,'1/26/1998','2/23/1998','2/2/1998',1,160.55,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10852,n'rattc',8,'1/26/1998','2/9/1998','1/30/1998',1,174.05,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10853,n'blaus',9,'1/27/1998','2/24/1998','2/3/1998',2,53.83,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10854,n'ernsh',3,'1/27/1998','2/24/1998','2/5/1998',2,100.22,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10855,n'oldwo',3,'1/27/1998','2/24/1998','2/4/1998',1,170.97,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10856,n'anton',3,'1/28/1998','2/25/1998','2/10/1998',2,58.43,
	n'antonio moreno taquería',n'mataderos  2312',n'méxico d.f.',
	null,n'05023',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10857,n'bergs',8,'1/28/1998','2/25/1998','2/6/1998',2,188.85,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10858,n'lacor',2,'1/29/1998','2/26/1998','2/3/1998',1,52.51,
	n'la corne d''abondance',n'67, avenue de l''europe',n'versailles',
	null,n'78000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10859,n'frank',1,'1/29/1998','2/26/1998','2/2/1998',2,76.10,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10860,n'franr',3,'1/29/1998','2/26/1998','2/4/1998',3,19.26,
	n'france restauration',n'54, rue royale',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10861,n'whitc',4,'1/30/1998','2/27/1998','2/17/1998',2,14.93,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10862,n'lehms',8,'1/30/1998','3/13/1998','2/2/1998',2,53.23,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10863,n'hilaa',4,'2/2/1998','3/2/1998','2/17/1998',2,30.26,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10864,n'arout',4,'2/2/1998','3/2/1998','2/9/1998',2,3.04,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10865,n'quick',2,'2/2/1998','2/16/1998','2/12/1998',1,348.14,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10866,n'bergs',5,'2/3/1998','3/3/1998','2/12/1998',1,109.11,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10867,n'lonep',6,'2/3/1998','3/17/1998','2/11/1998',1,1.93,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10868,n'queen',7,'2/4/1998','3/4/1998','2/23/1998',2,191.27,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10869,n'seves',5,'2/4/1998','3/4/1998','2/9/1998',1,143.28,
	n'seven seas imports',n'90 wadhurst rd.',n'london',
	null,n'ox15 4nb',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10870,n'wolza',5,'2/4/1998','3/4/1998','2/13/1998',3,12.04,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10871,n'bonap',9,'2/5/1998','3/5/1998','2/10/1998',2,112.27,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10872,n'godos',5,'2/5/1998','3/5/1998','2/9/1998',2,175.32,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10873,n'wilmk',4,'2/6/1998','3/6/1998','2/9/1998',1,0.82,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10874,n'godos',5,'2/6/1998','3/6/1998','2/11/1998',2,19.58,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10875,n'bergs',4,'2/6/1998','3/6/1998','3/3/1998',2,32.37,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10876,n'bonap',7,'2/9/1998','3/9/1998','2/12/1998',3,60.42,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10877,n'ricar',1,'2/9/1998','3/9/1998','2/19/1998',1,38.06,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10878,n'quick',4,'2/10/1998','3/10/1998','2/12/1998',1,46.69,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10879,n'wilmk',3,'2/10/1998','3/10/1998','2/12/1998',3,8.50,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10880,n'folko',7,'2/10/1998','3/24/1998','2/18/1998',1,88.01,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10881,n'cactu',4,'2/11/1998','3/11/1998','2/18/1998',1,2.84,
	n'cactus comidas para llevar',n'cerrito 333',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10882,n'savea',4,'2/11/1998','3/11/1998','2/20/1998',3,23.10,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10883,n'lonep',8,'2/12/1998','3/12/1998','2/20/1998',3,0.53,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10884,n'letss',4,'2/12/1998','3/12/1998','2/13/1998',2,90.97,
	n'let''s stop n shop',n'87 polk st. suite 5',n'san francisco',
	n'ca',n'94117',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10885,n'suprd',6,'2/12/1998','3/12/1998','2/18/1998',3,5.64,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10886,n'hanar',1,'2/13/1998','3/13/1998','3/2/1998',1,4.99,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10887,n'galed',8,'2/13/1998','3/13/1998','2/16/1998',3,1.25,
	n'galería del gastronómo',n'rambla de cataluña, 23',n'barcelona',
	null,n'8022',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10888,n'godos',1,'2/16/1998','3/16/1998','2/23/1998',2,51.87,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10889,n'rattc',9,'2/16/1998','3/16/1998','2/23/1998',3,280.61,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10890,n'dumon',7,'2/16/1998','3/16/1998','2/18/1998',1,32.76,
	n'du monde entier',n'67, rue des cinquante otages',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10891,n'lehms',7,'2/17/1998','3/17/1998','2/19/1998',2,20.37,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10892,n'maisd',4,'2/17/1998','3/17/1998','2/19/1998',2,120.27,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10893,n'koene',9,'2/18/1998','3/18/1998','2/20/1998',2,77.78,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10894,n'savea',1,'2/18/1998','3/18/1998','2/20/1998',1,116.13,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10895,n'ernsh',3,'2/18/1998','3/18/1998','2/23/1998',1,162.75,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10896,n'maisd',7,'2/19/1998','3/19/1998','2/27/1998',3,32.45,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10897,n'hungo',3,'2/19/1998','3/19/1998','2/25/1998',2,603.54,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10898,n'ocean',4,'2/20/1998','3/20/1998','3/6/1998',2,1.27,
	n'océano atlántico ltda.',n'ing. gustavo moncada 8585 piso 20-a',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10899,n'lilas',5,'2/20/1998','3/20/1998','2/26/1998',3,1.21,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10900,n'welli',1,'2/20/1998','3/20/1998','3/4/1998',2,1.66,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10901,n'hilaa',4,'2/23/1998','3/23/1998','2/26/1998',1,62.09,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10902,n'folko',1,'2/23/1998','3/23/1998','3/3/1998',1,44.15,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10903,n'hanar',3,'2/24/1998','3/24/1998','3/4/1998',3,36.71,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10904,n'whitc',3,'2/24/1998','3/24/1998','2/27/1998',3,162.95,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10905,n'welli',9,'2/24/1998','3/24/1998','3/6/1998',2,13.72,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10906,n'wolza',4,'2/25/1998','3/11/1998','3/3/1998',3,26.29,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10907,n'specd',6,'2/25/1998','3/25/1998','2/27/1998',3,9.19,
	n'spécialités du monde',n'25, rue lauriston',n'paris',
	null,n'75016',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10908,n'reggc',4,'2/26/1998','3/26/1998','3/6/1998',2,32.96,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10909,n'santg',1,'2/26/1998','3/26/1998','3/10/1998',2,53.05,
	n'santé gourmet',n'erling skakkes gate 78',n'stavern',
	null,n'4110',n'norway');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10910,n'wilmk',1,'2/26/1998','3/26/1998','3/4/1998',3,38.11,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10911,n'godos',3,'2/26/1998','3/26/1998','3/5/1998',1,38.19,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10912,n'hungo',2,'2/26/1998','3/26/1998','3/18/1998',2,580.91,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10913,n'queen',4,'2/26/1998','3/26/1998','3/4/1998',1,33.05,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10914,n'queen',6,'2/27/1998','3/27/1998','3/2/1998',1,21.19,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10915,n'tortu',2,'2/27/1998','3/27/1998','3/2/1998',2,3.51,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10916,n'ranch',1,'2/27/1998','3/27/1998','3/9/1998',2,63.77,
	n'rancho grande',n'av. del libertador 900',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10917,n'romey',4,'3/2/1998','3/30/1998','3/11/1998',2,8.29,
	n'romero y tomillo',n'gran vía, 1',n'madrid',
	null,n'28001',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10918,n'bottm',3,'3/2/1998','3/30/1998','3/11/1998',3,48.83,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10919,n'linod',2,'3/2/1998','3/30/1998','3/4/1998',2,19.80,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10920,n'arout',4,'3/3/1998','3/31/1998','3/9/1998',2,29.61,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10921,n'vaffe',1,'3/3/1998','4/14/1998','3/9/1998',1,176.48,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10922,n'hanar',5,'3/3/1998','3/31/1998','3/5/1998',3,62.74,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10923,n'lamai',7,'3/3/1998','4/14/1998','3/13/1998',3,68.26,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10924,n'bergs',3,'3/4/1998','4/1/1998','4/8/1998',2,151.52,
	n'berglunds snabbköp',n'berguvsvägen  8',n'luleå',
	null,n's-958 22',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10925,n'hanar',3,'3/4/1998','4/1/1998','3/13/1998',1,2.27,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10926,n'anatr',4,'3/4/1998','4/1/1998','3/11/1998',3,39.92,
	n'ana trujillo emparedados y helados',n'avda. de la constitución 2222',n'méxico d.f.',
	null,n'05021',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10927,n'lacor',4,'3/5/1998','4/2/1998','4/8/1998',1,19.79,
	n'la corne d''abondance',n'67, avenue de l''europe',n'versailles',
	null,n'78000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10928,n'galed',1,'3/5/1998','4/2/1998','3/18/1998',1,1.36,
	n'galería del gastronómo',n'rambla de cataluña, 23',n'barcelona',
	null,n'8022',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10929,n'frank',6,'3/5/1998','4/2/1998','3/12/1998',1,33.93,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10930,n'suprd',4,'3/6/1998','4/17/1998','3/18/1998',3,15.55,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10931,n'ricsu',4,'3/6/1998','3/20/1998','3/19/1998',2,13.60,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10932,n'bonap',8,'3/6/1998','4/3/1998','3/24/1998',1,134.64,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10933,n'islat',6,'3/6/1998','4/3/1998','3/16/1998',3,54.15,
	n'island trading',n'garden house crowther way',n'cowes',
	n'isle of wight',n'po31 7pj',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10934,n'lehms',3,'3/9/1998','4/6/1998','3/12/1998',3,32.01,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10935,n'welli',4,'3/9/1998','4/6/1998','3/18/1998',3,47.59,
	n'wellington importadora',n'rua do mercado, 12',n'resende',
	n'sp',n'08737-363',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10936,n'greal',3,'3/9/1998','4/6/1998','3/18/1998',2,33.68,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10937,n'cactu',7,'3/10/1998','3/24/1998','3/13/1998',3,31.51,
	n'cactus comidas para llevar',n'cerrito 333',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10938,n'quick',3,'3/10/1998','4/7/1998','3/16/1998',2,31.89,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10939,n'magaa',2,'3/10/1998','4/7/1998','3/13/1998',2,76.33,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10940,n'bonap',8,'3/11/1998','4/8/1998','3/23/1998',3,19.77,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10941,n'savea',7,'3/11/1998','4/8/1998','3/20/1998',2,400.81,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10942,n'reggc',9,'3/11/1998','4/8/1998','3/18/1998',3,17.95,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10943,n'bsbev',4,'3/11/1998','4/8/1998','3/19/1998',2,2.17,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10944,n'bottm',6,'3/12/1998','3/26/1998','3/13/1998',3,52.92,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10945,n'morgk',4,'3/12/1998','4/9/1998','3/18/1998',1,10.22,
	n'morgenstern gesundkost',n'heerstr. 22',n'leipzig',
	null,n'04179',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10946,n'vaffe',1,'3/12/1998','4/9/1998','3/19/1998',2,27.20,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10947,n'bsbev',3,'3/13/1998','4/10/1998','3/16/1998',2,3.26,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10948,n'godos',3,'3/13/1998','4/10/1998','3/19/1998',3,23.39,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10949,n'bottm',2,'3/13/1998','4/10/1998','3/17/1998',3,74.44,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10950,n'magaa',1,'3/16/1998','4/13/1998','3/23/1998',2,2.50,
	n'magazzini alimentari riuniti',n'via ludovico il moro 22',n'bergamo',
	null,n'24100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10951,n'ricsu',9,'3/16/1998','4/27/1998','4/7/1998',2,30.85,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10952,n'alfki',1,'3/16/1998','4/27/1998','3/24/1998',1,40.42,
	n'alfred''s futterkiste',n'obere str. 57',n'berlin',
	null,n'12209',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10953,n'arout',9,'3/16/1998','3/30/1998','3/25/1998',2,23.72,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10954,n'linod',5,'3/17/1998','4/28/1998','3/20/1998',1,27.91,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10955,n'folko',8,'3/17/1998','4/14/1998','3/20/1998',2,3.26,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10956,n'blaus',6,'3/17/1998','4/28/1998','3/20/1998',2,44.65,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10957,n'hilaa',8,'3/18/1998','4/15/1998','3/27/1998',3,105.36,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10958,n'ocean',7,'3/18/1998','4/15/1998','3/27/1998',2,49.56,
	n'océano atlántico ltda.',n'ing. gustavo moncada 8585 piso 20-a',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10959,n'gourl',6,'3/18/1998','4/29/1998','3/23/1998',2,4.98,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10960,n'hilaa',3,'3/19/1998','4/2/1998','4/8/1998',1,2.08,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10961,n'queen',8,'3/19/1998','4/16/1998','3/30/1998',1,104.47,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10962,n'quick',8,'3/19/1998','4/16/1998','3/23/1998',2,275.79,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10963,n'furib',9,'3/19/1998','4/16/1998','3/26/1998',3,2.70,
	n'furia bacalhau e frutos do mar',n'jardim das rosas n. 32',n'lisboa',
	null,n'1675',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10964,n'specd',3,'3/20/1998','4/17/1998','3/24/1998',2,87.38,
	n'spécialités du monde',n'25, rue lauriston',n'paris',
	null,n'75016',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10965,n'oldwo',6,'3/20/1998','4/17/1998','3/30/1998',3,144.38,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10966,n'chops',4,'3/20/1998','4/17/1998','4/8/1998',1,27.19,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10967,n'tomsp',2,'3/23/1998','4/20/1998','4/2/1998',2,62.22,
	n'toms spezialitäten',n'luisenstr. 48',n'münster',
	null,n'44087',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10968,n'ernsh',1,'3/23/1998','4/20/1998','4/1/1998',3,74.60,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10969,n'commi',1,'3/23/1998','4/20/1998','3/30/1998',2,0.21,
	n'comércio mineiro',n'av. dos lusíadas, 23',n'sao paulo',
	n'sp',n'05432-043',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10970,n'bolid',9,'3/24/1998','4/7/1998','4/24/1998',1,16.16,
	n'bólido comidas preparadas',n'c/ araquil, 67',n'madrid',
	null,n'28023',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10971,n'franr',2,'3/24/1998','4/21/1998','4/2/1998',2,121.82,
	n'france restauration',n'54, rue royale',n'nantes',
	null,n'44000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10972,n'lacor',4,'3/24/1998','4/21/1998','3/26/1998',2,0.02,
	n'la corne d''abondance',n'67, avenue de l''europe',n'versailles',
	null,n'78000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10973,n'lacor',6,'3/24/1998','4/21/1998','3/27/1998',2,15.17,
	n'la corne d''abondance',n'67, avenue de l''europe',n'versailles',
	null,n'78000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10974,n'splir',3,'3/25/1998','4/8/1998','4/3/1998',3,12.96,
	n'split rail beer & ale',n'p.o. box 555',n'lander',
	n'wy',n'82520',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10975,n'bottm',1,'3/25/1998','4/22/1998','3/27/1998',3,32.27,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10976,n'hilaa',1,'3/25/1998','5/6/1998','4/3/1998',1,37.97,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10977,n'folko',8,'3/26/1998','4/23/1998','4/10/1998',3,208.50,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10978,n'maisd',9,'3/26/1998','4/23/1998','4/23/1998',2,32.82,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10979,n'ernsh',8,'3/26/1998','4/23/1998','3/31/1998',2,353.07,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10980,n'folko',4,'3/27/1998','5/8/1998','4/17/1998',1,1.26,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10981,n'hanar',1,'3/27/1998','4/24/1998','4/2/1998',2,193.37,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10982,n'bottm',2,'3/27/1998','4/24/1998','4/8/1998',1,14.01,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10983,n'savea',2,'3/27/1998','4/24/1998','4/6/1998',2,657.54,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10984,n'savea',1,'3/30/1998','4/27/1998','4/3/1998',3,211.22,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10985,n'hungo',2,'3/30/1998','4/27/1998','4/2/1998',1,91.51,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10986,n'ocean',8,'3/30/1998','4/27/1998','4/21/1998',2,217.86,
	n'océano atlántico ltda.',n'ing. gustavo moncada 8585 piso 20-a',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10987,n'eastc',8,'3/31/1998','4/28/1998','4/6/1998',1,185.48,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10988,n'rattc',3,'3/31/1998','4/28/1998','4/10/1998',2,61.14,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10989,n'quede',2,'3/31/1998','4/28/1998','4/2/1998',1,34.76,
	n'que delícia',n'rua da panificadora, 12',n'rio de janeiro',
	n'rj',n'02389-673',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10990,n'ernsh',2,'4/1/1998','5/13/1998','4/7/1998',3,117.61,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10991,n'quick',1,'4/1/1998','4/29/1998','4/7/1998',1,38.51,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10992,n'thebi',1,'4/1/1998','4/29/1998','4/3/1998',3,4.27,
	n'the big cheese',n'89 jefferson way suite 2',n'portland',
	n'or',n'97201',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10993,n'folko',7,'4/1/1998','4/29/1998','4/10/1998',3,8.81,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10994,n'vaffe',2,'4/2/1998','4/16/1998','4/9/1998',3,65.53,
	n'vaffeljernet',n'smagsloget 45',n'århus',
	null,n'8200',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10995,n'peric',1,'4/2/1998','4/30/1998','4/6/1998',3,46.00,
	n'pericles comidas clásicas',n'calle dr. jorge cash 321',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10996,n'quick',4,'4/2/1998','4/30/1998','4/10/1998',2,1.12,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10997,n'lilas',8,'4/3/1998','5/15/1998','4/13/1998',2,73.91,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10998,n'wolza',8,'4/3/1998','4/17/1998','4/17/1998',2,20.31,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (10999,n'ottik',6,'4/3/1998','5/1/1998','4/10/1998',2,96.35,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11000,n'rattc',2,'4/6/1998','5/4/1998','4/14/1998',3,55.12,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11001,n'folko',2,'4/6/1998','5/4/1998','4/14/1998',2,197.30,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11002,n'savea',4,'4/6/1998','5/4/1998','4/16/1998',1,141.16,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11003,n'thecr',3,'4/6/1998','5/4/1998','4/8/1998',3,14.91,
	n'the cracker box',n'55 grizzly peak rd.',n'butte',
	n'mt',n'59801',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11004,n'maisd',3,'4/7/1998','5/5/1998','4/20/1998',1,44.84,
	n'maison dewey',n'rue joseph-bens 532',n'bruxelles',
	null,n'b-1180',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11005,n'wilmk',2,'4/7/1998','5/5/1998','4/10/1998',1,0.75,
	n'wilman kala',n'keskuskatu 45',n'helsinki',
	null,n'21240',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11006,n'greal',3,'4/7/1998','5/5/1998','4/15/1998',2,25.19,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11007,n'prini',8,'4/8/1998','5/6/1998','4/13/1998',2,202.24,
	n'princesa isabel vinhos',n'estrada da saúde n. 58',n'lisboa',
	null,n'1756',n'portugal');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11008,n'ernsh',7,'4/8/1998','5/6/1998',null,3,79.46,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11009,n'godos',2,'4/8/1998','5/6/1998','4/10/1998',1,59.11,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11010,n'reggc',2,'4/9/1998','5/7/1998','4/21/1998',2,28.71,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11011,n'alfki',3,'4/9/1998','5/7/1998','4/13/1998',1,1.21,
	n'alfred''s futterkiste',n'obere str. 57',n'berlin',
	null,n'12209',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11012,n'frank',1,'4/9/1998','4/23/1998','4/17/1998',3,242.95,
	n'frankenversand',n'berliner platz 43',n'münchen',
	null,n'80805',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11013,n'romey',2,'4/9/1998','5/7/1998','4/10/1998',1,32.99,
	n'romero y tomillo',n'gran vía, 1',n'madrid',
	null,n'28001',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11014,n'linod',2,'4/10/1998','5/8/1998','4/15/1998',3,23.60,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11015,n'santg',2,'4/10/1998','4/24/1998','4/20/1998',2,4.62,
	n'santé gourmet',n'erling skakkes gate 78',n'stavern',
	null,n'4110',n'norway');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11016,n'arout',9,'4/10/1998','5/8/1998','4/13/1998',2,33.80,
	n'around the horn',n'brook farm stratford st. mary',n'colchester',
	n'essex',n'co7 6jx',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11017,n'ernsh',9,'4/13/1998','5/11/1998','4/20/1998',2,754.26,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11018,n'lonep',4,'4/13/1998','5/11/1998','4/16/1998',2,11.65,
	n'lonesome pine restaurant',n'89 chiaroscuro rd.',n'portland',
	n'or',n'97219',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11019,n'ranch',6,'4/13/1998','5/11/1998',null,3,3.17,
	n'rancho grande',n'av. del libertador 900',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11020,n'ottik',2,'4/14/1998','5/12/1998','4/16/1998',2,43.30,
	n'ottilies käseladen',n'mehrheimerstr. 369',n'köln',
	null,n'50739',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11021,n'quick',3,'4/14/1998','5/12/1998','4/21/1998',1,297.18,
	n'quick-stop',n'taucherstraße 10',n'cunewalde',
	null,n'01307',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11022,n'hanar',9,'4/14/1998','5/12/1998','5/4/1998',2,6.27,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11023,n'bsbev',1,'4/14/1998','4/28/1998','4/24/1998',2,123.83,
	n'b''s beverages',n'fauntleroy circus',n'london',
	null,n'ec2 5nt',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11024,n'eastc',4,'4/15/1998','5/13/1998','4/20/1998',1,74.36,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11025,n'warth',6,'4/15/1998','5/13/1998','4/24/1998',3,29.17,
	n'wartian herkku',n'torikatu 38',n'oulu',
	null,n'90110',n'finland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11026,n'frans',4,'4/15/1998','5/13/1998','4/28/1998',1,47.09,
	n'franchi s.p.a.',n'via monte bianco 34',n'torino',
	null,n'10100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11027,n'bottm',1,'4/16/1998','5/14/1998','4/20/1998',1,52.52,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11028,n'koene',2,'4/16/1998','5/14/1998','4/22/1998',1,29.59,
	n'königlich essen',n'maubelstr. 90',n'brandenburg',
	null,n'14776',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11029,n'chops',4,'4/16/1998','5/14/1998','4/27/1998',1,47.84,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11030,n'savea',7,'4/17/1998','5/15/1998','4/27/1998',2,830.75,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11031,n'savea',6,'4/17/1998','5/15/1998','4/24/1998',2,227.22,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11032,n'whitc',2,'4/17/1998','5/15/1998','4/23/1998',3,606.19,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11033,n'ricsu',7,'4/17/1998','5/15/1998','4/23/1998',3,84.74,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11034,n'oldwo',8,'4/20/1998','6/1/1998','4/27/1998',1,40.32,
	n'old world delicatessen',n'2743 bering st.',n'anchorage',
	n'ak',n'99508',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11035,n'suprd',2,'4/20/1998','5/18/1998','4/24/1998',2,0.17,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11036,n'dracd',8,'4/20/1998','5/18/1998','4/22/1998',3,149.47,
	n'drachenblut delikatessen',n'walserweg 21',n'aachen',
	null,n'52066',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11037,n'godos',7,'4/21/1998','5/19/1998','4/27/1998',1,3.20,
	n'godos cocina típica',n'c/ romero, 33',n'sevilla',
	null,n'41101',n'spain');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11038,n'suprd',1,'4/21/1998','5/19/1998','4/30/1998',2,29.59,
	n'suprêmes délices',n'boulevard tirou, 255',n'charleroi',
	null,n'b-6000',n'belgium');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11039,n'linod',1,'4/21/1998','5/19/1998',null,2,65.00,
	n'lino-delicateses',n'ave. 5 de mayo porlamar',n'i. de margarita',
	n'nueva esparta',n'4980',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11040,n'greal',4,'4/22/1998','5/20/1998',null,3,18.84,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11041,n'chops',3,'4/22/1998','5/20/1998','4/28/1998',2,48.22,
	n'chop-suey chinese',n'hauptstr. 31',n'bern',
	null,n'3012',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11042,n'commi',2,'4/22/1998','5/6/1998','5/1/1998',1,29.99,
	n'comércio mineiro',n'av. dos lusíadas, 23',n'sao paulo',
	n'sp',n'05432-043',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11043,n'specd',5,'4/22/1998','5/20/1998','4/29/1998',2,8.80,
	n'spécialités du monde',n'25, rue lauriston',n'paris',
	null,n'75016',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11044,n'wolza',4,'4/23/1998','5/21/1998','5/1/1998',1,8.72,
	n'wolski zajazd',n'ul. filtrowa 68',n'warszawa',
	null,n'01-012',n'poland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11045,n'bottm',6,'4/23/1998','5/21/1998',null,2,70.58,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11046,n'wandk',8,'4/23/1998','5/21/1998','4/24/1998',2,71.64,
	n'die wandernde kuh',n'adenauerallee 900',n'stuttgart',
	null,n'70563',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11047,n'eastc',7,'4/24/1998','5/22/1998','5/1/1998',3,46.62,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11048,n'bottm',7,'4/24/1998','5/22/1998','4/30/1998',3,24.12,
	n'bottom-dollar markets',n'23 tsawassen blvd.',n'tsawassen',
	n'bc',n't2f 8m4',n'canada');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11049,n'gourl',3,'4/24/1998','5/22/1998','5/4/1998',1,8.34,
	n'gourmet lanchonetes',n'av. brasil, 442',n'campinas',
	n'sp',n'04876-786',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11050,n'folko',8,'4/27/1998','5/25/1998','5/5/1998',2,59.41,
	n'folk och fä hb',n'åkergatan 24',n'bräcke',
	null,n's-844 67',n'sweden');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11051,n'lamai',7,'4/27/1998','5/25/1998',null,3,2.79,
	n'la maison d''asie',n'1 rue alsace-lorraine',n'toulouse',
	null,n'31000',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11052,n'hanar',3,'4/27/1998','5/25/1998','5/1/1998',1,67.26,
	n'hanari carnes',n'rua do paço, 67',n'rio de janeiro',
	n'rj',n'05454-876',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11053,n'picco',2,'4/27/1998','5/25/1998','4/29/1998',2,53.05,
	n'piccolo und mehr',n'geislweg 14',n'salzburg',
	null,n'5020',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11054,n'cactu',8,'4/28/1998','5/26/1998',null,1,0.33,
	n'cactus comidas para llevar',n'cerrito 333',n'buenos aires',
	null,n'1010',n'argentina');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11055,n'hilaa',7,'4/28/1998','5/26/1998','5/5/1998',2,120.92,
	n'hilarion-abastos',n'carrera 22 con ave. carlos soublette #8-35',n'san cristóbal',
	n'táchira',n'5022',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11056,n'eastc',8,'4/28/1998','5/12/1998','5/1/1998',2,278.96,
	n'eastern connection',n'35 king george',n'london',
	null,n'wx3 6fw',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11057,n'norts',3,'4/29/1998','5/27/1998','5/1/1998',3,4.13,
	n'north/south',n'south house 300 queensbridge',n'london',
	null,n'sw7 1rz',n'uk');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11058,n'blaus',9,'4/29/1998','5/27/1998',null,3,31.14,
	n'blauer see delikatessen',n'forsterstr. 57',n'mannheim',
	null,n'68306',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11059,n'ricar',2,'4/29/1998','6/10/1998',null,2,85.80,
	n'ricardo adocicados',n'av. copacabana, 267',n'rio de janeiro',
	n'rj',n'02389-890',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11060,n'frans',2,'4/30/1998','5/28/1998','5/4/1998',2,10.98,
	n'franchi s.p.a.',n'via monte bianco 34',n'torino',
	null,n'10100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11061,n'greal',4,'4/30/1998','6/11/1998',null,3,14.01,
	n'great lakes food market',n'2732 baker blvd.',n'eugene',
	n'or',n'97403',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11062,n'reggc',4,'4/30/1998','5/28/1998',null,2,29.93,
	n'reggiani caseifici',n'strada provinciale 124',n'reggio emilia',
	null,n'42100',n'italy');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11063,n'hungo',3,'4/30/1998','5/28/1998','5/6/1998',2,81.73,
	n'hungry owl all-night grocers',n'8 johnstown road',n'cork',
	n'co. cork',null,n'ireland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11064,n'savea',1,'5/1/1998','5/29/1998','5/4/1998',1,30.09,
	n'save-a-lot markets',n'187 suffolk ln.',n'boise',
	n'id',n'83720',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11065,n'lilas',8,'5/1/1998','5/29/1998',null,1,12.91,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11066,n'whitc',7,'5/1/1998','5/29/1998','5/4/1998',2,44.72,
	n'white clover markets',n'1029 - 12th ave. s.',n'seattle',
	n'wa',n'98124',n'usa');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11067,n'dracd',1,'5/4/1998','5/18/1998','5/6/1998',2,7.98,
	n'drachenblut delikatessen',n'walserweg 21',n'aachen',
	null,n'52066',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11068,n'queen',8,'5/4/1998','6/1/1998',null,2,81.75,
	n'queen cozinha',n'alameda dos canàrios, 891',n'sao paulo',
	n'sp',n'05487-020',n'brazil');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11069,n'tortu',1,'5/4/1998','6/1/1998','5/6/1998',2,15.67,
	n'tortuga restaurante',n'avda. azteca 123',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11070,n'lehms',2,'5/5/1998','6/2/1998',null,1,136.00,
	n'lehmanns marktstand',n'magazinweg 7',n'frankfurt a.m.',
	null,n'60528',n'germany');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11071,n'lilas',1,'5/5/1998','6/2/1998',null,1,0.93,
	n'lila-supermercado',n'carrera 52 con ave. bolívar #65-98 llano largo',n'barquisimeto',
	n'lara',n'3508',n'venezuela');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11072,n'ernsh',4,'5/5/1998','6/2/1998',null,2,258.64,
	n'ernst handel',n'kirchgasse 6',n'graz',
	null,n'8010',n'austria');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11073,n'peric',2,'5/5/1998','6/2/1998',null,2,24.95,
	n'pericles comidas clásicas',n'calle dr. jorge cash 321',n'méxico d.f.',
	null,n'05033',n'mexico');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11074,n'simob',7,'5/6/1998','6/3/1998',null,2,18.44,
	n'simons bistro',n'vinbæltet 34',n'kobenhavn',
	null,n'1734',n'denmark');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11075,n'ricsu',8,'5/6/1998','6/3/1998',null,2,6.19,
	n'richter supermarkt',n'starenweg 5',n'genève',
	null,n'1204',n'switzerland');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11076,n'bonap',4,'5/6/1998','6/3/1998',null,2,38.28,
	n'bon app''',n'12, rue des bouchers',n'marseille',
	null,n'13008',n'france');
insert into  orders
(orderid,customerid,employeeid,orderdate,requireddate,
	shippeddate,shipvia,freight,shipname,shipaddress,
	shipcity,shipregion,shippostalcode,shipcountry)
values (11077,n'rattc',1,'5/6/1998','6/3/1998',null,2,8.53,
	n'rattlesnake canyon grocery',n'2817 milton dr.',n'albuquerque',
	n'nm',n'87110',n'usa');

insert into  orderdetails values(10248,11,14,12,0);
insert into  orderdetails values(10248,42,9.8,10,0);
insert into  orderdetails values(10248,72,34.8,5,0);
insert into  orderdetails values(10249,14,18.6,9,0);
insert into  orderdetails values(10249,51,42.4,40,0);
insert into  orderdetails values(10250,41,7.7,10,0);
insert into  orderdetails values(10250,51,42.4,35,0.15);
insert into  orderdetails values(10250,65,16.8,15,0.15);
insert into  orderdetails values(10251,22,16.8,6,0.05);
insert into  orderdetails values(10251,57,15.6,15,0.05);
insert into  orderdetails values(10251,65,16.8,20,0);
insert into  orderdetails values(10252,20,64.8,40,0.05);
insert into  orderdetails values(10252,33,2,25,0.05);
insert into  orderdetails values(10252,60,27.2,40,0);
insert into  orderdetails values(10253,31,10,20,0);
insert into  orderdetails values(10253,39,14.4,42,0);
insert into  orderdetails values(10253,49,16,40,0);
insert into  orderdetails values(10254,24,3.6,15,0.15);
insert into  orderdetails values(10254,55,19.2,21,0.15);
insert into  orderdetails values(10254,74,8,21,0);
insert into  orderdetails values(10255,2,15.2,20,0);
insert into  orderdetails values(10255,16,13.9,35,0);
insert into  orderdetails values(10255,36,15.2,25,0);
insert into  orderdetails values(10255,59,44,30,0);
insert into  orderdetails values(10256,53,26.2,15,0);
insert into  orderdetails values(10256,77,10.4,12,0);
insert into  orderdetails values(10257,27,35.1,25,0);
insert into  orderdetails values(10257,39,14.4,6,0);
insert into  orderdetails values(10257,77,10.4,15,0);
insert into  orderdetails values(10258,2,15.2,50,0.2);
insert into  orderdetails values(10258,5,17,65,0.2);
insert into  orderdetails values(10258,32,25.6,6,0.2);
insert into  orderdetails values(10259,21,8,10,0);
insert into  orderdetails values(10259,37,20.8,1,0);
insert into  orderdetails values(10260,41,7.7,16,0.25);
insert into  orderdetails values(10260,57,15.6,50,0);
insert into  orderdetails values(10260,62,39.4,15,0.25);
insert into  orderdetails values(10260,70,12,21,0.25);
insert into  orderdetails values(10261,21,8,20,0);
insert into  orderdetails values(10261,35,14.4,20,0);
insert into  orderdetails values(10262,5,17,12,0.2);
insert into  orderdetails values(10262,7,24,15,0);
insert into  orderdetails values(10262,56,30.4,2,0);
insert into  orderdetails values(10263,16,13.9,60,0.25);
insert into  orderdetails values(10263,24,3.6,28,0);
insert into  orderdetails values(10263,30,20.7,60,0.25);
insert into  orderdetails values(10263,74,8,36,0.25);
insert into  orderdetails values(10264,2,15.2,35,0);
insert into  orderdetails values(10264,41,7.7,25,0.15);
insert into  orderdetails values(10265,17,31.2,30,0);
insert into  orderdetails values(10265,70,12,20,0);
insert into  orderdetails values(10266,12,30.4,12,0.05);
insert into  orderdetails values(10267,40,14.7,50,0);
insert into  orderdetails values(10267,59,44,70,0.15);
insert into  orderdetails values(10267,76,14.4,15,0.15);
insert into  orderdetails values(10268,29,99,10,0);
insert into  orderdetails values(10268,72,27.8,4,0);
insert into  orderdetails values(10269,33,2,60,0.05);
insert into  orderdetails values(10269,72,27.8,20,0.05);
insert into  orderdetails values(10270,36,15.2,30,0);
insert into  orderdetails values(10270,43,36.8,25,0);
insert into  orderdetails values(10271,33,2,24,0);
insert into  orderdetails values(10272,20,64.8,6,0);
insert into  orderdetails values(10272,31,10,40,0);
insert into  orderdetails values(10272,72,27.8,24,0);
insert into  orderdetails values(10273,10,24.8,24,0.05);
insert into  orderdetails values(10273,31,10,15,0.05);
insert into  orderdetails values(10273,33,2,20,0);
insert into  orderdetails values(10273,40,14.7,60,0.05);
insert into  orderdetails values(10273,76,14.4,33,0.05);
insert into  orderdetails values(10274,71,17.2,20,0);
insert into  orderdetails values(10274,72,27.8,7,0);
insert into  orderdetails values(10275,24,3.6,12,0.05);
insert into  orderdetails values(10275,59,44,6,0.05);
insert into  orderdetails values(10276,10,24.8,15,0);
insert into  orderdetails values(10276,13,4.8,10,0);
insert into  orderdetails values(10277,28,36.4,20,0);
insert into  orderdetails values(10277,62,39.4,12,0);
insert into  orderdetails values(10278,44,15.5,16,0);
insert into  orderdetails values(10278,59,44,15,0);
insert into  orderdetails values(10278,63,35.1,8,0);
insert into  orderdetails values(10278,73,12,25,0);
insert into  orderdetails values(10279,17,31.2,15,0.25);
insert into  orderdetails values(10280,24,3.6,12,0);
insert into  orderdetails values(10280,55,19.2,20,0);
insert into  orderdetails values(10280,75,6.2,30,0);
insert into  orderdetails values(10281,19,7.3,1,0);
insert into  orderdetails values(10281,24,3.6,6,0);
insert into  orderdetails values(10281,35,14.4,4,0);
insert into  orderdetails values(10282,30,20.7,6,0);
insert into  orderdetails values(10282,57,15.6,2,0);
insert into  orderdetails values(10283,15,12.4,20,0);
insert into  orderdetails values(10283,19,7.3,18,0);
insert into  orderdetails values(10283,60,27.2,35,0);
insert into  orderdetails values(10283,72,27.8,3,0);
insert into  orderdetails values(10284,27,35.1,15,0.25);
insert into  orderdetails values(10284,44,15.5,21,0);
insert into  orderdetails values(10284,60,27.2,20,0.25);
insert into  orderdetails values(10284,67,11.2,5,0.25);
insert into  orderdetails values(10285,1,14.4,45,0.2);
insert into  orderdetails values(10285,40,14.7,40,0.2);
insert into  orderdetails values(10285,53,26.2,36,0.2);
insert into  orderdetails values(10286,35,14.4,100,0);
insert into  orderdetails values(10286,62,39.4,40,0);
insert into  orderdetails values(10287,16,13.9,40,0.15);
insert into  orderdetails values(10287,34,11.2,20,0);
insert into  orderdetails values(10287,46,9.6,15,0.15);
insert into  orderdetails values(10288,54,5.9,10,0.1);
insert into  orderdetails values(10288,68,10,3,0.1);
insert into  orderdetails values(10289,3,8,30,0);
insert into  orderdetails values(10289,64,26.6,9,0);
insert into  orderdetails values(10290,5,17,20,0);
insert into  orderdetails values(10290,29,99,15,0);
insert into  orderdetails values(10290,49,16,15,0);
insert into  orderdetails values(10290,77,10.4,10,0);
insert into  orderdetails values(10291,13,4.8,20,0.1);
insert into  orderdetails values(10291,44,15.5,24,0.1);
insert into  orderdetails values(10291,51,42.4,2,0.1);
insert into  orderdetails values(10292,20,64.8,20,0);
insert into  orderdetails values(10293,18,50,12,0);
insert into  orderdetails values(10293,24,3.6,10,0);
insert into  orderdetails values(10293,63,35.1,5,0);
insert into  orderdetails values(10293,75,6.2,6,0);
insert into  orderdetails values(10294,1,14.4,18,0);
insert into  orderdetails values(10294,17,31.2,15,0);
insert into  orderdetails values(10294,43,36.8,15,0);
insert into  orderdetails values(10294,60,27.2,21,0);
insert into  orderdetails values(10294,75,6.2,6,0);
insert into  orderdetails values(10295,56,30.4,4,0);
insert into  orderdetails values(10296,11,16.8,12,0);
insert into  orderdetails values(10296,16,13.9,30,0);
insert into  orderdetails values(10296,69,28.8,15,0);
insert into  orderdetails values(10297,39,14.4,60,0);
insert into  orderdetails values(10297,72,27.8,20,0);
insert into  orderdetails values(10298,2,15.2,40,0);
insert into  orderdetails values(10298,36,15.2,40,0.25);
insert into  orderdetails values(10298,59,44,30,0.25);
insert into  orderdetails values(10298,62,39.4,15,0);
insert into  orderdetails values(10299,19,7.3,15,0);
insert into  orderdetails values(10299,70,12,20,0);
insert into  orderdetails values(10300,66,13.6,30,0);
insert into  orderdetails values(10300,68,10,20,0);
insert into  orderdetails values(10301,40,14.7,10,0);
insert into  orderdetails values(10301,56,30.4,20,0);
insert into  orderdetails values(10302,17,31.2,40,0);
insert into  orderdetails values(10302,28,36.4,28,0);
insert into  orderdetails values(10302,43,36.8,12,0);
insert into  orderdetails values(10303,40,14.7,40,0.1);
insert into  orderdetails values(10303,65,16.8,30,0.1);
insert into  orderdetails values(10303,68,10,15,0.1);
insert into  orderdetails values(10304,49,16,30,0);
insert into  orderdetails values(10304,59,44,10,0);
insert into  orderdetails values(10304,71,17.2,2,0);
insert into  orderdetails values(10305,18,50,25,0.1);
insert into  orderdetails values(10305,29,99,25,0.1);
insert into  orderdetails values(10305,39,14.4,30,0.1);
insert into  orderdetails values(10306,30,20.7,10,0);
insert into  orderdetails values(10306,53,26.2,10,0);
insert into  orderdetails values(10306,54,5.9,5,0);
insert into  orderdetails values(10307,62,39.4,10,0);
insert into  orderdetails values(10307,68,10,3,0);
insert into  orderdetails values(10308,69,28.8,1,0);
insert into  orderdetails values(10308,70,12,5,0);
insert into  orderdetails values(10309,4,17.6,20,0);
insert into  orderdetails values(10309,6,20,30,0);
insert into  orderdetails values(10309,42,11.2,2,0);
insert into  orderdetails values(10309,43,36.8,20,0);
insert into  orderdetails values(10309,71,17.2,3,0);
insert into  orderdetails values(10310,16,13.9,10,0);
insert into  orderdetails values(10310,62,39.4,5,0);
insert into  orderdetails values(10311,42,11.2,6,0);
insert into  orderdetails values(10311,69,28.8,7,0);
insert into  orderdetails values(10312,28,36.4,4,0);
insert into  orderdetails values(10312,43,36.8,24,0);
insert into  orderdetails values(10312,53,26.2,20,0);
insert into  orderdetails values(10312,75,6.2,10,0);
insert into  orderdetails values(10313,36,15.2,12,0);
insert into  orderdetails values(10314,32,25.6,40,0.1);
insert into  orderdetails values(10314,58,10.6,30,0.1);
insert into  orderdetails values(10314,62,39.4,25,0.1);
insert into  orderdetails values(10315,34,11.2,14,0);
insert into  orderdetails values(10315,70,12,30,0);
insert into  orderdetails values(10316,41,7.7,10,0);
insert into  orderdetails values(10316,62,39.4,70,0);
insert into  orderdetails values(10317,1,14.4,20,0);
insert into  orderdetails values(10318,41,7.7,20,0);
insert into  orderdetails values(10318,76,14.4,6,0);
insert into  orderdetails values(10319,17,31.2,8,0);
insert into  orderdetails values(10319,28,36.4,14,0);
insert into  orderdetails values(10319,76,14.4,30,0);
insert into  orderdetails values(10320,71,17.2,30,0);
insert into  orderdetails values(10321,35,14.4,10,0);
insert into  orderdetails values(10322,52,5.6,20,0);
insert into  orderdetails values(10323,15,12.4,5,0);
insert into  orderdetails values(10323,25,11.2,4,0);
insert into  orderdetails values(10323,39,14.4,4,0);
insert into  orderdetails values(10324,16,13.9,21,0.15);
insert into  orderdetails values(10324,35,14.4,70,0.15);
insert into  orderdetails values(10324,46,9.6,30,0);
insert into  orderdetails values(10324,59,44,40,0.15);
insert into  orderdetails values(10324,63,35.1,80,0.15);
insert into  orderdetails values(10325,6,20,6,0);
insert into  orderdetails values(10325,13,4.8,12,0);
insert into  orderdetails values(10325,14,18.6,9,0);
insert into  orderdetails values(10325,31,10,4,0);
insert into  orderdetails values(10325,72,27.8,40,0);
insert into  orderdetails values(10326,4,17.6,24,0);
insert into  orderdetails values(10326,57,15.6,16,0);
insert into  orderdetails values(10326,75,6.2,50,0);
insert into  orderdetails values(10327,2,15.2,25,0.2);
insert into  orderdetails values(10327,11,16.8,50,0.2);
insert into  orderdetails values(10327,30,20.7,35,0.2);
insert into  orderdetails values(10327,58,10.6,30,0.2);
insert into  orderdetails values(10328,59,44,9,0);
insert into  orderdetails values(10328,65,16.8,40,0);
insert into  orderdetails values(10328,68,10,10,0);
insert into  orderdetails values(10329,19,7.3,10,0.05);
insert into  orderdetails values(10329,30,20.7,8,0.05);
insert into  orderdetails values(10329,38,210.8,20,0.05);
insert into  orderdetails values(10329,56,30.4,12,0.05);
insert into  orderdetails values(10330,26,24.9,50,0.15);
insert into  orderdetails values(10330,72,27.8,25,0.15);
insert into  orderdetails values(10331,54,5.9,15,0);
insert into  orderdetails values(10332,18,50,40,0.2);
insert into  orderdetails values(10332,42,11.2,10,0.2);
insert into  orderdetails values(10332,47,7.6,16,0.2);
insert into  orderdetails values(10333,14,18.6,10,0);
insert into  orderdetails values(10333,21,8,10,0.1);
insert into  orderdetails values(10333,71,17.2,40,0.1);
insert into  orderdetails values(10334,52,5.6,8,0);
insert into  orderdetails values(10334,68,10,10,0);
insert into  orderdetails values(10335,2,15.2,7,0.2);
insert into  orderdetails values(10335,31,10,25,0.2);
insert into  orderdetails values(10335,32,25.6,6,0.2);
insert into  orderdetails values(10335,51,42.4,48,0.2);
insert into  orderdetails values(10336,4,17.6,18,0.1);
insert into  orderdetails values(10337,23,7.2,40,0);
insert into  orderdetails values(10337,26,24.9,24,0);
insert into  orderdetails values(10337,36,15.2,20,0);
insert into  orderdetails values(10337,37,20.8,28,0);
insert into  orderdetails values(10337,72,27.8,25,0);
insert into  orderdetails values(10338,17,31.2,20,0);
insert into  orderdetails values(10338,30,20.7,15,0);
insert into  orderdetails values(10339,4,17.6,10,0);
insert into  orderdetails values(10339,17,31.2,70,0.05);
insert into  orderdetails values(10339,62,39.4,28,0);
insert into  orderdetails values(10340,18,50,20,0.05);
insert into  orderdetails values(10340,41,7.7,12,0.05);
insert into  orderdetails values(10340,43,36.8,40,0.05);
insert into  orderdetails values(10341,33,2,8,0);
insert into  orderdetails values(10341,59,44,9,0.15);
insert into  orderdetails values(10342,2,15.2,24,0.2);
insert into  orderdetails values(10342,31,10,56,0.2);
insert into  orderdetails values(10342,36,15.2,40,0.2);
insert into  orderdetails values(10342,55,19.2,40,0.2);
insert into  orderdetails values(10343,64,26.6,50,0);
insert into  orderdetails values(10343,68,10,4,0.05);
insert into  orderdetails values(10343,76,14.4,15,0);
insert into  orderdetails values(10344,4,17.6,35,0);
insert into  orderdetails values(10344,8,32,70,0.25);
insert into  orderdetails values(10345,8,32,70,0);
insert into  orderdetails values(10345,19,7.3,80,0);
insert into  orderdetails values(10345,42,11.2,9,0);
insert into  orderdetails values(10346,17,31.2,36,0.1);
insert into  orderdetails values(10346,56,30.4,20,0);
insert into  orderdetails values(10347,25,11.2,10,0);
insert into  orderdetails values(10347,39,14.4,50,0.15);
insert into  orderdetails values(10347,40,14.7,4,0);
insert into  orderdetails values(10347,75,6.2,6,0.15);
insert into  orderdetails values(10348,1,14.4,15,0.15);
insert into  orderdetails values(10348,23,7.2,25,0);
insert into  orderdetails values(10349,54,5.9,24,0);
insert into  orderdetails values(10350,50,13,15,0.1);
insert into  orderdetails values(10350,69,28.8,18,0.1);
insert into  orderdetails values(10351,38,210.8,20,0.05);
insert into  orderdetails values(10351,41,7.7,13,0);
insert into  orderdetails values(10351,44,15.5,77,0.05);
insert into  orderdetails values(10351,65,16.8,10,0.05);
insert into  orderdetails values(10352,24,3.6,10,0);
insert into  orderdetails values(10352,54,5.9,20,0.15);
insert into  orderdetails values(10353,11,16.8,12,0.2);
insert into  orderdetails values(10353,38,210.8,50,0.2);
insert into  orderdetails values(10354,1,14.4,12,0);
insert into  orderdetails values(10354,29,99,4,0);
insert into  orderdetails values(10355,24,3.6,25,0);
insert into  orderdetails values(10355,57,15.6,25,0);
insert into  orderdetails values(10356,31,10,30,0);
insert into  orderdetails values(10356,55,19.2,12,0);
insert into  orderdetails values(10356,69,28.8,20,0);
insert into  orderdetails values(10357,10,24.8,30,0.2);
insert into  orderdetails values(10357,26,24.9,16,0);
insert into  orderdetails values(10357,60,27.2,8,0.2);
insert into  orderdetails values(10358,24,3.6,10,0.05);
insert into  orderdetails values(10358,34,11.2,10,0.05);
insert into  orderdetails values(10358,36,15.2,20,0.05);
insert into  orderdetails values(10359,16,13.9,56,0.05);
insert into  orderdetails values(10359,31,10,70,0.05);
insert into  orderdetails values(10359,60,27.2,80,0.05);
insert into  orderdetails values(10360,28,36.4,30,0);
insert into  orderdetails values(10360,29,99,35,0);
insert into  orderdetails values(10360,38,210.8,10,0);
insert into  orderdetails values(10360,49,16,35,0);
insert into  orderdetails values(10360,54,5.9,28,0);
insert into  orderdetails values(10361,39,14.4,54,0.1);
insert into  orderdetails values(10361,60,27.2,55,0.1);
insert into  orderdetails values(10362,25,11.2,50,0);
insert into  orderdetails values(10362,51,42.4,20,0);
insert into  orderdetails values(10362,54,5.9,24,0);
insert into  orderdetails values(10363,31,10,20,0);
insert into  orderdetails values(10363,75,6.2,12,0);
insert into  orderdetails values(10363,76,14.4,12,0);
insert into  orderdetails values(10364,69,28.8,30,0);
insert into  orderdetails values(10364,71,17.2,5,0);
insert into  orderdetails values(10365,11,16.8,24,0);
insert into  orderdetails values(10366,65,16.8,5,0);
insert into  orderdetails values(10366,77,10.4,5,0);
insert into  orderdetails values(10367,34,11.2,36,0);
insert into  orderdetails values(10367,54,5.9,18,0);
insert into  orderdetails values(10367,65,16.8,15,0);
insert into  orderdetails values(10367,77,10.4,7,0);
insert into  orderdetails values(10368,21,8,5,0.1);
insert into  orderdetails values(10368,28,36.4,13,0.1);
insert into  orderdetails values(10368,57,15.6,25,0);
insert into  orderdetails values(10368,64,26.6,35,0.1);
insert into  orderdetails values(10369,29,99,20,0);
insert into  orderdetails values(10369,56,30.4,18,0.25);
insert into  orderdetails values(10370,1,14.4,15,0.15);
insert into  orderdetails values(10370,64,26.6,30,0);
insert into  orderdetails values(10370,74,8,20,0.15);
insert into  orderdetails values(10371,36,15.2,6,0.2);
insert into  orderdetails values(10372,20,64.8,12,0.25);
insert into  orderdetails values(10372,38,210.8,40,0.25);
insert into  orderdetails values(10372,60,27.2,70,0.25);
insert into  orderdetails values(10372,72,27.8,42,0.25);
insert into  orderdetails values(10373,58,10.6,80,0.2);
insert into  orderdetails values(10373,71,17.2,50,0.2);
insert into  orderdetails values(10374,31,10,30,0);
insert into  orderdetails values(10374,58,10.6,15,0);
insert into  orderdetails values(10375,14,18.6,15,0);
insert into  orderdetails values(10375,54,5.9,10,0);
insert into  orderdetails values(10376,31,10,42,0.05);
insert into  orderdetails values(10377,28,36.4,20,0.15);
insert into  orderdetails values(10377,39,14.4,20,0.15);
insert into  orderdetails values(10378,71,17.2,6,0);
insert into  orderdetails values(10379,41,7.7,8,0.1);
insert into  orderdetails values(10379,63,35.1,16,0.1);
insert into  orderdetails values(10379,65,16.8,20,0.1);
insert into  orderdetails values(10380,30,20.7,18,0.1);
insert into  orderdetails values(10380,53,26.2,20,0.1);
insert into  orderdetails values(10380,60,27.2,6,0.1);
insert into  orderdetails values(10380,70,12,30,0);
insert into  orderdetails values(10381,74,8,14,0);
insert into  orderdetails values(10382,5,17,32,0);
insert into  orderdetails values(10382,18,50,9,0);
insert into  orderdetails values(10382,29,99,14,0);
insert into  orderdetails values(10382,33,2,60,0);
insert into  orderdetails values(10382,74,8,50,0);
insert into  orderdetails values(10383,13,4.8,20,0);
insert into  orderdetails values(10383,50,13,15,0);
insert into  orderdetails values(10383,56,30.4,20,0);
insert into  orderdetails values(10384,20,64.8,28,0);
insert into  orderdetails values(10384,60,27.2,15,0);
insert into  orderdetails values(10385,7,24,10,0.2);
insert into  orderdetails values(10385,60,27.2,20,0.2);
insert into  orderdetails values(10385,68,10,8,0.2);
insert into  orderdetails values(10386,24,3.6,15,0);
insert into  orderdetails values(10386,34,11.2,10,0);
insert into  orderdetails values(10387,24,3.6,15,0);
insert into  orderdetails values(10387,28,36.4,6,0);
insert into  orderdetails values(10387,59,44,12,0);
insert into  orderdetails values(10387,71,17.2,15,0);
insert into  orderdetails values(10388,45,7.6,15,0.2);
insert into  orderdetails values(10388,52,5.6,20,0.2);
insert into  orderdetails values(10388,53,26.2,40,0);
insert into  orderdetails values(10389,10,24.8,16,0);
insert into  orderdetails values(10389,55,19.2,15,0);
insert into  orderdetails values(10389,62,39.4,20,0);
insert into  orderdetails values(10389,70,12,30,0);
insert into  orderdetails values(10390,31,10,60,0.1);
insert into  orderdetails values(10390,35,14.4,40,0.1);
insert into  orderdetails values(10390,46,9.6,45,0);
insert into  orderdetails values(10390,72,27.8,24,0.1);
insert into  orderdetails values(10391,13,4.8,18,0);
insert into  orderdetails values(10392,69,28.8,50,0);
insert into  orderdetails values(10393,2,15.2,25,0.25);
insert into  orderdetails values(10393,14,18.6,42,0.25);
insert into  orderdetails values(10393,25,11.2,7,0.25);
insert into  orderdetails values(10393,26,24.9,70,0.25);
insert into  orderdetails values(10393,31,10,32,0);
insert into  orderdetails values(10394,13,4.8,10,0);
insert into  orderdetails values(10394,62,39.4,10,0);
insert into  orderdetails values(10395,46,9.6,28,0.1);
insert into  orderdetails values(10395,53,26.2,70,0.1);
insert into  orderdetails values(10395,69,28.8,8,0);
insert into  orderdetails values(10396,23,7.2,40,0);
insert into  orderdetails values(10396,71,17.2,60,0);
insert into  orderdetails values(10396,72,27.8,21,0);
insert into  orderdetails values(10397,21,8,10,0.15);
insert into  orderdetails values(10397,51,42.4,18,0.15);
insert into  orderdetails values(10398,35,14.4,30,0);
insert into  orderdetails values(10398,55,19.2,120,0.1);
insert into  orderdetails values(10399,68,10,60,0);
insert into  orderdetails values(10399,71,17.2,30,0);
insert into  orderdetails values(10399,76,14.4,35,0);
insert into  orderdetails values(10399,77,10.4,14,0);
insert into  orderdetails values(10400,29,99,21,0);
insert into  orderdetails values(10400,35,14.4,35,0);
insert into  orderdetails values(10400,49,16,30,0);
insert into  orderdetails values(10401,30,20.7,18,0);
insert into  orderdetails values(10401,56,30.4,70,0);
insert into  orderdetails values(10401,65,16.8,20,0);
insert into  orderdetails values(10401,71,17.2,60,0);
insert into  orderdetails values(10402,23,7.2,60,0);
insert into  orderdetails values(10402,63,35.1,65,0);
insert into  orderdetails values(10403,16,13.9,21,0.15);
insert into  orderdetails values(10403,48,10.2,70,0.15);
insert into  orderdetails values(10404,26,24.9,30,0.05);
insert into  orderdetails values(10404,42,11.2,40,0.05);
insert into  orderdetails values(10404,49,16,30,0.05);
insert into  orderdetails values(10405,3,8,50,0);
insert into  orderdetails values(10406,1,14.4,10,0);
insert into  orderdetails values(10406,21,8,30,0.1);
insert into  orderdetails values(10406,28,36.4,42,0.1);
insert into  orderdetails values(10406,36,15.2,5,0.1);
insert into  orderdetails values(10406,40,14.7,2,0.1);
insert into  orderdetails values(10407,11,16.8,30,0);
insert into  orderdetails values(10407,69,28.8,15,0);
insert into  orderdetails values(10407,71,17.2,15,0);
insert into  orderdetails values(10408,37,20.8,10,0);
insert into  orderdetails values(10408,54,5.9,6,0);
insert into  orderdetails values(10408,62,39.4,35,0);
insert into  orderdetails values(10409,14,18.6,12,0);
insert into  orderdetails values(10409,21,8,12,0);
insert into  orderdetails values(10410,33,2,49,0);
insert into  orderdetails values(10410,59,44,16,0);
insert into  orderdetails values(10411,41,7.7,25,0.2);
insert into  orderdetails values(10411,44,15.5,40,0.2);
insert into  orderdetails values(10411,59,44,9,0.2);
insert into  orderdetails values(10412,14,18.6,20,0.1);
insert into  orderdetails values(10413,1,14.4,24,0);
insert into  orderdetails values(10413,62,39.4,40,0);
insert into  orderdetails values(10413,76,14.4,14,0);
insert into  orderdetails values(10414,19,7.3,18,0.05);
insert into  orderdetails values(10414,33,2,50,0);
insert into  orderdetails values(10415,17,31.2,2,0);
insert into  orderdetails values(10415,33,2,20,0);
insert into  orderdetails values(10416,19,7.3,20,0);
insert into  orderdetails values(10416,53,26.2,10,0);
insert into  orderdetails values(10416,57,15.6,20,0);
insert into  orderdetails values(10417,38,210.8,50,0);
insert into  orderdetails values(10417,46,9.6,2,0.25);
insert into  orderdetails values(10417,68,10,36,0.25);
insert into  orderdetails values(10417,77,10.4,35,0);
insert into  orderdetails values(10418,2,15.2,60,0);
insert into  orderdetails values(10418,47,7.6,55,0);
insert into  orderdetails values(10418,61,22.8,16,0);
insert into  orderdetails values(10418,74,8,15,0);
insert into  orderdetails values(10419,60,27.2,60,0.05);
insert into  orderdetails values(10419,69,28.8,20,0.05);
insert into  orderdetails values(10420,9,77.6,20,0.1);
insert into  orderdetails values(10420,13,4.8,2,0.1);
insert into  orderdetails values(10420,70,12,8,0.1);
insert into  orderdetails values(10420,73,12,20,0.1);
insert into  orderdetails values(10421,19,7.3,4,0.15);
insert into  orderdetails values(10421,26,24.9,30,0);
insert into  orderdetails values(10421,53,26.2,15,0.15);
insert into  orderdetails values(10421,77,10.4,10,0.15);
insert into  orderdetails values(10422,26,24.9,2,0);
insert into  orderdetails values(10423,31,10,14,0);
insert into  orderdetails values(10423,59,44,20,0);
insert into  orderdetails values(10424,35,14.4,60,0.2);
insert into  orderdetails values(10424,38,210.8,49,0.2);
insert into  orderdetails values(10424,68,10,30,0.2);
insert into  orderdetails values(10425,55,19.2,10,0.25);
insert into  orderdetails values(10425,76,14.4,20,0.25);
insert into  orderdetails values(10426,56,30.4,5,0);
insert into  orderdetails values(10426,64,26.6,7,0);
insert into  orderdetails values(10427,14,18.6,35,0);
insert into  orderdetails values(10428,46,9.6,20,0);
insert into  orderdetails values(10429,50,13,40,0);
insert into  orderdetails values(10429,63,35.1,35,0.25);
insert into  orderdetails values(10430,17,31.2,45,0.2);
insert into  orderdetails values(10430,21,8,50,0);
insert into  orderdetails values(10430,56,30.4,30,0);
insert into  orderdetails values(10430,59,44,70,0.2);
insert into  orderdetails values(10431,17,31.2,50,0.25);
insert into  orderdetails values(10431,40,14.7,50,0.25);
insert into  orderdetails values(10431,47,7.6,30,0.25);
insert into  orderdetails values(10432,26,24.9,10,0);
insert into  orderdetails values(10432,54,5.9,40,0);
insert into  orderdetails values(10433,56,30.4,28,0);
insert into  orderdetails values(10434,11,16.8,6,0);
insert into  orderdetails values(10434,76,14.4,18,0.15);
insert into  orderdetails values(10435,2,15.2,10,0);
insert into  orderdetails values(10435,22,16.8,12,0);
insert into  orderdetails values(10435,72,27.8,10,0);
insert into  orderdetails values(10436,46,9.6,5,0);
insert into  orderdetails values(10436,56,30.4,40,0.1);
insert into  orderdetails values(10436,64,26.6,30,0.1);
insert into  orderdetails values(10436,75,6.2,24,0.1);
insert into  orderdetails values(10437,53,26.2,15,0);
insert into  orderdetails values(10438,19,7.3,15,0.2);
insert into  orderdetails values(10438,34,11.2,20,0.2);
insert into  orderdetails values(10438,57,15.6,15,0.2);
insert into  orderdetails values(10439,12,30.4,15,0);
insert into  orderdetails values(10439,16,13.9,16,0);
insert into  orderdetails values(10439,64,26.6,6,0);
insert into  orderdetails values(10439,74,8,30,0);
insert into  orderdetails values(10440,2,15.2,45,0.15);
insert into  orderdetails values(10440,16,13.9,49,0.15);
insert into  orderdetails values(10440,29,99,24,0.15);
insert into  orderdetails values(10440,61,22.8,90,0.15);
insert into  orderdetails values(10441,27,35.1,50,0);
insert into  orderdetails values(10442,11,16.8,30,0);
insert into  orderdetails values(10442,54,5.9,80,0);
insert into  orderdetails values(10442,66,13.6,60,0);
insert into  orderdetails values(10443,11,16.8,6,0.2);
insert into  orderdetails values(10443,28,36.4,12,0);
insert into  orderdetails values(10444,17,31.2,10,0);
insert into  orderdetails values(10444,26,24.9,15,0);
insert into  orderdetails values(10444,35,14.4,8,0);
insert into  orderdetails values(10444,41,7.7,30,0);
insert into  orderdetails values(10445,39,14.4,6,0);
insert into  orderdetails values(10445,54,5.9,15,0);
insert into  orderdetails values(10446,19,7.3,12,0.1);
insert into  orderdetails values(10446,24,3.6,20,0.1);
insert into  orderdetails values(10446,31,10,3,0.1);
insert into  orderdetails values(10446,52,5.6,15,0.1);
insert into  orderdetails values(10447,19,7.3,40,0);
insert into  orderdetails values(10447,65,16.8,35,0);
insert into  orderdetails values(10447,71,17.2,2,0);
insert into  orderdetails values(10448,26,24.9,6,0);
insert into  orderdetails values(10448,40,14.7,20,0);
insert into  orderdetails values(10449,10,24.8,14,0);
insert into  orderdetails values(10449,52,5.6,20,0);
insert into  orderdetails values(10449,62,39.4,35,0);
insert into  orderdetails values(10450,10,24.8,20,0.2);
insert into  orderdetails values(10450,54,5.9,6,0.2);
insert into  orderdetails values(10451,55,19.2,120,0.1);
insert into  orderdetails values(10451,64,26.6,35,0.1);
insert into  orderdetails values(10451,65,16.8,28,0.1);
insert into  orderdetails values(10451,77,10.4,55,0.1);
insert into  orderdetails values(10452,28,36.4,15,0);
insert into  orderdetails values(10452,44,15.5,100,0.05);
insert into  orderdetails values(10453,48,10.2,15,0.1);
insert into  orderdetails values(10453,70,12,25,0.1);
insert into  orderdetails values(10454,16,13.9,20,0.2);
insert into  orderdetails values(10454,33,2,20,0.2);
insert into  orderdetails values(10454,46,9.6,10,0.2);
insert into  orderdetails values(10455,39,14.4,20,0);
insert into  orderdetails values(10455,53,26.2,50,0);
insert into  orderdetails values(10455,61,22.8,25,0);
insert into  orderdetails values(10455,71,17.2,30,0);
insert into  orderdetails values(10456,21,8,40,0.15);
insert into  orderdetails values(10456,49,16,21,0.15);
insert into  orderdetails values(10457,59,44,36,0);
insert into  orderdetails values(10458,26,24.9,30,0);
insert into  orderdetails values(10458,28,36.4,30,0);
insert into  orderdetails values(10458,43,36.8,20,0);
insert into  orderdetails values(10458,56,30.4,15,0);
insert into  orderdetails values(10458,71,17.2,50,0);
insert into  orderdetails values(10459,7,24,16,0.05);
insert into  orderdetails values(10459,46,9.6,20,0.05);
insert into  orderdetails values(10459,72,27.8,40,0);
insert into  orderdetails values(10460,68,10,21,0.25);
insert into  orderdetails values(10460,75,6.2,4,0.25);
insert into  orderdetails values(10461,21,8,40,0.25);
insert into  orderdetails values(10461,30,20.7,28,0.25);
insert into  orderdetails values(10461,55,19.2,60,0.25);
insert into  orderdetails values(10462,13,4.8,1,0);
insert into  orderdetails values(10462,23,7.2,21,0);
insert into  orderdetails values(10463,19,7.3,21,0);
insert into  orderdetails values(10463,42,11.2,50,0);
insert into  orderdetails values(10464,4,17.6,16,0.2);
insert into  orderdetails values(10464,43,36.8,3,0);
insert into  orderdetails values(10464,56,30.4,30,0.2);
insert into  orderdetails values(10464,60,27.2,20,0);
insert into  orderdetails values(10465,24,3.6,25,0);
insert into  orderdetails values(10465,29,99,18,0.1);
insert into  orderdetails values(10465,40,14.7,20,0);
insert into  orderdetails values(10465,45,7.6,30,0.1);
insert into  orderdetails values(10465,50,13,25,0);
insert into  orderdetails values(10466,11,16.8,10,0);
insert into  orderdetails values(10466,46,9.6,5,0);
insert into  orderdetails values(10467,24,3.6,28,0);
insert into  orderdetails values(10467,25,11.2,12,0);
insert into  orderdetails values(10468,30,20.7,8,0);
insert into  orderdetails values(10468,43,36.8,15,0);
insert into  orderdetails values(10469,2,15.2,40,0.15);
insert into  orderdetails values(10469,16,13.9,35,0.15);
insert into  orderdetails values(10469,44,15.5,2,0.15);
insert into  orderdetails values(10470,18,50,30,0);
insert into  orderdetails values(10470,23,7.2,15,0);
insert into  orderdetails values(10470,64,26.6,8,0);
insert into  orderdetails values(10471,7,24,30,0);
insert into  orderdetails values(10471,56,30.4,20,0);
insert into  orderdetails values(10472,24,3.6,80,0.05);
insert into  orderdetails values(10472,51,42.4,18,0);
insert into  orderdetails values(10473,33,2,12,0);
insert into  orderdetails values(10473,71,17.2,12,0);
insert into  orderdetails values(10474,14,18.6,12,0);
insert into  orderdetails values(10474,28,36.4,18,0);
insert into  orderdetails values(10474,40,14.7,21,0);
insert into  orderdetails values(10474,75,6.2,10,0);
insert into  orderdetails values(10475,31,10,35,0.15);
insert into  orderdetails values(10475,66,13.6,60,0.15);
insert into  orderdetails values(10475,76,14.4,42,0.15);
insert into  orderdetails values(10476,55,19.2,2,0.05);
insert into  orderdetails values(10476,70,12,12,0);
insert into  orderdetails values(10477,1,14.4,15,0);
insert into  orderdetails values(10477,21,8,21,0.25);
insert into  orderdetails values(10477,39,14.4,20,0.25);
insert into  orderdetails values(10478,10,24.8,20,0.05);
insert into  orderdetails values(10479,38,210.8,30,0);
insert into  orderdetails values(10479,53,26.2,28,0);
insert into  orderdetails values(10479,59,44,60,0);
insert into  orderdetails values(10479,64,26.6,30,0);
insert into  orderdetails values(10480,47,7.6,30,0);
insert into  orderdetails values(10480,59,44,12,0);
insert into  orderdetails values(10481,49,16,24,0);
insert into  orderdetails values(10481,60,27.2,40,0);
insert into  orderdetails values(10482,40,14.7,10,0);
insert into  orderdetails values(10483,34,11.2,35,0.05);
insert into  orderdetails values(10483,77,10.4,30,0.05);
insert into  orderdetails values(10484,21,8,14,0);
insert into  orderdetails values(10484,40,14.7,10,0);
insert into  orderdetails values(10484,51,42.4,3,0);
insert into  orderdetails values(10485,2,15.2,20,0.1);
insert into  orderdetails values(10485,3,8,20,0.1);
insert into  orderdetails values(10485,55,19.2,30,0.1);
insert into  orderdetails values(10485,70,12,60,0.1);
insert into  orderdetails values(10486,11,16.8,5,0);
insert into  orderdetails values(10486,51,42.4,25,0);
insert into  orderdetails values(10486,74,8,16,0);
insert into  orderdetails values(10487,19,7.3,5,0);
insert into  orderdetails values(10487,26,24.9,30,0);
insert into  orderdetails values(10487,54,5.9,24,0.25);
insert into  orderdetails values(10488,59,44,30,0);
insert into  orderdetails values(10488,73,12,20,0.2);
insert into  orderdetails values(10489,11,16.8,15,0.25);
insert into  orderdetails values(10489,16,13.9,18,0);
insert into  orderdetails values(10490,59,44,60,0);
insert into  orderdetails values(10490,68,10,30,0);
insert into  orderdetails values(10490,75,6.2,36,0);
insert into  orderdetails values(10491,44,15.5,15,0.15);
insert into  orderdetails values(10491,77,10.4,7,0.15);
insert into  orderdetails values(10492,25,11.2,60,0.05);
insert into  orderdetails values(10492,42,11.2,20,0.05);
insert into  orderdetails values(10493,65,16.8,15,0.1);
insert into  orderdetails values(10493,66,13.6,10,0.1);
insert into  orderdetails values(10493,69,28.8,10,0.1);
insert into  orderdetails values(10494,56,30.4,30,0);
insert into  orderdetails values(10495,23,7.2,10,0);
insert into  orderdetails values(10495,41,7.7,20,0);
insert into  orderdetails values(10495,77,10.4,5,0);
insert into  orderdetails values(10496,31,10,20,0.05);
insert into  orderdetails values(10497,56,30.4,14,0);
insert into  orderdetails values(10497,72,27.8,25,0);
insert into  orderdetails values(10497,77,10.4,25,0);
insert into  orderdetails values(10498,24,4.5,14,0);
insert into  orderdetails values(10498,40,18.4,5,0);
insert into  orderdetails values(10498,42,14,30,0);
insert into  orderdetails values(10499,28,45.6,20,0);
insert into  orderdetails values(10499,49,20,25,0);
insert into  orderdetails values(10500,15,15.5,12,0.05);
insert into  orderdetails values(10500,28,45.6,8,0.05);
insert into  orderdetails values(10501,54,7.45,20,0);
insert into  orderdetails values(10502,45,9.5,21,0);
insert into  orderdetails values(10502,53,32.8,6,0);
insert into  orderdetails values(10502,67,14,30,0);
insert into  orderdetails values(10503,14,23.25,70,0);
insert into  orderdetails values(10503,65,21.05,20,0);
insert into  orderdetails values(10504,2,19,12,0);
insert into  orderdetails values(10504,21,10,12,0);
insert into  orderdetails values(10504,53,32.8,10,0);
insert into  orderdetails values(10504,61,28.5,25,0);
insert into  orderdetails values(10505,62,49.3,3,0);
insert into  orderdetails values(10506,25,14,18,0.1);
insert into  orderdetails values(10506,70,15,14,0.1);
insert into  orderdetails values(10507,43,46,15,0.15);
insert into  orderdetails values(10507,48,12.75,15,0.15);
insert into  orderdetails values(10508,13,6,10,0);
insert into  orderdetails values(10508,39,18,10,0);
insert into  orderdetails values(10509,28,45.6,3,0);
insert into  orderdetails values(10510,29,123.79,36,0);
insert into  orderdetails values(10510,75,7.75,36,0.1);
insert into  orderdetails values(10511,4,22,50,0.15);
insert into  orderdetails values(10511,7,30,50,0.15);
insert into  orderdetails values(10511,8,40,10,0.15);
insert into  orderdetails values(10512,24,4.5,10,0.15);
insert into  orderdetails values(10512,46,12,9,0.15);
insert into  orderdetails values(10512,47,9.5,6,0.15);
insert into  orderdetails values(10512,60,34,12,0.15);
insert into  orderdetails values(10513,21,10,40,0.2);
insert into  orderdetails values(10513,32,32,50,0.2);
insert into  orderdetails values(10513,61,28.5,15,0.2);
insert into  orderdetails values(10514,20,81,39,0);
insert into  orderdetails values(10514,28,45.6,35,0);
insert into  orderdetails values(10514,56,38,70,0);
insert into  orderdetails values(10514,65,21.05,39,0);
insert into  orderdetails values(10514,75,7.75,50,0);
insert into  orderdetails values(10515,9,97,16,0.15);
insert into  orderdetails values(10515,16,17.45,50,0);
insert into  orderdetails values(10515,27,43.9,120,0);
insert into  orderdetails values(10515,33,2.5,16,0.15);
insert into  orderdetails values(10515,60,34,84,0.15);
insert into  orderdetails values(10516,18,62.5,25,0.1);
insert into  orderdetails values(10516,41,9.65,80,0.1);
insert into  orderdetails values(10516,42,14,20,0);
insert into  orderdetails values(10517,52,7,6,0);
insert into  orderdetails values(10517,59,55,4,0);
insert into  orderdetails values(10517,70,15,6,0);
insert into  orderdetails values(10518,24,4.5,5,0);
insert into  orderdetails values(10518,38,263.5,15,0);
insert into  orderdetails values(10518,44,19.45,9,0);
insert into  orderdetails values(10519,10,31,16,0.05);
insert into  orderdetails values(10519,56,38,40,0);
insert into  orderdetails values(10519,60,34,10,0.05);
insert into  orderdetails values(10520,24,4.5,8,0);
insert into  orderdetails values(10520,53,32.8,5,0);
insert into  orderdetails values(10521,35,18,3,0);
insert into  orderdetails values(10521,41,9.65,10,0);
insert into  orderdetails values(10521,68,12.5,6,0);
insert into  orderdetails values(10522,1,18,40,0.2);
insert into  orderdetails values(10522,8,40,24,0);
insert into  orderdetails values(10522,30,25.89,20,0.2);
insert into  orderdetails values(10522,40,18.4,25,0.2);
insert into  orderdetails values(10523,17,39,25,0.1);
insert into  orderdetails values(10523,20,81,15,0.1);
insert into  orderdetails values(10523,37,26,18,0.1);
insert into  orderdetails values(10523,41,9.65,6,0.1);
insert into  orderdetails values(10524,10,31,2,0);
insert into  orderdetails values(10524,30,25.89,10,0);
insert into  orderdetails values(10524,43,46,60,0);
insert into  orderdetails values(10524,54,7.45,15,0);
insert into  orderdetails values(10525,36,19,30,0);
insert into  orderdetails values(10525,40,18.4,15,0.1);
insert into  orderdetails values(10526,1,18,8,0.15);
insert into  orderdetails values(10526,13,6,10,0);
insert into  orderdetails values(10526,56,38,30,0.15);
insert into  orderdetails values(10527,4,22,50,0.1);
insert into  orderdetails values(10527,36,19,30,0.1);
insert into  orderdetails values(10528,11,21,3,0);
insert into  orderdetails values(10528,33,2.5,8,0.2);
insert into  orderdetails values(10528,72,34.8,9,0);
insert into  orderdetails values(10529,55,24,14,0);
insert into  orderdetails values(10529,68,12.5,20,0);
insert into  orderdetails values(10529,69,36,10,0);
insert into  orderdetails values(10530,17,39,40,0);
insert into  orderdetails values(10530,43,46,25,0);
insert into  orderdetails values(10530,61,28.5,20,0);
insert into  orderdetails values(10530,76,18,50,0);
insert into  orderdetails values(10531,59,55,2,0);
insert into  orderdetails values(10532,30,25.89,15,0);
insert into  orderdetails values(10532,66,17,24,0);
insert into  orderdetails values(10533,4,22,50,0.05);
insert into  orderdetails values(10533,72,34.8,24,0);
insert into  orderdetails values(10533,73,15,24,0.05);
insert into  orderdetails values(10534,30,25.89,10,0);
insert into  orderdetails values(10534,40,18.4,10,0.2);
insert into  orderdetails values(10534,54,7.45,10,0.2);
insert into  orderdetails values(10535,11,21,50,0.1);
insert into  orderdetails values(10535,40,18.4,10,0.1);
insert into  orderdetails values(10535,57,19.5,5,0.1);
insert into  orderdetails values(10535,59,55,15,0.1);
insert into  orderdetails values(10536,12,38,15,0.25);
insert into  orderdetails values(10536,31,12.5,20,0);
insert into  orderdetails values(10536,33,2.5,30,0);
insert into  orderdetails values(10536,60,34,35,0.25);
insert into  orderdetails values(10537,31,12.5,30,0);
insert into  orderdetails values(10537,51,53,6,0);
insert into  orderdetails values(10537,58,13.25,20,0);
insert into  orderdetails values(10537,72,34.8,21,0);
insert into  orderdetails values(10537,73,15,9,0);
insert into  orderdetails values(10538,70,15,7,0);
insert into  orderdetails values(10538,72,34.8,1,0);
insert into  orderdetails values(10539,13,6,8,0);
insert into  orderdetails values(10539,21,10,15,0);
insert into  orderdetails values(10539,33,2.5,15,0);
insert into  orderdetails values(10539,49,20,6,0);
insert into  orderdetails values(10540,3,10,60,0);
insert into  orderdetails values(10540,26,31.23,40,0);
insert into  orderdetails values(10540,38,263.5,30,0);
insert into  orderdetails values(10540,68,12.5,35,0);
insert into  orderdetails values(10541,24,4.5,35,0.1);
insert into  orderdetails values(10541,38,263.5,4,0.1);
insert into  orderdetails values(10541,65,21.05,36,0.1);
insert into  orderdetails values(10541,71,21.5,9,0.1);
insert into  orderdetails values(10542,11,21,15,0.05);
insert into  orderdetails values(10542,54,7.45,24,0.05);
insert into  orderdetails values(10543,12,38,30,0.15);
insert into  orderdetails values(10543,23,9,70,0.15);
insert into  orderdetails values(10544,28,45.6,7,0);
insert into  orderdetails values(10544,67,14,7,0);
insert into  orderdetails values(10545,11,21,10,0);
insert into  orderdetails values(10546,7,30,10,0);
insert into  orderdetails values(10546,35,18,30,0);
insert into  orderdetails values(10546,62,49.3,40,0);
insert into  orderdetails values(10547,32,32,24,0.15);
insert into  orderdetails values(10547,36,19,60,0);
insert into  orderdetails values(10548,34,14,10,0.25);
insert into  orderdetails values(10548,41,9.65,14,0);
insert into  orderdetails values(10549,31,12.5,55,0.15);
insert into  orderdetails values(10549,45,9.5,100,0.15);
insert into  orderdetails values(10549,51,53,48,0.15);
insert into  orderdetails values(10550,17,39,8,0.1);
insert into  orderdetails values(10550,19,9.2,10,0);
insert into  orderdetails values(10550,21,10,6,0.1);
insert into  orderdetails values(10550,61,28.5,10,0.1);
insert into  orderdetails values(10551,16,17.45,40,0.15);
insert into  orderdetails values(10551,35,18,20,0.15);
insert into  orderdetails values(10551,44,19.45,40,0);
insert into  orderdetails values(10552,69,36,18,0);
insert into  orderdetails values(10552,75,7.75,30,0);
insert into  orderdetails values(10553,11,21,15,0);
insert into  orderdetails values(10553,16,17.45,14,0);
insert into  orderdetails values(10553,22,21,24,0);
insert into  orderdetails values(10553,31,12.5,30,0);
insert into  orderdetails values(10553,35,18,6,0);
insert into  orderdetails values(10554,16,17.45,30,0.05);
insert into  orderdetails values(10554,23,9,20,0.05);
insert into  orderdetails values(10554,62,49.3,20,0.05);
insert into  orderdetails values(10554,77,13,10,0.05);
insert into  orderdetails values(10555,14,23.25,30,0.2);
insert into  orderdetails values(10555,19,9.2,35,0.2);
insert into  orderdetails values(10555,24,4.5,18,0.2);
insert into  orderdetails values(10555,51,53,20,0.2);
insert into  orderdetails values(10555,56,38,40,0.2);
insert into  orderdetails values(10556,72,34.8,24,0);
insert into  orderdetails values(10557,64,33.25,30,0);
insert into  orderdetails values(10557,75,7.75,20,0);
insert into  orderdetails values(10558,47,9.5,25,0);
insert into  orderdetails values(10558,51,53,20,0);
insert into  orderdetails values(10558,52,7,30,0);
insert into  orderdetails values(10558,53,32.8,18,0);
insert into  orderdetails values(10558,73,15,3,0);
insert into  orderdetails values(10559,41,9.65,12,0.05);
insert into  orderdetails values(10559,55,24,18,0.05);
insert into  orderdetails values(10560,30,25.89,20,0);
insert into  orderdetails values(10560,62,49.3,15,0.25);
insert into  orderdetails values(10561,44,19.45,10,0);
insert into  orderdetails values(10561,51,53,50,0);
insert into  orderdetails values(10562,33,2.5,20,0.1);
insert into  orderdetails values(10562,62,49.3,10,0.1);
insert into  orderdetails values(10563,36,19,25,0);
insert into  orderdetails values(10563,52,7,70,0);
insert into  orderdetails values(10564,17,39,16,0.05);
insert into  orderdetails values(10564,31,12.5,6,0.05);
insert into  orderdetails values(10564,55,24,25,0.05);
insert into  orderdetails values(10565,24,4.5,25,0.1);
insert into  orderdetails values(10565,64,33.25,18,0.1);
insert into  orderdetails values(10566,11,21,35,0.15);
insert into  orderdetails values(10566,18,62.5,18,0.15);
insert into  orderdetails values(10566,76,18,10,0);
insert into  orderdetails values(10567,31,12.5,60,0.2);
insert into  orderdetails values(10567,51,53,3,0);
insert into  orderdetails values(10567,59,55,40,0.2);
insert into  orderdetails values(10568,10,31,5,0);
insert into  orderdetails values(10569,31,12.5,35,0.2);
insert into  orderdetails values(10569,76,18,30,0);
insert into  orderdetails values(10570,11,21,15,0.05);
insert into  orderdetails values(10570,56,38,60,0.05);
insert into  orderdetails values(10571,14,23.25,11,0.15);
insert into  orderdetails values(10571,42,14,28,0.15);
insert into  orderdetails values(10572,16,17.45,12,0.1);
insert into  orderdetails values(10572,32,32,10,0.1);
insert into  orderdetails values(10572,40,18.4,50,0);
insert into  orderdetails values(10572,75,7.75,15,0.1);
insert into  orderdetails values(10573,17,39,18,0);
insert into  orderdetails values(10573,34,14,40,0);
insert into  orderdetails values(10573,53,32.8,25,0);
insert into  orderdetails values(10574,33,2.5,14,0);
insert into  orderdetails values(10574,40,18.4,2,0);
insert into  orderdetails values(10574,62,49.3,10,0);
insert into  orderdetails values(10574,64,33.25,6,0);
insert into  orderdetails values(10575,59,55,12,0);
insert into  orderdetails values(10575,63,43.9,6,0);
insert into  orderdetails values(10575,72,34.8,30,0);
insert into  orderdetails values(10575,76,18,10,0);
insert into  orderdetails values(10576,1,18,10,0);
insert into  orderdetails values(10576,31,12.5,20,0);
insert into  orderdetails values(10576,44,19.45,21,0);
insert into  orderdetails values(10577,39,18,10,0);
insert into  orderdetails values(10577,75,7.75,20,0);
insert into  orderdetails values(10577,77,13,18,0);
insert into  orderdetails values(10578,35,18,20,0);
insert into  orderdetails values(10578,57,19.5,6,0);
insert into  orderdetails values(10579,15,15.5,10,0);
insert into  orderdetails values(10579,75,7.75,21,0);
insert into  orderdetails values(10580,14,23.25,15,0.05);
insert into  orderdetails values(10580,41,9.65,9,0.05);
insert into  orderdetails values(10580,65,21.05,30,0.05);
insert into  orderdetails values(10581,75,7.75,50,0.2);
insert into  orderdetails values(10582,57,19.5,4,0);
insert into  orderdetails values(10582,76,18,14,0);
insert into  orderdetails values(10583,29,123.79,10,0);
insert into  orderdetails values(10583,60,34,24,0.15);
insert into  orderdetails values(10583,69,36,10,0.15);
insert into  orderdetails values(10584,31,12.5,50,0.05);
insert into  orderdetails values(10585,47,9.5,15,0);
insert into  orderdetails values(10586,52,7,4,0.15);
insert into  orderdetails values(10587,26,31.23,6,0);
insert into  orderdetails values(10587,35,18,20,0);
insert into  orderdetails values(10587,77,13,20,0);
insert into  orderdetails values(10588,18,62.5,40,0.2);
insert into  orderdetails values(10588,42,14,100,0.2);
insert into  orderdetails values(10589,35,18,4,0);
insert into  orderdetails values(10590,1,18,20,0);
insert into  orderdetails values(10590,77,13,60,0.05);
insert into  orderdetails values(10591,3,10,14,0);
insert into  orderdetails values(10591,7,30,10,0);
insert into  orderdetails values(10591,54,7.45,50,0);
insert into  orderdetails values(10592,15,15.5,25,0.05);
insert into  orderdetails values(10592,26,31.23,5,0.05);
insert into  orderdetails values(10593,20,81,21,0.2);
insert into  orderdetails values(10593,69,36,20,0.2);
insert into  orderdetails values(10593,76,18,4,0.2);
insert into  orderdetails values(10594,52,7,24,0);
insert into  orderdetails values(10594,58,13.25,30,0);
insert into  orderdetails values(10595,35,18,30,0.25);
insert into  orderdetails values(10595,61,28.5,120,0.25);
insert into  orderdetails values(10595,69,36,65,0.25);
insert into  orderdetails values(10596,56,38,5,0.2);
insert into  orderdetails values(10596,63,43.9,24,0.2);
insert into  orderdetails values(10596,75,7.75,30,0.2);
insert into  orderdetails values(10597,24,4.5,35,0.2);
insert into  orderdetails values(10597,57,19.5,20,0);
insert into  orderdetails values(10597,65,21.05,12,0.2);
insert into  orderdetails values(10598,27,43.9,50,0);
insert into  orderdetails values(10598,71,21.5,9,0);
insert into  orderdetails values(10599,62,49.3,10,0);
insert into  orderdetails values(10600,54,7.45,4,0);
insert into  orderdetails values(10600,73,15,30,0);
insert into  orderdetails values(10601,13,6,60,0);
insert into  orderdetails values(10601,59,55,35,0);
insert into  orderdetails values(10602,77,13,5,0.25);
insert into  orderdetails values(10603,22,21,48,0);
insert into  orderdetails values(10603,49,20,25,0.05);
insert into  orderdetails values(10604,48,12.75,6,0.1);
insert into  orderdetails values(10604,76,18,10,0.1);
insert into  orderdetails values(10605,16,17.45,30,0.05);
insert into  orderdetails values(10605,59,55,20,0.05);
insert into  orderdetails values(10605,60,34,70,0.05);
insert into  orderdetails values(10605,71,21.5,15,0.05);
insert into  orderdetails values(10606,4,22,20,0.2);
insert into  orderdetails values(10606,55,24,20,0.2);
insert into  orderdetails values(10606,62,49.3,10,0.2);
insert into  orderdetails values(10607,7,30,45,0);
insert into  orderdetails values(10607,17,39,100,0);
insert into  orderdetails values(10607,33,2.5,14,0);
insert into  orderdetails values(10607,40,18.4,42,0);
insert into  orderdetails values(10607,72,34.8,12,0);
insert into  orderdetails values(10608,56,38,28,0);
insert into  orderdetails values(10609,1,18,3,0);
insert into  orderdetails values(10609,10,31,10,0);
insert into  orderdetails values(10609,21,10,6,0);
insert into  orderdetails values(10610,36,19,21,0.25);
insert into  orderdetails values(10611,1,18,6,0);
insert into  orderdetails values(10611,2,19,10,0);
insert into  orderdetails values(10611,60,34,15,0);
insert into  orderdetails values(10612,10,31,70,0);
insert into  orderdetails values(10612,36,19,55,0);
insert into  orderdetails values(10612,49,20,18,0);
insert into  orderdetails values(10612,60,34,40,0);
insert into  orderdetails values(10612,76,18,80,0);
insert into  orderdetails values(10613,13,6,8,0.1);
insert into  orderdetails values(10613,75,7.75,40,0);
insert into  orderdetails values(10614,11,21,14,0);
insert into  orderdetails values(10614,21,10,8,0);
insert into  orderdetails values(10614,39,18,5,0);
insert into  orderdetails values(10615,55,24,5,0);
insert into  orderdetails values(10616,38,263.5,15,0.05);
insert into  orderdetails values(10616,56,38,14,0);
insert into  orderdetails values(10616,70,15,15,0.05);
insert into  orderdetails values(10616,71,21.5,15,0.05);
insert into  orderdetails values(10617,59,55,30,0.15);
insert into  orderdetails values(10618,6,25,70,0);
insert into  orderdetails values(10618,56,38,20,0);
insert into  orderdetails values(10618,68,12.5,15,0);
insert into  orderdetails values(10619,21,10,42,0);
insert into  orderdetails values(10619,22,21,40,0);
insert into  orderdetails values(10620,24,4.5,5,0);
insert into  orderdetails values(10620,52,7,5,0);
insert into  orderdetails values(10621,19,9.2,5,0);
insert into  orderdetails values(10621,23,9,10,0);
insert into  orderdetails values(10621,70,15,20,0);
insert into  orderdetails values(10621,71,21.5,15,0);
insert into  orderdetails values(10622,2,19,20,0);
insert into  orderdetails values(10622,68,12.5,18,0.2);
insert into  orderdetails values(10623,14,23.25,21,0);
insert into  orderdetails values(10623,19,9.2,15,0.1);
insert into  orderdetails values(10623,21,10,25,0.1);
insert into  orderdetails values(10623,24,4.5,3,0);
insert into  orderdetails values(10623,35,18,30,0.1);
insert into  orderdetails values(10624,28,45.6,10,0);
insert into  orderdetails values(10624,29,123.79,6,0);
insert into  orderdetails values(10624,44,19.45,10,0);
insert into  orderdetails values(10625,14,23.25,3,0);
insert into  orderdetails values(10625,42,14,5,0);
insert into  orderdetails values(10625,60,34,10,0);
insert into  orderdetails values(10626,53,32.8,12,0);
insert into  orderdetails values(10626,60,34,20,0);
insert into  orderdetails values(10626,71,21.5,20,0);
insert into  orderdetails values(10627,62,49.3,15,0);
insert into  orderdetails values(10627,73,15,35,0.15);
insert into  orderdetails values(10628,1,18,25,0);
insert into  orderdetails values(10629,29,123.79,20,0);
insert into  orderdetails values(10629,64,33.25,9,0);
insert into  orderdetails values(10630,55,24,12,0.05);
insert into  orderdetails values(10630,76,18,35,0);
insert into  orderdetails values(10631,75,7.75,8,0.1);
insert into  orderdetails values(10632,2,19,30,0.05);
insert into  orderdetails values(10632,33,2.5,20,0.05);
insert into  orderdetails values(10633,12,38,36,0.15);
insert into  orderdetails values(10633,13,6,13,0.15);
insert into  orderdetails values(10633,26,31.23,35,0.15);
insert into  orderdetails values(10633,62,49.3,80,0.15);
insert into  orderdetails values(10634,7,30,35,0);
insert into  orderdetails values(10634,18,62.5,50,0);
insert into  orderdetails values(10634,51,53,15,0);
insert into  orderdetails values(10634,75,7.75,2,0);
insert into  orderdetails values(10635,4,22,10,0.1);
insert into  orderdetails values(10635,5,21.35,15,0.1);
insert into  orderdetails values(10635,22,21,40,0);
insert into  orderdetails values(10636,4,22,25,0);
insert into  orderdetails values(10636,58,13.25,6,0);
insert into  orderdetails values(10637,11,21,10,0);
insert into  orderdetails values(10637,50,16.25,25,0.05);
insert into  orderdetails values(10637,56,38,60,0.05);
insert into  orderdetails values(10638,45,9.5,20,0);
insert into  orderdetails values(10638,65,21.05,21,0);
insert into  orderdetails values(10638,72,34.8,60,0);
insert into  orderdetails values(10639,18,62.5,8,0);
insert into  orderdetails values(10640,69,36,20,0.25);
insert into  orderdetails values(10640,70,15,15,0.25);
insert into  orderdetails values(10641,2,19,50,0);
insert into  orderdetails values(10641,40,18.4,60,0);
insert into  orderdetails values(10642,21,10,30,0.2);
insert into  orderdetails values(10642,61,28.5,20,0.2);
insert into  orderdetails values(10643,28,45.6,15,0.25);
insert into  orderdetails values(10643,39,18,21,0.25);
insert into  orderdetails values(10643,46,12,2,0.25);
insert into  orderdetails values(10644,18,62.5,4,0.1);
insert into  orderdetails values(10644,43,46,20,0);
insert into  orderdetails values(10644,46,12,21,0.1);
insert into  orderdetails values(10645,18,62.5,20,0);
insert into  orderdetails values(10645,36,19,15,0);
insert into  orderdetails values(10646,1,18,15,0.25);
insert into  orderdetails values(10646,10,31,18,0.25);
insert into  orderdetails values(10646,71,21.5,30,0.25);
insert into  orderdetails values(10646,77,13,35,0.25);
insert into  orderdetails values(10647,19,9.2,30,0);
insert into  orderdetails values(10647,39,18,20,0);
insert into  orderdetails values(10648,22,21,15,0);
insert into  orderdetails values(10648,24,4.5,15,0.15);
insert into  orderdetails values(10649,28,45.6,20,0);
insert into  orderdetails values(10649,72,34.8,15,0);
insert into  orderdetails values(10650,30,25.89,30,0);
insert into  orderdetails values(10650,53,32.8,25,0.05);
insert into  orderdetails values(10650,54,7.45,30,0);
insert into  orderdetails values(10651,19,9.2,12,0.25);
insert into  orderdetails values(10651,22,21,20,0.25);
insert into  orderdetails values(10652,30,25.89,2,0.25);
insert into  orderdetails values(10652,42,14,20,0);
insert into  orderdetails values(10653,16,17.45,30,0.1);
insert into  orderdetails values(10653,60,34,20,0.1);
insert into  orderdetails values(10654,4,22,12,0.1);
insert into  orderdetails values(10654,39,18,20,0.1);
insert into  orderdetails values(10654,54,7.45,6,0.1);
insert into  orderdetails values(10655,41,9.65,20,0.2);
insert into  orderdetails values(10656,14,23.25,3,0.1);
insert into  orderdetails values(10656,44,19.45,28,0.1);
insert into  orderdetails values(10656,47,9.5,6,0.1);
insert into  orderdetails values(10657,15,15.5,50,0);
insert into  orderdetails values(10657,41,9.65,24,0);
insert into  orderdetails values(10657,46,12,45,0);
insert into  orderdetails values(10657,47,9.5,10,0);
insert into  orderdetails values(10657,56,38,45,0);
insert into  orderdetails values(10657,60,34,30,0);
insert into  orderdetails values(10658,21,10,60,0);
insert into  orderdetails values(10658,40,18.4,70,0.05);
insert into  orderdetails values(10658,60,34,55,0.05);
insert into  orderdetails values(10658,77,13,70,0.05);
insert into  orderdetails values(10659,31,12.5,20,0.05);
insert into  orderdetails values(10659,40,18.4,24,0.05);
insert into  orderdetails values(10659,70,15,40,0.05);
insert into  orderdetails values(10660,20,81,21,0);
insert into  orderdetails values(10661,39,18,3,0.2);
insert into  orderdetails values(10661,58,13.25,49,0.2);
insert into  orderdetails values(10662,68,12.5,10,0);
insert into  orderdetails values(10663,40,18.4,30,0.05);
insert into  orderdetails values(10663,42,14,30,0.05);
insert into  orderdetails values(10663,51,53,20,0.05);
insert into  orderdetails values(10664,10,31,24,0.15);
insert into  orderdetails values(10664,56,38,12,0.15);
insert into  orderdetails values(10664,65,21.05,15,0.15);
insert into  orderdetails values(10665,51,53,20,0);
insert into  orderdetails values(10665,59,55,1,0);
insert into  orderdetails values(10665,76,18,10,0);
insert into  orderdetails values(10666,29,123.79,36,0);
insert into  orderdetails values(10666,65,21.05,10,0);
insert into  orderdetails values(10667,69,36,45,0.2);
insert into  orderdetails values(10667,71,21.5,14,0.2);
insert into  orderdetails values(10668,31,12.5,8,0.1);
insert into  orderdetails values(10668,55,24,4,0.1);
insert into  orderdetails values(10668,64,33.25,15,0.1);
insert into  orderdetails values(10669,36,19,30,0);
insert into  orderdetails values(10670,23,9,32,0);
insert into  orderdetails values(10670,46,12,60,0);
insert into  orderdetails values(10670,67,14,25,0);
insert into  orderdetails values(10670,73,15,50,0);
insert into  orderdetails values(10670,75,7.75,25,0);
insert into  orderdetails values(10671,16,17.45,10,0);
insert into  orderdetails values(10671,62,49.3,10,0);
insert into  orderdetails values(10671,65,21.05,12,0);
insert into  orderdetails values(10672,38,263.5,15,0.1);
insert into  orderdetails values(10672,71,21.5,12,0);
insert into  orderdetails values(10673,16,17.45,3,0);
insert into  orderdetails values(10673,42,14,6,0);
insert into  orderdetails values(10673,43,46,6,0);
insert into  orderdetails values(10674,23,9,5,0);
insert into  orderdetails values(10675,14,23.25,30,0);
insert into  orderdetails values(10675,53,32.8,10,0);
insert into  orderdetails values(10675,58,13.25,30,0);
insert into  orderdetails values(10676,10,31,2,0);
insert into  orderdetails values(10676,19,9.2,7,0);
insert into  orderdetails values(10676,44,19.45,21,0);
insert into  orderdetails values(10677,26,31.23,30,0.15);
insert into  orderdetails values(10677,33,2.5,8,0.15);
insert into  orderdetails values(10678,12,38,100,0);
insert into  orderdetails values(10678,33,2.5,30,0);
insert into  orderdetails values(10678,41,9.65,120,0);
insert into  orderdetails values(10678,54,7.45,30,0);
insert into  orderdetails values(10679,59,55,12,0);
insert into  orderdetails values(10680,16,17.45,50,0.25);
insert into  orderdetails values(10680,31,12.5,20,0.25);
insert into  orderdetails values(10680,42,14,40,0.25);
insert into  orderdetails values(10681,19,9.2,30,0.1);
insert into  orderdetails values(10681,21,10,12,0.1);
insert into  orderdetails values(10681,64,33.25,28,0);
insert into  orderdetails values(10682,33,2.5,30,0);
insert into  orderdetails values(10682,66,17,4,0);
insert into  orderdetails values(10682,75,7.75,30,0);
insert into  orderdetails values(10683,52,7,9,0);
insert into  orderdetails values(10684,40,18.4,20,0);
insert into  orderdetails values(10684,47,9.5,40,0);
insert into  orderdetails values(10684,60,34,30,0);
insert into  orderdetails values(10685,10,31,20,0);
insert into  orderdetails values(10685,41,9.65,4,0);
insert into  orderdetails values(10685,47,9.5,15,0);
insert into  orderdetails values(10686,17,39,30,0.2);
insert into  orderdetails values(10686,26,31.23,15,0);
insert into  orderdetails values(10687,9,97,50,0.25);
insert into  orderdetails values(10687,29,123.79,10,0);
insert into  orderdetails values(10687,36,19,6,0.25);
insert into  orderdetails values(10688,10,31,18,0.1);
insert into  orderdetails values(10688,28,45.6,60,0.1);
insert into  orderdetails values(10688,34,14,14,0);
insert into  orderdetails values(10689,1,18,35,0.25);
insert into  orderdetails values(10690,56,38,20,0.25);
insert into  orderdetails values(10690,77,13,30,0.25);
insert into  orderdetails values(10691,1,18,30,0);
insert into  orderdetails values(10691,29,123.79,40,0);
insert into  orderdetails values(10691,43,46,40,0);
insert into  orderdetails values(10691,44,19.45,24,0);
insert into  orderdetails values(10691,62,49.3,48,0);
insert into  orderdetails values(10692,63,43.9,20,0);
insert into  orderdetails values(10693,9,97,6,0);
insert into  orderdetails values(10693,54,7.45,60,0.15);
insert into  orderdetails values(10693,69,36,30,0.15);
insert into  orderdetails values(10693,73,15,15,0.15);
insert into  orderdetails values(10694,7,30,90,0);
insert into  orderdetails values(10694,59,55,25,0);
insert into  orderdetails values(10694,70,15,50,0);
insert into  orderdetails values(10695,8,40,10,0);
insert into  orderdetails values(10695,12,38,4,0);
insert into  orderdetails values(10695,24,4.5,20,0);
insert into  orderdetails values(10696,17,39,20,0);
insert into  orderdetails values(10696,46,12,18,0);
insert into  orderdetails values(10697,19,9.2,7,0.25);
insert into  orderdetails values(10697,35,18,9,0.25);
insert into  orderdetails values(10697,58,13.25,30,0.25);
insert into  orderdetails values(10697,70,15,30,0.25);
insert into  orderdetails values(10698,11,21,15,0);
insert into  orderdetails values(10698,17,39,8,0.05);
insert into  orderdetails values(10698,29,123.79,12,0.05);
insert into  orderdetails values(10698,65,21.05,65,0.05);
insert into  orderdetails values(10698,70,15,8,0.05);
insert into  orderdetails values(10699,47,9.5,12,0);
insert into  orderdetails values(10700,1,18,5,0.2);
insert into  orderdetails values(10700,34,14,12,0.2);
insert into  orderdetails values(10700,68,12.5,40,0.2);
insert into  orderdetails values(10700,71,21.5,60,0.2);
insert into  orderdetails values(10701,59,55,42,0.15);
insert into  orderdetails values(10701,71,21.5,20,0.15);
insert into  orderdetails values(10701,76,18,35,0.15);
insert into  orderdetails values(10702,3,10,6,0);
insert into  orderdetails values(10702,76,18,15,0);
insert into  orderdetails values(10703,2,19,5,0);
insert into  orderdetails values(10703,59,55,35,0);
insert into  orderdetails values(10703,73,15,35,0);
insert into  orderdetails values(10704,4,22,6,0);
insert into  orderdetails values(10704,24,4.5,35,0);
insert into  orderdetails values(10704,48,12.75,24,0);
insert into  orderdetails values(10705,31,12.5,20,0);
insert into  orderdetails values(10705,32,32,4,0);
insert into  orderdetails values(10706,16,17.45,20,0);
insert into  orderdetails values(10706,43,46,24,0);
insert into  orderdetails values(10706,59,55,8,0);
insert into  orderdetails values(10707,55,24,21,0);
insert into  orderdetails values(10707,57,19.5,40,0);
insert into  orderdetails values(10707,70,15,28,0.15);
insert into  orderdetails values(10708,5,21.35,4,0);
insert into  orderdetails values(10708,36,19,5,0);
insert into  orderdetails values(10709,8,40,40,0);
insert into  orderdetails values(10709,51,53,28,0);
insert into  orderdetails values(10709,60,34,10,0);
insert into  orderdetails values(10710,19,9.2,5,0);
insert into  orderdetails values(10710,47,9.5,5,0);
insert into  orderdetails values(10711,19,9.2,12,0);
insert into  orderdetails values(10711,41,9.65,42,0);
insert into  orderdetails values(10711,53,32.8,120,0);
insert into  orderdetails values(10712,53,32.8,3,0.05);
insert into  orderdetails values(10712,56,38,30,0);
insert into  orderdetails values(10713,10,31,18,0);
insert into  orderdetails values(10713,26,31.23,30,0);
insert into  orderdetails values(10713,45,9.5,110,0);
insert into  orderdetails values(10713,46,12,24,0);
insert into  orderdetails values(10714,2,19,30,0.25);
insert into  orderdetails values(10714,17,39,27,0.25);
insert into  orderdetails values(10714,47,9.5,50,0.25);
insert into  orderdetails values(10714,56,38,18,0.25);
insert into  orderdetails values(10714,58,13.25,12,0.25);
insert into  orderdetails values(10715,10,31,21,0);
insert into  orderdetails values(10715,71,21.5,30,0);
insert into  orderdetails values(10716,21,10,5,0);
insert into  orderdetails values(10716,51,53,7,0);
insert into  orderdetails values(10716,61,28.5,10,0);
insert into  orderdetails values(10717,21,10,32,0.05);
insert into  orderdetails values(10717,54,7.45,15,0);
insert into  orderdetails values(10717,69,36,25,0.05);
insert into  orderdetails values(10718,12,38,36,0);
insert into  orderdetails values(10718,16,17.45,20,0);
insert into  orderdetails values(10718,36,19,40,0);
insert into  orderdetails values(10718,62,49.3,20,0);
insert into  orderdetails values(10719,18,62.5,12,0.25);
insert into  orderdetails values(10719,30,25.89,3,0.25);
insert into  orderdetails values(10719,54,7.45,40,0.25);
insert into  orderdetails values(10720,35,18,21,0);
insert into  orderdetails values(10720,71,21.5,8,0);
insert into  orderdetails values(10721,44,19.45,50,0.05);
insert into  orderdetails values(10722,2,19,3,0);
insert into  orderdetails values(10722,31,12.5,50,0);
insert into  orderdetails values(10722,68,12.5,45,0);
insert into  orderdetails values(10722,75,7.75,42,0);
insert into  orderdetails values(10723,26,31.23,15,0);
insert into  orderdetails values(10724,10,31,16,0);
insert into  orderdetails values(10724,61,28.5,5,0);
insert into  orderdetails values(10725,41,9.65,12,0);
insert into  orderdetails values(10725,52,7,4,0);
insert into  orderdetails values(10725,55,24,6,0);
insert into  orderdetails values(10726,4,22,25,0);
insert into  orderdetails values(10726,11,21,5,0);
insert into  orderdetails values(10727,17,39,20,0.05);
insert into  orderdetails values(10727,56,38,10,0.05);
insert into  orderdetails values(10727,59,55,10,0.05);
insert into  orderdetails values(10728,30,25.89,15,0);
insert into  orderdetails values(10728,40,18.4,6,0);
insert into  orderdetails values(10728,55,24,12,0);
insert into  orderdetails values(10728,60,34,15,0);
insert into  orderdetails values(10729,1,18,50,0);
insert into  orderdetails values(10729,21,10,30,0);
insert into  orderdetails values(10729,50,16.25,40,0);
insert into  orderdetails values(10730,16,17.45,15,0.05);
insert into  orderdetails values(10730,31,12.5,3,0.05);
insert into  orderdetails values(10730,65,21.05,10,0.05);
insert into  orderdetails values(10731,21,10,40,0.05);
insert into  orderdetails values(10731,51,53,30,0.05);
insert into  orderdetails values(10732,76,18,20,0);
insert into  orderdetails values(10733,14,23.25,16,0);
insert into  orderdetails values(10733,28,45.6,20,0);
insert into  orderdetails values(10733,52,7,25,0);
insert into  orderdetails values(10734,6,25,30,0);
insert into  orderdetails values(10734,30,25.89,15,0);
insert into  orderdetails values(10734,76,18,20,0);
insert into  orderdetails values(10735,61,28.5,20,0.1);
insert into  orderdetails values(10735,77,13,2,0.1);
insert into  orderdetails values(10736,65,21.05,40,0);
insert into  orderdetails values(10736,75,7.75,20,0);
insert into  orderdetails values(10737,13,6,4,0);
insert into  orderdetails values(10737,41,9.65,12,0);
insert into  orderdetails values(10738,16,17.45,3,0);
insert into  orderdetails values(10739,36,19,6,0);
insert into  orderdetails values(10739,52,7,18,0);
insert into  orderdetails values(10740,28,45.6,5,0.2);
insert into  orderdetails values(10740,35,18,35,0.2);
insert into  orderdetails values(10740,45,9.5,40,0.2);
insert into  orderdetails values(10740,56,38,14,0.2);
insert into  orderdetails values(10741,2,19,15,0.2);
insert into  orderdetails values(10742,3,10,20,0);
insert into  orderdetails values(10742,60,34,50,0);
insert into  orderdetails values(10742,72,34.8,35,0);
insert into  orderdetails values(10743,46,12,28,0.05);
insert into  orderdetails values(10744,40,18.4,50,0.2);
insert into  orderdetails values(10745,18,62.5,24,0);
insert into  orderdetails values(10745,44,19.45,16,0);
insert into  orderdetails values(10745,59,55,45,0);
insert into  orderdetails values(10745,72,34.8,7,0);
insert into  orderdetails values(10746,13,6,6,0);
insert into  orderdetails values(10746,42,14,28,0);
insert into  orderdetails values(10746,62,49.3,9,0);
insert into  orderdetails values(10746,69,36,40,0);
insert into  orderdetails values(10747,31,12.5,8,0);
insert into  orderdetails values(10747,41,9.65,35,0);
insert into  orderdetails values(10747,63,43.9,9,0);
insert into  orderdetails values(10747,69,36,30,0);
insert into  orderdetails values(10748,23,9,44,0);
insert into  orderdetails values(10748,40,18.4,40,0);
insert into  orderdetails values(10748,56,38,28,0);
insert into  orderdetails values(10749,56,38,15,0);
insert into  orderdetails values(10749,59,55,6,0);
insert into  orderdetails values(10749,76,18,10,0);
insert into  orderdetails values(10750,14,23.25,5,0.15);
insert into  orderdetails values(10750,45,9.5,40,0.15);
insert into  orderdetails values(10750,59,55,25,0.15);
insert into  orderdetails values(10751,26,31.23,12,0.1);
insert into  orderdetails values(10751,30,25.89,30,0);
insert into  orderdetails values(10751,50,16.25,20,0.1);
insert into  orderdetails values(10751,73,15,15,0);
insert into  orderdetails values(10752,1,18,8,0);
insert into  orderdetails values(10752,69,36,3,0);
insert into  orderdetails values(10753,45,9.5,4,0);
insert into  orderdetails values(10753,74,10,5,0);
insert into  orderdetails values(10754,40,18.4,3,0);
insert into  orderdetails values(10755,47,9.5,30,0.25);
insert into  orderdetails values(10755,56,38,30,0.25);
insert into  orderdetails values(10755,57,19.5,14,0.25);
insert into  orderdetails values(10755,69,36,25,0.25);
insert into  orderdetails values(10756,18,62.5,21,0.2);
insert into  orderdetails values(10756,36,19,20,0.2);
insert into  orderdetails values(10756,68,12.5,6,0.2);
insert into  orderdetails values(10756,69,36,20,0.2);
insert into  orderdetails values(10757,34,14,30,0);
insert into  orderdetails values(10757,59,55,7,0);
insert into  orderdetails values(10757,62,49.3,30,0);
insert into  orderdetails values(10757,64,33.25,24,0);
insert into  orderdetails values(10758,26,31.23,20,0);
insert into  orderdetails values(10758,52,7,60,0);
insert into  orderdetails values(10758,70,15,40,0);
insert into  orderdetails values(10759,32,32,10,0);
insert into  orderdetails values(10760,25,14,12,0.25);
insert into  orderdetails values(10760,27,43.9,40,0);
insert into  orderdetails values(10760,43,46,30,0.25);
insert into  orderdetails values(10761,25,14,35,0.25);
insert into  orderdetails values(10761,75,7.75,18,0);
insert into  orderdetails values(10762,39,18,16,0);
insert into  orderdetails values(10762,47,9.5,30,0);
insert into  orderdetails values(10762,51,53,28,0);
insert into  orderdetails values(10762,56,38,60,0);
insert into  orderdetails values(10763,21,10,40,0);
insert into  orderdetails values(10763,22,21,6,0);
insert into  orderdetails values(10763,24,4.5,20,0);
insert into  orderdetails values(10764,3,10,20,0.1);
insert into  orderdetails values(10764,39,18,130,0.1);
insert into  orderdetails values(10765,65,21.05,80,0.1);
insert into  orderdetails values(10766,2,19,40,0);
insert into  orderdetails values(10766,7,30,35,0);
insert into  orderdetails values(10766,68,12.5,40,0);
insert into  orderdetails values(10767,42,14,2,0);
insert into  orderdetails values(10768,22,21,4,0);
insert into  orderdetails values(10768,31,12.5,50,0);
insert into  orderdetails values(10768,60,34,15,0);
insert into  orderdetails values(10768,71,21.5,12,0);
insert into  orderdetails values(10769,41,9.65,30,0.05);
insert into  orderdetails values(10769,52,7,15,0.05);
insert into  orderdetails values(10769,61,28.5,20,0);
insert into  orderdetails values(10769,62,49.3,15,0);
insert into  orderdetails values(10770,11,21,15,0.25);
insert into  orderdetails values(10771,71,21.5,16,0);
insert into  orderdetails values(10772,29,123.79,18,0);
insert into  orderdetails values(10772,59,55,25,0);
insert into  orderdetails values(10773,17,39,33,0);
insert into  orderdetails values(10773,31,12.5,70,0.2);
insert into  orderdetails values(10773,75,7.75,7,0.2);
insert into  orderdetails values(10774,31,12.5,2,0.25);
insert into  orderdetails values(10774,66,17,50,0);
insert into  orderdetails values(10775,10,31,6,0);
insert into  orderdetails values(10775,67,14,3,0);
insert into  orderdetails values(10776,31,12.5,16,0.05);
insert into  orderdetails values(10776,42,14,12,0.05);
insert into  orderdetails values(10776,45,9.5,27,0.05);
insert into  orderdetails values(10776,51,53,120,0.05);
insert into  orderdetails values(10777,42,14,20,0.2);
insert into  orderdetails values(10778,41,9.65,10,0);
insert into  orderdetails values(10779,16,17.45,20,0);
insert into  orderdetails values(10779,62,49.3,20,0);
insert into  orderdetails values(10780,70,15,35,0);
insert into  orderdetails values(10780,77,13,15,0);
insert into  orderdetails values(10781,54,7.45,3,0.2);
insert into  orderdetails values(10781,56,38,20,0.2);
insert into  orderdetails values(10781,74,10,35,0);
insert into  orderdetails values(10782,31,12.5,1,0);
insert into  orderdetails values(10783,31,12.5,10,0);
insert into  orderdetails values(10783,38,263.5,5,0);
insert into  orderdetails values(10784,36,19,30,0);
insert into  orderdetails values(10784,39,18,2,0.15);
insert into  orderdetails values(10784,72,34.8,30,0.15);
insert into  orderdetails values(10785,10,31,10,0);
insert into  orderdetails values(10785,75,7.75,10,0);
insert into  orderdetails values(10786,8,40,30,0.2);
insert into  orderdetails values(10786,30,25.89,15,0.2);
insert into  orderdetails values(10786,75,7.75,42,0.2);
insert into  orderdetails values(10787,2,19,15,0.05);
insert into  orderdetails values(10787,29,123.79,20,0.05);
insert into  orderdetails values(10788,19,9.2,50,0.05);
insert into  orderdetails values(10788,75,7.75,40,0.05);
insert into  orderdetails values(10789,18,62.5,30,0);
insert into  orderdetails values(10789,35,18,15,0);
insert into  orderdetails values(10789,63,43.9,30,0);
insert into  orderdetails values(10789,68,12.5,18,0);
insert into  orderdetails values(10790,7,30,3,0.15);
insert into  orderdetails values(10790,56,38,20,0.15);
insert into  orderdetails values(10791,29,123.79,14,0.05);
insert into  orderdetails values(10791,41,9.65,20,0.05);
insert into  orderdetails values(10792,2,19,10,0);
insert into  orderdetails values(10792,54,7.45,3,0);
insert into  orderdetails values(10792,68,12.5,15,0);
insert into  orderdetails values(10793,41,9.65,14,0);
insert into  orderdetails values(10793,52,7,8,0);
insert into  orderdetails values(10794,14,23.25,15,0.2);
insert into  orderdetails values(10794,54,7.45,6,0.2);
insert into  orderdetails values(10795,16,17.45,65,0);
insert into  orderdetails values(10795,17,39,35,0.25);
insert into  orderdetails values(10796,26,31.23,21,0.2);
insert into  orderdetails values(10796,44,19.45,10,0);
insert into  orderdetails values(10796,64,33.25,35,0.2);
insert into  orderdetails values(10796,69,36,24,0.2);
insert into  orderdetails values(10797,11,21,20,0);
insert into  orderdetails values(10798,62,49.3,2,0);
insert into  orderdetails values(10798,72,34.8,10,0);
insert into  orderdetails values(10799,13,6,20,0.15);
insert into  orderdetails values(10799,24,4.5,20,0.15);
insert into  orderdetails values(10799,59,55,25,0);
insert into  orderdetails values(10800,11,21,50,0.1);
insert into  orderdetails values(10800,51,53,10,0.1);
insert into  orderdetails values(10800,54,7.45,7,0.1);
insert into  orderdetails values(10801,17,39,40,0.25);
insert into  orderdetails values(10801,29,123.79,20,0.25);
insert into  orderdetails values(10802,30,25.89,25,0.25);
insert into  orderdetails values(10802,51,53,30,0.25);
insert into  orderdetails values(10802,55,24,60,0.25);
insert into  orderdetails values(10802,62,49.3,5,0.25);
insert into  orderdetails values(10803,19,9.2,24,0.05);
insert into  orderdetails values(10803,25,14,15,0.05);
insert into  orderdetails values(10803,59,55,15,0.05);
insert into  orderdetails values(10804,10,31,36,0);
insert into  orderdetails values(10804,28,45.6,24,0);
insert into  orderdetails values(10804,49,20,4,0.15);
insert into  orderdetails values(10805,34,14,10,0);
insert into  orderdetails values(10805,38,263.5,10,0);
insert into  orderdetails values(10806,2,19,20,0.25);
insert into  orderdetails values(10806,65,21.05,2,0);
insert into  orderdetails values(10806,74,10,15,0.25);
insert into  orderdetails values(10807,40,18.4,1,0);
insert into  orderdetails values(10808,56,38,20,0.15);
insert into  orderdetails values(10808,76,18,50,0.15);
insert into  orderdetails values(10809,52,7,20,0);
insert into  orderdetails values(10810,13,6,7,0);
insert into  orderdetails values(10810,25,14,5,0);
insert into  orderdetails values(10810,70,15,5,0);
insert into  orderdetails values(10811,19,9.2,15,0);
insert into  orderdetails values(10811,23,9,18,0);
insert into  orderdetails values(10811,40,18.4,30,0);
insert into  orderdetails values(10812,31,12.5,16,0.1);
insert into  orderdetails values(10812,72,34.8,40,0.1);
insert into  orderdetails values(10812,77,13,20,0);
insert into  orderdetails values(10813,2,19,12,0.2);
insert into  orderdetails values(10813,46,12,35,0);
insert into  orderdetails values(10814,41,9.65,20,0);
insert into  orderdetails values(10814,43,46,20,0.15);
insert into  orderdetails values(10814,48,12.75,8,0.15);
insert into  orderdetails values(10814,61,28.5,30,0.15);
insert into  orderdetails values(10815,33,2.5,16,0);
insert into  orderdetails values(10816,38,263.5,30,0.05);
insert into  orderdetails values(10816,62,49.3,20,0.05);
insert into  orderdetails values(10817,26,31.23,40,0.15);
insert into  orderdetails values(10817,38,263.5,30,0);
insert into  orderdetails values(10817,40,18.4,60,0.15);
insert into  orderdetails values(10817,62,49.3,25,0.15);
insert into  orderdetails values(10818,32,32,20,0);
insert into  orderdetails values(10818,41,9.65,20,0);
insert into  orderdetails values(10819,43,46,7,0);
insert into  orderdetails values(10819,75,7.75,20,0);
insert into  orderdetails values(10820,56,38,30,0);
insert into  orderdetails values(10821,35,18,20,0);
insert into  orderdetails values(10821,51,53,6,0);
insert into  orderdetails values(10822,62,49.3,3,0);
insert into  orderdetails values(10822,70,15,6,0);
insert into  orderdetails values(10823,11,21,20,0.1);
insert into  orderdetails values(10823,57,19.5,15,0);
insert into  orderdetails values(10823,59,55,40,0.1);
insert into  orderdetails values(10823,77,13,15,0.1);
insert into  orderdetails values(10824,41,9.65,12,0);
insert into  orderdetails values(10824,70,15,9,0);
insert into  orderdetails values(10825,26,31.23,12,0);
insert into  orderdetails values(10825,53,32.8,20,0);
insert into  orderdetails values(10826,31,12.5,35,0);
insert into  orderdetails values(10826,57,19.5,15,0);
insert into  orderdetails values(10827,10,31,15,0);
insert into  orderdetails values(10827,39,18,21,0);
insert into  orderdetails values(10828,20,81,5,0);
insert into  orderdetails values(10828,38,263.5,2,0);
insert into  orderdetails values(10829,2,19,10,0);
insert into  orderdetails values(10829,8,40,20,0);
insert into  orderdetails values(10829,13,6,10,0);
insert into  orderdetails values(10829,60,34,21,0);
insert into  orderdetails values(10830,6,25,6,0);
insert into  orderdetails values(10830,39,18,28,0);
insert into  orderdetails values(10830,60,34,30,0);
insert into  orderdetails values(10830,68,12.5,24,0);
insert into  orderdetails values(10831,19,9.2,2,0);
insert into  orderdetails values(10831,35,18,8,0);
insert into  orderdetails values(10831,38,263.5,8,0);
insert into  orderdetails values(10831,43,46,9,0);
insert into  orderdetails values(10832,13,6,3,0.2);
insert into  orderdetails values(10832,25,14,10,0.2);
insert into  orderdetails values(10832,44,19.45,16,0.2);
insert into  orderdetails values(10832,64,33.25,3,0);
insert into  orderdetails values(10833,7,30,20,0.1);
insert into  orderdetails values(10833,31,12.5,9,0.1);
insert into  orderdetails values(10833,53,32.8,9,0.1);
insert into  orderdetails values(10834,29,123.79,8,0.05);
insert into  orderdetails values(10834,30,25.89,20,0.05);
insert into  orderdetails values(10835,59,55,15,0);
insert into  orderdetails values(10835,77,13,2,0.2);
insert into  orderdetails values(10836,22,21,52,0);
insert into  orderdetails values(10836,35,18,6,0);
insert into  orderdetails values(10836,57,19.5,24,0);
insert into  orderdetails values(10836,60,34,60,0);
insert into  orderdetails values(10836,64,33.25,30,0);
insert into  orderdetails values(10837,13,6,6,0);
insert into  orderdetails values(10837,40,18.4,25,0);
insert into  orderdetails values(10837,47,9.5,40,0.25);
insert into  orderdetails values(10837,76,18,21,0.25);
insert into  orderdetails values(10838,1,18,4,0.25);
insert into  orderdetails values(10838,18,62.5,25,0.25);
insert into  orderdetails values(10838,36,19,50,0.25);
insert into  orderdetails values(10839,58,13.25,30,0.1);
insert into  orderdetails values(10839,72,34.8,15,0.1);
insert into  orderdetails values(10840,25,14,6,0.2);
insert into  orderdetails values(10840,39,18,10,0.2);
insert into  orderdetails values(10841,10,31,16,0);
insert into  orderdetails values(10841,56,38,30,0);
insert into  orderdetails values(10841,59,55,50,0);
insert into  orderdetails values(10841,77,13,15,0);
insert into  orderdetails values(10842,11,21,15,0);
insert into  orderdetails values(10842,43,46,5,0);
insert into  orderdetails values(10842,68,12.5,20,0);
insert into  orderdetails values(10842,70,15,12,0);
insert into  orderdetails values(10843,51,53,4,0.25);
insert into  orderdetails values(10844,22,21,35,0);
insert into  orderdetails values(10845,23,9,70,0.1);
insert into  orderdetails values(10845,35,18,25,0.1);
insert into  orderdetails values(10845,42,14,42,0.1);
insert into  orderdetails values(10845,58,13.25,60,0.1);
insert into  orderdetails values(10845,64,33.25,48,0);
insert into  orderdetails values(10846,4,22,21,0);
insert into  orderdetails values(10846,70,15,30,0);
insert into  orderdetails values(10846,74,10,20,0);
insert into  orderdetails values(10847,1,18,80,0.2);
insert into  orderdetails values(10847,19,9.2,12,0.2);
insert into  orderdetails values(10847,37,26,60,0.2);
insert into  orderdetails values(10847,45,9.5,36,0.2);
insert into  orderdetails values(10847,60,34,45,0.2);
insert into  orderdetails values(10847,71,21.5,55,0.2);
insert into  orderdetails values(10848,5,21.35,30,0);
insert into  orderdetails values(10848,9,97,3,0);
insert into  orderdetails values(10849,3,10,49,0);
insert into  orderdetails values(10849,26,31.23,18,0.15);
insert into  orderdetails values(10850,25,14,20,0.15);
insert into  orderdetails values(10850,33,2.5,4,0.15);
insert into  orderdetails values(10850,70,15,30,0.15);
insert into  orderdetails values(10851,2,19,5,0.05);
insert into  orderdetails values(10851,25,14,10,0.05);
insert into  orderdetails values(10851,57,19.5,10,0.05);
insert into  orderdetails values(10851,59,55,42,0.05);
insert into  orderdetails values(10852,2,19,15,0);
insert into  orderdetails values(10852,17,39,6,0);
insert into  orderdetails values(10852,62,49.3,50,0);
insert into  orderdetails values(10853,18,62.5,10,0);
insert into  orderdetails values(10854,10,31,100,0.15);
insert into  orderdetails values(10854,13,6,65,0.15);
insert into  orderdetails values(10855,16,17.45,50,0);
insert into  orderdetails values(10855,31,12.5,14,0);
insert into  orderdetails values(10855,56,38,24,0);
insert into  orderdetails values(10855,65,21.05,15,0.15);
insert into  orderdetails values(10856,2,19,20,0);
insert into  orderdetails values(10856,42,14,20,0);
insert into  orderdetails values(10857,3,10,30,0);
insert into  orderdetails values(10857,26,31.23,35,0.25);
insert into  orderdetails values(10857,29,123.79,10,0.25);
insert into  orderdetails values(10858,7,30,5,0);
insert into  orderdetails values(10858,27,43.9,10,0);
insert into  orderdetails values(10858,70,15,4,0);
insert into  orderdetails values(10859,24,4.5,40,0.25);
insert into  orderdetails values(10859,54,7.45,35,0.25);
insert into  orderdetails values(10859,64,33.25,30,0.25);
insert into  orderdetails values(10860,51,53,3,0);
insert into  orderdetails values(10860,76,18,20,0);
insert into  orderdetails values(10861,17,39,42,0);
insert into  orderdetails values(10861,18,62.5,20,0);
insert into  orderdetails values(10861,21,10,40,0);
insert into  orderdetails values(10861,33,2.5,35,0);
insert into  orderdetails values(10861,62,49.3,3,0);
insert into  orderdetails values(10862,11,21,25,0);
insert into  orderdetails values(10862,52,7,8,0);
insert into  orderdetails values(10863,1,18,20,0.15);
insert into  orderdetails values(10863,58,13.25,12,0.15);
insert into  orderdetails values(10864,35,18,4,0);
insert into  orderdetails values(10864,67,14,15,0);
insert into  orderdetails values(10865,38,263.5,60,0.05);
insert into  orderdetails values(10865,39,18,80,0.05);
insert into  orderdetails values(10866,2,19,21,0.25);
insert into  orderdetails values(10866,24,4.5,6,0.25);
insert into  orderdetails values(10866,30,25.89,40,0.25);
insert into  orderdetails values(10867,53,32.8,3,0);
insert into  orderdetails values(10868,26,31.23,20,0);
insert into  orderdetails values(10868,35,18,30,0);
insert into  orderdetails values(10868,49,20,42,0.1);
insert into  orderdetails values(10869,1,18,40,0);
insert into  orderdetails values(10869,11,21,10,0);
insert into  orderdetails values(10869,23,9,50,0);
insert into  orderdetails values(10869,68,12.5,20,0);
insert into  orderdetails values(10870,35,18,3,0);
insert into  orderdetails values(10870,51,53,2,0);
insert into  orderdetails values(10871,6,25,50,0.05);
insert into  orderdetails values(10871,16,17.45,12,0.05);
insert into  orderdetails values(10871,17,39,16,0.05);
insert into  orderdetails values(10872,55,24,10,0.05);
insert into  orderdetails values(10872,62,49.3,20,0.05);
insert into  orderdetails values(10872,64,33.25,15,0.05);
insert into  orderdetails values(10872,65,21.05,21,0.05);
insert into  orderdetails values(10873,21,10,20,0);
insert into  orderdetails values(10873,28,45.6,3,0);
insert into  orderdetails values(10874,10,31,10,0);
insert into  orderdetails values(10875,19,9.2,25,0);
insert into  orderdetails values(10875,47,9.5,21,0.1);
insert into  orderdetails values(10875,49,20,15,0);
insert into  orderdetails values(10876,46,12,21,0);
insert into  orderdetails values(10876,64,33.25,20,0);
insert into  orderdetails values(10877,16,17.45,30,0.25);
insert into  orderdetails values(10877,18,62.5,25,0);
insert into  orderdetails values(10878,20,81,20,0.05);
insert into  orderdetails values(10879,40,18.4,12,0);
insert into  orderdetails values(10879,65,21.05,10,0);
insert into  orderdetails values(10879,76,18,10,0);
insert into  orderdetails values(10880,23,9,30,0.2);
insert into  orderdetails values(10880,61,28.5,30,0.2);
insert into  orderdetails values(10880,70,15,50,0.2);
insert into  orderdetails values(10881,73,15,10,0);
insert into  orderdetails values(10882,42,14,25,0);
insert into  orderdetails values(10882,49,20,20,0.15);
insert into  orderdetails values(10882,54,7.45,32,0.15);
insert into  orderdetails values(10883,24,4.5,8,0);
insert into  orderdetails values(10884,21,10,40,0.05);
insert into  orderdetails values(10884,56,38,21,0.05);
insert into  orderdetails values(10884,65,21.05,12,0.05);
insert into  orderdetails values(10885,2,19,20,0);
insert into  orderdetails values(10885,24,4.5,12,0);
insert into  orderdetails values(10885,70,15,30,0);
insert into  orderdetails values(10885,77,13,25,0);
insert into  orderdetails values(10886,10,31,70,0);
insert into  orderdetails values(10886,31,12.5,35,0);
insert into  orderdetails values(10886,77,13,40,0);
insert into  orderdetails values(10887,25,14,5,0);
insert into  orderdetails values(10888,2,19,20,0);
insert into  orderdetails values(10888,68,12.5,18,0);
insert into  orderdetails values(10889,11,21,40,0);
insert into  orderdetails values(10889,38,263.5,40,0);
insert into  orderdetails values(10890,17,39,15,0);
insert into  orderdetails values(10890,34,14,10,0);
insert into  orderdetails values(10890,41,9.65,14,0);
insert into  orderdetails values(10891,30,25.89,15,0.05);
insert into  orderdetails values(10892,59,55,40,0.05);
insert into  orderdetails values(10893,8,40,30,0);
insert into  orderdetails values(10893,24,4.5,10,0);
insert into  orderdetails values(10893,29,123.79,24,0);
insert into  orderdetails values(10893,30,25.89,35,0);
insert into  orderdetails values(10893,36,19,20,0);
insert into  orderdetails values(10894,13,6,28,0.05);
insert into  orderdetails values(10894,69,36,50,0.05);
insert into  orderdetails values(10894,75,7.75,120,0.05);
insert into  orderdetails values(10895,24,4.5,110,0);
insert into  orderdetails values(10895,39,18,45,0);
insert into  orderdetails values(10895,40,18.4,91,0);
insert into  orderdetails values(10895,60,34,100,0);
insert into  orderdetails values(10896,45,9.5,15,0);
insert into  orderdetails values(10896,56,38,16,0);
insert into  orderdetails values(10897,29,123.79,80,0);
insert into  orderdetails values(10897,30,25.89,36,0);
insert into  orderdetails values(10898,13,6,5,0);
insert into  orderdetails values(10899,39,18,8,0.15);
insert into  orderdetails values(10900,70,15,3,0.25);
insert into  orderdetails values(10901,41,9.65,30,0);
insert into  orderdetails values(10901,71,21.5,30,0);
insert into  orderdetails values(10902,55,24,30,0.15);
insert into  orderdetails values(10902,62,49.3,6,0.15);
insert into  orderdetails values(10903,13,6,40,0);
insert into  orderdetails values(10903,65,21.05,21,0);
insert into  orderdetails values(10903,68,12.5,20,0);
insert into  orderdetails values(10904,58,13.25,15,0);
insert into  orderdetails values(10904,62,49.3,35,0);
insert into  orderdetails values(10905,1,18,20,0.05);
insert into  orderdetails values(10906,61,28.5,15,0);
insert into  orderdetails values(10907,75,7.75,14,0);
insert into  orderdetails values(10908,7,30,20,0.05);
insert into  orderdetails values(10908,52,7,14,0.05);
insert into  orderdetails values(10909,7,30,12,0);
insert into  orderdetails values(10909,16,17.45,15,0);
insert into  orderdetails values(10909,41,9.65,5,0);
insert into  orderdetails values(10910,19,9.2,12,0);
insert into  orderdetails values(10910,49,20,10,0);
insert into  orderdetails values(10910,61,28.5,5,0);
insert into  orderdetails values(10911,1,18,10,0);
insert into  orderdetails values(10911,17,39,12,0);
insert into  orderdetails values(10911,67,14,15,0);
insert into  orderdetails values(10912,11,21,40,0.25);
insert into  orderdetails values(10912,29,123.79,60,0.25);
insert into  orderdetails values(10913,4,22,30,0.25);
insert into  orderdetails values(10913,33,2.5,40,0.25);
insert into  orderdetails values(10913,58,13.25,15,0);
insert into  orderdetails values(10914,71,21.5,25,0);
insert into  orderdetails values(10915,17,39,10,0);
insert into  orderdetails values(10915,33,2.5,30,0);
insert into  orderdetails values(10915,54,7.45,10,0);
insert into  orderdetails values(10916,16,17.45,6,0);
insert into  orderdetails values(10916,32,32,6,0);
insert into  orderdetails values(10916,57,19.5,20,0);
insert into  orderdetails values(10917,30,25.89,1,0);
insert into  orderdetails values(10917,60,34,10,0);
insert into  orderdetails values(10918,1,18,60,0.25);
insert into  orderdetails values(10918,60,34,25,0.25);
insert into  orderdetails values(10919,16,17.45,24,0);
insert into  orderdetails values(10919,25,14,24,0);
insert into  orderdetails values(10919,40,18.4,20,0);
insert into  orderdetails values(10920,50,16.25,24,0);
insert into  orderdetails values(10921,35,18,10,0);
insert into  orderdetails values(10921,63,43.9,40,0);
insert into  orderdetails values(10922,17,39,15,0);
insert into  orderdetails values(10922,24,4.5,35,0);
insert into  orderdetails values(10923,42,14,10,0.2);
insert into  orderdetails values(10923,43,46,10,0.2);
insert into  orderdetails values(10923,67,14,24,0.2);
insert into  orderdetails values(10924,10,31,20,0.1);
insert into  orderdetails values(10924,28,45.6,30,0.1);
insert into  orderdetails values(10924,75,7.75,6,0);
insert into  orderdetails values(10925,36,19,25,0.15);
insert into  orderdetails values(10925,52,7,12,0.15);
insert into  orderdetails values(10926,11,21,2,0);
insert into  orderdetails values(10926,13,6,10,0);
insert into  orderdetails values(10926,19,9.2,7,0);
insert into  orderdetails values(10926,72,34.8,10,0);
insert into  orderdetails values(10927,20,81,5,0);
insert into  orderdetails values(10927,52,7,5,0);
insert into  orderdetails values(10927,76,18,20,0);
insert into  orderdetails values(10928,47,9.5,5,0);
insert into  orderdetails values(10928,76,18,5,0);
insert into  orderdetails values(10929,21,10,60,0);
insert into  orderdetails values(10929,75,7.75,49,0);
insert into  orderdetails values(10929,77,13,15,0);
insert into  orderdetails values(10930,21,10,36,0);
insert into  orderdetails values(10930,27,43.9,25,0);
insert into  orderdetails values(10930,55,24,25,0.2);
insert into  orderdetails values(10930,58,13.25,30,0.2);
insert into  orderdetails values(10931,13,6,42,0.15);
insert into  orderdetails values(10931,57,19.5,30,0);
insert into  orderdetails values(10932,16,17.45,30,0.1);
insert into  orderdetails values(10932,62,49.3,14,0.1);
insert into  orderdetails values(10932,72,34.8,16,0);
insert into  orderdetails values(10932,75,7.75,20,0.1);
insert into  orderdetails values(10933,53,32.8,2,0);
insert into  orderdetails values(10933,61,28.5,30,0);
insert into  orderdetails values(10934,6,25,20,0);
insert into  orderdetails values(10935,1,18,21,0);
insert into  orderdetails values(10935,18,62.5,4,0.25);
insert into  orderdetails values(10935,23,9,8,0.25);
insert into  orderdetails values(10936,36,19,30,0.2);
insert into  orderdetails values(10937,28,45.6,8,0);
insert into  orderdetails values(10937,34,14,20,0);
insert into  orderdetails values(10938,13,6,20,0.25);
insert into  orderdetails values(10938,43,46,24,0.25);
insert into  orderdetails values(10938,60,34,49,0.25);
insert into  orderdetails values(10938,71,21.5,35,0.25);
insert into  orderdetails values(10939,2,19,10,0.15);
insert into  orderdetails values(10939,67,14,40,0.15);
insert into  orderdetails values(10940,7,30,8,0);
insert into  orderdetails values(10940,13,6,20,0);
insert into  orderdetails values(10941,31,12.5,44,0.25);
insert into  orderdetails values(10941,62,49.3,30,0.25);
insert into  orderdetails values(10941,68,12.5,80,0.25);
insert into  orderdetails values(10941,72,34.8,50,0);
insert into  orderdetails values(10942,49,20,28,0);
insert into  orderdetails values(10943,13,6,15,0);
insert into  orderdetails values(10943,22,21,21,0);
insert into  orderdetails values(10943,46,12,15,0);
insert into  orderdetails values(10944,11,21,5,0.25);
insert into  orderdetails values(10944,44,19.45,18,0.25);
insert into  orderdetails values(10944,56,38,18,0);
insert into  orderdetails values(10945,13,6,20,0);
insert into  orderdetails values(10945,31,12.5,10,0);
insert into  orderdetails values(10946,10,31,25,0);
insert into  orderdetails values(10946,24,4.5,25,0);
insert into  orderdetails values(10946,77,13,40,0);
insert into  orderdetails values(10947,59,55,4,0);
insert into  orderdetails values(10948,50,16.25,9,0);
insert into  orderdetails values(10948,51,53,40,0);
insert into  orderdetails values(10948,55,24,4,0);
insert into  orderdetails values(10949,6,25,12,0);
insert into  orderdetails values(10949,10,31,30,0);
insert into  orderdetails values(10949,17,39,6,0);
insert into  orderdetails values(10949,62,49.3,60,0);
insert into  orderdetails values(10950,4,22,5,0);
insert into  orderdetails values(10951,33,2.5,15,0.05);
insert into  orderdetails values(10951,41,9.65,6,0.05);
insert into  orderdetails values(10951,75,7.75,50,0.05);
insert into  orderdetails values(10952,6,25,16,0.05);
insert into  orderdetails values(10952,28,45.6,2,0);
insert into  orderdetails values(10953,20,81,50,0.05);
insert into  orderdetails values(10953,31,12.5,50,0.05);
insert into  orderdetails values(10954,16,17.45,28,0.15);
insert into  orderdetails values(10954,31,12.5,25,0.15);
insert into  orderdetails values(10954,45,9.5,30,0);
insert into  orderdetails values(10954,60,34,24,0.15);
insert into  orderdetails values(10955,75,7.75,12,0.2);
insert into  orderdetails values(10956,21,10,12,0);
insert into  orderdetails values(10956,47,9.5,14,0);
insert into  orderdetails values(10956,51,53,8,0);
insert into  orderdetails values(10957,30,25.89,30,0);
insert into  orderdetails values(10957,35,18,40,0);
insert into  orderdetails values(10957,64,33.25,8,0);
insert into  orderdetails values(10958,5,21.35,20,0);
insert into  orderdetails values(10958,7,30,6,0);
insert into  orderdetails values(10958,72,34.8,5,0);
insert into  orderdetails values(10959,75,7.75,20,0.15);
insert into  orderdetails values(10960,24,4.5,10,0.25);
insert into  orderdetails values(10960,41,9.65,24,0);
insert into  orderdetails values(10961,52,7,6,0.05);
insert into  orderdetails values(10961,76,18,60,0);
insert into  orderdetails values(10962,7,30,45,0);
insert into  orderdetails values(10962,13,6,77,0);
insert into  orderdetails values(10962,53,32.8,20,0);
insert into  orderdetails values(10962,69,36,9,0);
insert into  orderdetails values(10962,76,18,44,0);
insert into  orderdetails values(10963,60,34,2,0.15);
insert into  orderdetails values(10964,18,62.5,6,0);
insert into  orderdetails values(10964,38,263.5,5,0);
insert into  orderdetails values(10964,69,36,10,0);
insert into  orderdetails values(10965,51,53,16,0);
insert into  orderdetails values(10966,37,26,8,0);
insert into  orderdetails values(10966,56,38,12,0.15);
insert into  orderdetails values(10966,62,49.3,12,0.15);
insert into  orderdetails values(10967,19,9.2,12,0);
insert into  orderdetails values(10967,49,20,40,0);
insert into  orderdetails values(10968,12,38,30,0);
insert into  orderdetails values(10968,24,4.5,30,0);
insert into  orderdetails values(10968,64,33.25,4,0);
insert into  orderdetails values(10969,46,12,9,0);
insert into  orderdetails values(10970,52,7,40,0.2);
insert into  orderdetails values(10971,29,123.79,14,0);
insert into  orderdetails values(10972,17,39,6,0);
insert into  orderdetails values(10972,33,2.5,7,0);
insert into  orderdetails values(10973,26,31.23,5,0);
insert into  orderdetails values(10973,41,9.65,6,0);
insert into  orderdetails values(10973,75,7.75,10,0);
insert into  orderdetails values(10974,63,43.9,10,0);
insert into  orderdetails values(10975,8,40,16,0);
insert into  orderdetails values(10975,75,7.75,10,0);
insert into  orderdetails values(10976,28,45.6,20,0);
insert into  orderdetails values(10977,39,18,30,0);
insert into  orderdetails values(10977,47,9.5,30,0);
insert into  orderdetails values(10977,51,53,10,0);
insert into  orderdetails values(10977,63,43.9,20,0);
insert into  orderdetails values(10978,8,40,20,0.15);
insert into  orderdetails values(10978,21,10,40,0.15);
insert into  orderdetails values(10978,40,18.4,10,0);
insert into  orderdetails values(10978,44,19.45,6,0.15);
insert into  orderdetails values(10979,7,30,18,0);
insert into  orderdetails values(10979,12,38,20,0);
insert into  orderdetails values(10979,24,4.5,80,0);
insert into  orderdetails values(10979,27,43.9,30,0);
insert into  orderdetails values(10979,31,12.5,24,0);
insert into  orderdetails values(10979,63,43.9,35,0);
insert into  orderdetails values(10980,75,7.75,40,0.2);
insert into  orderdetails values(10981,38,263.5,60,0);
insert into  orderdetails values(10982,7,30,20,0);
insert into  orderdetails values(10982,43,46,9,0);
insert into  orderdetails values(10983,13,6,84,0.15);
insert into  orderdetails values(10983,57,19.5,15,0);
insert into  orderdetails values(10984,16,17.45,55,0);
insert into  orderdetails values(10984,24,4.5,20,0);
insert into  orderdetails values(10984,36,19,40,0);
insert into  orderdetails values(10985,16,17.45,36,0.1);
insert into  orderdetails values(10985,18,62.5,8,0.1);
insert into  orderdetails values(10985,32,32,35,0.1);
insert into  orderdetails values(10986,11,21,30,0);
insert into  orderdetails values(10986,20,81,15,0);
insert into  orderdetails values(10986,76,18,10,0);
insert into  orderdetails values(10986,77,13,15,0);
insert into  orderdetails values(10987,7,30,60,0);
insert into  orderdetails values(10987,43,46,6,0);
insert into  orderdetails values(10987,72,34.8,20,0);
insert into  orderdetails values(10988,7,30,60,0);
insert into  orderdetails values(10988,62,49.3,40,0.1);
insert into  orderdetails values(10989,6,25,40,0);
insert into  orderdetails values(10989,11,21,15,0);
insert into  orderdetails values(10989,41,9.65,4,0);
insert into  orderdetails values(10990,21,10,65,0);
insert into  orderdetails values(10990,34,14,60,0.15);
insert into  orderdetails values(10990,55,24,65,0.15);
insert into  orderdetails values(10990,61,28.5,66,0.15);
insert into  orderdetails values(10991,2,19,50,0.2);
insert into  orderdetails values(10991,70,15,20,0.2);
insert into  orderdetails values(10991,76,18,90,0.2);
insert into  orderdetails values(10992,72,34.8,2,0);
insert into  orderdetails values(10993,29,123.79,50,0.25);
insert into  orderdetails values(10993,41,9.65,35,0.25);
insert into  orderdetails values(10994,59,55,18,0.05);
insert into  orderdetails values(10995,51,53,20,0);
insert into  orderdetails values(10995,60,34,4,0);
insert into  orderdetails values(10996,42,14,40,0);
insert into  orderdetails values(10997,32,32,50,0);
insert into  orderdetails values(10997,46,12,20,0.25);
insert into  orderdetails values(10997,52,7,20,0.25);
insert into  orderdetails values(10998,24,4.5,12,0);
insert into  orderdetails values(10998,61,28.5,7,0);
insert into  orderdetails values(10998,74,10,20,0);
insert into  orderdetails values(10998,75,7.75,30,0);
insert into  orderdetails values(10999,41,9.65,20,0.05);
insert into  orderdetails values(10999,51,53,15,0.05);
insert into  orderdetails values(10999,77,13,21,0.05);
insert into  orderdetails values(11000,4,22,25,0.25);
insert into  orderdetails values(11000,24,4.5,30,0.25);
insert into  orderdetails values(11000,77,13,30,0);
insert into  orderdetails values(11001,7,30,60,0);
insert into  orderdetails values(11001,22,21,25,0);
insert into  orderdetails values(11001,46,12,25,0);
insert into  orderdetails values(11001,55,24,6,0);
insert into  orderdetails values(11002,13,6,56,0);
insert into  orderdetails values(11002,35,18,15,0.15);
insert into  orderdetails values(11002,42,14,24,0.15);
insert into  orderdetails values(11002,55,24,40,0);
insert into  orderdetails values(11003,1,18,4,0);
insert into  orderdetails values(11003,40,18.4,10,0);
insert into  orderdetails values(11003,52,7,10,0);
insert into  orderdetails values(11004,26,31.23,6,0);
insert into  orderdetails values(11004,76,18,6,0);
insert into  orderdetails values(11005,1,18,2,0);
insert into  orderdetails values(11005,59,55,10,0);
insert into  orderdetails values(11006,1,18,8,0);
insert into  orderdetails values(11006,29,123.79,2,0.25);
insert into  orderdetails values(11007,8,40,30,0);
insert into  orderdetails values(11007,29,123.79,10,0);
insert into  orderdetails values(11007,42,14,14,0);
insert into  orderdetails values(11008,28,45.6,70,0.05);
insert into  orderdetails values(11008,34,14,90,0.05);
insert into  orderdetails values(11008,71,21.5,21,0);
insert into  orderdetails values(11009,24,4.5,12,0);
insert into  orderdetails values(11009,36,19,18,0.25);
insert into  orderdetails values(11009,60,34,9,0);
insert into  orderdetails values(11010,7,30,20,0);
insert into  orderdetails values(11010,24,4.5,10,0);
insert into  orderdetails values(11011,58,13.25,40,0.05);
insert into  orderdetails values(11011,71,21.5,20,0);
insert into  orderdetails values(11012,19,9.2,50,0.05);
insert into  orderdetails values(11012,60,34,36,0.05);
insert into  orderdetails values(11012,71,21.5,60,0.05);
insert into  orderdetails values(11013,23,9,10,0);
insert into  orderdetails values(11013,42,14,4,0);
insert into  orderdetails values(11013,45,9.5,20,0);
insert into  orderdetails values(11013,68,12.5,2,0);
insert into  orderdetails values(11014,41,9.65,28,0.1);
insert into  orderdetails values(11015,30,25.89,15,0);
insert into  orderdetails values(11015,77,13,18,0);
insert into  orderdetails values(11016,31,12.5,15,0);
insert into  orderdetails values(11016,36,19,16,0);
insert into  orderdetails values(11017,3,10,25,0);
insert into  orderdetails values(11017,59,55,110,0);
insert into  orderdetails values(11017,70,15,30,0);
insert into  orderdetails values(11018,12,38,20,0);
insert into  orderdetails values(11018,18,62.5,10,0);
insert into  orderdetails values(11018,56,38,5,0);
insert into  orderdetails values(11019,46,12,3,0);
insert into  orderdetails values(11019,49,20,2,0);
insert into  orderdetails values(11020,10,31,24,0.15);
insert into  orderdetails values(11021,2,19,11,0.25);
insert into  orderdetails values(11021,20,81,15,0);
insert into  orderdetails values(11021,26,31.23,63,0);
insert into  orderdetails values(11021,51,53,44,0.25);
insert into  orderdetails values(11021,72,34.8,35,0);
insert into  orderdetails values(11022,19,9.2,35,0);
insert into  orderdetails values(11022,69,36,30,0);
insert into  orderdetails values(11023,7,30,4,0);
insert into  orderdetails values(11023,43,46,30,0);
insert into  orderdetails values(11024,26,31.23,12,0);
insert into  orderdetails values(11024,33,2.5,30,0);
insert into  orderdetails values(11024,65,21.05,21,0);
insert into  orderdetails values(11024,71,21.5,50,0);
insert into  orderdetails values(11025,1,18,10,0.1);
insert into  orderdetails values(11025,13,6,20,0.1);
insert into  orderdetails values(11026,18,62.5,8,0);
insert into  orderdetails values(11026,51,53,10,0);
insert into  orderdetails values(11027,24,4.5,30,0.25);
insert into  orderdetails values(11027,62,49.3,21,0.25);
insert into  orderdetails values(11028,55,24,35,0);
insert into  orderdetails values(11028,59,55,24,0);
insert into  orderdetails values(11029,56,38,20,0);
insert into  orderdetails values(11029,63,43.9,12,0);
insert into  orderdetails values(11030,2,19,100,0.25);
insert into  orderdetails values(11030,5,21.35,70,0);
insert into  orderdetails values(11030,29,123.79,60,0.25);
insert into  orderdetails values(11030,59,55,100,0.25);
insert into  orderdetails values(11031,1,18,45,0);
insert into  orderdetails values(11031,13,6,80,0);
insert into  orderdetails values(11031,24,4.5,21,0);
insert into  orderdetails values(11031,64,33.25,20,0);
insert into  orderdetails values(11031,71,21.5,16,0);
insert into  orderdetails values(11032,36,19,35,0);
insert into  orderdetails values(11032,38,263.5,25,0);
insert into  orderdetails values(11032,59,55,30,0);
insert into  orderdetails values(11033,53,32.8,70,0.1);
insert into  orderdetails values(11033,69,36,36,0.1);
insert into  orderdetails values(11034,21,10,15,0.1);
insert into  orderdetails values(11034,44,19.45,12,0);
insert into  orderdetails values(11034,61,28.5,6,0);
insert into  orderdetails values(11035,1,18,10,0);
insert into  orderdetails values(11035,35,18,60,0);
insert into  orderdetails values(11035,42,14,30,0);
insert into  orderdetails values(11035,54,7.45,10,0);
insert into  orderdetails values(11036,13,6,7,0);
insert into  orderdetails values(11036,59,55,30,0);
insert into  orderdetails values(11037,70,15,4,0);
insert into  orderdetails values(11038,40,18.4,5,0.2);
insert into  orderdetails values(11038,52,7,2,0);
insert into  orderdetails values(11038,71,21.5,30,0);
insert into  orderdetails values(11039,28,45.6,20,0);
insert into  orderdetails values(11039,35,18,24,0);
insert into  orderdetails values(11039,49,20,60,0);
insert into  orderdetails values(11039,57,19.5,28,0);
insert into  orderdetails values(11040,21,10,20,0);
insert into  orderdetails values(11041,2,19,30,0.2);
insert into  orderdetails values(11041,63,43.9,30,0);
insert into  orderdetails values(11042,44,19.45,15,0);
insert into  orderdetails values(11042,61,28.5,4,0);
insert into  orderdetails values(11043,11,21,10,0);
insert into  orderdetails values(11044,62,49.3,12,0);
insert into  orderdetails values(11045,33,2.5,15,0);
insert into  orderdetails values(11045,51,53,24,0);
insert into  orderdetails values(11046,12,38,20,0.05);
insert into  orderdetails values(11046,32,32,15,0.05);
insert into  orderdetails values(11046,35,18,18,0.05);
insert into  orderdetails values(11047,1,18,25,0.25);
insert into  orderdetails values(11047,5,21.35,30,0.25);
insert into  orderdetails values(11048,68,12.5,42,0);
insert into  orderdetails values(11049,2,19,10,0.2);
insert into  orderdetails values(11049,12,38,4,0.2);
insert into  orderdetails values(11050,76,18,50,0.1);
insert into  orderdetails values(11051,24,4.5,10,0.2);
insert into  orderdetails values(11052,43,46,30,0.2);
insert into  orderdetails values(11052,61,28.5,10,0.2);
insert into  orderdetails values(11053,18,62.5,35,0.2);
insert into  orderdetails values(11053,32,32,20,0);
insert into  orderdetails values(11053,64,33.25,25,0.2);
insert into  orderdetails values(11054,33,2.5,10,0);
insert into  orderdetails values(11054,67,14,20,0);
insert into  orderdetails values(11055,24,4.5,15,0);
insert into  orderdetails values(11055,25,14,15,0);
insert into  orderdetails values(11055,51,53,20,0);
insert into  orderdetails values(11055,57,19.5,20,0);
insert into  orderdetails values(11056,7,30,40,0);
insert into  orderdetails values(11056,55,24,35,0);
insert into  orderdetails values(11056,60,34,50,0);
insert into  orderdetails values(11057,70,15,3,0);
insert into  orderdetails values(11058,21,10,3,0);
insert into  orderdetails values(11058,60,34,21,0);
insert into  orderdetails values(11058,61,28.5,4,0);
insert into  orderdetails values(11059,13,6,30,0);
insert into  orderdetails values(11059,17,39,12,0);
insert into  orderdetails values(11059,60,34,35,0);
insert into  orderdetails values(11060,60,34,4,0);
insert into  orderdetails values(11060,77,13,10,0);
insert into  orderdetails values(11061,60,34,15,0);
insert into  orderdetails values(11062,53,32.8,10,0.2);
insert into  orderdetails values(11062,70,15,12,0.2);
insert into  orderdetails values(11063,34,14,30,0);
insert into  orderdetails values(11063,40,18.4,40,0.1);
insert into  orderdetails values(11063,41,9.65,30,0.1);
insert into  orderdetails values(11064,17,39,77,0.1);
insert into  orderdetails values(11064,41,9.65,12,0);
insert into  orderdetails values(11064,53,32.8,25,0.1);
insert into  orderdetails values(11064,55,24,4,0.1);
insert into  orderdetails values(11064,68,12.5,55,0);
insert into  orderdetails values(11065,30,25.89,4,0.25);
insert into  orderdetails values(11065,54,7.45,20,0.25);
insert into  orderdetails values(11066,16,17.45,3,0);
insert into  orderdetails values(11066,19,9.2,42,0);
insert into  orderdetails values(11066,34,14,35,0);
insert into  orderdetails values(11067,41,9.65,9,0);
insert into  orderdetails values(11068,28,45.6,8,0.15);
insert into  orderdetails values(11068,43,46,36,0.15);
insert into  orderdetails values(11068,77,13,28,0.15);
insert into  orderdetails values(11069,39,18,20,0);
insert into  orderdetails values(11070,1,18,40,0.15);
insert into  orderdetails values(11070,2,19,20,0.15);
insert into  orderdetails values(11070,16,17.45,30,0.15);
insert into  orderdetails values(11070,31,12.5,20,0);
insert into  orderdetails values(11071,7,30,15,0.05);
insert into  orderdetails values(11071,13,6,10,0.05);
insert into  orderdetails values(11072,2,19,8,0);
insert into  orderdetails values(11072,41,9.65,40,0);
insert into  orderdetails values(11072,50,16.25,22,0);
insert into  orderdetails values(11072,64,33.25,130,0);
insert into  orderdetails values(11073,11,21,10,0);
insert into  orderdetails values(11073,24,4.5,20,0);
insert into  orderdetails values(11074,16,17.45,14,0.05);
insert into  orderdetails values(11075,2,19,10,0.15);
insert into  orderdetails values(11075,46,12,30,0.15);
insert into  orderdetails values(11075,76,18,2,0.15);
insert into  orderdetails values(11076,6,25,20,0.25);
insert into  orderdetails values(11076,14,23.25,20,0.25);
insert into  orderdetails values(11076,19,9.2,10,0.25);
insert into  orderdetails values(11077,2,19,24,0.2);
insert into  orderdetails values(11077,3,10,4,0);
insert into  orderdetails values(11077,4,22,1,0);
insert into  orderdetails values(11077,6,25,1,0.02);
insert into  orderdetails values(11077,7,30,1,0.05);
insert into  orderdetails values(11077,8,40,2,0.1);
insert into  orderdetails values(11077,10,31,1,0);
insert into  orderdetails values(11077,12,38,2,0.05);
insert into  orderdetails values(11077,13,6,4,0);
insert into  orderdetails values(11077,14,23.25,1,0.03);
insert into  orderdetails values(11077,16,17.45,2,0.03);
insert into  orderdetails values(11077,20,81,1,0.04);
insert into  orderdetails values(11077,23,9,2,0);
insert into  orderdetails values(11077,32,32,1,0);
insert into  orderdetails values(11077,39,18,2,0.05);
insert into  orderdetails values(11077,41,9.65,3,0);
insert into  orderdetails values(11077,46,12,3,0.02);
insert into  orderdetails values(11077,52,7,2,0);
insert into  orderdetails values(11077,55,24,2,0);
insert into  orderdetails values(11077,60,34,2,0.06);
insert into  orderdetails values(11077,64,33.25,2,0.03);
insert into  orderdetails values(11077,66,17,1,0);
insert into  orderdetails values(11077,73,15,2,0.01);
insert into  orderdetails values(11077,75,7.75,4,0);
insert into  orderdetails values(11077,77,13,2,0);