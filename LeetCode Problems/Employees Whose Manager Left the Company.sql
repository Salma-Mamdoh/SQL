/* Write your T-SQL query statement below */
select employee_id from Employees where salary <30000 and manager_id is NOT NULL and manager_id Not in (select employee_id from Employees) order by employee_id
