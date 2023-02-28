create table empl
(
emp_name varchar(10),
dep_id int,
salary int
);
delete from empl;
insert into empl values 
('Siva',1,30000),('Ravi',2,40000),('Prasad',1,50000),('Sai',2,20000)

-- Need the output in below format.
===========================================
dep_id	emp_name_min_sal	emp_name_max_sal
===========================================
1	      Siva  	          Prasad
2	      Sai	              Ravi

