create definer = root@localhost view current_dept_emp as
select `employees`.`l`.`emp_no`    AS `emp_no`,
       `d`.`dept_no`               AS `dept_no`,
       `employees`.`l`.`from_date` AS `from_date`,
       `employees`.`l`.`to_date`   AS `to_date`
from (`employees`.`dept_emp` `d` join `employees`.`dept_emp_latest_date` `l`
      on (((`d`.`emp_no` = `employees`.`l`.`emp_no`) and (`d`.`from_date` = `employees`.`l`.`from_date`) and
           (`employees`.`l`.`to_date` = `d`.`to_date`))));

