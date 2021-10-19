const mysql = require('mysql'); 
const db = mysql.createConnection({
    host: process.env.DATABASE_HOST, 
    user: process.env.DATABASE_USER, 
    password: process.env.DATABASE_PASSWORD, 
    database: process.env.DATABASE
}); 

db.connect( (error) => { //in case there is an error in connecting to database
    if(error){
        console.log(error)
    } else {
        console.log("MYSQL Connected....")
    }
})

module.exports = db; 