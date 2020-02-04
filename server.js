const mysql = require("mysql");
const inquirer = require("inquirer");
const cTable = require("console.table");
const password = require("./password.js");

let connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "nellie",
    password: password,
    database: "employeeDB"
});

connection.connect(function (err) {
    if (err) {
        console.error(err.stack);
        return;
    }
    // console.log("connected as id " + connection.threadId);
});

let choices = ["View all Employees", "View all Roles", "View all Departments"];

inquirer.prompt({
    type: "list",
    name: "choice",
    message: "What would you like to do?",
    choices: choices
}).then(function(res){
    let choice = res.choice;
    if(choice == choices[0]){
        connection.query("select * from employee", function(err, data){
            if (err) {
                console.log(err);
                return;
            }
        
            console.log(data);
        })
    }
});
