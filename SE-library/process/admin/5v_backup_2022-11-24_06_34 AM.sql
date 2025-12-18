

CREATE TABLE `inout` (
  `sl` int NOT NULL,
  `cardnumber` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `entry` time NOT NULL,
  `exit` time NOT NULL DEFAULT '00:00:00',
  `status` varchar(10) NOT NULL,
  `loc` varchar(100) NOT NULL DEFAULT '',
  `cc` varchar(100) NOT NULL DEFAULT '',
  `branch` varchar(100) NOT NULL DEFAULT '',
  `sort1` varchar(30) NOT NULL DEFAULT '',
  `sort2` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `mob` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO inout VALUES("1","1","","","2022-11-23","10:22:20","18:30:00","IN","MC-Library","Staff","Midway","","","","");
INSERT INTO inout VALUES("2","104","Mr Neroeh Franz Ravis","M","2022-11-23","10:22:57","14:52:59","OUT","MC-Library","Staff","Main Library","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("3","123","Mr Rene Remoroza","M","2022-11-23","10:32:34","10:32:45","OUT","MC MAIN LIBRARY","Staff","Union","","","","");
INSERT INTO inout VALUES("4","104","Mr Neroeh Franz Ravis","M","2022-11-23","14:52:59","14:53:17","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("5","104","Mr Neroeh Franz Ravis","M","2022-11-23","14:53:26","14:55:34","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("6","104","Mr Neroeh Franz Ravis","M","2022-11-23","14:55:34","14:55:50","OUT","MC HIGH SCHOOL LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("7","090000"," John Virgel Lo","","2022-11-24","08:43:20","08:44:24","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("8","104","Mr Neroeh Franz Ravis","M","2022-11-24","08:45:07","17:00:00","IN","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");



CREATE TABLE `loc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO loc VALUES("2","MC MAIN LIBRARY");
INSERT INTO loc VALUES("3","MC HIGH SCHOOL LIBRARY");
INSERT INTO loc VALUES("4","MC NURSING LIBRARY");



CREATE TABLE `log` (
  `id` int NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE `news` (
  `id` int NOT NULL,
  `edate` varchar(20) NOT NULL,
  `nhead` varchar(50) NOT NULL,
  `nbody` varchar(600) NOT NULL,
  `nfoot` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `loc` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO news VALUES("1","2022-11-24","TEST TEST","TEST","TESSSSSTTTT","No","MC MAIN LIBRARY");
INSERT INTO news VALUES("2","2022-11-24","test","gcusgcuschsicsicsbivsv","affwfwfwfw","No","MC MAIN LIBRARY");



CREATE TABLE `roles` (
  `id` int NOT NULL,
  `rname` varchar(30) NOT NULL,
  `rdesc` varchar(100) NOT NULL,
  `acc_code` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rname` (`rname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO roles VALUES("1","Master","Superuser","INDEX;S01;A02;R01;N01;R01;");
INSERT INTO roles VALUES("2","User","User Dashboard","U02;");
INSERT INTO roles VALUES("3","Admin","Admin ","INDEX;R01;U02;U03;");



CREATE TABLE `setup` (
  `var` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO setup VALUES("cname","Library In Out Management System");
INSERT INTO setup VALUES("libtime","17:00:00");
INSERT INTO setup VALUES("noname","Library card number");
INSERT INTO setup VALUES("sessiontime","7200");
INSERT INTO setup VALUES("banner","false");
INSERT INTO setup VALUES("activedash","quote");



CREATE TABLE `tmp1` (
  `date` date NOT NULL,
  `secs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tmp2` (
  `usn` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tmp3` (
  `date` varchar(30) NOT NULL DEFAULT '',
  `day` varchar(30) NOT NULL DEFAULT 'CURRENT_TIMESTAMP',
  `loc` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `num` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `role` int NOT NULL,
  `active` int NOT NULL,
  `llogin` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO users VALUES("1","master","Superuser","4f26aeafdb2367620a393c973eddbe8f8b846ebd","1","0","18/10/2018 09:10 AM");
INSERT INTO users VALUES("2","admin","Rene Remoroza","9dbb62a6d3b126fd500dc657daa973db06d82fa6","1","1","18/10/2018 09:10 AM");
INSERT INTO users VALUES("3","user","User","12dea96fec20593566ab75692c9949596833adc9","2","0","07/09/2019 23:09 PM");
INSERT INTO users VALUES("4","jv","John Virgel Lo","24e6c0b8698f3886690db7e0a647391aafc6761f","1","1","23/11/2022 10:11 AM");
INSERT INTO users VALUES("5","mc","MC HIGH SCHOOL LIBRARY","759aef0b3f465fd351110892de74978feaca604a","2","1","23/11/2022 13:11 PM");
INSERT INTO users VALUES("6","ekay","Ericka Lopez","e60a2ca132b6f8d1cb3c56a922d72670b4798229","3","1","24/11/2022 08:11 AM");

