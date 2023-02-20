create table dept_manager
(
    emp_no    int     not null,
    dept_no   char(4) not null,
    from_date date    not null,
    to_date   date    not null,
    primary key (emp_no, dept_no),
    constraint dept_manager_ibfk_1
        foreign key (emp_no) references employees (emp_no)
            on delete cascade,
    constraint dept_manager_ibfk_2
        foreign key (dept_no) references departments (dept_no)
            on delete cascade
);

create index dept_no
    on dept_manager (dept_no);

