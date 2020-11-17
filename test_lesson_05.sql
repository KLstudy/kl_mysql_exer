#查询各 job_id 的员工工资的最大值,最小值,平均值,总和,并按 job_id 升序
use myemployees;
select max(salary),min(salary),avg(salary),sum(salary),job_id
from employees
group by job_id
order by job_id;

#查询员工最高工资和最低工资的差距(DIFFERENCE)
select max(salary)-min(salary) as difference
from employees;

#查询各个管理者手下员工的最低工资,其中最低工资不能低于 6000,没有管理者的员工不计算在内
select min(salary),manager_id
from employees
where manager_id is not null
group by manager_id
having min(salary)>=6000;

#查询所有部门的编号,员工数量和工资平均值,并按平均工资降序
select department_id as 部门编号,count(*) as 员工数量,avg(salary) as 平均工资
from employees
group by department_id
order by avg(salary);

#选择具有各个 job_id 的员工人数
select count(*) as 员工人数,job_id
from employees
group by job_id;
