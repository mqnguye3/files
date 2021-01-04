INSERT INTO Store(store_id, address, zip_code, phone) VALUES ('404', 'Address 1', 404404, '4000000');
INSERT INTO Store(store_id, address, zip_code, phone) VALUES ('405', 'Address 2', 405505, '5000000');
INSERT INTO Store(store_id, address, zip_code, phone) VALUES ('406', 'Address 3', 406606, '6044040');
INSERT INTO Store(store_id, address, zip_code, phone) VALUES ('407', 'Address 4', 407707, '7044040');
INSERT INTO Store(store_id, address, zip_code, phone) VALUES ('408', 'Address 5', 408808, '8044040');


INSERT INTO Inventory (item_num,sh_title,title,quantity,avg_cost,min_level,shelf_code) VALUES ('111','Electronics','Phone','100','29.99','25','1001');

INSERT INTO Inventory (item_num,sh_title,title,quantity,avg_cost,min_level,shelf_code) VALUES ('112','Electronics','Mobile Phone','125','39.99','25','1001'); 
INSERT INTO Inventory (item_num,sh_title,title,quantity,avg_cost,min_level,shelf_code) VALUES ('113','Outdoor','Lawn Chair','50','19.99','10','1002'); 
INSERT INTO Inventory (item_num,sh_title,title,quantity,avg_cost,min_level,shelf_code) VALUES ('114','Sports','Basketball','150','50.99','50','1003');     

INSERT INTO Purchase(pur_num, date_pur, quantity, unit_cost, note) VALUES (0002, 20200101,13 , 650.33, 'note1');
INSERT INTO Purchase(pur_num, date_pur, quantity, unit_cost, note) VALUES (0003, 20190101,83, 778.05, 'note2');
INSERT INTO Purchase(pur_num, date_pur, quantity, unit_cost, note) VALUES (0004, 20200505,82, 185.23, 'note3');
INSERT INTO Purchase(pur_num, date_pur, quantity, unit_cost, note) VALUES (0005, 20190205,23, 180.23, 'note4');
INSERT INTO Purchase(pur_num, date_pur, quantity, unit_cost, note) VALUES (0006, 20180404,78, 160.13, 'note5');

INSERT INTO Account_payable(sup_id, balance) VALUES ('315020', 1110.22);
INSERT INTO Account_payable(sup_id, balance) VALUES ('398560', 85000.33);
INSERT INTO Account_payable(sup_id, balance) VALUES ('404666', 60.22);
INSERT INTO Account_payable(sup_id, balance) VALUES ('505888', 100.22);
INSERT INTO Account_payable(sup_id, balance) VALUES ('606999', 68.03);

INSERT INTO PurchasePaymentRecord(sup_id, pur_num, date_pur, amount, trans_type) VALUES ('202020', 0002, 20200202, 2200, 'Credit');
INSERT INTO PurchasePaymentRecord(sup_id, pur_num, date_pur, amount, trans_type) VALUES ('303030', 0003, 20180101, 1500, 'Debit');
INSERT INTO PurchasePaymentRecord(sup_id, pur_num, date_pur, amount, trans_type) VALUES ('404040', 0004, 20180303, 2400, 'Credit');
INSERT INTO PurchasePaymentRecord(sup_id, pur_num, date_pur, amount, trans_type) VALUES ('505050', 0005, 20180606, 3300, 'Debit');
INSERT INTO PurchasePaymentRecord(sup_id, pur_num, date_pur, amount, trans_type) VALUES ('606060', 0006, 20180505, 82100, 'Credit');


INSERT INTO Sales(invoice_num, date_sold, item_num, quantity, price, note) VALUES (21213, 20180101, 20012, 1, 400.20, 'note1');
INSERT INTO Sales(invoice_num, date_sold, item_num, quantity, price, note) VALUES (21214, 20180505, 20013, 100, 323.30, 'note2');
INSERT INTO Sales(invoice_num, date_sold, item_num, quantity, price, note) VALUES (21215, 20181212, 20014, 5, 182.27, 'note3');
INSERT INTO Sales(invoice_num, date_sold, item_num, quantity, price, note) VALUES (21216, 20190505, 20015, 13, 383.54, 'note4');
INSERT INTO Sales(invoice_num, date_sold, item_num, quantity, price, note) VALUES (21217, 20190706, 20016, 20, 342.65, 'note5');


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
VALUES ('1','33333','20180101',''); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('2','33334','20180505',''); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('3','33335','20180909','20181212'); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('4','33336','20190101',''); 
INSERT INTO Works (per_id,job_code,start_date,end_date) 
VALUES ('5','33337','20180909',''); 

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









