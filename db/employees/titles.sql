create table titles
(
    emp_no    int         not null,
    title     varchar(50) not null,
    from_date date        not null,
    to_date   date        null,
    primary key (emp_no, title, from_date),
    constraint titles_ibfk_1
        foreign key (emp_no) references employees (emp_no)
            on delete cascade
);

