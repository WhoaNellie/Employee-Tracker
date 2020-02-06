drop database if exists employeeDB;

create database employeeDB;

use employeeDB;

create table employee(
    id int not null auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id int,
    manager_id int,
    -- foreign key (role_id) references role(role_id)
    primary key(id)
);

create table role(
    id int not null auto_increment,
    title varchar(30) not null,
    salary float not null,
    department_id int,
    -- foreign key (department_id) references department(department_id)
    primary key(id)
);

create table department(
    id int not null auto_increment,
    name varchar(30) not null,
    primary key(id)
)

