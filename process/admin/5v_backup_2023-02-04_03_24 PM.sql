

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
INSERT INTO inout VALUES("9","090000"," John Virgel Lo","","2022-11-24","06:51:49","06:54:32","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("10","090000"," John Virgel Lo","","2022-11-24","08:32:49","08:33:24","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("11","090000"," John Virgel Lo","","2022-11-24","08:33:39","08:50:56","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("12","153","Mr CBAA CBAA","","2022-11-24","08:43:49","10:19:33","OUT","MC MAIN LIBRARY","College Of Business Administration and Accountancy"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("13","147"," sdxc saada","","2022-11-24","09:11:20","09:13:39","OUT","MC MAIN LIBRARY","Grade 10","MC HIGH SCHOOL LIBRARY","","","","");
INSERT INTO inout VALUES("14","147"," sdxc saada","","2022-11-24","09:13:39","09:15:17","OUT","MC HIGH SCHOOL LIBRARY","Grade 10","MC HIGH SCHOOL LIBRARY","","","","");
INSERT INTO inout VALUES("15","090000"," John Virgel Lo","","2022-11-24","10:17:17","10:20:36","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("16","153","Mr CBAA CBAA","","2022-11-24","10:19:33","10:19:58","OUT","MC HIGH SCHOOL LIBRARY","College Of Business Administration and Accountancy"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("17","090000"," John Virgel Lo","","2022-11-24","12:52:15","10:52:53","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("18","090000"," John Virgel Lo","","2022-11-24","10:52:53","11:16:29","OUT","MC HIGH SCHOOL LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("19","090000"," John Virgel Lo","","2022-11-24","11:22:17","11:26:49","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("20","153","Mr CBAA CBAA","","2022-11-24","11:27:04","11:53:19","OUT","MC MAIN LIBRARY","College Of Business Administration and Accountancy"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("21","090000"," John Virgel Lo","","2022-11-24","11:46:40","11:53:13","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("22","147"," sdxc saada","","2022-11-24","11:47:57","17:00:00","IN","MC MAIN LIBRARY","Grade 10","MC HIGH SCHOOL LIBRARY","","","","");
INSERT INTO inout VALUES("23","090000"," John Virgel Lo","","2022-11-24","12:04:34","17:00:00","IN","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("24","104","Mr Neroeh Franz Ravis","M","2022-11-28","06:47:28","06:47:50","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("25","104","Mr Neroeh Franz Ravis","M","2022-11-28","06:48:47","08:18:22","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("26","104","Mr Neroeh Franz Ravis","M","2022-11-28","08:18:42","11:04:13","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("27","104","Mr Neroeh Franz Ravis","M","2022-11-28","11:30:07","11:55:15","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("28","090000"," John Virgel Lo","","2022-11-28","15:57:49","15:58:09","OUT","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("29","153","Mr CBAA CBAA","","2022-11-28","16:06:23","16:06:43","OUT","MC MAIN LIBRARY","College Of Business Administration and Accountancy"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("30","090000"," John Virgel Lo","","2022-11-28","16:06:34","17:00:00","IN","MC MAIN LIBRARY","Patron"," MC MAIN LIBRARY","","","jvlo@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("31","104","Mr Neroeh Franz Ravis","M","2022-11-28","16:11:54","16:14:40","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("32","104","Mr Neroeh Franz Ravis","M","2022-11-28","16:53:11","00:00:00","IN","","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("33","104","Mr Neroeh Franz Ravis","M","2022-11-29","08:27:04","08:34:10","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("34","104","Mr Neroeh Franz Ravis","M","2022-12-01","13:46:01","13:46:16","OUT","","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("35","104","Mr Neroeh Franz Ravis","M","2022-12-01","13:46:16","13:47:21","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("36","104","Mr Neroeh Franz Ravis","M","2023-01-10","11:45:25","17:00:00","IN","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("37","104","Mr Neroeh Franz Ravis","M","2023-01-23","08:57:54","17:00:00","IN","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("38","182525"," Kenn Jasper Ababa","","2023-01-23","11:32:48","17:00:00","IN","MC MAIN LIBRARY","College of Business Administration and Accountancy"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("39","220224"," Mary Angelique Abad","","2023-01-23","15:56:53","17:00:00","IN","MC MAIN LIBRARY","College of Business Administration and Accountancy"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("40","222776"," Laurence Santiago","","2023-01-23","16:13:48","16:16:42","OUT","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("41","223067"," Ronel Canicula","","2023-01-23","16:18:53","17:00:00","IN","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("42","223439"," Christian Azares","","2023-01-23","16:30:53","17:00:00","IN","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("43","222434"," Angelene Abuyo","","2023-01-23","16:31:05","17:00:00","IN","MC MAIN LIBRARY","Staff"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("44","190579"," Jhon Carlo Abanes","","2023-01-26","13:37:41","13:37:53","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9079180029");
INSERT INTO inout VALUES("45","191348"," Dencel Rose Barrameda","","2023-01-26","13:40:22","13:40:33","OUT","Master","College of Nursing and Midwifery","NURSING LIBRARY","","","","9650922351");
INSERT INTO inout VALUES("46","104","Mr Neroeh Franz Ravis","M","2023-01-26","13:40:45","13:48:32","OUT","Master","STUDENT"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("47","191715"," Yasmin Ampaso","","2023-01-26","13:48:21","13:51:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9108664889");
INSERT INTO inout VALUES("48","104","Mr Neroeh Franz Ravis","M","2023-01-26","13:48:32","17:00:00","IN","MC NURSING LIBRARY","STUDENT"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("49","191715","Ms Yasmin Ampaso","F","2023-01-26","13:51:14","13:53:21","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9108664889");
INSERT INTO inout VALUES("50","191715","Ms Yasmin Ampaso","F","2023-01-26","13:57:35","17:00:00","IN","Master","College of Nursing and Midwifery","NURSING LIBRARY","","","","9108664889");
INSERT INTO inout VALUES("51","223067"," Ronel Canicula","","2023-01-26","14:00:14","14:04:32","OUT","MC MAIN LIBRARY","STUDENT"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("52","90156"," Erma Grace Tychingco","","2023-01-26","14:48:14","14:48:40","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9480925722");
INSERT INTO inout VALUES("53","90156"," Erma Grace Tychingco","","2023-01-26","14:48:40","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9480925722");
INSERT INTO inout VALUES("54","190246"," Noelyn Blas","","2023-01-26","14:49:29","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9279216380");
INSERT INTO inout VALUES("55","190347"," Lancelle May Espinosa","","2023-01-26","15:16:28","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9956149253");
INSERT INTO inout VALUES("56","190256"," Chelo Marie Marqueses","","2023-01-26","15:26:39","17:00:00","IN","MC NURSING LIBRARY","STUDENT"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("57","191039"," Jan Nicole España","","2023-01-26","15:27:30","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9380422889");
INSERT INTO inout VALUES("58","190039"," Marjorie Casiano","","2023-01-26","15:28:33","17:00:00","IN","MC NURSING LIBRARY","STUDENT"," MC MAIN LIBRARY","","","","");
INSERT INTO inout VALUES("59","223971"," Maylyn Fulgueras","","2023-01-26","15:29:21","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9173125359");
INSERT INTO inout VALUES("60","221892"," Cassandra Annajean Ferrer","","2023-01-26","15:29:57","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9564206355");
INSERT INTO inout VALUES("61","191726"," Erizza Carranceja","","2023-01-26","16:35:06","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9203277539");
INSERT INTO inout VALUES("62","221298"," Renieze Ella","","2023-01-26","16:44:24","16:45:14","OUT","Master","College of Nursing and Midwifery","NURSING LIBRARY","","","","9708032392");
INSERT INTO inout VALUES("63","221298"," Renieze Ella","","2023-01-26","16:49:01","16:50:25","OUT","Master","College of Nursing and Midwifery","NURSING LIBRARY","","","","9708032392");
INSERT INTO inout VALUES("64","221298"," Renieze Ella","","2023-01-26","16:52:44","16:53:45","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9708032392");
INSERT INTO inout VALUES("65","221298"," Renieze Ella","","2023-01-26","16:54:03","16:55:35","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9708032392");
INSERT INTO inout VALUES("66","221298"," Renieze Ella","","2023-01-26","16:55:44","00:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9708032392");
INSERT INTO inout VALUES("67","221901"," Jesherel Albis","","2023-01-27","13:42:04","13:42:34","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("68","221901"," Jesherel Albis","","2023-01-27","13:42:34","15:54:56","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("69","222305"," Hannah Adan","","2023-01-27","13:48:50","15:30:09","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9083038505");
INSERT INTO inout VALUES("70","200300"," Charles Jordan Bawanan","","2023-01-27","14:06:15","15:54:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9105636778");
INSERT INTO inout VALUES("71","222537"," Ruth Lavarro","","2023-01-27","14:09:29","14:14:36","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9054166629");
INSERT INTO inout VALUES("72","222619"," Mariella Ruales","","2023-01-27","14:09:42","14:13:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9686263634");
INSERT INTO inout VALUES("73","222653"," Diana Rose Bautista","","2023-01-27","14:09:56","14:13:54","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9291756262");
INSERT INTO inout VALUES("74","222324"," Mica Vista","","2023-01-27","14:10:12","14:14:24","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9515285427");
INSERT INTO inout VALUES("75","222684"," Matthew Ismael Moral","","2023-01-27","14:10:30","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9286580943");
INSERT INTO inout VALUES("76","221642"," John Michael Gasis","","2023-01-27","14:25:06","15:54:23","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9463337346");
INSERT INTO inout VALUES("77","222258"," Chammie Asido","","2023-01-27","14:36:16","15:02:04","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9289891477");
INSERT INTO inout VALUES("78","222642"," Shine Chai Peru","","2023-01-27","14:36:32","15:02:15","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9636737537");
INSERT INTO inout VALUES("79","222505"," Marry Mel Gonzales","","2023-01-27","14:36:38","15:02:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9161602906");
INSERT INTO inout VALUES("80","200321"," Diana Paloma Dela Cruz","","2023-01-27","16:15:48","16:37:58","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","+63 950 347 2376");
INSERT INTO inout VALUES("81","200571"," Nikki Maxine Memije","","2023-01-27","16:15:59","16:38:04","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9558173751");
INSERT INTO inout VALUES("82","211375"," Angelo Noe","","2023-01-28","10:44:58","10:45:23","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9638412779");
INSERT INTO inout VALUES("83","211375"," Angelo Noe","","2023-01-28","10:45:23","10:51:34","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9638412779");
INSERT INTO inout VALUES("84","221764"," Patricia Joy Montes","","2023-01-28","11:33:08","11:59:56","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9634457570");
INSERT INTO inout VALUES("85","223135"," Shiela May Alcayde","","2023-01-28","11:33:41","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9669802961");
INSERT INTO inout VALUES("86","221922"," Mikee Anazette Abad","","2023-01-28","11:33:54","12:00:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9665284101");
INSERT INTO inout VALUES("87","152702"," Shaira Daniela Gilana","","2023-01-28","14:31:51","00:00:00","IN","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9073418831");
INSERT INTO inout VALUES("88","200435"," Alyssa Abihay","","2023-01-28","14:37:24","14:53:36","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9510697433");
INSERT INTO inout VALUES("89","192815"," Clarence Jethro Adea","","2023-01-28","14:37:36","14:53:42","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9770569783");
INSERT INTO inout VALUES("90","222621"," Renelyn Banga","","2023-01-28","14:37:52","14:53:27","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9105285625");
INSERT INTO inout VALUES("91","222974"," Jhon Mheayeer Estares","","2023-01-28","14:38:04","14:53:32","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9198616823");
INSERT INTO inout VALUES("92","222506"," Loise Bamba","","2023-01-28","14:53:54","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9632288277");
INSERT INTO inout VALUES("93","221892"," Cassandra Annajean Ferrer","","2023-01-30","08:58:54","11:01:45","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9564206355");
INSERT INTO inout VALUES("94","223573"," Katrina Magana","","2023-01-30","08:59:15","11:01:26","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9485034982");
INSERT INTO inout VALUES("95","222399"," Regimae Bartolome","","2023-01-30","08:59:38","10:59:28","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9090224543");
INSERT INTO inout VALUES("96","223224"," Jerain Lei Bustria","","2023-01-30","09:16:20","10:56:33","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639503715701");
INSERT INTO inout VALUES("97","200411"," Jessa Bardon","","2023-01-30","09:16:33","10:58:59","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9762018786");
INSERT INTO inout VALUES("98","211984"," John Lowie Balon","","2023-01-30","09:16:51","10:56:59","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9483620090");
INSERT INTO inout VALUES("99","220772"," Jessa Marie Cornito","","2023-01-30","09:17:06","10:04:16","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9388980161");
INSERT INTO inout VALUES("100","221233"," Sofia Trixia Delovino","","2023-01-30","09:17:42","10:03:29","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9511457574");
INSERT INTO inout VALUES("101","221873"," Afril Jean Cadag","","2023-01-30","09:18:25","10:04:29","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9081985077");
INSERT INTO inout VALUES("102","161269"," Fergare Shane Bolalin","","2023-01-30","09:18:40","10:59:34","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9630216703");
INSERT INTO inout VALUES("103","220630"," Dherelyn Base","","2023-01-30","09:19:04","10:59:15","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9164671008");
INSERT INTO inout VALUES("104","221055"," Kayte Andrea Odi","","2023-01-30","09:19:17","10:29:04","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9632264027");
INSERT INTO inout VALUES("105","221894"," Maureen Chelsey Rieza","","2023-01-30","09:19:31","10:28:41","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9369903119");
INSERT INTO inout VALUES("106","221084"," Kyla Canaria","","2023-01-30","09:20:08","10:03:43","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639070624307");
INSERT INTO inout VALUES("107","222305"," Hannah Adan","","2023-01-30","09:20:49","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9083038505");
INSERT INTO inout VALUES("108","221177"," Lady Lyrencee Joy Avila","","2023-01-30","09:21:06","10:58:25","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9484653974");
INSERT INTO inout VALUES("109","220897"," Sarah Balce","","2023-01-30","09:21:19","10:57:14","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9127217165");
INSERT INTO inout VALUES("110","221976"," Alyssa Guia Baguio","","2023-01-30","09:21:42","10:58:07","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9566622492");
INSERT INTO inout VALUES("111","200377"," Judy Rose Amandy","","2023-01-30","09:21:56","10:57:26","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9353557623");
INSERT INTO inout VALUES("112","161184"," Ednette Joyce Abogado","","2023-01-30","09:22:51","09:23:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9675474670");
INSERT INTO inout VALUES("113","161184"," Ednette Joyce Abogado","","2023-01-30","09:23:31","10:57:44","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9675474670");
INSERT INTO inout VALUES("114","161182"," Noren Palma","","2023-01-30","09:31:29","12:54:56","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9154697347");
INSERT INTO inout VALUES("115","222155"," Kate Stephannie Ogmar","","2023-01-30","09:31:45","12:54:40","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9690277315");
INSERT INTO inout VALUES("116","221875"," Charmen Rose Palillo","","2023-01-30","09:32:00","10:05:01","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","93915157636");
INSERT INTO inout VALUES("117","200346"," Amea Syra Ojo","","2023-01-30","09:32:20","10:04:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9086270968");
INSERT INTO inout VALUES("118","222177"," Cielo Mae Pacay","","2023-01-30","09:32:34","10:04:49","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9103099772");
INSERT INTO inout VALUES("119","222097"," Mary Joy Paquita","","2023-01-30","09:32:48","10:04:35","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9185242625");
INSERT INTO inout VALUES("120","161206"," Angeline Palmones","","2023-01-30","09:33:01","10:05:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9182594885");
INSERT INTO inout VALUES("121","222119"," Meek Joshpher Bellen","","2023-01-30","09:35:07","10:05:31","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9488295487");
INSERT INTO inout VALUES("122","222145"," Dave Hanz Bartolome","","2023-01-30","09:35:21","10:05:26","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9974611406");
INSERT INTO inout VALUES("123","222150"," Lemuel Clacio","","2023-01-30","09:40:55","10:03:23","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9973076860");
INSERT INTO inout VALUES("124","222094"," Kaye Contreras","","2023-01-30","09:41:10","10:03:06","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9272076539");
INSERT INTO inout VALUES("125","152702"," Shaira Daniela Gilana","","2023-01-30","10:10:51","10:18:51","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9073418831");
INSERT INTO inout VALUES("126","200321"," Diana Paloma Dela Cruz","","2023-01-30","10:11:07","10:18:55","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","+63 950 347 2376");
INSERT INTO inout VALUES("127","222324"," Mica Vista","","2023-01-30","10:56:14","10:56:46","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9515285427");
INSERT INTO inout VALUES("128","221901"," Jesherel Albis","","2023-01-30","11:51:19","13:26:20","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("129","221271"," Jon Leonel Rustique","","2023-01-30","12:01:02","12:23:33","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9090633782");
INSERT INTO inout VALUES("130","222118"," Kein Joshua Villaflores","","2023-01-30","12:01:08","12:32:56","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9089202693");
INSERT INTO inout VALUES("131","221584"," Janel Senis","","2023-01-30","12:01:13","12:28:30","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9703086647");
INSERT INTO inout VALUES("132","222186"," Daniella Villacrusis","","2023-01-30","12:01:32","12:33:06","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9481466917");
INSERT INTO inout VALUES("133","222250"," Mc Clure Mariel Yanto","","2023-01-30","12:01:36","12:28:13","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639925941703");
INSERT INTO inout VALUES("134","221958"," Abdel Ezekiel Pilapil","","2023-01-30","13:04:22","16:09:32","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9193477799");
INSERT INTO inout VALUES("135","221901"," Jesherel Albis","","2023-01-30","13:26:20","13:26:32","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("136","221901"," Jesherel Albis","","2023-01-30","13:26:38","15:04:35","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("137","221642"," John Michael Gasis","","2023-01-30","13:29:53","15:04:07","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9463337346");
INSERT INTO inout VALUES("138","200300"," Charles Jordan Bawanan","","2023-01-30","13:48:40","15:03:53","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9105636778");
INSERT INTO inout VALUES("139","222022"," Mariel Paway","","2023-01-30","13:49:35","15:10:38","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9505000574");
INSERT INTO inout VALUES("140","222024"," Francheska Andrea Del Rosario","","2023-01-30","13:49:50","15:10:51","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9608612896");
INSERT INTO inout VALUES("141","152630"," Katrina Muring","","2023-01-30","14:12:34","14:23:17","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9285915671");
INSERT INTO inout VALUES("142","221665"," Ira Nyca Noga","","2023-01-30","14:13:52","16:43:58","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9098065378");
INSERT INTO inout VALUES("143","210956"," Rossbee Jordas","","2023-01-30","14:14:58","14:23:00","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9509286619");
INSERT INTO inout VALUES("144","210935"," Kristelle Nicole Jamito","","2023-01-30","14:15:05","14:23:13","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9081833689");
INSERT INTO inout VALUES("145","210581"," Mary France Narvasa","","2023-01-30","14:15:10","14:22:56","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9618090395");
INSERT INTO inout VALUES("146","210412"," Marinel Jardin","","2023-01-30","14:15:16","14:23:06","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9506680078");
INSERT INTO inout VALUES("147","210370"," Catherine Joy Lanorio","","2023-01-30","14:15:43","14:23:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9750975681");
INSERT INTO inout VALUES("148","192794"," Kian Angelo Macuha","","2023-01-30","14:16:05","14:22:51","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9125784074");
INSERT INTO inout VALUES("149","212104"," Francis James Latoza","","2023-01-30","14:16:17","14:23:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9056090354");
INSERT INTO inout VALUES("150","210300"," Leonard Diezmo","","2023-01-30","14:16:32","14:24:53","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9103561864");
INSERT INTO inout VALUES("151","210644"," Trixia Jane Co","","2023-01-30","14:28:30","14:28:58","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9456827414");
INSERT INTO inout VALUES("152","210644"," Trixia Jane Co","","2023-01-30","14:29:13","15:41:36","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9456827414");
INSERT INTO inout VALUES("153","210662"," Valerie Del Monte","","2023-01-30","14:29:39","15:41:15","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9956218343");
INSERT INTO inout VALUES("154","210621"," Hazel Carrascal","","2023-01-30","14:29:45","15:42:25","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9567562267");
INSERT INTO inout VALUES("155","210711"," Ma. Tonette Del Pilar","","2023-01-30","14:29:59","15:42:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9102288181");
INSERT INTO inout VALUES("156","192766"," Kyrvi Camus","","2023-01-30","14:39:41","15:42:01","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9554639253");
INSERT INTO inout VALUES("157","192672"," Lysa Gabriela Bress","","2023-01-30","14:40:01","15:42:13","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9154051418");
INSERT INTO inout VALUES("158","152702"," Shaira Daniela Gilana","","2023-01-30","14:57:45","16:03:33","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9073418831");
INSERT INTO inout VALUES("159","200321"," Diana Paloma Dela Cruz","","2023-01-30","14:57:51","16:04:16","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","+63 950 347 2376");
INSERT INTO inout VALUES("160","222175"," Mia Shane Dela Rosa","","2023-01-30","14:58:09","16:04:28","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9467401494");
INSERT INTO inout VALUES("161","221338"," Anna Joy Garchitorena","","2023-01-30","14:58:26","16:03:50","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9056686808");
INSERT INTO inout VALUES("162","222380"," Jinalyn Garduque","","2023-01-30","14:58:43","16:04:11","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9656027074");
INSERT INTO inout VALUES("163","222254"," Marianne Zechaia Estacio","","2023-01-30","14:58:48","16:03:45","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9187276146");
INSERT INTO inout VALUES("164","223298"," Christian Garcera","","2023-01-30","14:58:54","16:04:32","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9202335062");
INSERT INTO inout VALUES("165","222221"," Joyce Allen Ellaga","","2023-01-30","14:59:06","16:04:21","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9055754804");
INSERT INTO inout VALUES("166","222974"," Jhon Mheayeer Estares","","2023-01-30","15:10:27","16:01:27","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9198616823");
INSERT INTO inout VALUES("167","221892"," Cassandra Annajean Ferrer","","2023-01-30","15:19:04","16:01:34","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9564206355");
INSERT INTO inout VALUES("168","200553"," Nichole Nette Laceda","","2023-01-30","15:19:57","16:02:54","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9124034479");
INSERT INTO inout VALUES("169","210300"," Leonard Diezmo","","2023-01-30","15:23:40","16:24:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9103561864");
INSERT INTO inout VALUES("170","211312"," Mariel Gadil","","2023-01-30","15:24:00","16:03:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9319826445");
INSERT INTO inout VALUES("171","222340"," Yvhonne Guevarra","","2023-01-30","16:02:11","16:02:28","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9704921037");
INSERT INTO inout VALUES("172","223077"," Princess Yvonne Alcantara","","2023-01-30","16:22:29","16:44:13","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9918559471");
INSERT INTO inout VALUES("173","211449"," Emerald Isle Dela Paz","","2023-01-31","08:29:08","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9487372844");
INSERT INTO inout VALUES("174","210808"," Edna Diezmo","","2023-01-31","08:29:27","11:06:05","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9055015993");
INSERT INTO inout VALUES("175","210545"," Sophia Dela Torre","","2023-01-31","08:29:34","11:05:49","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9466992307");
INSERT INTO inout VALUES("176","210543"," Jasmine Joy Fria","","2023-01-31","08:29:53","11:06:11","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9662755662");
INSERT INTO inout VALUES("177","193180"," Rica Mae Escamillas","","2023-01-31","08:30:10","11:09:49","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9617874726");
INSERT INTO inout VALUES("178","211272"," Nathaniel Del Rosario","","2023-01-31","08:30:16","11:05:35","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9515382436");
INSERT INTO inout VALUES("179","212051"," Jasmine Devesa","","2023-01-31","08:30:34","11:10:02","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9465633384");
INSERT INTO inout VALUES("180","211092"," Kristel Joy Delos Santos","","2023-01-31","08:31:05","11:09:35","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9773292330");
INSERT INTO inout VALUES("181","200302"," Nicole Ibita","","2023-01-31","08:36:01","09:58:24","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9385157067");
INSERT INTO inout VALUES("182","210368"," Stefanie De Vera","","2023-01-31","08:38:44","11:10:17","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9093275857");
INSERT INTO inout VALUES("183","210383"," Julia De Belen","","2023-01-31","08:39:00","11:09:18","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9511116682");
INSERT INTO inout VALUES("184","181257"," Kate Subel Ordinario","","2023-01-31","08:46:59","11:12:06","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9126296771");
INSERT INTO inout VALUES("185","223321"," Catherine Palma","","2023-01-31","08:57:20","10:47:09","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9074380436");
INSERT INTO inout VALUES("186","220629"," Denise Joy Olit","","2023-01-31","08:57:36","10:47:15","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9679256970");
INSERT INTO inout VALUES("187","220870"," Cielo Grace Pellazo","","2023-01-31","08:57:43","10:46:58","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9569608251");
INSERT INTO inout VALUES("188","211468"," Francine Sandara Osio","","2023-01-31","08:58:01","10:32:32","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9704682222");
INSERT INTO inout VALUES("189","222151"," Princess Sheila Pajarillo","","2023-01-31","08:58:18","10:33:42","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519044901");
INSERT INTO inout VALUES("190","221895"," Lorena Diana Oresca","","2023-01-31","08:58:30","10:32:38","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9106046706");
INSERT INTO inout VALUES("191","222193"," Lysandra Pioquinto","","2023-01-31","08:58:41","10:33:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9997806300");
INSERT INTO inout VALUES("192","221958"," Abdel Ezekiel Pilapil","","2023-01-31","08:58:52","10:50:13","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9193477799");
INSERT INTO inout VALUES("193","221892"," Cassandra Annajean Ferrer","","2023-01-31","09:18:09","09:53:55","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9564206355");
INSERT INTO inout VALUES("194","221298"," Renieze Ella","","2023-01-31","09:28:21","10:32:50","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9708032392");
INSERT INTO inout VALUES("195","200265"," Camille Cuaño","","2023-01-31","09:39:47","10:51:34","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9616667827");
INSERT INTO inout VALUES("196","222196"," Michael Joshua Casallos","","2023-01-31","09:39:58","10:51:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9098083242");
INSERT INTO inout VALUES("197","221977"," Bianca Mae Bataller","","2023-01-31","09:46:33","10:51:50","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9292708092");
INSERT INTO inout VALUES("198","221165"," Lindsey Mharie Ponayo","","2023-01-31","09:50:44","10:34:02","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9065664764");
INSERT INTO inout VALUES("199","222188"," Karl Lester Tabalan","","2023-01-31","09:50:55","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9319941219");
INSERT INTO inout VALUES("200","200871"," John Patrick Tungol","","2023-01-31","09:51:11","10:36:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9218453381");
INSERT INTO inout VALUES("201","200233"," Guien Anrei Basanta","","2023-01-31","09:52:30","10:53:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9301469623");
INSERT INTO inout VALUES("202","222290"," Mary Joy Consuelo","","2023-01-31","09:52:51","10:54:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639630097476");
INSERT INTO inout VALUES("203","161221"," Mary Grace De Quiros","","2023-01-31","09:53:06","10:54:18","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","(054) 875 5494");
INSERT INTO inout VALUES("204","222015"," Rosemarie Ann Yao","","2023-01-31","09:53:12","10:37:53","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","0995 160 3551");
INSERT INTO inout VALUES("205","220676"," Suzette Tan","","2023-01-31","09:53:50","10:33:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9319632317");
INSERT INTO inout VALUES("206","200849"," Christelle Sena","","2023-01-31","09:54:11","10:33:04","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9203280145");
INSERT INTO inout VALUES("207","222261"," Dahlia Soriano","","2023-01-31","09:56:55","10:37:59","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9455347396");
INSERT INTO inout VALUES("208","223106"," Mea Rose Marie Santiago","","2023-01-31","09:57:09","10:37:40","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9455334235");
INSERT INTO inout VALUES("209","222386"," Kent Christian Balasta","","2023-01-31","09:57:56","12:00:31","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9669813230");
INSERT INTO inout VALUES("210","202222"," Rica Balon","","2023-01-31","09:58:10","11:59:43","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9096891056");
INSERT INTO inout VALUES("211","222871"," May Gabrielle Rodolfo","","2023-01-31","10:15:01","12:00:50","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9636575972");
INSERT INTO inout VALUES("212","222151"," Princess Sheila Pajarillo","","2023-01-31","11:14:11","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519044901");
INSERT INTO inout VALUES("213","200283"," Jan Benedict Mitch Almira","","2023-01-31","11:14:17","12:00:03","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9508686778");
INSERT INTO inout VALUES("214","202222"," Rica Balon","","2023-01-31","11:59:43","12:00:20","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9096891056");
INSERT INTO inout VALUES("215","202222"," Rica Balon","","2023-01-31","12:00:20","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9096891056");
INSERT INTO inout VALUES("216","222871"," May Gabrielle Rodolfo","","2023-01-31","13:00:44","13:01:04","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9636575972");
INSERT INTO inout VALUES("217","222871"," May Gabrielle Rodolfo","","2023-01-31","13:01:04","13:33:08","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9636575972");
INSERT INTO inout VALUES("218","223431"," Hannah Mae Aguenza","","2023-01-31","13:11:58","16:32:52","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9512922184");
INSERT INTO inout VALUES("219","201189"," Xyra Villagarcia","","2023-01-31","13:12:12","13:32:21","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9384514589");
INSERT INTO inout VALUES("220","220955"," Rhea Lorraine Lim","","2023-01-31","13:12:18","13:32:56","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9464218400");
INSERT INTO inout VALUES("221","200300"," Charles Jordan Bawanan","","2023-01-31","13:28:30","13:41:44","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9105636778");
INSERT INTO inout VALUES("222","221929"," Cherry Joy Bas","","2023-01-31","13:29:00","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9092561586");
INSERT INTO inout VALUES("223","210904"," Heleina Jann Pardo","","2023-01-31","13:29:15","14:36:02","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9108427977");
INSERT INTO inout VALUES("224","221958"," Abdel Ezekiel Pilapil","","2023-01-31","13:29:31","16:53:07","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9193477799");
INSERT INTO inout VALUES("225","221878"," Kyla Padua","","2023-01-31","14:29:05","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9518972806");
INSERT INTO inout VALUES("226","221890"," Edelyn Canabe","","2023-01-31","14:30:15","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9694455299");
INSERT INTO inout VALUES("227","200303"," Wesley Clacio","","2023-01-31","15:20:04","15:20:30","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9308551007");
INSERT INTO inout VALUES("228","200303"," Wesley Clacio","","2023-01-31","15:20:30","16:57:00","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9308551007");
INSERT INTO inout VALUES("229","200300"," Charles Jordan Bawanan","","2023-01-31","15:20:46","16:57:11","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9105636778");
INSERT INTO inout VALUES("230","161242"," Illysah Jane Cordero","","2023-01-31","15:21:05","16:56:00","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9485044998");
INSERT INTO inout VALUES("231","222034"," Janna Althea Cana","","2023-01-31","15:21:18","15:21:29","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9122344272");
INSERT INTO inout VALUES("232","201969"," Shaine Nicole Capin","","2023-01-31","15:21:40","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9637758926");
INSERT INTO inout VALUES("233","221527"," Farrah Jazei Dolor","","2023-01-31","15:21:57","15:22:46","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9274670531");
INSERT INTO inout VALUES("234","221908"," John Lloyd Dando","","2023-01-31","15:22:32","16:58:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9663944448");
INSERT INTO inout VALUES("235","191912"," Ivy Requinta","","2023-01-31","15:24:19","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9772163457");
INSERT INTO inout VALUES("236","201086"," Eunice Yebra","","2023-01-31","16:09:19","16:09:32","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9957212511");
INSERT INTO inout VALUES("237","201086"," Eunice Yebra","","2023-01-31","16:09:32","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9957212511");
INSERT INTO inout VALUES("238","222416"," Kris Cyroselyn Tychingco","","2023-01-31","16:09:59","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9205665021");
INSERT INTO inout VALUES("239","211984"," John Lowie Balon","","2023-01-31","16:15:47","16:22:54","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9483620090");
INSERT INTO inout VALUES("240","223224"," Jerain Lei Bustria","","2023-01-31","16:15:51","16:23:00","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639503715701");
INSERT INTO inout VALUES("241","193436"," Angelica Rodriguez","","2023-01-31","16:19:37","16:35:42","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9380521038");
INSERT INTO inout VALUES("242","223221"," Mary Criz San Jose","","2023-01-31","16:19:47","16:35:46","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9488285349");
INSERT INTO inout VALUES("243","221891"," Allyza Aborde","","2023-01-31","16:30:48","16:30:59","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9381859790");
INSERT INTO inout VALUES("244","221891"," Allyza Aborde","","2023-01-31","16:31:14","16:57:37","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9381859790");
INSERT INTO inout VALUES("245","221901"," Jesherel Albis","","2023-01-31","16:31:53","16:57:26","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("246","221950"," John Peter Balane","","2023-01-31","16:32:08","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9567556028");
INSERT INTO inout VALUES("247","222265"," Cyrus Bruno Abitria","","2023-01-31","16:32:20","16:43:22","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9665974748");
INSERT INTO inout VALUES("248","222069"," Eizel Andaya","","2023-01-31","16:32:25","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9485889524");
INSERT INTO inout VALUES("249","222020"," Layca Adano","","2023-01-31","16:32:38","16:43:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9677808657");
INSERT INTO inout VALUES("250","223431"," Hannah Mae Aguenza","","2023-01-31","16:33:03","16:43:05","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9512922184");
INSERT INTO inout VALUES("251","201189"," Xyra Villagarcia","","2023-01-31","16:42:52","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9384514589");
INSERT INTO inout VALUES("252","221527"," Farrah Jazei Dolor","","2023-01-31","16:57:06","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9274670531");
INSERT INTO inout VALUES("253","221165"," Lindsey Mharie Ponayo","","2023-02-02","08:37:21","09:55:42","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9065664764");
INSERT INTO inout VALUES("254","223106"," Mea Rose Marie Santiago","","2023-02-02","08:37:28","10:18:49","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9455334235");
INSERT INTO inout VALUES("255","222188"," Karl Lester Tabalan","","2023-02-02","08:37:43","09:57:28","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9319941219");
INSERT INTO inout VALUES("256","200871"," John Patrick Tungol","","2023-02-02","08:37:48","09:56:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9218453381");
INSERT INTO inout VALUES("257","200849"," Christelle Sena","","2023-02-02","08:37:55","09:06:18","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9203280145");
INSERT INTO inout VALUES("258","161262"," Romart Jess Amisola","","2023-02-02","08:38:20","10:37:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9569034655");
INSERT INTO inout VALUES("259","221734"," Edward Paul Ablao","","2023-02-02","08:39:24","09:46:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519261510");
INSERT INTO inout VALUES("260","220676"," Suzette Tan","","2023-02-02","08:39:29","09:06:32","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9319632317");
INSERT INTO inout VALUES("261","161314"," Maekyla Abarca","","2023-02-02","08:39:51","10:36:57","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9107286326");
INSERT INTO inout VALUES("262","200283"," Jan Benedict Mitch Almira","","2023-02-02","08:40:04","10:37:38","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9508686778");
INSERT INTO inout VALUES("263","222505"," Marry Mel Gonzales","","2023-02-02","08:40:42","09:22:33","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9161602906");
INSERT INTO inout VALUES("264","222739"," Annielyn Bermas","","2023-02-02","08:40:56","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9156581255");
INSERT INTO inout VALUES("265","223046"," Faithryl Cereno","","2023-02-02","08:41:18","09:22:39","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9451969007");
INSERT INTO inout VALUES("266","222015"," Rosemarie Ann Yao","","2023-02-02","08:49:44","10:33:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","0995 160 3551");
INSERT INTO inout VALUES("267","222261"," Dahlia Soriano","","2023-02-02","09:06:04","09:55:54","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9455347396");
INSERT INTO inout VALUES("268","142222"," Michael Gabriel Reyes","","2023-02-02","09:06:36","09:55:57","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9278640473");
INSERT INTO inout VALUES("269","221975"," Chelsea Nikki Macho","","2023-02-02","09:06:55","10:36:37","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9477604698");
INSERT INTO inout VALUES("270","221015"," Ronnalyn Badinas","","2023-02-02","09:07:10","10:38:26","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519101684");
INSERT INTO inout VALUES("271","200586"," Ashley Jade Nolasco","","2023-02-02","09:07:24","10:36:07","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","+63 961 092 5791");
INSERT INTO inout VALUES("272","222063"," Chen-Chen Necesario","","2023-02-02","09:07:44","10:36:24","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9704905346");
INSERT INTO inout VALUES("273","221750"," Patrisha Mae Mendoza","","2023-02-02","09:08:00","10:36:49","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9465428096");
INSERT INTO inout VALUES("274","222334"," John Lloyd Aragon","","2023-02-02","09:08:14","10:38:40","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9569457243");
INSERT INTO inout VALUES("275","221999"," Jannah Allago","","2023-02-02","09:08:41","10:38:05","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9361307881");
INSERT INTO inout VALUES("276","221734"," Edward Paul Ablao","","2023-02-02","09:56:48","10:38:15","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519261510");
INSERT INTO inout VALUES("277","222386"," Kent Christian Balasta","","2023-02-02","09:56:59","10:37:51","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9669813230");
INSERT INTO inout VALUES("278","202222"," Rica Balon","","2023-02-02","09:57:14","10:37:27","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9096891056");
INSERT INTO inout VALUES("279","222248"," Sophia Nadine Mabeza","","2023-02-02","10:19:01","10:19:12","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9292710911");
INSERT INTO inout VALUES("280","200402"," Erica Christine Ann Montuya","","2023-02-02","10:19:24","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9656411804");
INSERT INTO inout VALUES("281","210635"," Diana Rose Zenarosa","","2023-02-02","10:19:46","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9387892678");
INSERT INTO inout VALUES("282","200302"," Nicole Ibita","","2023-02-02","10:53:28","10:54:18","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9385157067");
INSERT INTO inout VALUES("283","222188"," Karl Lester Tabalan","","2023-02-02","11:45:19","11:59:52","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9319941219");
INSERT INTO inout VALUES("284","211984"," John Lowie Balon","","2023-02-02","13:08:27","13:08:51","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9483620090");
INSERT INTO inout VALUES("285","211984"," John Lowie Balon","","2023-02-02","13:08:51","16:33:30","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9483620090");
INSERT INTO inout VALUES("286","202222"," Rica Balon","","2023-02-02","13:37:37","14:45:29","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9096891056");
INSERT INTO inout VALUES("287","200283"," Jan Benedict Mitch Almira","","2023-02-02","13:37:50","14:45:34","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9508686778");
INSERT INTO inout VALUES("288","222025"," Abegail Tejada","","2023-02-02","13:38:34","14:04:16","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639087870973");
INSERT INTO inout VALUES("289","222726"," Marjane Sapatin","","2023-02-02","13:38:47","14:04:21","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9614950258");
INSERT INTO inout VALUES("290","221958"," Abdel Ezekiel Pilapil","","2023-02-02","13:41:56","13:58:48","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9193477799");
INSERT INTO inout VALUES("291","223224"," Jerain Lei Bustria","","2023-02-02","13:46:26","16:33:33","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639503715701");
INSERT INTO inout VALUES("292","222974"," Jhon Mheayeer Estares","","2023-02-02","14:02:40","14:39:04","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9198616823");
INSERT INTO inout VALUES("293","221892"," Cassandra Annajean Ferrer","","2023-02-02","14:12:08","14:37:14","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9564206355");
INSERT INTO inout VALUES("294","210367"," Mary Ann Asis","","2023-02-02","14:19:47","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9173174576");
INSERT INTO inout VALUES("295","222606"," John Carlo Amparado","","2023-02-02","14:19:57","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9096343852");
INSERT INTO inout VALUES("296","223573"," Katrina Magana","","2023-02-02","14:28:59","14:37:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9485034982");
INSERT INTO inout VALUES("297","221895"," Lorena Diana Oresca","","2023-02-02","14:30:27","14:38:44","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9106046706");
INSERT INTO inout VALUES("298","211468"," Francine Sandara Osio","","2023-02-02","14:30:33","14:39:10","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9704682222");
INSERT INTO inout VALUES("299","221958"," Abdel Ezekiel Pilapil","","2023-02-02","14:30:53","14:35:09","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9193477799");
INSERT INTO inout VALUES("300","220629"," Denise Joy Olit","","2023-02-02","14:30:59","14:35:05","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9679256970");
INSERT INTO inout VALUES("301","220870"," Cielo Grace Pellazo","","2023-02-02","14:31:05","14:33:17","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9569608251");
INSERT INTO inout VALUES("302","223321"," Catherine Palma","","2023-02-02","14:31:08","14:33:21","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9074380436");
INSERT INTO inout VALUES("303","222151"," Princess Sheila Pajarillo","","2023-02-02","14:31:20","14:44:39","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519044901");
INSERT INTO inout VALUES("304","222193"," Lysandra Pioquinto","","2023-02-02","14:31:24","14:44:44","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9997806300");
INSERT INTO inout VALUES("305","212503"," Hannah Jobelle San Diego","","2023-02-02","15:16:36","15:45:47","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9551955318");
INSERT INTO inout VALUES("306","160132"," Janea Moreno","","2023-02-02","15:38:38","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9665311936");
INSERT INTO inout VALUES("307","222374"," Eljeann Montalla","","2023-02-02","15:38:59","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9682916938");
INSERT INTO inout VALUES("308","202321"," Arjay Galero","","2023-02-02","15:43:13","15:56:11","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9667947072");
INSERT INTO inout VALUES("309","210186"," Lorenz Diestro","","2023-02-02","16:03:58","16:57:23","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9164205056");
INSERT INTO inout VALUES("310","193393"," Maria Lyn Rajas","","2023-02-02","16:04:15","16:57:04","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9502022473");
INSERT INTO inout VALUES("311","210716"," Jessa San Diego","","2023-02-02","16:04:43","16:57:29","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9519599586");
INSERT INTO inout VALUES("312","210679"," Julie Anne Ruzol","","2023-02-02","16:04:50","16:57:33","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9380915085");
INSERT INTO inout VALUES("313","180142"," Marjorie Talanquines","","2023-02-02","16:05:03","16:57:18","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","639568128638");
INSERT INTO inout VALUES("314","223046"," Faithryl Cereno","","2023-02-02","16:46:28","16:56:38","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9451969007");
INSERT INTO inout VALUES("315","222494"," Shane Templonuevo","","2023-02-02","16:46:50","16:56:44","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9480240449");
INSERT INTO inout VALUES("316","222505"," Marry Mel Gonzales","","2023-02-02","16:46:55","16:56:58","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9161602906");
INSERT INTO inout VALUES("317","222628"," Martina Pardo","","2023-02-02","16:47:14","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9289598258");
INSERT INTO inout VALUES("318","221958"," Abdel Ezekiel Pilapil","","2023-02-02","16:52:06","16:52:28","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9193477799");
INSERT INTO inout VALUES("319","221929"," Cherry Joy Bas","","2023-02-03","08:34:14","08:54:39","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9092561586");
INSERT INTO inout VALUES("320","221901"," Jesherel Albis","","2023-02-03","08:34:29","08:54:05","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("321","142227"," Ma. Christine Rene Abanes","","2023-02-03","08:35:43","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9092911326");
INSERT INTO inout VALUES("322","142113"," Alexzandra Crisostomo","","2023-02-03","08:35:58","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9463208006");
INSERT INTO inout VALUES("323","142115"," Miamae Dimas","","2023-02-03","08:38:04","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9283845825");
INSERT INTO inout VALUES("324","152702"," Shaira Daniela Gilana","","2023-02-03","08:39:50","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9073418831");
INSERT INTO inout VALUES("325","210368"," Stefanie De Vera","","2023-02-03","08:40:56","09:51:46","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9093275857");
INSERT INTO inout VALUES("326","190035"," Kim Suria","","2023-02-03","09:27:22","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9982210408");
INSERT INTO inout VALUES("327","190567"," Matthew Noblefranca","","2023-02-03","09:27:28","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9207792143");
INSERT INTO inout VALUES("328","212051"," Jasmine Devesa","","2023-02-03","09:27:52","09:50:58","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9465633384");
INSERT INTO inout VALUES("329","131518"," Sochelle Bacer","","2023-02-03","09:54:33","09:58:18","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9672442325");
INSERT INTO inout VALUES("330","182291"," Rustin Aragon","","2023-02-03","09:54:51","09:57:05","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9532570474");
INSERT INTO inout VALUES("331","182232"," Justine Bardon","","2023-02-03","09:55:09","09:58:31","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9075032124");
INSERT INTO inout VALUES("332","200330"," Kathleen Millena","","2023-02-03","10:48:06","11:52:15","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9198107716");
INSERT INTO inout VALUES("333","221292"," Jahaziel Ella","","2023-02-03","10:48:17","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9454722338");
INSERT INTO inout VALUES("334","222133"," Mark Ian John Lita","","2023-02-03","10:48:38","11:52:20","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9656352273");
INSERT INTO inout VALUES("335","222041"," Sean Christoper Holar","","2023-02-03","10:48:45","10:49:40","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9101862768");
INSERT INTO inout VALUES("336","220632"," Darlene Magas","","2023-02-03","10:49:03","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9157518108");
INSERT INTO inout VALUES("337","221268"," Princess Mecaller","","2023-02-03","10:49:15","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9304054213");
INSERT INTO inout VALUES("338","220747"," Jorem Laviña","","2023-02-03","10:49:29","11:52:59","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9760471024");
INSERT INTO inout VALUES("339","222041"," Sean Christoper Holar","","2023-02-03","10:49:44","11:52:42","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9101862768");
INSERT INTO inout VALUES("340","104","Mr Neroeh Franz Ravis","M","2023-02-03","09:16:56","17:00:00","IN","MC NURSING LIBRARY","STUDENT"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("341","182209"," Keiala Marie Capistrano","","2023-02-03","12:29:57","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9461476238");
INSERT INTO inout VALUES("342","222974"," Jhon Mheayeer Estares","","2023-02-03","12:43:07","12:48:40","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9198616823");
INSERT INTO inout VALUES("343","221901"," Jesherel Albis","","2023-02-03","13:58:17","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9305246373");
INSERT INTO inout VALUES("344","221895"," Lorena Diana Oresca","","2023-02-03","15:00:27","15:31:44","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9106046706");
INSERT INTO inout VALUES("345","221895"," Lorena Diana Oresca","","2023-02-03","15:31:44","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9106046706");
INSERT INTO inout VALUES("346","210947"," Natasha Nolo","","2023-02-03","15:32:53","17:00:00","IN","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9777867747");
INSERT INTO inout VALUES("347","192711"," Samantha Nicole Mendoza","","2023-02-03","15:33:13","15:33:29","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9465316465");
INSERT INTO inout VALUES("348","192711"," Samantha Nicole Mendoza","","2023-02-03","15:34:00","13:58:13","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9465316465");
INSERT INTO inout VALUES("349","211386"," Alyssa Althea Requillas","","2023-02-03","15:55:08","16:37:36","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9454885087");
INSERT INTO inout VALUES("350","211398"," Angel-Lyn Joyce Serrano","","2023-02-03","15:55:23","16:37:22","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9308385053");
INSERT INTO inout VALUES("351","193340"," Johanna Quintela","","2023-02-03","16:34:39","16:37:52","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9993265081");
INSERT INTO inout VALUES("352","221338"," Anna Joy Garchitorena","","2023-02-04","10:20:54","10:21:08","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9056686808");
INSERT INTO inout VALUES("353","221338"," Anna Joy Garchitorena","","2023-02-04","10:21:08","10:51:30","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9056686808");
INSERT INTO inout VALUES("354","221338"," Anna Joy Garchitorena","","2023-02-04","10:51:51","11:31:34","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9056686808");
INSERT INTO inout VALUES("355","104","Mr Neroeh Franz Ravis","M","2023-02-04","11:22:23","11:22:37","OUT","MC NURSING LIBRARY","STUDENT"," MC MAIN LIBRARY","","","franz@mabinicolleges.edu.ph","");
INSERT INTO inout VALUES("356","223077"," Princess Yvonne Alcantara","","2023-02-04","14:18:02","14:19:01","OUT","","College of Nursing and Midwifery","NURSING LIBRARY","","","","9918559471");
INSERT INTO inout VALUES("357","223077"," Princess Yvonne Alcantara","","2023-02-04","14:19:01","14:53:51","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9918559471");
INSERT INTO inout VALUES("358","222175"," Mia Shane Dela Rosa","","2023-02-04","14:19:15","14:54:02","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9467401494");
INSERT INTO inout VALUES("359","220864"," Cindy Brizuela","","2023-02-04","14:19:28","14:54:14","OUT","MC NURSING LIBRARY","College of Nursing and Midwifery","NURSING LIBRARY","","","","9916662803");



CREATE TABLE `loc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO loc VALUES("2","MC MAIN LIBRARY");
INSERT INTO loc VALUES("3","MC HIGH SCHOOL LIBRARY");
INSERT INTO loc VALUES("4","MC NURSING LIBRARY");
INSERT INTO loc VALUES("5","MC NURSING LIBRARY");
INSERT INTO loc VALUES("6","");
INSERT INTO loc VALUES("7","");
INSERT INTO loc VALUES("8","MC NURSING LIBRARY");



CREATE TABLE `log` (
  `id` int NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO log VALUES("1","2022-11-24","06:34 AM","Master","4","Database Backup Done");
INSERT INTO log VALUES("2","2022-11-24","06:34 AM","Admin","6","Database Backup Done");



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

INSERT INTO setup VALUES("cname","MABINI COLLEGE INC.");
INSERT INTO setup VALUES("libtime","17:00:00");
INSERT INTO setup VALUES("noname","STUDENT NO.");
INSERT INTO setup VALUES("sessiontime","7200");
INSERT INTO setup VALUES("banner","false");
INSERT INTO setup VALUES("activedash","clock");



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
INSERT INTO users VALUES("4","ekay","Ericka Lopez","e60a2ca132b6f8d1cb3c56a922d72670b4798229","3","1","03/02/2023 09:02 AM");
INSERT INTO users VALUES("5","mc","MC LIBRARIES","759aef0b3f465fd351110892de74978feaca604a","2","1","03/02/2023 09:02 AM");
INSERT INTO users VALUES("6","jv","John Virgel Lo","f8c7f2a0bf6f812f6b3857686294d0c8982426cc","1","1","03/02/2023 14:02 PM");

