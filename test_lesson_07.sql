#显示所有员工的姓名,部门号和部门名称。
select e.last_name,e.department_id,d.department_name
from employees as e,departments as d
where e.`department_id`=d.`department_id`;

#查询 90 号部门员工的 job_id 和 90 号部门的 location_id
select e.job_id,d.location_id
from employees as e,departments as d
where e.`department_id`=d.`department_id`
and e.department_id=90;

#选择所有有奖金的员工的
#last_name , department_name , location_id , city
select last_name,department_name,l.location_id,city
from employees as e,departments as d,locations as l
where e.department_id=d.department_id and d.location_id=l.location_id
and e.commission_pct is not null;

#选择city在Toronto工作的员工的
#last_name , job_id , department_id , department_name,city
select last_name,e.job_id,d.department_id,department_name
from employees as e,departments as d,locations as l
where e.department_id=d.department_id and d.location_id=l.location_id
and l.city='Toronto';

#查询每个工种、每个部门的部门名、工种名和最低工资
select e.job_id,department_name,job_title,min(salary)
from employees as e,departments as d,jobs as j
where e.department_id=d.department_id and e.job_id=j.job_id
group by j.job_id,d.department_id;

#查询每个国家下的部门个数大于 2 的国家编号
select country_id as 国家编号,count(*) as 部门个数-- 
from departments as d,locations as l
where d.location_id=l.location_id
group by country_id
having count(*)>2;

#选择指定员工的姓名,员工号,以及他的管理者的姓名和员工号,结果类似于下面的格式
#employees  Emp  manager Mgr
#kochhar    101  king    100
select e.last_name as employees,e.employee_id as Emp,m.last_name as manager,m.employee_id as Mgr
from employees as e,employees as m
where e.manager_id=m.employee_id
and e.last_name='kochhar';


