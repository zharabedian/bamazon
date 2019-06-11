var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "password",
  database: "bamazon_db"
});
//query the databse for all products
connection.query('SELECT * FROM products', 
	function(err, res) {
  	if (err) throw err;
  	for (var i = 0; i < res.length; i++) {
  		console.log(res[i].item_id + "  " + res[i].product_name +"  " + res[i].department_name + "  " + res[i].price + " \t " + res[i].stock_quantity);
    }
  startpurchase();
})
;
//functino to inquire with user what product and how many they would like to buy
function startpurchase() {
    inquirer
    .prompt([
        {
        name: "itemID",
        type: "input",
        message: "What is the ID of the product you wish to purchase?",
        },
        {
        name: "quantity",
        type: "input",
        message: "How many units would you like to buy?"
        }
    ]).then(function(inquirerResponse) {
            userAnswer = {
            item_id: parseInt(inquirerResponse.item_id),
            quantity: parseInt(inquirerResponse.quantity)
        }
        {
            checkStore(userAnswer);
        }
    })
}



          