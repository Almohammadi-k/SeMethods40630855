create table departments
(
    dept_no   char(4)     not null
        primary key,
    dept_name varchar(40) not null,
    constraint dept_name
        unique (dept_name)
);

