CREATE TABLE Company (
    comp_id 		VARCHAR(255) NOT NULL,
    address 		VARCHAR(255),
    zip_code 		INT(5),
    industry_group 	VARCHAR(255),
    sub_industry 	VARCHAR(255),
    website 		VARCHAR(255),
    PRIMARY KEY (comp_id)
);

CREATE TABLE Course (
	c_code		VARCHAR(255)NOT NULL,
	title		VARCHAR(255),
	level		VARCHAR(255),
	description	VARCHAR(255),
	status		VARCHAR(255),
	retail_price	NUMERIC(6,2),
	PRIMARY KEY (c_code)
);

CREATE TABLE GICS (
	ind_ID 		INT(20) NOT NULL,
	ind_title 	VARCHAR(255),
	level 		VARCHAR(255),
	description     VARCHAR(255),
	parent_ID       INT(20),
	PRIMARY KEY 	(ind_ID)
);

CREATE TABLE Has_Skill (
	per_id		INT(10),
	sk_code		VARCHAR(255)
);

CREATE TABLE Job (
	job_code      	VARCHAR(255)NOT NULL UNIQUE ,
	pos_code	VARCHAR(255),
	emp_mode	VARCHAR(255),
	required_skill 	VARCHAR(255),
	pay_rate	NUMERIC(9,2),
	pay_type	VARCHAR(255),
	cate_code	VARCHAR(255),
	company		VARCHAR(255),
	PRIMARY KEY     (job_code)
);

CREATE TABLE Person (
	per_id		INT(10)NOT NULL UNIQUE ,
	first_name	VARCHAR(255),
	last_name	VARCHAR(255),
	address		VARCHAR(225),
	zip_code	INT(5),
	email		VARCHAR(255),
	gender		CHAR(1),
	phone		INT(10),
	PRIMARY KEY (per_id)
);

CREATE TABLE Position (
	pos_code		VARCHAR(255)NOT NULL UNIQUE ,
	title			VARCHAR(255),
	description		VARCHAR(255),
	pay_range_high  NUMERIC(8,2),
	pay_range_low	NUMERIC(8,2),
	PRIMARY KEY		(pos_code)
);

CREATE TABLE Requires (
	pos_code VARCHAR(255),
	sk_code  VARCHAR(255)
);

CREATE TABLE Section (
	c_code				VARCHAR(255),
	sec_no				VARCHAR(255)NOT NULL UNIQUE ,
	complete_date		VARCHAR(255),
	year 				CHAR(4),
	offered_by			VARCHAR(255),
	format				VARCHAR(255),
	price 				NUMERIC(6,2),
	PRIMARY KEY (sec_no)
);

CREATE TABLE Skill (
	sk_code				VARCHAR(255)NOT NULL UNIQUE ,
	title				VARCHAR(255),
	description			VARCHAR(255),
	level				VARCHAR(255),
	PRIMARY KEY			(sk_code)
);

CREATE TABLE Takes (
	per_id             INT(10), 
	c_code             VARCHAR(255),
	sec_no             VARCHAR(255),
	complete_data      VARCHAR(255)
);

CREATE TABLE Teaches (
	c_code			VARCHAR(255),
	sk_code				VARCHAR(255)
);

CREATE TABLE Works (
	per_id              INT(10),
	job_code			VARCHAR(255),
	start_date			date,
	end_date			date
);