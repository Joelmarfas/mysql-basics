-- INSERT EMPLOYEES
INSERT INTO `employees` VALUES (1,"1990-04-30","Joel","Martinez",'M',"2020-10-31");

INSERT INTO `employees` VALUES (2,"1991-10-30","Lola","Martinez",'F',"2020-11-1"),
(3,"1991-01-18","Lola","Marti",'F',"2012-11-1"),
(4,"1992-02-19","Lola","Garcia",'F',"2011-01-2"),
(5,"1993-03-20","Joel","Carmona",'M',"2010-02-3"),
(6,"1994-04-21","Laura","Puig",'F',"2011-03-4"),
(7,"1995-05-22","Laura","Garcia",'F',"2012-04-5"),
(8,"1996-06-23","Pere","Rives",'M',"2013-05-1"),
(9,"1997-07-24","Enrique","Santamaria",'M',"2014-06-11"),
(10,"1998-08-25","Paul","Lacalle",'M',"2015-07-12"),
(11,"1999-09-26","Gonzalo","Miro",'M',"2016-08-13"),
(12,"2000-10-27","Paris","Florencia",'M',"2017-09-14"),
(13,"2001-11-28","Yaiser","Camilo",'M',"2018-10-15"),
(14,"2002-12-29","Jose","Pinto",'M',"2019-12-16"),
(15,"2003-12-30","Pau","Guerra",'M',"2020-11-17");


-- SALARIES
INSERT INTO salaries VALUES (1,40000,'2020-10-31', CURDATE());

INSERT INTO salaries VALUES 
(2,30000,'2020-11-01', "2021-10-01"),
(2,33000,'2021-10-01', CURDATE());

INSERT INTO salaries VALUES
(3,20000,'2012-11-01', "2015-10-01"),
(3,23000,'2015-10-01', CURDATE()),
(4,10000,'2011-01-02', "2019-10-01"),
(4,5000,'2019-10-01', CURDATE()),
(5,46000,'2010-02-03', "2016-09-01"),
(5,49500,'2016-09-01', CURDATE()),
(6,21000,'2011-03-04', CURDATE()),
(7,25000,'2012-04-05', CURDATE()),
(8,17000,'2013-05-01', CURDATE()),
(9,24000,'2014-06-11', CURDATE()),
(10,37000,'2015-07-12', CURDATE()),
(11,39000,'2016-08-13', CURDATE()),
(12,12000,'2017-09-14', CURDATE()),
(13,15000,'2018-10-15', CURDATE()),
(14,18000,'2019-12-16', CURDATE()),
(15,24000,'2020-11-17', '2021-11-17'),
(15,27000,'2021-11-17', CURDATE());


-- DEPARTMENTS

INSERT INTO departments VALUES 
('1','Tech'),
('2','Marketing'),
('3','Finance'),
('4','Legal'),
('5','Sales');

-- DEPT MANAGERS
INSERT INTO dept_manager VALUES 
(2, "1", '2021-10-01', CURDATE()),
(3, "2", '2015-10-01', CURDATE()),
(4, "3", '2019-10-01', CURDATE()),
(5, "4", '2016-09-01', CURDATE()),
(15, "5", '2021-11-17', CURDATE());

-- EMPLOYEE DEGREES
INSERT INTO titles VALUES 
(1, "Master", "2020-09-18", CURDATE() ),
(2, "PHD", "2020-10-30", CURDATE() ),
(3, "Bachelor", "2020-04-30", CURDATE() ),
(4, "Master", "2020-07-19", CURDATE() ),
(5, "PHD", "2020-10-30", CURDATE() ),
(6, "Bachelor", "2012-10-30", CURDATE() ),
(7, "Master", "2013-10-30", CURDATE() ),
(8, "PHD", "2014-10-30", CURDATE() ),
(9, "Bachelor", "2015-10-30", CURDATE()),
(10, "Master", "2016-10-30", CURDATE() ),
(11, "PHD", "2017-10-30", CURDATE() ),
(12, "Bachelor", "2016-10-30", CURDATE()),
(13, "Master", "2015-10-30", CURDATE() ),
(14, "PHD", "2014-10-30", CURDATE() ),
(15, "Bachelor", "2019-10-30", CURDATE());


-- BELONG MORE DEPARTMENT

INSERT INTO dept_emp VALUES 
(1, "1",  "2020-10-31", CURDATE()),
(2, "2",  "2020-11-1", "2021-10-01"),
(2, "3",  "2021-10-01", CURDATE()),
(3,'3', "2012-11-1", '2015-10-01'),
(3,'2', '2015-10-01', CURDATE()),
(4, "1",  "2011-01-2", "2019-10-01"),
(4, "2",  "2019-10-01", CURDATE()),
(5, "2",  "2010-02-3", '2016-09-01'),
(5, "1",  '2016-09-01', CURDATE()),
(6, '3',"2011-03-4", CURDATE()),
(7, "1", "2012-04-5", CURDATE()),
(8, "2", "2013-05-1", CURDATE()),
(9, '3',"2014-06-11", CURDATE()),
(10, "1" , "2015-07-12", "2017-07-12"),
(10, "2" , "2017-07-12", CURDATE()),
(11, '4',"2016-08-13","2017-08-13"),
(11, '5',"2017-08-13", CURDATE()),
(12, '4',"2017-09-14","2018-09-14"),
(12, '1',"2018-09-14", CURDATE()),
(13, '5',"2018-10-15","2019-10-15"),
(13, '4',"2019-10-15", CURDATE()),
(14, '5',"2019-12-16","2021-11-06"),
(14, '3',"2021-11-06", CURDATE()),
(15, '5' , "2020-11-17", '2021-11-17'),
(15, '3' , '2021-11-17', CURDATE());


-- UPDATE DATA

-- UPDATE EMPLOYEES

UPDATE `employees` SET `birth_date`='1997-05-23',`first_name`='Cambiada',`last_name`='YanoesLaura' WHERE emp_no = 7;


-- UPDATE DEPARTMENTS

UPDATE departments SET dept_name = "Tech 2.0" WHERE dept_no = 1;
UPDATE departments SET dept_name = "Marketing 2.0" WHERE dept_no = 2;
UPDATE departments SET dept_name = "Finance 2.0" WHERE dept_no = 3;
UPDATE departments SET dept_name = "Legal 2.0" WHERE dept_no = 4;
UPDATE departments SET dept_name = "Sales 2.0" WHERE dept_no = 5;


-- GET DATA

-- Select all employees with a salary greater than 20,000
SELECT * FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary > 20000);
--Select all employees with a salary below 10,000
SELECT * FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary < 10000);
--Select all employees who have a salary between 14.00 and 50,000
SELECT * FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary  BETWEEN 14000 AND 50000);
--Select the total number of employees
SELECT COUNT(emp_no) AS NumberOfEmployees FROM employees;
--Select the total number of employees who have worked in more than one department
