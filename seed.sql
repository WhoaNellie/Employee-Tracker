use employeeDB;

-- departments
insert into department (name)
values ("Management");

insert into department (name)
values ("Sales");

insert into department (name)
values ("Accounting");

insert into department (name)
values ("Human Resources");

insert into department (name)
values ("Reception");

insert into department (name)
values ("Product Oversight");

-- roles
insert into role (title, salary, department_id)
values ("Regional Manager", 75.2, 1);

insert into role (title, salary, department_id)
values ("Assistant Regional Manager", 35.96, 1);

insert into role (title, salary, department_id)
values ("Warehouse Foreman", 55, 1);

insert into role (title, salary, department_id)
values ("Sales Director", 68, 2);

insert into role (title, salary, department_id)
values ("Sales Rep.", 48.739, 2);

insert into role (title, salary, department_id)
values ("Senior Accountant", 57.6, 3);

insert into role (title, salary, department_id)
values ("Accountant", 50.96, 3);

insert into role (title, salary, department_id)
values ("HR Rep.", 60, 4);

insert into role (title, salary, department_id)
values ("Receptionist", 30.219, 5);

insert into role (title, salary, department_id)
values ("Customer Service", 29.487, 6);

insert into role (title, salary, department_id)
values ("Supplier Relations", 37, 6);

-- employees

insert into employee (first_name, last_name, role_id, manager_id)
values ("Michael", "Scott", 1, null);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Dwight", "Schrute", 2, 1);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Darryl", "Philbin", 3, null);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Andy", "Bernard", 4, 1);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Jim", "Halpert", 5, 4);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Phyllis", "Vance", 5, 4);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Stanley", "Hudson", 5, 4);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Angela", "Martin", 6, 1);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Kevin", "Malone", 7, 8);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Oscar", "Martinez", 7, 8);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Toby", "Flenderson", 8, null);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Pam", "Beesly", 9, 1);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Kelly", "Kapoor", 10, 1);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Meredith", "Palmer", 11, 1);