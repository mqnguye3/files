INSERT INTO Company (comp_id,address,zip_code,industry_group,sub_industry,website) VALUES ('L001','230 Lucid Avenue','70061','Information Technology','Tech Support','lucid.com'); 

INSERT INTO Company (comp_id,address,zip_code,industry_group,sub_industry,website) VALUES ('U001','230 Lakeshore Drive','70004','Communication','Social','uno.edu'); 


INSERT INTO Company (comp_id,address,zip_code,industry_group,sub_industry,website) VALUES ('F001','230 California Drive','70004','Control','Individuals','Facebook.com'); 




INSERT INTO Person
(per_id, first_name, last_name, address, zip_code, email, gender, phone) 
values(10, 'Matt', 'Haefele' ,'101 Loser Street', 14425, 'matt@loser.com', 'm', 13159869482);

INSERT into Person
(per_id,first_name, last_name, address, zip_code, email, gender, phone)
values(20, 'Joe', 'Brown', '201 Loser Street', 14426, 'joe@loser.com', 'm', 13159869482);
          
INSERT into Person
(per_id,first_name, last_name, address, zip_code, email, gender, phone)
values(30, 'Bob', 'Dole', '301 Loser Street', 14427, 'bob@loser.com', 'm', 13159869482);
          
INSERT into Person
(per_id, first_name, last_name, address, zip_code, email, gender, phone)
values(40, 'Frank', 'Valentine', '401 Loser Street', 14428, 'frank@loser.com', 'm', 13159869482);
          
INSERT into Person
(per_id, first_name, last_name, address, zip_code, email, gender, phone) 
values(50, 'Adam', 'Smith', '501 Loser Street', 14429, 'adam@loser.com', 'm', 13159869482);


INSERT into Works
(per_id, job_code, start_date, end_date)
values(10,'J002', '2000-01-01', '2002-05-10');

INSERT into Works
(per_id, job_code, start_date, end_date)
values(10,'J005', '2005-01-01', '2010-05-10');

INSERT into Works
(per_id, job_code, start_date, end_date)
values(20,'J001', '2002-01-01', '2003-01-01');

INSERT into Works
(per_id, job_code, start_date, end_date)
values(30, 'J006', '2010-06-01', '2011-08-15');

INSERT into Works
(per_id, job_code, start_date, end_date)
values(30, 'J002', '2015-01-15', '2016-02-01');

INSERT into Works
(per_id, job_code, start_date, end_date)
values(40, 'J003', '2018-02-05', '2018-02-05');

INSERT into Works
(per_id, job_code, start_date, end_date)
values(50, 'J010', '2016-09-01', '2017-09-01');



INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J001', 'P001', 'full-time', 'Systems Programming', 75000.00, 'salary', 'A001', 'Lucid');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J002','P002','full-time', 'Web Design', 80000.00, 'salary', 'A002', 'Lucid');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J003','P003','full-time', "Databases", 85000.00, 'salary', 'A003', 'Lucid');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J004','P004','full-time', "Cybersecurity", 100000.00, 'salary', 'A004', 'UNO');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J005','P005','full-time', 'Mobile Applications Programming', 120000.00, 'salary', 'A005', 'UNO');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J006','P006', 'part-time', 'Java', 22000.00, 'wage', 'A006', 'UNO');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J007','P007', 'part-time', 'CSS', 275000.00, 'wage', 'A007', 'Facebook');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J008','P008','part-time', 'Bash Scripting', 250000.00, 'wage', 'A008', 'Facebook');

INSERT into Job
(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company)
values('J009','P009','part-time', 350000.00, 'hourly', 'wage', 'A009', 'Facebook');


INSERT into Position
(pos_code, title, description, pay_range_high, pay_range_low)
values('P010', "Student Tutor", 'Tutoring freshman' ,15.00, 10.00 );

INSERT into Position
(pos_code, title, description, pay_range_high, pay_range_low)
values('P005', 'Uber App Developer', 'Working for a soulless corporation', 90000.00, 50000.00);

INSERT into Position
(pos_code, title, description, pay_range_high, pay_range_low)
values('P003', 'Database Administrator', 'Handling financial data', 100000.00 , 60000.00);

INSERT into Position
(pos_code, title, description, pay_range_high, pay_range_low)
values('P009', "UNO Help Desk", 'Helping illiterate find passwords',15.00, 10.00 );

INSERT into Position
(pos_code, title, description, pay_range_high, pay_range_low)
values('P006', 'Java Intern', 'Working for the man', 20.00, 15.00);


INSERT into Has_Skill
(per_id, sk_code)
values(10,'15-1211');

INSERT into Has_Skill
(per_id, sk_code)
values(10,'15-1243');

INSERT into Has_Skill
(per_id, sk_code)
values(20,'15-1254');

INSERT into Has_Skill
(per_id, sk_code)
values(30,'12-1200' );

INSERT into Has_Skill
(per_id, sk_code)
values(30,'15-1252' );

INSERT into Has_Skill
(per_id, sk_code)
values(40, '15-1212');

INSERT into Has_Skill
(per_id, sk_code)
values(40,'15-1211' );

INSERT into Has_Skill
(per_id, sk_code)
values(40,'15-1252' );

INSERT into Has_Skill
(per_id, sk_code)
values(50,'15-1243');




INSERT into Skill
(sk_code, title, description, level)
values('15-1211', 'Systems Engineering', 'Low-level scripting and programming', 'intermediate');


INSERT into Skill
(sk_code, title, description, level)
values('12-1200', 'Cyber Security', 'Calculus/Discrete Math', 'beginner');

INSERT into Skill
(sk_code, title, description, level)
values('15-1212', 'Info Security', 'Security of information', 'intermediate');

INSERT into Skill
(sk_code, title, description, level)
values('15-1243', 'SQL', 'Database Programming', 'intermediate');

INSERT into Skill
(sk_code, title, description, level)
values('15-1252', 'Software Development', 'Applications Programming', 'intermediate');

INSERT into Skill
(sk_code, title, description, level)
values('15-1254', 'Web Design', 'Front-End Development', 'intermediate');


INSERT into Requires
(pos_code, sk_code)
values('P010','15-1211');

INSERT into Requires
(pos_code, sk_code)
values('P005','15-1252');

INSERT into Requires
(pos_code, sk_code)
values('P005', '15-1254');

INSERT into Requires
(pos_code, sk_code)
values('P003','15-1243');

INSERT into Requires
(pos_code, sk_code)
values('P009', '12-1200');

INSERT into Requires
(pos_code, sk_code)
values('P009', '15-1252');

INSERT into Requires
(pos_code, sk_code)
values('P006','15-1252');



INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI4125', 'Databases', 'Intermediate', 'SQL and DBMS', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI1583', 'Intro to Software I', 'Beginner', 'Object-Oriented Programming', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI2120', 'Intro to Software II', 'Beginner', 'Software Engineering and Data Structures', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI2450', 'Assembly Language', 'Intermediate', 'x86 processor programming', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI2125', 'Data Structures', 'Intermediate', 'Algoritmhs and Data Structures', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI2467', 'Systems Programming', 'Intermediate', 'Systems Programming,C,Scripting', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI3300', 'Discrete Math', 'Intermediate', 'Non-continuous Math and reasoning', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI3301', 'Computer Organization', 'Intermediate', 'MIPS Programming', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI4431', 'Networking', 'Intermediate', 'Socket Programming and Internet Topology', 'active', 1000.00);

INSERT into Course 
(c_code, title, level, description, status, retail_price)
values('CSCI4501', 'OS', 'Advanced', 'Operating Systems, concurrency', 'active', 1000.00);


INSERT into Teaches
(c_code, sk_code)
values('CSCI3300','12-1200');

INSERT into Teaches
(c_code, sk_code)
values('CSCI4125','15-1243' );

INSERT into Teaches
(c_code, sk_code)
values('CSCI1583','15-1252');

INSERT into Teaches
(c_code, sk_code)
values('CSCI2120','15-1252');

INSERT into Teaches
(c_code, sk_code)
values('CSCI2125','15-1252');


INSERT into Teaches
(c_code, sk_code)
values('CSCI2450','15-1211');

INSERT into Teaches
(c_code, sk_code)
values('CSCI2467','15-1211');

INSERT into Teaches
(c_code, sk_code)
values('CSCI2467','15-1212');

INSERT into Teaches
(c_code, sk_code)
values('CSCI2467','15-1211');

INSERT into Teaches
(c_code, sk_code)
values('CSCI4501','15-1212');

INSERT into Teaches
(c_code, sk_code)
values('CSCI3300', '12-1200');

INSERT into Teaches
(c_code, sk_code)
values('CSCI3301', '15-1211');

INSERT into Teaches
(c_code, sk_code)
values('CSCI3301', '15-1212');

INSERT into Teaches
(c_code, sk_code)
values('CSCI4431', '15-1252');


INSERT into Teaches
(c_code, sk_code)
values('CSCI4431','15-1254');




INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(10,'CSCI4125','S010', 'no');


INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(10, 'CSCI4501','S001', 'no');

INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(10,'CSCI4431', 'S002', 'no');

INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(20, 'CSCI2467','S005', 'yes' );

INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(30,'CSCI4125','S010', 'no' );

INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(40,'CSCI4431', 'S002', 'no' );

INSERT into Takes
(per_id, c_code, sec_no, complete_data)
values(50,'CSCI4501', 'S001', 'yes' );


INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI4501', 'S001', '2020-05-15', 2020, 'University of New Orleans', 'online', 1000.00);

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI4431', 'S002','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI3301','S003','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI3300','S004','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI2467','S005','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI2125','S006','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI1583','S007','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI2120','S008','2020-05-15', 2020,'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI3300','S009','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into Section
(c_code, sec_no, complete_date, year, offered_by, format, price)
values('CSCI4125','S010','2020-05-15',2020, 'University of New Orleans', 'online', 1000.00 );

INSERT into GICS
(ind_ID, ind_title, level, description, parent_ID)
values(45102010, 'IT consulting', 'Intermediate', 'Providers of information technology and systems integration services not classified in the Data Processing & Outsourced Services Sub-Industry. 
 Includes information technology consulting and information management services.', 4510);

INSERT into GICS
(ind_ID, ind_title, level, description, parent_ID)
values(45102020,'Data Processing & Outsourced Services', 'Intermediate', 'Providers of commercial electronic data processing and/or business process outsourcing services.  
	Includes companies that provide services for back-office automation.', 4501);

INSERT into GICS
(ind_ID, ind_title, level, description, parent_ID)
values(45103010, 'Application Software', 'Advanced', 'Providers of application layer programs for industry',4510);

INSERT into GICS
(ind_ID, ind_title, level, description, parent_ID)
values(45103020,'Systems Software', 'Advanced', 'Companies engaged in developing and producing systems and database management software.
', 4510);



