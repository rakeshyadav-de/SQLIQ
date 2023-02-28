with cte as (
select dep_id, max(salary) as maxsal,min(salary) as minsal from empl group by dep_id
) 
select 
e.dep_id,
max(case when salary = maxsal then emp_name end) as emp_name_max_sal,
max(case when salary = minsal then emp_name end) as emp_name_min_sal
 from empl e inner join cte c on e.dep_id = c.dep_id group by e.dep_id


with cte as
(
select *, 
ROW_NUMBER() over(partition by dep_id order by salary asc) as rank_asc,
ROW_NUMBER() over(partition by dep_id order by salary desc) as rank_desc
from empl)
select  dep_id, 
max(case when rank_asc = 1 then emp_name end) as emp_name_min_sal,
max(case when rank_desc = 1 then emp_name end) as emp_name_max_sal
 from cte group by dep_id

