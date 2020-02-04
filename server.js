const mysql = require("mysql");
const inquirer = require("inquirer");
const cTable = require("console.table");
const password = require("./password.js");

let connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "nellie",
    password: password,
    database: "employeeDB",
    multipleStatements: true
});

connection.connect(function (err) {
    if (err) {
        console.error(err.stack);
        return;
    }
    // ASCII art here
    promptUsr();
});

class EmployeeDisplay {
    constructor(id, first_name, last_name, title, department, salary, manager) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.title = title;
        this.department = department;
        this.salary = salary;
        this.manager = manager;
    }
}


let choices = ["View all Employees", "View all Roles", "View all Departments"];
function promptUsr(){
    inquirer.prompt({
        type: "list",
        name: "choice",
        message: "What would you like to do?",
        choices: choices
    }).then(function (res) {
        let choice = res.choice;
        if (choice == choices[0]) {
            viewAllEmployees();    
        } else if (choice == choices[1]) {
            viewAllRoles();
        } else if (choice == choices[2]) {
    
        }
    });
}


function viewAllEmployees(){
    connection.query("select * from employee; select * from role; select * from department", function (err, data) {
        if (err) {
            console.log(err);
            return;
        }

        // employee is data[0], data from 3 queries
        let roles = data[1];
        let departments = data[2];

        let employeeArr = [];

        for (let i = 0; i < data[0].length; i++) {
            // current employee
            let emplObj = data[0][i];

            // getting title, salary
            let role_id = emplObj.role_id - 1;
            let title = roles[role_id].title;
            let salary = roles[role_id].salary * 1000;

            // getting dept name
            let department_id = roles[role_id].department_id;
            let deptName = departments[department_id - 1].name;

            // getting manager name
            let manager_id = emplObj.manager_id;
            let managerName = "None";
            if (manager_id != null) {
                managerName = data[0][manager_id - 1].first_name + " " + data[0][manager_id - 1].last_name;
            }

            // creating nice employee object to display
            let empl = new EmployeeDisplay(
                emplObj.id,
                emplObj.first_name,
                emplObj.last_name,
                title,
                deptName,
                salary,
                managerName
            );

            employeeArr.push(empl);
        }

        console.log("\n");
        console.table(employeeArr);
        promptUsr();
    })
}