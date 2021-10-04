-- Database quản lý cái bài thi đầu vào 

DROP DATABASE IF EXISTS testing_system;
CREATE DATABASE testing_system;
USE testing_system; -- Chỉ định database để tạo bảng

-- Tạo bảng phòng ban
CREATE TABLE department(
	department_id			INT,
    department_name 		VARCHAR(50)
);

-- Tạo bảng chức vụ
CREATE TABLE `position`(
	position_id				INT,
    position_name 			VARCHAR(50)
);

-- Tạo bảng Tài khoản
CREATE TABLE `account`(
	account_id				INT,
	email					VARCHAR(50),
	username				VARCHAR(50),
	fullname				VARCHAR(50),
	department_id			INT,
	position_id 			INT,
	create_date				DATE
);

-- Tạo bảng nhóm
CREATE TABLE `group`(
	group_id				INT,
    group_name 				VARCHAR(50),
    creator_id				INT,
	create_date				DATE
);

-- Tạo bảng Thành viên nhóm
CREATE TABLE group_account(
	group_id 				INT,
	account_id 				INT,
	join_date				DATE
);

-- Bảng loại câu hỏi--
CREATE TABLE type_question(
	type_id					INT,
	type_name				VARCHAR(50)
);

-- Bảng chủ đề câu hỏi --
CREATE TABLE category_question(
	category_id				INT,
	category_name			VARCHAR(50)
);

-- Tạo bảng câu hỏi
CREATE TABLE question(
	question_id				INT,
	content					VARCHAR(200),
	category_id				INT,
	type_id					INT,
	creator_id				INT,
	create_date				DATE
);

-- Tạo bảng câu trả lời
CREATE TABLE answer(
	answer_id				INT,
	content					VARCHAR(500),
	question_id				INT,
	iscorrect				VARCHAR(50)
);

-- Tạo bảng Đề thi
CREATE TABLE exam(
	exam_id					INT,
	`code`					INT,
	title					VARCHAR(50),
	category_id				INT,
	duration				DATE,
	creator_id				INT,
	create_date				DATE
);

-- tạo bảng câu hỏi đề thi
CREATE TABLE exam_question(
	exam_id					INT,
	question_id				INT
);





