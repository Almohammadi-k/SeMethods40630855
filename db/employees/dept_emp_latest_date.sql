create definer = root@localhost view dept_emp_latest_date as
select `employees`.`dept_emp`.`emp_no`         AS `emp_no`,
       max(`employees`.`dept_emp`.`from_date`) AS `from_date`,
       max(`employees`.`dept_emp`.`to_date`)   AS `to_date`
from `employees`.`dept_emp`
group by `employees`.`dept_emp`.`emp_no`;

