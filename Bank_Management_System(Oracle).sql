--drop tables
DROP TABLE bank;
DROP TABLE staffs;
DROP TABLE customers;
DROP TABLE accounts;
DROP TABLE saving_accounts;
DROP TABLE loan_accounts;


--bank table
CREATE TABLE bank(
	bank_id NUMBER(10) NOT NULL,
	bank_name VARCHAR2(30) NOT NULL,
	bank_branch VARCHAR2(30) NOT NULL,
	bank_contact_number CHAR(20) NOT NULL,
	bank_email CHAR(30) NOT NULL,
	bank_website CHAR(30) NOT NULL,

	CONSTRAINT bank_pk PRIMARY KEY (bank_id) -- primary key
);

--inserting values of bank
INSERT INTO bank (bank_id, bank_name, bank_branch, bank_contact_number, bank_email, bank_website)  VALUES  (10011, 'Sanima Bank Limited', 'Bhaktapur-kamalbinayak', '01-6615279', 'sanimabank@gmail.com', 'sanimabank.np.com');

INSERT INTO bank (bank_id, bank_name, bank_branch, bank_contact_number, bank_email, bank_website)  VALUES  (102, 'Sanima Bank Limited', 'Bhaktapur-suryabinayak', '01-6678912', 'sanimabank@gmail.com', 'sanimabank.np.com');

INSERT INTO bank (bank_id, bank_name, bank_branch, bank_contact_number, bank_email, bank_website)  VALUES  (103, 'Sanima Bank Limited', 'Kathmandu-koteshwor', '01-6687914', 'sanimabank@gmail.com', 'sanimabank.np.com');

INSERT INTO bank (bank_id, bank_name, bank_branch, bank_contact_number, bank_email, bank_website)  VALUES  (104, 'Sanima Bank Limited', 'Kathmandu-kalanki', '01-6656152', 'sanimabank@gmail.com', 'sanimabank.np.com');

INSERT INTO bank (bank_id, bank_name, bank_branch, bank_contact_number, bank_email, bank_website)  VALUES  (105, 'Sanima Bank Limited', 'Kathmandu-gathaghar', '01-6690012', 'sanimabank@gmail.com', 'sanimabank.np.com');

SELECT * FROM bank;
--bank


--staffs
CREATE TYPE AddressType as object(
    Country varchar2(200),
    street varchar2(200),
    postal_code varchar2(50),
    city varchar2(200) 
);
drop type Addresstype;

CREATE TABLE staffs(
	staff_id NUMBER(10) NOT NULL,
	staff_name VARCHAR2(30) NOT NULL,
	staff_address AddressType,
	staff_contact_number NUMBER(20) NOT NULL,
	staff_email CHAR(30) NOT NULL,
	position_of_staff VARCHAR2(50) NOT NULL,
    staff_salary NUMBER(10,2) NOT NULL

);
drop table staffs;

--inserting values of staffs
INSERT INTO 
    staffs  VALUES (90011, 'Sanil Koju', AddressType('Nepal', 'jagati', 'SR4 5EG', 'Bhaktapur'), '9812089654', 'sanilkoju@gmail.com', 'Senior Level', '20000');
    
INSERT INTO 
    staffs  VALUES (90012, 'Kritish Rajbhandari', AddressType('India', 'jagati', 'SR4 5EG', 'Bhaktapur'), '9867817162', 'kritishraj12@gmail.com', 'junior Level', '30000');
    
INSERT INTO 
    staffs  VALUES (103, 'Rabin Gapi', AddressType('Japan', 'jagati', 'SR4 5EG', 'Bhaktapur'), '9890918818', 'rabingapi@gmail.com', 'junior Level', '30000');
    
INSERT INTO 
    staffs  VALUES (102, 'Yaman Sanda', AddressType('America', 'jagati', 'SR4 5EG', 'Bhaktapur'), '9800918212', 'yamansanda@gmail.com', 'Senior Level', '30000');
    
INSERT INTO 
    staffs  VALUES (106, 'Kabina Pandey', AddressType('Korea', 'jagati', 'SR4 5EG', 'Bhaktapur'), '9890018381', 'kabinapandey@gmail.com', 'junior Level', '20000');
SELECT * FROM staffs;    
--staff



--customer table
CREATE TABLE customers(
	customer_id NUMBER(10) NOT NULL,
	customer_name VARCHAR2(30) NOT NULL,
	customer_address VARCHAR2(30) NOT NULL,
	customer_phone_number NUMBER(20) NOT NULL,
	customer_email VARCHAR2(30) NOT NULL,

	customer_username CHAR(30) NOT NULL,
	customer_password CHAR(30) NOT NULL,
    
    CONSTRAINT customers_pk PRIMARY KEY (customer_id) -- primary key

);
drop table customers;

--inserting the values of customers
INSERT ALL
	INTO customers (customer_id, customer_name, customer_address, customer_phone_number, customer_email, customer_username, customer_password) VALUES (101, 'Anjana Kapoor', 'Kausaltar', '9889718762', 'anjanakapoor@gmail.com', 'kapooranjana', 'kapoor123@#')
    
    INTO customers  VALUES (102, 'Matina Manandhar', 'Jarsing Pauwa', '9809918737', 'matina123@gmail.com', 'manandharmatina', 'matina12&')
    
    INTO customers  VALUES (103, 'Bal Govinda Awal', 'Nagarkot', '9889014711', 'balgovinda11@gmail.com', 'awalgovindabal', '$bal*at')
    
    INTO customers  VALUES (104, 'Krishna Ram gosia', 'Adarsha', '9847718912', 'krishnaram@gmail.com', 'gosiaramkrishna', 'ramgosi@12')
    
    INTO customers  VALUES (105, 'Ajul Shertha', 'Dhulikhel', '9807896512', 'ajulsh34@gmail.com', 'sherthaajul', 'ajul1212*@')
    
    INTO customers  VALUES (106, 'salina Makaju', 'Banepa', '9870567876', 'salinamakaju@gmail.com', 'makajusalina', 'salina901!')
    
    INTO customers  VALUES (107, 'Roshi Makaju', 'Jaukhel', '9877789654', 'roshimakaju@gmail.com', 'makajuroshi', 'roshi771$')
    
	INTO customers  VALUES (108, 'Roji Kawan', 'Nalinchowk', '9811256786', 'rojikawan@gmail.com', 'kawanroji', '$12roji')
    
    INTO customers  VALUES (109, 'Roshan Bhaila', 'Sipadol', '9809009542', 'roshanbhaila@gmail.com', 'bhailaroshan', '991%roshan')
    
	INTO customers  VALUES (110, 'Alish Khayaju', 'Sipadol', '9851007782', 'alishhkhayaju@gmail.com', 'khayajualish', '@lish919^')
    
    INTO customers  VALUES (111, 'Ujwal Lamichhami', 'Gathaghar', '984367852', 'ujwal12@gmail.com', 'lamichhamiujal', 'ujwal1515*')
    
SELECT * FROM dual;
SELECT * FROM customers;
--customer



-- accounts table
CREATE TABLE accounts ( 
    account_id numeric(20) PRIMARY KEY not null, -- primary key
    customer_id numeric(10) not null,
    account_name varchar2(50) not null,
    account_number CHAR(30) NOT NULL,
    account_balance CHAR(30) NOT NULL,
    account_description VARCHAR(255),
  
    CONSTRAINT customer_fk
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id) -- foreign key
);

alter table accounts DROP CONSTRAINT customer_fk;
SELECT * FROM accounts;
drop table accounts;

--inserting the values of account
INSERT 	INTO
    accounts (account_id, customer_id, account_name, account_number, account_balance, account_description) VALUES (455, '105','Ajul Shertha', '0000178178186198', '10000', 'This is for my personal.');

INSERT INTO 
    accounts  VALUES (456, '109', 'Roshan Bhaila', '0000897617819167', '70000', 'For college fee');

INSERT INTO 
    accounts  VALUES (457, ' 102', 'Matina Manandhar', '0000789768267222', '2000', 'For school fee');

INSERT INTO 
    accounts  VALUES (458, ' 107', 'Roshi Makaju', '0000368571659186', '900', 'for hard drive');

INSERT INTO 
    accounts  VALUES (102, '101', 'Anjana Kapoor', '0000165961956196', '9000', 'for buying pant and tshirt');

INSERT INTO 
    accounts  VALUES (103, '111', 'Ujwal Lamichhami', '0000145165465161', '8000', 'for birthday');

INSERT INTO 
    accounts  VALUES (104, ' 104', 'Krishna Ram gosia', '0000776515818781', '25000', 'for tour');
    
-- accounts 



    
--saving_account table
CREATE TABLE saving_accounts(
	saccount_id NUMBER(10) PRIMARY KEY  NOT NULL, --primary key
    account_id numeric(10) not null,
    saccount_date date,   
	withdrawn_amount NUMBER(10,2) NOT NULL,
	deposit_amount NUMBER(10,2) NOT NULL,
	balance NUMBER(10,2) NOT NULL,
	interest_rate CHAR(10) NOT NULL,
	description VARCHAR2(100),

	CONSTRAINT account_fk1
    FOREIGN KEY (account_id)
    REFERENCES accounts(account_id) --foreign key
);  

SELECT * FROM saving_accounts;
alter table saving_accounts DROP CONSTRAINT account_fk1;

drop table saving_accounts;

--inserting the values of saving_account
INSERT ALL
    INTO saving_accounts  VALUES (102, '455','19-july-2010', '1000', '500', '90000', '6.3%', 'nothing')
    
    INTO saving_accounts  VALUES (662, '457','10-june-2011','500', '200', '15000', '6.3%', 'for personal')
    
    INTO saving_accounts  VALUES (663, '103 ','20-aug-2022', '4000', '5000', '89000', '6.3%', 'for business')
    
    INTO saving_accounts  VALUES (664, '104','23-dec-2020', '6000', '3900', '4000', '6.3%', 'for school fee')
    
    INTO saving_accounts  VALUES (103, '102','04-feb-2014', '7800', '500', '20000', '6.3%', 'for college fee')
    
    INTO saving_accounts  VALUES (666, '458','09-may-2017', '7000', '1000', '78110', '6.3%', 'for something')
    
    INTO saving_accounts  VALUES (667, '456','29-april-2019', '9000', '2000', '100000', '6.3%', 'personal')
    
SELECT * FROM dual;
--saving_account


--Loan_account table
CREATE TABLE loan_account(
	loan_account_id numeric(10) PRIMARY KEY NOT NULL, --primary key
    account_id numeric(10) not null,
	loan_date TIMESTAMP,
	loan_time_period CHAR(10) NOT NULL,
	loan_total_amount CHAR(30) NOT NULL,
	loan_interest_rate CHAR(20) NOT NULL,

	CONSTRAINT account_fk
    FOREIGN KEY (account_id)
    REFERENCES accounts(account_id) --foreign key
	
);

Select * from  loan_account;
alter table loan_account DROP CONSTRAINT account_fk;
drop table loan_account;


--inserting the values of loan_account
INSERT ALL
    INTO loan_account (loan_account_id,account_id, loan_date, loan_time_period, loan_total_amount, loan_interest_rate) VALUES (991, '455', SYSDATE, '10 years', '30000', '14%')
    
    INTO loan_account  VALUES (992, '456', SYSDATE, '6 years', '40000', '14%')
    
	INTO loan_account  VALUES (102, '458', SYSDATE, '5 years', '50000', '14%')
    
    INTO loan_account  VALUES (994, '103', '1-jan-2022', '20 years', '20000', '14%')
    
	INTO loan_account  VALUES (995, '102', '1-apr-2022:12:30:25.', '2 years', '10000', '14%')
    
    INTO loan_account  VALUES (103, '457', SYSDATE + 3, '10 years', '60000', '14%')

SELECT * FROM dual;

SELECT * FROM loan_account;
--Loan_account



-- cross join(The CROSS JOIN specifies that all rows from first table join with all of the rows of second table)
-- cross join of four tables(bank, staffs, customers and accounts)
SELECT b.bank_id, b.bank_branch, b.bank_contact_number, s.staff_name, s.position_of_staff, c.customer_id, c.customer_name, a.account_number, a.account_balance
FROM bank b, customers c , accounts a
CROSS JOIN staffs s; 
-- cross join



--INNER JOIN of three tables(customers, staffs and bank)
SELECT c.customer_id , c.customer_name, c.customer_address, s.staff_id, s.staff_contact_number 
FROM customers c INNER JOIN staffs s ON customer_id  = staff_id
INNER JOIN bank b ON staff_id = bank_id; 
--INNER JOIN


--RIGHT OUTER JOIN of three tables (bank, customer, staff)
SELECT b.bank_id, b.bank_name, b.bank_branch, c.customer_id, c.customer_name, c.customer_email, s.staff_id, s.staff_name, s.staff_email
FROM bank  b RIGHT OUTER  JOIN customers c ON bank_id = customer_id
RIGHT OUTER JOIN staffs s ON  customer_id = staff_id and b.bank_branch = 'Kathmandu-koteshwor'; 
--RIGHT OUTER JOIN 





--LEFT OUTER JOIN of 3 tables(staffs, customers and bank)
SELECT s.staff_id, s.staff_email, c.customer_id, c.customer_username, c.customer_email, b.bank_id, b.bank_name, b.bank_website
FROM staffs s  LEFT OUTER  JOIN customers c ON staff_id = customer_id
LEFT OUTER  JOIN bank b ON customer_id = bank_id; 
--LEFT OUTER JOIN



--FULL OUTER JOIN of 4 tables(bank, customers, staffs and accounts)
SELECT b.bank_id, b.bank_website, c.customer_id, c.customer_name, c.customer_password, c.customer_username, s.staff_id, s.staff_name, s.staff_contact_number, a.account_id, a.account_number
FROM bank b FULL OUTER  JOIN customers c ON bank_id = customer_id
FULL OUTER JOIN staffs s ON customer_id = staff_id
FULL OUTER JOIN accounts a ON staff_id = account_id; 
--FULL OUTER JOIN




--nested table from staff table
select s.staff_id, s.staff_address.Country as country, s.staff_address.street as street ,
s.staff_address.postal_code as postal_code,s.staff_address.city as city from staffs s 
WHERE s.staff_id <=106;
--nested table



--timestamp
--using loan account table
SELECT loan_account_id, loan_date FROM loan_account la;

SELECT loan_account_id, to_char(loan_date, 'HH:MI:SS') FROM loan_account la; --retrieving data

SELECT loan_account_id, loan_date FROM loan_account  WHERE loan_date < sysdate;

SELECT EXTRACT(DAY FROM loan_date)FROM loan_account la; --extract
--timestamp




--PARTITION BY (PARTITION BY allows us to perform GROUP operations, but also display detailed data.)
--using customer table
SELECT customer_id, customer_name, customer_address,
COUNT (*) OVER (PARTITION BY customer_address) AS customer_count,
avg(customer_id) OVER (PARTITION BY customer_address) average_rooms,
min(customer_id) OVER (PARTITION BY customer_address) minimum_rooms,
max(customer_id) OVER (PARTITION BY customer_address) maximum_rooms
FROM customers c;
--PARTITION BY


















































































