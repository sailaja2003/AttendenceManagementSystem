#course student teacher admin attendance
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 10:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `student` (
  `name` varchar(10) NOT NULL,
  `srn` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL,
  `section` varchar(10)  not NULL,
  'roll_no' int NOT NULL
  PRIMARY KEY (srn)
);

CREATE TABLE `teacher` (
  `name` varchar(10) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL,
  `email` varchar(10)  not NULL,
  PRIMARY KEY (teacher_id)
  
  
);
CREATE TABLE `attendance` (
  `date` date NOT NULL,
  `teacher_id` int NOT NULL,
  `department` varchar(10) NOT NULL,
  `srn` varchar(10)  not NULL,
  `subject_id` varchar(10)  not NULL,
  `attendance` varchar(12) not NULL,
  `attendance_id` varchar(10) not NULL,
  `section` varchar(3) not NULL,
  PRIMARY KEY (attendance_id) 
  FOREIGN KEY (teacher_id) REFERENCES attendance(teacher_id)
  FOREIGN KEY (subject_id) REFERENCES course(course_id)
);

CREATE TABLE `course` (
  `course_id` varchar(11) NOT NULL,
  `course_name` varchar(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `semester` int  not NULL,
  `teacher_id` varchar(10)  not NULL,
  PRIMARY KEY (course_id),  
);

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (username)  
);

insert into course (`course_id`,`course_name`,`department`,`semester`,`teacher_id`) values
('C01','SE','CSE',5,'T01'),
('C02','DBMS','CSE',5,'T02'),
('C03','IC','EEE',5,'T03'),
('C04','MI','CSE',5,'T02');

insert into student(`name`,`srn`,`department`,`section`,`roll_no`) values
('Sailaja','CS667','CSE','K',33),
('Rohan','CS668','CSE','K',34),
('Rahul','CS669','CSE','K',35),
('Soham','CS609','CSE','K',36),
('Riya','CS685','CSE','L',11),
('Nidhi','CS564','CSE','L',22),
('Riddhi','CS467','CSE','L',13),
('Geet','CS617','CSE','L',14),
('Aria','CS345','CSE','L',15),
('Adam','CS200','CSE','L',16);
('Roshni','EE110','EEE','C',1);
('Yashvi','EE111','EEE','C',6);
('Ajay','EE666','EEE','C',10);


insert into teacher (`name`,`teacher_id`,`department`,`email`,`subect_id`) values
('Divya','T01','CSE','divya12@gmail.com'),
('Mamta','T02','CSE','misramamta@gmail.com'),
('Mohit','T03','EEE','mohit@gmail.com');

insert into attendance(`attendance_id`,`date`,`teacher_id`,`department`,`srn`,`subject_id`,`section`,`attendance`) values
('A01','18-11-2022','TO1','CSE','CS667','CO1','K','P'),
('A02','18-11-2022','TO1','CSE','CS668','CO1','K','P'),
('A03','18-11-2022','TO1','CSE','CS669','CO1','K','A'),
('A04','18-11-2022','TO1','CSE','CS609','CO1','K','P'),
('A05','18-11-2022','TO2','CSE','CS685','CO4','L','P'),
('A06','18-11-2022','TO2','CSE','CS564','CO4','L','P'),
('A07','18-11-2022','TO2','CSE','CS467','CO4','L','A'),
('A08','18-11-2022','TO2','CSE','CS617','CO4','L','P'),
('A09','18-11-2022','TO2','CSE','CS345','CO4','L','P'),
('A10','18-11-2022','TO2','CSE','CS200','CO4','L','P'),
('A11','18-11-2022','TO3','EEE','CS110','CO3','P'),
('A12','18-11-2022','TO3','EEE','CS111','CO3','P');

insert into admin(`username`,`password`) values
('admin','admin123');



