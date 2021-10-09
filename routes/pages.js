const express = require('express'); 
const authController = require('../controllers/auth')
const {homeCtrlFunction, sellingCtrlFunction} = require('../controllers/pagesCtrlFile');
const {productsCtrlFunction} = require('../controllers/pagesCtrlFile'); //


const router = express.Router(); 

const mysql = require("mysql"); 
const db = mysql.createConnection({
    host: process.env.DATABASE_HOST, 
    user: process.env.DATABASE_USER, 
    password: process.env.DATABASE_PASSWORD, 
    database: process.env.DATABASE
}); 

// router.get('/', homeCtrlFunction); 

router.get('/', homeCtrlFunction, authController.isLoggedIn, (req, res) => { //
    res.render('index.hbs',{
        user: req.user
    });
});

router.get("/login", (req, res) => {
    res.render("login.hbs"); 
}); 

//isLoggedIn is middleware that will check if a user is logged in so they can go to their profile page
router.get("/profile", authController.isLoggedIn, (req, res) => {
    console.log(req.user); 

    if(req.user){
        res.render('profile.hbs', {
            user: req.user //to get user's name in their profile page
        }); 
    } else {
        res.redirect('/login'); 
    }
}); 
// router.get("/selling", sellingCtrlFunction);

router.get("/selling", (req, res) => {
    const { brand, name, size, price, quantity} = req.body; 
    db.query('SELECT * FROM Products ORDER BY name ASC', (error, results) => {

        if(error){
            console.log(error); 
        } 

        const sneakers = []; 

        for(let i = 0; i<results.length; i++){
            sneakers[i] = results[i]; 
        }

        res.render("selling.hbs", {  //selling.hbs
            sneakers: sneakers
        });

    }); 
}); 

// router.get("/signin", (req, res) => {
//     res.render("login"); 
// }); 


module.exports = router; 