CREATE TABLE Factory (
	fac_id			VARCHAR(255),
	fac_name			VARCHAR(255),
	address			VARCHAR(255),
	zip_code			INT,
	phone				INT,
	manager			VARCHAR(255),
	PRIMARY KEY (fac_id)
);


CREATE TABLE Product (
	p_code			VARCHAR(255),
	p_name			VARCHAR(255),
	desc				VARCHAR(255),
	quantity			INT,
	unit				VARCHAR(255),
	avg_cost			NUMERIC(8,2),
	PRIMARY KEY (p_code)

);

CREATE TABLE LineItem (
	contract_id 		VARCHAR(255),
	p_code			VARCHAR(255),
	quantity			INT,
	PRIMARY KEY (contract_id)
);

CREATE TABLE Contract (
	contract_id		VARCHAR(255),
	cus_id			VARCHAR(255),
	date_start			DATE,
	sales_amount		INT,
	pay_schedule		VARCHAR(255),
	PRIMARY KEY (contract_id)
);

CREATE TABLE Customer (
	com_id			VARCHAR(255),
	contact_person		VARCHAR(255),
	contact_email		VARCHAR(255),
	PRIMARY KEY (com_id)
);

CREATE TABLE Supplier (
	comp_id			VARCHAR(255),
	website			VARCHAR(255),
	contact_email		VARCHAR(255),
	PRIMARY KEY (comp_id)
);

CREATE TABLE Purchase (
	purchase_num 		INT,
	sup_id			VARCHAR(255),
	sup_order_num		INT,
	book_date			DATE,
	pay_date			DATE,
	note				VARCHAR(255),
	PRIMARY KEY (purchase_num)
);



CREATE TABLE Material (
	m_code		VARCHAR(255),
	m_name		VARCHAR(255),
	quantity		INT,
	unit			VARCHAR(255),
	min_level		VARCHAR(255),
	PRIMARY KEY (m_code)
);

CREATE TABLE makes	(
  	fac_id			VARCHAR(255),
  	p_code			VARCHAR(255),
  	quantity		VARCHAR(255),
	PRIMARY KEY (fac_id)
  );

Create Table Has_sold (
	fac_id		VARCHAR(255),
  	p_code		VARCHAR(255),
  	amount		Numeric(8,2),
  	date_sold		DATE,
	PRIMARY KEY (fac_id)
);

CREATE TABLE Person  (
	per_id		VARCHAR(255),
	last_name		VARCHAR(255),
	first_name		VARCHAR(255),
	address		VARCHAR(255),
	zip_code		INT,
	email			VARCHAR(255),
	gender		CHAR(1),
	phone			CHAR(10),
	PRIMARY KEY	(per_id)
);

CREATE TABLE Job (
	job_code		VARCHAR(255),
	pos_code		VARCHAR(255),
	emp_mode		VARCHAR(255),
	required_skill  VARCHAR(255),
	pay_rate		NUMERIC(8,2),
	pay_type		VARCHAR(255),
	cate_code		VARCHAR(255),
	company		VARCHAR(255),
	PRIMARY KEY 	(job_code)
);

CREATE TABLE Position (
	pos_code		VARCHAR(255),
	title			VARCHAR(255),
	description 	VARCHAR(255),
	pay_range_high	VARCHAR(255),
	pay_range_low	VARCHAR(255),
	PRIMARY KEY		(pos_code)
);

CREATE TABLE Works	(
  	per_id		CHAR(5),
  	job_code		CHAR(3),
  	start_date		DATE NOT NULL,
  	end_date		DATE,
  	PRIMARY KEY	(per_id)
  );

CREATE TABLE Requires (
  pos_code			CHAR(4),
  sk_code			VARCHAR(5),
  PRIMARY KEY (pos_code)
 );

CREATE TABLE Has_experience	(
  per_id			CHAR(5),
  sk_code			VARCHAR(5),
  pos_code			CHAR(4),
  title 			VARCHAR(100)
);

CREATE TABLE Job_info (
  pos_code			CHAR(4),
  avg_pay			NUMERIC(8,2),
  description		VARCHAR(255),
  title			VARCHAR(100)
  );


CREATE TABLE Skill (
	sk_code		VARCHAR(255),
	title			VARCHAR(255),
	description	VARCHAR(255),
	level			VARCHAR(255),
	PRIMARY KEY		(sk_code)
);


