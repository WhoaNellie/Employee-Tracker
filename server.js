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
    console.log("connected as id " + connection.threadId);
});