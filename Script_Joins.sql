select employee_name, monthly_salary from employees 
join employee_salary 
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id;

select employee_name, monthly_salary from employees 
join employee_salary 
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

select employee_name, monthly_salary from employees 
right join employee_salary 
on employee_salary.employee_id = employees.id
right join salary 
on employee_salary.salary_id = salary.id
where employee_name is null;

select employee_name, monthly_salary from employees 
right join employee_salary 
on employee_salary.employee_id = employees.id
right join salary 
on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;

select employee_name, monthly_salary from employees 
left join employee_salary 
on employee_salary.employee_id = employees.id
left join salary 
on employee_salary.salary_id = salary.id
where monthly_salary is null;

select employee_name, role_name from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id;

select employee_name, role_name from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like '%Java developer';

select employee_name, role_name from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like '%Python developer';

select employee_name, role_name from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like '%QA engineer';

select employee_name, role_name from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like '%Manual QA engineer';

select employee_name, role_name from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like '%Automation QA engineer';

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where role_name like 'Junior%';

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where role_name like 'Middle%';


select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where role_name like 'Senior%';

select role_name, monthly_salary from salary s
left join roles r
on s.id = r.id 
where role_name like '%Java%';

select role_name, monthly_salary from salary s
left join roles r
on s.id = r.id 
where role_name like '%Python%';

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where role_name='Junior Python developer';

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where role_name='Middle JavaScript developer';

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where role_name='Senior Java developer';

select role_name, monthly_salary from salary s
left join roles r
on s.id = r.id 
where role_name like 'Junior%QA engineer';

select avg(monthly_salary) from salary s
left join roles r
on s.id = r.id 
where role_name like 'Junior%';

select sum(monthly_salary) from salary s
left join roles r
on s.id = r.id 
where role_name like '%JavaScript developer';

select min(monthly_salary) from salary s
left join roles r
on s.id = r.id 
where role_name like '%QA engineer';

select max(monthly_salary) from salary s
left join roles r
on s.id = r.id 
where role_name like '%QA engineer';

select count(role_name) from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like '%QA engineer';

select count(role_name) from employees 
join roles_employee 
on roles_employee.id_employee = employees.id
join roles
on roles_employee.id_role = roles.id
where role_name like 'Middle%';

select count(employee_name) from employees;

select sum(monthly_salary) from salary s
left join roles r
on s.id = r.id 
where role_name like '%developer';

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
ORDER by monthly_salar;

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where monthly_salary between 1700 and 2300
ORDER by monthly_salary;

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where monthly_salary < 2300
ORDER by monthly_salary;

select employee_name, role_name, monthly_salary from employees e
left join roles r 
on e.id = r.id
left join salary s
on e.id = s.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
ORDER by monthly_salary;

