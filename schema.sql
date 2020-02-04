drop database if exists employeeDB;

create database employeeDB;

use employeeDB;

create table employee(
    id int not null auto_increment primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id int,
    manager_id int,
    foreign key (role_id) references role(role_id)
);

create table role(
    id int not null auto_increment primary key,
    title varchar(30) not null,
    salary dec(6,6) not null,
    department_id int,
    foreign key (department_id) references department(department_id)
);

create table department(
    id int not null auto_increment primary key,
    name varchar(30) not null
)