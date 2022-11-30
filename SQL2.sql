create database if not exists `Testing⎽System`;

use `Testing⎽System`;

create table Department( 
	DepartmentID int primary key auto_increment,
    DepartmentName varchar(50) not null unique
);

create table `position`(
	PositionID int primary key auto_increment,
    PositionName varchar(50) not null unique
);

create table `account`(
	AccountID int primary key auto_increment,
    Email varchar(50) not null unique,
    `UserName` varchar(50) not null,
    FullName varchar(50),
    DepartmentID int,
    PositionID int,
    CreateDate date,
    CONSTRAINT FOREIGN KEY fk_account_department (DepartmentID) REFERENCES department(DepartmentID)
);

create table `group`( 
	GroupID int primary key auto_increment,
    GroupName varchar(50) not null unique,
    CreatorID int not null unique,
    CreateDate date
    
);

create table `GroupAccount`(
	GroupID int,
    AccountID int primary key,
    JoinDate date,
    CONSTRAINT FOREIGN KEY fk_GroupAccount_group(GroupID) REFERENCES `group`(GroupID)
);

create table TypeQuestion(
	TypeID int primary key auto_increment,
    TypeName ENUM('Essay', 'Multiple-Choice')
    
);

create table CategoryQuestion(
	CategoryID int primary key auto_increment,
    CategoryName varchar(50) not null
    
);

create table Question (
	QuestionID 	int primary key auto_increment,
	Content varchar(300),
    CategoryID int,
    TypeID int,
    CreatorID int,
    CreateDate date,
    CONSTRAINT FOREIGN KEY fk_Question_CategoryQuestion(CategoryID) REFERENCES `CategoryQuestion`(CategoryID)
    
);

create table Answer(
	AnswerID int primary key auto_increment,
    Content varchar(300) not null,
    QuestionID int,
    isCorrect ENUM('TRUE', 'FALSE'),
    CONSTRAINT FOREIGN KEY fk_Answer_Question(QuestionID) REFERENCES `Question`(QuestionID)

);

create table Exam(
	ExamID int primary key auto_increment,
    `Code` varchar(10) not null unique,
    Title varchar(50) not null,
    CategoryID int,
    Duration time,
    CreatorID int,
    Createdate date

);

create table ExamQuestion(
	ExamID int,
    QuestionID int,
    CONSTRAINT FOREIGN KEY fk_ExamQuestion_Exam(ExamID) REFERENCES `Exam`(ExamID)
);






