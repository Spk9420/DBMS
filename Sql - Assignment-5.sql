CREATE DATABASE ASSIGNMENT_5;
USE ASSIGNMENT_5;

-- 1.	Write a Procedure that accepts values of two non-zero numbers using IN parameter and perform addition, subtraction, multiplication, division and print.

DELIMITER //
CREATE PROCEDURE ACCEPT_VALUES(IN A INT ,IN B INT)
BEGIN
select 
a+b as addition,
a-b as subtraction, 
a*b as multiplication,
a/b as division;
END //
CALL ACCEPT_VALUES(40,4);
-- -------------------------------------------------------------------------------------------------------------------------------------

-- 2.	Write a Procedure to print the string in REVERSE order. Take the input using IN parameter. (Ex .Database , o/p :esabatad) 

DELIMITER //
CREATE PROCEDURE REVE(IN A VARCHAR(20))
BEGIN
SELECT REVERSE(A);
END //
CALL REVE("DATA");
-- -------------------------------------------------------------------------------------------------------------------------------------

-- 3.	Write a Procedure to display top 5 employee based on highest salary and display employee number, employee name and salary.
USE COMPANY;
DELIMITER //
CREATE PROCEDURE HIGHTEST_SAL()
BEGIN
SELECT EMPNAME,EMPNO,SAL FROM EMP ORDER BY SAL DESC LIMIT 5;
END //
CALL HIGHTEST_SAL();
-- -------------------------------------------------------------------------------------------------------------------------------------

-- 4.	Write a Procedure to create table emp_test with e_id integer, e_name varchar(10), e_joining_date date as columns
DELIMITER //
CREATE PROCEDURE CERATE_TABLE()
BEGIN
CREATE TABLE EMP_TEST (
  E_ID INT NOT NULL,
  E_NAME VARCHAR(10) NULL,
  E_JOINING_DATE DATE NULL,
  PRIMARY KEY (E_ID)
  );
END //
CALL CERATE_TABLE();
-- -------------------------------------------------------------------------------------------------------------------------------------

-- 5.	Write a Procedure to add a department row in the DEPT table with the following values 
-- 		for columns deptno  value 60,Dname  value should be  ‘Education’, area value should be Pune.

DELIMITER //
CREATE PROCEDURE ADD_ROW()
BEGIN
insert into dept(dno , dname , area) values(70,'EDUCATION','PUNE');
END //
CALL ADD_ROW();
-- -------------------------------------------------------------------------------------------------------------------------------------
-- 6.	Write a program that declares an integer variable called num, assigns a value to it and print,
-- 		the value of the variable itself, its square, and its cube.

DELIMITER //
CREATE PROCEDURE VARIABLE(IN NUM INT)
BEGIN
SELECT SQRT(NUM);
SELECT POWER(NUM,2);
SELECT POWER(NUM,3);
END //
CALL VARIABLE(2);
-- -------------------------------------------------------------------------------------------------------------------------------------

-- 7.	Write a program that declares an integer variable assign a value to it and display it using OUT parameter.

delimiter //
create procedure OUTS(out s int)
begin
declare q int default 0;
set q = s;
end //
CALL OUTS(@k);
select @k;
-- -------------------------------------------------------------------------------------------------------------------------------------

-- 8.	Write a program that demonstrates the usage of IN and OUT parameters.
delimiter //
create procedure inOUTS(inout s int)
begin
declare q int default 0;
set q = s;
end //
CALL OUTS(@k);
select @k;
-- -------------------------------------------------------------------------------------------------------------------------------------












