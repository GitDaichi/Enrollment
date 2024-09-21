# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
  `COURSE_LEVEL` varchar(50) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  KEY `DEPT_ID` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table course (14 records)
#
 
INSERT INTO `course` VALUES ('21', 'BSBA Financial Management', '1', 'Financial', 'Bachelor of Science in Busines Administration ', '34', '') ; 
INSERT INTO `course` VALUES ('30', 'BSED Major in English', '1', 'English', 'Bachelor of Secondary Education (BSED)', '35', '') ; 
INSERT INTO `course` VALUES ('31', 'BSED Major in English', '2', 'English', 'Bachelor of Secondary Education (BSED)', '35', '') ; 
INSERT INTO `course` VALUES ('32', 'BSED Major in English', '3', 'English', 'Bachelor of Secondary Education (BSED)', '35', '') ; 
INSERT INTO `course` VALUES ('33', 'BSED Major in English', '4', 'English', 'Bachelor of Secondary Education (BSED)', '35', '') ; 
INSERT INTO `course` VALUES ('42', 'BEED General', '1', 'General', 'Bachelor of Elementary Education (BEED)', '35', '') ; 
INSERT INTO `course` VALUES ('43', 'BEED General', '2', 'General', 'Bachelor of Elementary Education (BEED)', '35', '') ; 
INSERT INTO `course` VALUES ('44', 'BEED General', '3', 'General', 'Bachelor of Elementary Education (BEED)', '35', '') ; 
INSERT INTO `course` VALUES ('45', 'BEED General', '4', 'General', 'Bachelor of Elementary Education (BEED)', '35', '') ; 
INSERT INTO `course` VALUES ('57', 'BSBA Financial Management', '2', 'Financial', 'Bachelor of Science in Busines Administration', '34', '') ; 
INSERT INTO `course` VALUES ('58', 'BSBA Financial Management', '3', 'Financial', 'Bachelor of Science in Busines Administration', '34', '') ; 
INSERT INTO `course` VALUES ('59', 'BSBA Financial Management', '4', 'Financial', 'Bachelor of Science in Busines Administration', '34', '') ; 
INSERT INTO `course` VALUES ('60', 'BSIT Computer Programming', '3', 'System Analysis and Design', 'Bachelor of Science in Information Technology', '33', '') ; 
INSERT INTO `course` VALUES ('61', 'BSIT Computer Programming', '1', 'System Analysis and Design', 'Bachelor of Science in Information Technology', '33', '') ;
#
# End of data contents of table course
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;
  
#
# Data contents of table department (3 records)
#
 
INSERT INTO `department` VALUES ('33', 'IT', 'Information Technology Department') ; 
INSERT INTO `department` VALUES ('34', 'BAAD', 'Business Accounting and Administration') ; 
INSERT INTO `department` VALUES ('35', 'IS', 'Information System') ;
#
# End of data contents of table department
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
) ENGINE=InnoDB AUTO_INCREMENT=1515 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table grades (452 records)
#
 
 
INSERT INTO `grades` VALUES ('1514', '1000000202', '311', '0', '0', '0', '0', '0', '', '', '') ;
#
# End of data contents of table grades
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table schoolyr (50 records)
#
 
INSERT INTO `schoolyr` VALUES ('199', '2024-2025', 'Second', '61', '1000000202', 'ENROLLED', '2024-08-18 00:00:00', '2024-08-18 00:00:00', 'New') ;
#
# End of data contents of table schoolyr
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table studentschedule (0 records)
#

#
# End of data contents of table studentschedule
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
) ENGINE=InnoDB AUTO_INCREMENT=1509 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table studentsubjects (452 records)
#
 

INSERT INTO `studentsubjects` VALUES ('1508', '1000000202', '311', '1', 'Second', '2024-2025', '1', '0', '') ;
#
# End of data contents of table studentsubjects
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table subject (293 records)
#
 
INSERT INTO `subject` VALUES ('324', 'CDI 216', 'White collar crime', '3', 'none', '62', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('325', 'CDI 214', 'Organized crime', '3', 'none', '62', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('326', 'Crimtic 216', 'Legal medicine', '3', 'none', '62', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('327', 'CA 212', 'Non Institutional Correction', '3', 'CA  212', '62', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('328', 'Prac 1 & 2', 'ON JOB TRAINING', '6', 'none', '63', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('329', 'Review 211', 'Refreseher Course', '3', 'none', '63', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('330', 'FTS 11', 'Field trip seminar', '3', 'none', '63', '', 'Second', '0') ; 
INSERT INTO `subject` VALUES ('344', 'Ed 224', 'principles of teaching 1', '3', 'None', '43', '', 'Second', '0') ;
#
# End of data contents of table subject
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
  `autostart` int(11) DEFAULT 0,
  `autoend` int(11) DEFAULT 0,
  `incrementvalue` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `autocode` (`autocode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ;

#
# Data contents of table tblauto (4 records)
#
 

INSERT INTO `tblauto` VALUES ('4', 'EMPLOYEE', 'EMPID', '020010', '0', '2', '1') ;
#
# End of data contents of table tblauto
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
# --------------------------------------------------------


#
# Delete any existing table `tblinstructor`
#

DROP TABLE IF EXISTS `tblinstructor`;


#
# Table structure of table `tblinstructor`
#

CREATE TABLE `tblinstructor` (
  `INST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INST_NAME` varchar(90) NOT NULL,
  `INST_MAJOR` varchar(90) NOT NULL,
  `INST_CONTACT` varchar(30) NOT NULL,
  PRIMARY KEY (`INST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tblinstructor (32 records)
#
 

INSERT INTO `tblinstructor` VALUES ('28', 'Tantan Exiomo', 'English', '09253234532') ; 
INSERT INTO `tblinstructor` VALUES ('29', 'Gerald Bustos', 'Humanities', '09284537593') ; 
INSERT INTO `tblinstructor` VALUES ('30', 'Kay Abad', 'Financial Management', '09287635452') ; 
INSERT INTO `tblinstructor` VALUES ('31', 'Recardo Piang', 'English', '09264537432') ; 
INSERT INTO `tblinstructor` VALUES ('32', 'Edgard Sumayaw', 'Physical Education', '09276438532') ;
#
# End of data contents of table tblinstructor
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tbllogs (323 records)
#
 

INSERT INTO `tbllogs` VALUES ('358', '1', '2024-08-19 08:26:04', 'Administrator', 'Logged in') ;
#
# End of data contents of table tbllogs
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tblpayment (0 records)
#

#
# End of data contents of table tblpayment
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
  `TIME_FROM` varchar(90) NOT NULL,
  `TIME_TO` varchar(90) NOT NULL,
  `sched_time` varchar(30) NOT NULL,
  `sched_day` varchar(30) NOT NULL,
  `sched_semester` varchar(30) NOT NULL,
  `sched_sy` varchar(30) NOT NULL,
  `sched_room` varchar(30) NOT NULL,
  `SECTION` varchar(30) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  PRIMARY KEY (`schedID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tblschedule (146 records)
#
 

INSERT INTO `tblschedule` VALUES ('412', '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'Second', '2016-2017', '3', '2', '42', '143', '31') ;
#
# End of data contents of table tblschedule
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tblsemester (2 records)
#
 
INSERT INTO `tblsemester` VALUES ('1', 'First', '0') ; 
INSERT INTO `tblsemester` VALUES ('2', 'Second', '1') ;
#
# End of data contents of table tblsemester
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tblstuddetails (132 records)
#
 

INSERT INTO `tblstuddetails` VALUES ('132', 'Mickey Mouse', '', '09123456788', '1000000202') ;
#
# End of data contents of table tblstuddetails
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
  `STUDSECTION` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `STUDPHOTO` varchar(255) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SYEAR` varchar(30) NOT NULL,
  `NewEnrollees` tinyint(1) NOT NULL,
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table tblstudent (108 records)
#
 

INSERT INTO `tblstudent` VALUES ('131', '1000000202', 'Alexander', 'Escallente', 'E', 'Male', '2004-08-27', 'Laguna', 'Single', '0', 'Filipino', 'Catholic', '0912345678', 'San pedro', 'Alexander', '14e1743c694e2c397bb8d92d41134d626738525a', 'New', '1', '1', '61', 'student_image/profile.jpg', 'Second', '', '0') ;
#
# End of data contents of table tblstudent
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 19. August 2024 08:26 CEST
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
# Table: `tblinstructor`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ;

#
# Data contents of table useraccounts (2 records)
#
 
INSERT INTO `useraccounts` VALUES ('1', 'Alexander Joerenz Escallente', 'admin_escall', '14e1743c694e2c397bb8d92d41134d626738525a', 'Administrator', '1234', 'photos/LoginRed.jpg') ; 
INSERT INTO `useraccounts` VALUES ('2', 'Alex', 'escall', '14e1743c694e2c397bb8d92d41134d626738525a', 'Registrar', '0', '') ;
#
# End of data contents of table useraccounts
# --------------------------------------------------------

