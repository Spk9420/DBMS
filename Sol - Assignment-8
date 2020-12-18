create database Assignment7;
use Assignment7;

create table ord_master(
	ord_no int(4),
	cust_cd varchar(3),
	status varchar(4)
	);

insert into ord_master values(1,'c1','p');

select * from ord_master;


create table Ord_dtl(
	ord_no int(2),
	Prod_cd varchar(10),
	qty int(3),
        constraint pk_key primary key (Prod_cd)
       );

insert into ord_dtl values(1,'p1',100);
insert into ord_dtl values(1,'p2',200);

select * from ord_dtl;

create table prod_cd(
	prod_cd varchar(20),
	prod_name varchar(20),
	qty_in_stock int(6),
	Booked_qty int(5)
        );
drop table Ord_dtl;
insert into prod_cd values('p1','Floppies',10000,1000);
insert into prod_cd values('p2','Printers',5000,600);
insert into prod_cd values('p3','Modems',3000,200);
select * from prod_cd;


/* que1 */
delimiter $$

create trigger que1
before insert on ord_dtl
for each row
begin 
	update prod_cd 
	set Booked_qty=Booked_qty+new.qty 
	where prod_cd=new.prod_cd;
 end$$
  -- drop trigger que1;
  
 insert into ord_dtl values(1,'p3',300);
 
 
 /* que2 */
 delimiter $$
 create trigger que2
 after delete on ord_dtl
 for each row
 begin
      update prod_cd
         set Booked_qty=booked_qty-old.qty 
 where prod_cd=old.prod_cd;
 end$$
 
 delete from ord_dtl where prod_cd='p3';
 
 
 Create table EMP ( 
EMPNO numeric(4) not null, 
ENAME varchar(30) not null, 
JOB varchar(10), 
MGR numeric(4), 
HIREDATE date, 
SAL numeric(7,2), 
DEPTNO numeric(2) 
); 
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) 
values(1000,  'Manish' , 'SALESMAN', 1003,  '2020-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) 
values(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO )
 values(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) 
values(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10);
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) 
values(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) 
values(1006,  'Pooja',  'MANAGER'  , null , '2000-02-18' ,6000, 10 );

 
 Create table dept (
dno numeric(4) not null, 
salary int(6),
area varchar(30)
);
Insert into dept(dno,salary,area) values(10,2000,'Mumbai');
Insert into dept(dno,salary,area) values(20,3000,'Mumbai');
Insert into dept(dno,salary,area) values(30,43000, 'Delhi');
Insert into dept(dno,salary,area) values(40,24500,'Pune');
Insert into dept(dno,salary,area) values(50,4443,'Delhi');
Insert into dept(dno,salary,area) values(60,34000,'Mumbai');
Select * from dept;
Select * from Emp;
delimiter $$
create trigger que3
after insert on emp
for each row
Begin
update dept
 set salary=salary+new.sal 
where dno = new.deptno;
end$$
drop trigger que3;
Insert into EMP values(1007,  'James',  'MANAGER'  , 1004, '2000-02-18' ,9000, 10 );



delimiter $$
create trigger que4
after delete on emp
for each row
Begin
update dept
 set salary=salary-old.sal 
where dno = old.deptno;
end$$
drop trigger que4;
delete  from emp where empno=1006;