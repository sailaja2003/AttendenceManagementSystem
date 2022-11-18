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
  `teacher_id` int NOT NULL,
  `department` varchar(10) NOT NULL,
  `email` varchar(10)  not NULL,
  `subject_id` varchar(10)  not NULL,
  PRIMARY KEY (teacher_id)
  FOREIGN KEY (subject_id) REFERENCES course(course_id)
  FOREIGN KEY (teacher_id) REFERENCES attendance(teacher_id)
  
);
CREATE TABLE `attendance` (
  `date` date NOT NULL,
  `teacher_id` int NOT NULL,
  `department` varchar(10) NOT NULL,
  `srn` varchar(10)  not NULL,
  `subject_id` varchar(10)  not NULL,
  `attendance` varchar(12) not NULL,
  `attendance_id` varchar(10) not NULL,
  PRIMARY KEY (attendance_id)  
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






