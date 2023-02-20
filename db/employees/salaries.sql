create table salaries
(
    emp_no    int  not null,
    salary    int  not null,
    from_date date not null,
    to_date   date not null,
    primary key (emp_no, from_date),
    constraint salaries_ibfk_1
        foreign key (emp_no) references employees (emp_no)
            on delete cascade
);

