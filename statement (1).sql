drop table customers;
drop table orders;
drop table shippings;
CREATE TABLE accounts (
  account_id INT,
  item_id INT,
  type VARCHAR(255),
  balance FLOAT
);
insert into accounts values(1,1,"Checking",1000);
insert into accounts values(2,1,"Savings",2000);
insert into accounts values(3,2,"Checking",1500);
insert into accounts values(4,2,"Savings",2500);
insert into accounts values(5,3,"Checking",2000);
insert into accounts values(6,3,"Savings",3000);
insert into accounts values(7,4,"Checking",2500);
insert into accounts values(8,5,"Savings",3500);
insert into accounts values(9,5,"Checking",3000);
insert into accounts values(10,5,"Savings",4000);
insert into accounts values(11,6,"Checking",3500);
insert into accounts values(12,6,"Savings",4500);
insert into accounts values(13,7,"Checking",4000);
insert into accounts values(14,7,"Savings",5000);
insert into accounts values(15,8,"Checking",4500);
insert into accounts values(16,9,"Savings",5500);
insert into accounts values(17,9,"Checking",5000);
insert into accounts values(18,9,"Savings",6000);
insert into accounts values(19,10,"Checking",5500);
insert into accounts values(20,10,"Savings",6500);
insert into accounts values(21,11,"Checking",6000);
insert into accounts values(22,11,"Savings",7000);
insert into accounts values(23,12,"Checking",6500);
insert into accounts values(24,12,"Savings",7500);
insert into accounts values(25,13,"Checking",7000);
insert into accounts values(26,13,"Savings",8000);
insert into accounts values(27,14,"Checking",7500);
insert into accounts values(28,14,"Savings",8500);
insert into accounts values(29,15,"Checking",8000);
insert into accounts values(30,15,"Savings",9000);

CREATE TABLE banks (
  bank_id INT,
  bank_name VARCHAR(255),
  status VARCHAR(255)
);
insert into banks values(1,"BNP Paribas","Active");
insert into banks values(2,"Crédit Agricole","Active");
insert into banks values(3,"Société Générale","Active");
insert into banks values(4,"Crédit Mutuel","Active");
insert into banks values(5,"Banque Postale","Inactive");

CREATE TABLE users (
  user_id INT,
  is_deleted BOOLEAN,
  age INT,
  gender VARCHAR(255),
  job_category VARCHAR(255),
  city VARCHAR(255),
  nb_logins INT
);

insert into users values(1,False,34,"Male","Engineer","Paris",10);
insert into users values(2,False,27,"Female","Marketing","Lyon",20);
insert into users values(3,True,45,"Male","Consultant","Marseille",30);
insert into users values(4,False,32,"Female","Doctor","Nice",40);
insert into users values(5,False,51,"Male","Teacher","Toulouse",50);
insert into users values(6,True,28,"Female","Engineer","Paris",60);
insert into users values(7,False,39,"Male","Marketing","Lyon",70);
insert into users values(8,False,42,"Female","Consultant","Marseille",80);
insert into users values(9,False,37,"Male","Doctor","Nice",90);
insert into users values(10,True,29,"Female","Teacher","Toulouse",100);
insert into users values(11,False,48,"Male","Engineer","Paris",110);
insert into users values(12,False,31,"Female","Marketing","Lyon",120);
insert into users values(13,False,44,"Male","Consultant","Marseille",130);
insert into users values(14,True,35,"Female","Doctor","Nice",140);
insert into users values(15,False,50,"Male","Teacher","Toulouse",150);
insert into users values(16,False,30,"Female","Engineer","Paris",160);
insert into users values(17,True,40,"Male","Marketing","Lyon",170);
insert into users values(18,False,43,"Female","Consultant","Marseille",180);
insert into users values(19,False,38,"Male","Doctor","Nice",190);
insert into users values(20,True,49,"Female","Teacher","Toulouse",200);

CREATE TABLE items (
  item_id INT,
  creation_date DATE,
  bank_id INT,
  user_id INT
);

insert into items values(1,"2023-01-01",1,1);
insert into items values(2,"2023-01-10",2,2);
insert into items values(3,"2023-01-20",3,3);
insert into items values(4,"2023-01-30",4,4);
insert into items values(5,"2023-02-01",5,5);
insert into items values(6,"2023-02-10",1,6);
insert into items values(7,"2023-02-20",2,7);
insert into items values(8,"2023-02-28",3,8);
insert into items values(9,"2023-03-01",4,9);
insert into items values(10,"2023-03-10",5,10);
insert into items values(11,"2023-03-20",1,11);
insert into items values(12,"2023-03-30",2,12);
insert into items values(13,"2023-04-01",3,13);
insert into items values(14,"2023-04-10",4,14);
insert into items values(15,"2023-04-20",5,15);
insert into items values(16,"2023-04-30",1,16);
insert into items values(17,"2023-05-01",2,17);
insert into items values(18,"2023-05-10",3,18);
insert into items values(19,"2023-05-20",4,19);
insert into items values(20,"2023-05-30",5,20);


CREATE TABLE transactions (
  transaction_id INT,
  account_id INT,
  date DATE,
  amount FLOAT,
  category VARCHAR(255)
);
insert into transactions values(1,1,"2023-01-01",-100,"Groceries");
insert into transactions values(2,2,"2023-01-02",500,"Salary");
insert into transactions values(3,1,"2023-01-03",-50,"Entertainment");
insert into transactions values(4,2,"2023-01-04",500,"Salary");
insert into transactions values(5,1,"2023-01-05",-100,"Restaurant");
insert into transactions values(6,2,"2023-01-06",500,"Salary");
insert into transactions values(7,1,"2023-01-07",-80,"Transportation");
insert into transactions values(8,2,"2023-01-08",500,"Salary");
insert into transactions values(9,3,"2023-01-09",-120,"Groceries");
insert into transactions values(10,4,"2023-01-10",600,"Salary");
insert into transactions values(11,3,"2023-01-11",-70,"Entertainment");
insert into transactions values(12,4,"2023-01-12",600,"Salary");
insert into transactions values(13,3,"2023-01-13",-90,"Restaurant");
insert into transactions values(14,4,"2023-01-14",600,"Salary");
insert into transactions values(15,3,"2023-01-15",-100,"Transportation");
insert into transactions values(16,4,"2023-01-16",600,"Salary");
insert into transactions values(17,5,"2023-01-17",-130,"Groceries");
insert into transactions values(18,6,"2023-01-18",700,"Salary");
insert into transactions values(19,5,"2023-01-19",-80,"Entertainment");
insert into transactions values(20,6,"2023-01-20",700,"Salary");
insert into transactions values(21,6,"2023-01-21",-110,"Restaurant");
insert into transactions values(22,7,"2023-01-22",800,"Salary");
insert into transactions values(23,6,"2023-01-23",-90,"Transportation");
insert into transactions values(24,7,"2023-01-24",800,"Salary");
insert into transactions values(25,7,"2023-01-25",-140,"Groceries");
insert into transactions values(26,8,"2023-01-26",900,"Salary");
insert into transactions values(27,7,"2023-01-27",-90,"Entertainment");
insert into transactions values(28,8,"2023-01-28",900,"Salary");
insert into transactions values(29,7,"2023-01-29",-120,"Restaurant");
insert into transactions values(30,8,"2023-01-30",900,"Salary");
insert into transactions values(31,7,"2023-01-31",-110,"Transportation");
insert into transactions values(32,8,"2023-02-01",900,"Salary");
insert into transactions values(33,9,"2023-02-02",-150,"Groceries");
insert into transactions values(34,10,"2023-02-03",1000,"Salary");
insert into transactions values(35,9,"2023-02-04",-100,"Entertainment");
insert into transactions values(36,10,"2023-02-05",1000,"Salary");
insert into transactions values(37,9,"2023-02-06",-130,"Restaurant");
insert into transactions values(38,10,"2023-02-07",1000,"Salary");
insert into transactions values(39,9,"2023-02-08",-120,"Transportation");
insert into transactions values(40,10,"2023-02-09",1000,"Salary");
insert into transactions values(41,11,"2023-02-10",-160,"Groceries");
insert into transactions values(42,12,"2023-02-11",1100,"Salary");
insert into transactions values(43,11,"2023-02-12",-110,"Entertainment");
insert into transactions values(44,12,"2023-02-13",1100,"Salary");
insert into transactions values(45,11,"2023-02-14",-140,"Restaurant");
insert into transactions values(46,12,"2023-02-15",1100,"Salary");
insert into transactions values(47,11,"2023-02-16",-130,"Transportation");
insert into transactions values(48,12,"2023-02-17",1100,"Salary");
insert into transactions values(49,13,"2023-02-18",-170,"Groceries");
insert into transactions values(50,14,"2023-02-19",1200,"Salary");
insert into transactions values(51,13,"2023-02-20",-120,"Entertainment");
insert into transactions values(52,14,"2023-02-21",1200,"Salary");
insert into transactions values(53,13,"2023-02-22",-150,"Restaurant");
insert into transactions values(54,14,"2023-02-23",1200,"Salary");
insert into transactions values(55,13,"2023-02-24",-140,"Transportation");
insert into transactions values(56,14,"2023-02-25",1200,"Salary");
insert into transactions values(57,15,"2023-02-26",-180,"Groceries");
insert into transactions values(58,16,"2023-02-27",1300,"Salary");
insert into transactions values(59,15,"2023-02-28",-130,"Entertainment");
insert into transactions values(60,16,"2023-03-01",1300,"Salary");
insert into transactions values(61,15,"2023-03-02",-160,"Restaurant");
insert into transactions values(62,16,"2023-03-03",1300,"Salary");
insert into transactions values(63,15,"2023-03-04",-150,"Transportation");
insert into transactions values(64,16,"2023-03-05",1300,"Salary");
insert into transactions values(65,17,"2023-03-06",-190,"Groceries");
insert into transactions values(66,18,"2023-03-07",1400,"Salary");
insert into transactions values(67,17,"2023-03-08",-140,"Entertainment");
insert into transactions values(68,18,"2023-03-09",1400,"Salary");
insert into transactions values(69,17,"2023-03-10",-170,"Restaurant");
insert into transactions values(70,18,"2023-03-11",1400,"Salary");
insert into transactions values(71,17,"2023-03-12",-160,"Transportation");
insert into transactions values(72,18,"2023-03-13",1400,"Salary");
insert into transactions values(73,19,"2023-03-14",-200,"Groceries");
insert into transactions values(74,20,"2023-03-15",1500,"Salary");
insert into transactions values(75,19,"2023-03-16",-150,"Entertainment");
insert into transactions values(76,20,"2023-03-17",1500,"Salary");
insert into transactions values(77,19,"2023-03-18",-180,"Restaurant");
insert into transactions values(78,20,"2023-03-19",1500,"Salary");
insert into transactions values(79,19,"2023-03-20",-170,"Transportation");
insert into transactions values(80,20,"2023-03-21",1500,"Salary");
insert into transactions values(81,21,"2023-03-22",-210,"Groceries");
insert into transactions values(82,22,"2023-03-23",1600,"Salary");
insert into transactions values(83,21,"2023-03-24",-160,"Entertainment");
insert into transactions values(84,22,"2023-03-25",1600,"Salary");
insert into transactions values(85,21,"2023-03-26",-190,"Restaurant");
insert into transactions values(86,22,"2023-03-27",1600,"Salary");
insert into transactions values(87,21,"2023-03-28",-180,"Transportation");
insert into transactions values(88,22,"2023-03-29",1600,"Salary");
insert into transactions values(89,23,"2023-03-30",-220,"Groceries");
insert into transactions values(90,24,"2023-03-31",1700,"Salary");
insert into transactions values(91,23,"2023-04-01",-170,"Entertainment");
insert into transactions values(92,24,"2023-04-02",1700,"Salary");
insert into transactions values(93,23,"2023-04-03",-200,"Restaurant");
insert into transactions values(94,24,"2023-04-04",1700,"Salary");
insert into transactions values(95,23,"2023-04-05",-190,"Transportation");
insert into transactions values(96,24,"2023-04-06",1700,"Salary");
insert into transactions values(97,25,"2023-04-07",-230,"Groceries");
insert into transactions values(98,26,"2023-04-08",1800,"Salary");
insert into transactions values(99,25,"2023-04-09",-180,"Entertainment");
insert into transactions values(100,26,"2023-04-10",1800,"Salary");