INSERT INTO Factory
(fac_id, fac_name, address, zip_code, phone, manager)
VALUES('F001', 'Steel Imports', '123 Noob Blvd', 70115, 15435436765, 'Mike Samuel');

INSERT INTO Factory
(fac_id, fac_name, address, zip_code, phone, manager)
VALUES('F002', 'Ammo and Guns', '564 Patriot Way', 14564, 12345245321, 'Lovie Merica');

INSERT INTO Factory
(fac_id, fac_name, address, zip_code, phone, manager)
VALUES('F003', 'Industrial Manufacturing', '564 Patrick Ave',12354, 15857276406, 'John Doe');



INSERT INTO Product
(p_code, p_name, desc, quantity, unit, avg_cost)
VALUES('P001', 'Steel', 'A strong metal', 100, 'ton', 500.00);

INSERT INTO Product
(p_code, p_name, desc, quantity, unit, avg_cost)
VALUES('P002', '9mm Bullets', 'Good fer shootin', 1000, 'pound', 30.00);

INSERT INTO Product
(p_code, p_name, desc, quantity, unit, avg_cost)
VALUES('P003', 'Tractor', 'Industrial grade farming vehicle', 5, 'ton', 10000.00);



INSERT INTO Supplier
(comp_id, website, contact_email)
VALUES('S001', 'rawmetals.com', 'admin@rawmetals.com');

INSERT INTO Supplier
(comp_id, website, contact_email)
VALUES('S002', 'potentpotables.xyz', 'MericanHero@potentpotables.xyz');

INSERT INTO Supplier
(comp_id, website, contact_email)
VALUES('S003', 'Franksembedded.ai', 'frankmiller@gmail.com');


INSERT INTO LineItem
(contract_id, p_code, quantity)
VALUES('001', 'P001', 50);

INSERT INTO LineItem
(contract_id, p_code, quantity)
VALUES('002', 'P002', 50);

INSERT INTO LineItem
(contract_id, p_code, quantity)
VALUES('003', 'P003', 50);

INSERT INTO Contract
(contract_id, cus_id, date_start, sales_amount, pay_schedule)
VALUES('001','C001', 20180101, 100, 'Monthly' );


INSERT INTO Contract
(contract_id, cus_id, date_start, sales_amount, pay_schedule)
VALUES('002','C002', 20181212, 200, 'Weekly' );

INSERT INTO Contract
(contract_id, cus_id, date_start, sales_amount, pay_schedule)
VALUES('003','C003', 20180909, 100, 'Single-payment' );


INSERT INTO Material
(m_code, m_name, quantity, unit, min_level)
VALUES('M001', 'Iron', 100, 'kg', null);

INSERT INTO Material
(m_code, m_name, quantity, unit, min_level)
VALUES('M002', 'Sulfur', 500, 'oz', null);

INSERT INTO Material
(m_code, m_name, quantity, unit, min_level)
VALUES('M003', 'Rubber', 100, 'feet', null);





INSERT INTO Customer
(com_id, contact_person, contact_email)
VALUES('C001', 'Matt Jones', 'jones@gmail.com');

INSERT INTO Customer
(com_id, contact_person, contact_email)
VALUES('C002', 'Johnny Onenote', 'onenotemusic@gmail.com');

INSERT INTO Customer 
(com_id, contact_person, contact_email)
VALUES('C003', 'Casey McKee','mckee22@gmail.com');



INSERT INTO Purchase
(purchase_num, sup_id, sup_order_num, book_date, pay_date, note)
VALUES(001, '010', 001, 20180101, 20180202, 'Timely Payment');

INSERT INTO Purchase
(purchase_num, sup_id, sup_order_num, book_date, pay_date, note)
VALUES(002, '011', 002, 20180505, 20180506, 'Good customer');

INSERT INTO Purchase
(purchase_num, sup_id, sup_order_num, book_date, pay_date, note)
VALUES(003, '012', 003, 20181212, 20181213, 'Slow to respond');

INSERT INTO Person(per_id, last_name,first_name, address, zip_code, email, gender, phone) VALUES (1, 'Smith','Anna', '43 Clinton Street, Jersey City, NJ', 07302, 'asmith@yahoo.com', 'F', 123123);
INSERT INTO Person(per_id, last_name,first_name, address, zip_code, email, gender, phone) VALUES (2, 'Doug','Jack', '9507 Thatcher Street, Ottawa, IL', 61350, 'jd14@hotmail.com', 'M', 123124);
INSERT INTO Person(per_id, last_name,first_name, address, zip_code, email, gender, phone) VALUES (3, 'Kim','Parks',  '1 Golf Street ,Manahawkin, NJ', 08050, 'kimparks@yahoo.com', 'F', 123125);
INSERT INTO Person(per_id, last_name,first_name, address, zip_code, email, gender, phone) VALUES (4, 'Aaron','Bradford', '356 Charles Street, Branford CT', 06405, 'a123.1@yandex.com', 'M', 123126);
INSERT INTO Person(per_id, last_name,first_name, address, zip_code, email, gender, phone) VALUES (5, 'Kate', 'Michael', '9364 Hamilton Avenue, Niagara Falls NY', 14304, 'kms3@icloud.com', 'F', 123127);


INSERT INTO Skill(sk_code, title, description, level) VALUES ('22', 'Java', 'know OOP', 'Beginner');
INSERT INTO Skill(sk_code, title, description, level) VALUES ('23', 'Python', 'multi-thread programming', 'Advanced');
INSERT INTO Skill(sk_code, title, description, level) VALUES ('24', 'Oracle', 'work on database', 'Beginner');
INSERT INTO Skill(sk_code, title, description, level) VALUES ('25', 'SQL', 'Knowledge of SQL', 'Beginner');
INSERT INTO Skill(sk_code, title, description, level) VALUES ('26', 'Excel', 'good at spreadsheets', 'Beginner');


INSERT INTO Job(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company) VALUES ('33333', '1111', 'Full-Time', '22', 15.50, 'Wage', '88', 'Company1');
INSERT INTO Job(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company) VALUES ('33334', '2222', 'Part-Time', '23', 45000.00, 'Salary', '87', 'Company2');
INSERT INTO Job(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company) VALUES ('33335', '3333', 'Full-Time', '24', 23.75, 'Wage', '86', 'Company');
INSERT INTO Job(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company) VALUES ('33336', '4444', 'Part-Time', '25', 26000.00, 'Salary', '85', 'Company3');
INSERT INTO Job(job_code, pos_code, emp_mode, required_skill, pay_rate, pay_type, cate_code, company) VALUES ('33337', '5555', 'Full-Time', '26', 17.25, 'Wage', '84', 'Company4');

INSERT INTO Position(pos_code, title, description, pay_range_high, pay_range_low) VALUES ('1111', 'sales rep', 'retail', '100', '10');
INSERT INTO Position(pos_code, title, description, pay_range_high, pay_range_low) VALUES ('2222', 'manager', 'Oversees employees', '200', '20');
INSERT INTO Position(pos_code, title, description, pay_range_high, pay_range_low) VALUES ('3333', 'branch manager', 'oversees manager', '3000', '30');
INSERT INTO Position(pos_code, title, description, pay_range_high, pay_range_low) VALUES ('4444', 'maintenance', 'Fix things', '4000', '400');
INSERT INTO Position(pos_code, title, description, pay_range_high, pay_range_low) VALUES ('5555', 'CEO', 'run company', '50', '5');

INSERT INTO Has_experience (per_id,sk_code,pos_code,title) VALUES ('1','22','1111','Java'); 
INSERT INTO Has_experience (per_id,sk_code,pos_code,title) VALUES ('2','23','2222','Python'); 
INSERT INTO Has_experience (per_id,sk_code,pos_code,title) VALUES ('3','24','3333','Oracle');
INSERT INTO Has_experience (per_id,sk_code,pos_code,title) VALUES ('4','25','4444','SQL'); 
INSERT INTO Has_experience (per_id,sk_code,pos_code,title) VALUES ('5','26','5555','Excel'); 

INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('1','33333','20180101',NULL); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('2','33334','20180505',NULL); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('3','33335','20180909','20181212'); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('4','33336','20190101',NULL); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('5','33337','20180909',NULL); 

INSERT INTO Requires (pos_code,sk_code) 
VALUES ('1111','22'); 
INSERT INTO Requires (pos_code,sk_code) 
VALUES ('2222','23'); 
INSERT INTO Requires (pos_code,sk_code) 
VALUES ('3333','24'); 
INSERT INTO Requires (pos_code,sk_code) 
VALUES ('4444','25'); 
INSERT INTO Requires (pos_code,sk_code) 
VALUES ('5555','26'); 





