CREATE TABLE Store (
    store_id            VARCHAR(255),
	address			VARCHAR(255),
	zip_code			INT,
	phone				CHAR(10),
	PRIMARY KEY 		(store_id)
);

CREATE TABLE Inventory (
	item_num			INT,
	sh_title			VARCHAR(255),
	title				VARCHAR(255),
	quantity			INT,
	avg_cost			NUMERIC(6,2),
	min_level			VARCHAR(255),
	shelf_code			VARCHAR(255),
	PRIMARY KEY			(item_num)
);

CREATE TABLE Purchase	(
	pur_num			INT,
	date_pur			DATE,
	quantity			INT,
	unit_cost			NUMERIC(6,2),
	note 				VARCHAR(255),
	PRIMARY KEY		(pur_num)
);

CREATE TABLE Account_payable (
	sup_id			VARCHAR(255),
	balance			NUMERIC(8,2),
	PRIMARY KEY		(sup_id)
);

CREATE TABLE PurchasePaymentRecord (
	sup_id		VARCHAR(255),
	pur_num		INT,
	date_pur		DATE,
	amount		INT,
	trans_type		VARCHAR(255),
	PRIMARY KEY	(sup_id)
);

CREATE TABLE Sales (
	invoice_num 	INT,
	date_sold		DATE,
	item_num		INT,
	quantity		INT,
	price 		NUMERIC(6,2),
	note			VARCHAR(255),
	PRIMARY KEY		(invoice_num)
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


CREATE TABLE Skill (
	sk_code		VARCHAR(255),
	title			VARCHAR(255),
	description	VARCHAR(255),
	level			VARCHAR(255),
	PRIMARY KEY		(sk_code)
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
