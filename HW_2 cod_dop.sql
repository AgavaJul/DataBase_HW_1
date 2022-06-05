
set search_path to employee;

# Если представить, что компания маленькая, то можно и так :)

create table employee (
employee_id serial primary key,
first_name char(150) not null,
last_name char(150) not null,
born_date date not null check (born_date > 1965)
post char (200) not null,
department char (200) not null,
chief int references employee (employee_id)
);


