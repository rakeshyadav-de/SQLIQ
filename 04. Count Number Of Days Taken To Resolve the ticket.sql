-- There are two table, use them to find out the number of days it took to resolve a ticket.
create table tickets
(
ticket_id varchar(10),
create_date date,
resolved_date date
);

insert into tickets values
(1,'2022-08-01','2022-08-03')
,(2,'2022-08-01','2022-08-12')
,(3,'2022-08-01','2022-08-16');
create table holidays
(
holiday_date date
,reason varchar(100)
);

insert into holidays values
('2022-08-14','Independence day')
('2022-08-11','abc'),
('2022-08-15','Independence day');
