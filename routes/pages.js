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

        const sneaker = []; 

        for(let i = 0; i<results.length; i++){
            sneaker[i] = results[i]; 
        }

        res.render("selling.hbs", {  //selling.hbs
            sneaker: sneaker
        });

    }); 
}); 

router.get("/sellingAdidas", (req, res) => {
    const { brand, name, size, price, quantity} = req.body; 
    db.query('SELECT * FROM Products WHERE brand LIKE ? OR brand LIKE ? ORDER BY name ASC', ['Yeezy', 'Adidas'], (error, results) => {

        if(error){
            console.log(error); 
        } 

        const sneaker = []; 

        for(let i = 0; i<results.length; i++){
            sneaker[i] = results[i]; 
        }

        res.render("sellingAdidas.hbs", {  //selling.hbs
            sneaker: sneaker
        });

    }); 
}); 

router.get("/sellingJordan", (req, res) => {
    const { brand, name, size, price, quantity} = req.body; 
    db.query('SELECT * FROM Products WHERE brand LIKE ? ORDER BY name ASC', ['Jordan'], (error, results) => {

        if(error){
            console.log(error); 
        } 

        const sneaker = []; 

        for(let i = 0; i<results.length; i++){
            sneaker[i] = results[i]; 
        }

        res.render("sellingJordan.hbs", {  //selling.hbs
            sneaker: sneaker
        });

    }); 
}); 

router.get("/sellingNike", (req, res) => {
    const { brand, name, size, price, quantity} = req.body; 
    db.query('SELECT * FROM Products WHERE brand LIKE ? ORDER BY name ASC', ['Nike'], (error, results) => {

        if(error){
            console.log(error); 
        } 

        const sneaker = []; 

        for(let i = 0; i<results.length; i++){
            sneaker[i] = results[i]; 
        }

        res.render("sellingNike.hbs", {  //selling.hbs
            sneaker: sneaker
        });

    }); 
});

router.get("/sellingDesigner", (req, res) => {
    const { brand, name, size, price, quantity} = req.body; 
    db.query('SELECT * FROM Products WHERE brand LIKE ? OR brand LIKE ? OR brand LIKE ? OR brand LIKE ? OR brand LIKE ? OR brand LIKE ? ORDER BY name ASC', ['Balenciaga', 'Off-White', 'Christian Louboutin', 'CDG', 'Converse', 'Bape'], (error, results) => {

        if(error){
            console.log(error); 
        } 

        const sneaker = []; 

        for(let i = 0; i<results.length; i++){
            sneaker[i] = results[i]; 
        }

        res.render("sellingDesigner.hbs", {  //selling.hbs
            sneaker: sneaker
        });
    }); 
});

// router.get("/signin", (req, res) => {
//     res.render("login"); 
// }); 


module.exports = router; 