# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------


#
# Delete any existing table `course`
#

DROP TABLE IF EXISTS `course`;


#
# Table structure of table `course`
#

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  KEY `DEPT_ID` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 ;

#
# Data contents of table course (27 records)
#
 
INSERT INTO `course` VALUES (1, 'BSIT', '3', 'Computer Programming', 'Bachelor of Information Technology', 33, 'First'); 
INSERT INTO `course` VALUES (2, 'BSIT', '4', 'Computer Programming', 'Bachelor of Information Technology', 33, 'First'); 
INSERT INTO `course` VALUES (3, 'BSBAD', '3', 'Accounting', 'Bachelor of Science in Busines Administration', 34, 'First'); 
INSERT INTO `course` VALUES (4, 'BSBAD', '4', 'Accounting', 'Bachelor of Science in Busines Administration', 34, 'First'); 
INSERT INTO `course` VALUES (5, 'BSBIS', '1', 'System Analysis', 'Bachelor of Science in Information System', 35, 'First'); 

#
# End of data contents of table course
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------


#
# Delete any existing table `department`
#

DROP TABLE IF EXISTS `department`;


#
# Table structure of table `department`
#

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ;

#
# Data contents of table department (4 records)
#
 
INSERT INTO `department` VALUES (33, 'IT', 'Information Technology Department'); 
INSERT INTO `department` VALUES (34, 'BAAD', 'Business Accounting and Administration'); 
INSERT INTO `department` VALUES (35, 'IS', 'Information System'); 

#
# End of data contents of table department
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------


#
# Delete any existing table `grades`
#

DROP TABLE IF EXISTS `grades`;


#
# Table structure of table `grades`
#

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL,
  `SEMS` varchar(90) NOT NULL,
  PRIMARY KEY (`GRADE_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1 ;

#
# Data contents of table grades (95 records)
#
 
INSERT INTO `grades` VALUES (1, 100000056, 17, 0, 0, 0, 0, '0', '', '', '') ; 


#
# End of data contents of table grades
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------


#
# Delete any existing table `schoolyr`
#

DROP TABLE IF EXISTS `schoolyr`;


#
# Table structure of table `schoolyr`
#

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL AUTO_INCREMENT,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New',
  PRIMARY KEY (`SYID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

#
# Data contents of table schoolyr (1 record)
#
 
INSERT INTO `schoolyr` VALUES (204, '2024-2025', 'First', 5, 1000000207, 'ENROLLED', '2024-09-02 00:00:00', '2024-09-02 00:00:00', 'New'); 

#
# End of data contents of table schoolyr
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------


#
# Delete any existing table `studentschedule`
#

DROP TABLE IF EXISTS `studentschedule`;


#
# Table structure of table `studentschedule`
#

CREATE TABLE `studentschedule` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_ID` int(11) NOT NULL,
  `schedID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(30) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `ROOM` text NOT NULL,
  `CSECTION` varchar(30) NOT NULL DEFAULT 'NONE',
  `COURSE_ID` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  PRIMARY KEY (`CLASS_ID`),
  KEY `IDNO` (`IDNO`),
  KEY `schedID` (`schedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table studentschedule (0 records)
#

#
# End of data contents of table studentschedule
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------


#
# Delete any existing table `studentsubjects`
#

DROP TABLE IF EXISTS `studentsubjects`;


#
# Table structure of table `studentsubjects`
#

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL,
  `ATTEMP` int(11) NOT NULL,
  `AVERAGE` double NOT NULL,
  `OUTCOME` text NOT NULL,
  PRIMARY KEY (`STUDSUBJ_ID`),
  KEY `IDNO` (`IDNO`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1 ;

#
# Data contents of table studentsubjects (95 records)
#
 
INSERT INTO `studentsubjects` VALUES (1516, 1000000207, 346, 1, 'First', '2024-2025', 1, 89.8, 'Passed'); 
INSERT INTO `studentsubjects` VALUES (1517, 1000000207, 347, 1, 'First', '2024-2025', 1, 87.4, 'Passed');
INSERT INTO `studentsubjects` VALUES (1518, 1000000207, 348, 1, 'First', '2024-2025', 1, 78.2, 'Passed'); 
INSERT INTO `studentsubjects` VALUES (1519, 1000000207, 349, 1, 'First', '2024-2025', 1, 61.8, 'Failed');
INSERT INTO `studentsubjects` VALUES (1520, 1000000207, 350, 1, 'First', '2024-2025', 1, 72.8, 'Failed'); 
INSERT INTO `studentsubjects` VALUES (1521, 1000000207, 351, 1, 'First', '2024-2025', 1, 79.2, 'Passed'); 
INSERT INTO `studentsubjects` VALUES (1522, 1000000207, 352, 1, 'First', '2024-2025', 1, 85.6, 'Passed'); 

#
# End of data contents of table studentsubjects
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------


#
# Delete any existing table `subject`
#

DROP TABLE IF EXISTS `subject`;


#
# Table structure of table `subject`
#

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL,
  PRIMARY KEY (`SUBJ_ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=latin1 ;

#
# Data contents of table subject (309 records)
#
 
INSERT INTO `subject` VALUES (346, 'SAD101', 'System Analysis and Design', 3, 'None', 1, '2024-2025', 'First', 0); 
INSERT INTO `subject` VALUES (347, 'IM101', 'Fundamentals of Database Systems', 3, 'None', 1, '2024-2025', 'First', 0); 
INSERT INTO `subject` VALUES (348, 'LIT101', 'Philippine Literature', 3, 'None', 1, '2024-2025', 'First', 0);  
INSERT INTO `subject` VALUES (349, 'GE8', 'Ethics', 3, 'None', 1, '2024-2025', 'First', 0); 
INSERT INTO `subject` VALUES (350, 'TECH1', 'Technopreneurship', 3, 'None', 1, '2024-2025', 'First', 0); 
INSERT INTO `subject` VALUES (351, 'NET102', 'Networking 2', 3, 'Networking 1', 1, '2024-2025', 'First', 0);
INSERT INTO `subject` VALUES (352, 'SIA101', 'System Integration and Architecture', 3, 'None', 1, '2024-2025', 'First', 0); 

#
# End of data contents of table subject
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------


#
# Delete any existing table `tblauto`
#

DROP TABLE IF EXISTS `tblauto`;


#
# Table structure of table `tblauto`
#

CREATE TABLE `tblauto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `autocode` varchar(255) DEFAULT NULL,
  `autoname` varchar(255) DEFAULT NULL,
  `appendchar` varchar(255) DEFAULT NULL,
  `autostart` int(11) DEFAULT '0',
  `autoend` int(11) DEFAULT '0',
  `incrementvalue` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `autocode` (`autocode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

#
# Data contents of table tblauto (4 records)
#
 
INSERT INTO `tblauto` VALUES (1, 'Asset', 'Asset', 'ASitem', 0, 3, 1) ; 
INSERT INTO `tblauto` VALUES (2, 'Trans', 'Transaction', 'TrAnS', 1, 5, 1) ; 
INSERT INTO `tblauto` VALUES (3, 'SIDNO', 'IDNO', '2015', 1000000, 72, 1) ; 
INSERT INTO `tblauto` VALUES (4, 'EMPLOYEE', 'EMPID', '020010', 0, 2, 1) ;
#
# End of data contents of table tblauto
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------


#
# Delete any existing table `tbllogs`
#

DROP TABLE IF EXISTS `tbllogs`;


#
# Table structure of table `tbllogs`
#

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(55) NOT NULL,
  `LOGMODE` varchar(55) NOT NULL,
  PRIMARY KEY (`LOGID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllogs (41 records)
#
 
INSERT INTO `tbllogs` VALUES (1, 1, '2016-09-22 21:46:01', 'Administrator', 'Logged in') ; 

#
# End of data contents of table tbllogs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------


#
# Delete any existing table `tblpayment`
#

DROP TABLE IF EXISTS `tblpayment`;


#
# Table structure of table `tblpayment`
#

CREATE TABLE `tblpayment` (
  `PAYMENTID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `ENTRANCEFEE` double NOT NULL,
  `TOTALUNITS` double NOT NULL,
  `TOTALSEMESTER` double NOT NULL,
  `PARTIALPAYMENT` double NOT NULL,
  `BALANCE` double NOT NULL,
  PRIMARY KEY (`PAYMENTID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblpayment (32 records)
#
 

#
# End of data contents of table tblpayment
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------


#
# Delete any existing table `tblschedule`
#

DROP TABLE IF EXISTS `tblschedule`;


#
# Table structure of table `tblschedule`
#

CREATE TABLE `tblschedule` (
  `schedID` int(11) NOT NULL AUTO_INCREMENT,
  `sched_time` varchar(30) NOT NULL,
  `sched_day` varchar(30) NOT NULL,
  `sched_semester` varchar(30) NOT NULL,
  `sched_sy` varchar(30) NOT NULL,
  `sched_room` varchar(30) NOT NULL,
  `SECTION` varchar(30) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  PRIMARY KEY (`schedID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblschedule (140 records)
#
 
INSERT INTO `tblschedule` VALUES (418, '08:00 am', '12:00 pm', '08:00 am-12:00 pm', 'W', 'First', '2024-2025', '1', 'Computer Laboratory', '1', 5, 346, 33); 
INSERT INTO `tblschedule` VALUES (419, '08:00 am', '11:00 am', '07:00 am-11:00 am', 'TH', 'First', '2024-2025', '1', 'Computer Laboratory', '1', 5, 347, 33); 
INSERT INTO `tblschedule` VALUES (420, '02:00 Pm', '05:00 pm', '08:00 am-12:00 pm', 'TH', 'First', '2024-2025', '1', '1', '1', 5, 348, 33); 
INSERT INTO `tblschedule` VALUES (421, '07:00 am', '09:00 am', '07:00 am-09:00 am', 'F', 'First', '2024-2025', '1', 'Computer Laboratory', '1', 5, 349, 33);
INSERT INTO `tblschedule` VALUES (422, '10:00 am', '12:00 pm', '10:00 am-12:00 pm', 'F', 'First', '2024-2025', '1', 'Computer Laboratory', '1', 5, 350, 33); 
INSERT INTO `tblschedule` VALUES (423, '08:00 am', '12:00 pm', '08:00 am-12:00 pm', 'SAT', 'First', '2024-2025', '1', 'Computer Laboratory', '1', 5, 351, 33);
INSERT INTO `tblschedule` VALUES (424, '02:00 pm', '07:00 pm', '02:00 pm-07:00 pm', 'SAT', 'First', '2024-2025', '1', 'Computer Laboratory', '1', 5, 352, 33);

#
# End of data contents of table tblschedule
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------


#
# Delete any existing table `tblsemester`
#

DROP TABLE IF EXISTS `tblsemester`;


#
# Table structure of table `tblsemester`
#

CREATE TABLE `tblsemester` (
  `SEMID` int(11) NOT NULL AUTO_INCREMENT,
  `SEMESTER` varchar(90) NOT NULL,
  `SETSEM` tinyint(1) NOT NULL,
  PRIMARY KEY (`SEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsemester (2 records)
#
 
INSERT INTO `tblsemester` VALUES (1, 'First', 1) ; 
INSERT INTO `tblsemester` VALUES (2, 'Second', 0) ;
#
# End of data contents of table tblsemester
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------


#
# Delete any existing table `tblstuddetails`
#

DROP TABLE IF EXISTS `tblstuddetails`;


#
# Table structure of table `tblstuddetails`
#

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `GCONTACT` varchar(40) NOT NULL,
  `IDNO` int(30) NOT NULL,
  PRIMARY KEY (`DETAIL_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstuddetails (12 records)
#
 
INSERT INTO `tblstuddetails` VALUES (137, 'Barney', '', '09898978909', 1000000207); 

#
# End of data contents of table tblstuddetails
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------


#
# Delete any existing table `tblstudent`
#

DROP TABLE IF EXISTS `tblstudent`;


#
# Table structure of table `tblstudent`
#

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `ACC_USERNAME` varchar(255) NOT NULL,
  `ACC_PASSWORD` text NOT NULL,
  `student_status` text NOT NULL,
  `YEARLEVEL` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `STUDPHOTO` varchar(255) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SYEAR` varchar(30) NOT NULL,
  `NewEnrollees` tinyint(1) NOT NULL,
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstudent (9 records)
#
 
INSERT INTO `tblstudent` VALUES (136, 1000000207, 'Arnold', 'Aranaydo', '', 'Male', '1985-02-01', 'Planet Namek', 'Single', 0, 'Namekian', 'Roman Catholic', '09878787656', 'Purok bundok tralala, Planet Namek02', 'arnold', '14e1743c694e2c397bb8d92d41134d626738525a
', 'Irregular', 1, 1, 5, 'student_image/sir_aranaydo.png', 'First', '', 0); 

#
# End of data contents of table tblstudent
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `useraccounts`
# --------------------------------------------------------


#
# Delete any existing table `useraccounts`
#

DROP TABLE IF EXISTS `useraccounts`;


#
# Table structure of table `useraccounts`
#

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table useraccounts (1 records)
#
 
INSERT INTO `useraccounts` VALUES (1, 'Alexander Joerenz Escallente', 'admin_escall', '14e1743c694e2c397bb8d92d41134d626738525a', 'Administrator', 1234, 'photos/propayl.jpg');
#
# End of data contents of table useraccounts
# --------------------------------------------------------

