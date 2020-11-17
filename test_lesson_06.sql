
#查询公司员工工资的最大值,最小值,平均值,总和
select max(salary) as 最大值,min(salary) as 最小值,avg(salary) as 平均值,sum(salary) as 总和
from employees;

#查询员工表中的最大入职时间和最小入职时间的相差天数 (DIFFRENCE)
select datediff(max(hiredate),min(hiredate)) as difference
from employees;

#查询部门编号为 90 的员工个数
select count(*) as 员工个数
from employees
where department_id=90;

