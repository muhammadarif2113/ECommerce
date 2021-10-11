const express = require("express"); //import express
const path = require('path'); 
const mysql = require("mysql"); 
const app = express(); //to start server with app.js 
const dotenv = require('dotenv'); 
const cookieParser = require('cookie-parser'); 

dotenv.config({ path: './.env'});


const db = mysql.createConnection({
    host: process.env.DATABASE_HOST, 
    user: process.env.DATABASE_USER, 
    password: process.env.DATABASE_PASSWORD, 
    database: process.env.DATABASE
}); 

const publicDirectory = path.join(__dirname, './public') //setting CSS and JS 
app.use(express.static(publicDirectory)); 


app.use(express.urlencoded({ extended: false })); //Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.json()); //Parse JSON bodies (as sent by API clients)
app.use(cookieParser()); //to set up cookies to use in browser

app.set('view engine', 'hbs'); //setting handlebars as viewing format
// app.set('view engine', 'ejs'); 

db.connect( (error) => { //in case there is an error in connecting to database
    if(error){
        console.log(error)
    } else {
        console.log("MYSQL Connected....")
    }
})

//Define Routes 
app.use('/', require('./routes/pages')); //require the routes in pages.js to register new user
app.use('/auth', require('./routes/auth')); //redirects to routes/auth.js
app.use('/products', require('./routes/products')); 
app.use('/checkout', require('./routes/checkout')); 



app.get('/createusers', (req, res) => {
    let sql = 'CREATE TABLE IF NOT EXISTS Users (id INT AUTO_INCREMENT,  name VARCHAR(100) CHARACTER SET utf8, email VARCHAR(100), password VARCHAR(255) CHARACTER SET utf8, PRIMARY KEY (id) )'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log(result); 
        res.send('users table created....'); 
    }); 
}); 

app.get('/createusers', (req, res) => {
    let sql = 'CREATE TABLE IF NOT EXISTS Users (id INT AUTO_INCREMENT,  name VARCHAR(100) CHARACTER SET utf8, email VARCHAR(100), password VARCHAR(255) CHARACTER SET utf8, PRIMARY KEY (id) )'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log(result); 
        res.send('users table created....'); 
    }); 
}); 

app.get('/createproducts', (req, res) => {
    let sql = 'CREATE TABLE IF NOT EXISTS Products (id INT AUTO_INCREMENT, brand VARCHAR(100), name VARCHAR(100), size INT, isUsed TINYINT(1), category VARCHAR(40), price INT, quantity INT, image VARCHAR(255), images TEXT, PRIMARY KEY(id) )'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log(result); 
        res.send('products table created....'); 
    })
}); 



app.get('/insertproducts', (req, res) => {
    let values = [ 
        ['Balenciaga', 'Balenciaga Triple White', 44, 1, 'Men', 600, 1, '/images/sneakers/balenciagatriplewhite.jpg', '/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'],
        ['Balenciaga', 'Balenciaga White Red Blue', 44, 1, 'Men', 550, 1, '/images/sneakers/balenciagawhiteredblue.jpg', '/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'],
        ['Jordan', 'Jordan 1 Turbo Green', 11, 1, 'Men',320, 1, 'images/sneakers/jordan1turbogreen.jpg',  '/images/balenciaga-triplewhite.jpg, images/jordan1-turbogreen.jpg'],
        ['Off-White', 'Off-White Converse', 11,0, 'Men',480, 1, '/images/sneakers/off-whiteconverse.jpg', '/images/offwhite-converse.jpg, /images/off-whiteconverse.jpg'], 
        ['Yeezy', 'adidas Yeezy Slide Core', 11, 0, 'Men',200, 1, '/images/sneakers/adidasyeezyslidecore.jpg', '/images/core-slide.jpg, /images/core-slide.jpg'], 
        ['Yeezy', 'adidas Yeezy Slide Pure', 11, 0, 'Men',210, 1, '/images/sneakers/adidasyeezyslidepure.jpg', '/images/core-slide.jpg, /images/core-slide.jpg'], 
        ['Yeezy', 'adidas Yeezy Slide Resin', 11, 0, 'Men',180, 1, '/images/sneakers/adidasyeezyslideresin.jpg', '/images/core-slide.jpg, /images/core-slide.jpg'], 
        ['Nike', 'Nike Tiffany Dunk High', 11, 0, 'Men',510, 1, '/images/sneakers/niketiffanydunkhigh.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Adidas', 'Adidas South Park', 11, 0, 'Men',250, 1, '/images/sneakers/adidassouthpark.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Balenciaga', 'Balenciaga Track Blue', 11, 0, 'Women', 500, 1, '/images/sneakers/balenciagatrackblue.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Balenciaga', 'Balenciaga White Arena', 11, 1, 'Men',240, 1, '/images/sneakers/balenciagawhitearena.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Bape', 'Bapesta Blue Patch', 11, 0, 'Men',360, 1, '/images/sneakers/bapestabluepatch.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Bape', 'Bapesta Camo Pink', 11, 0, 'Men',340, 1, '/images/sneakers/bapestacamopink.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Bape', 'Bapesta Camo Purple', 11, 0, 'Men',340, 1, '/images/sneakers/bapestacamopurple.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Christian Louboutin', 'Christian Louboutin Louis Spikes', 44, 1, 'Men',400, 1, '/images/sneakers/christianlouboutinlouisspikes.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Court Purple', 9.5, 1, 'Men',260, 1, '/images/sneakers/jordan1courtpurple.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Gold Toe', 11, 1, 'Men',300, 1, '/images/sneakers/jordan1goldtoe.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Metallic Gold', 9, 0, 'Men',200, 1, '/images/sneakers/jordan1metallicgold.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Pine Green', 12, 1, 'Men',240, 1, '/images/sneakers/jordan1pinegreen.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Silver Toe', 10.5, 0, 'Women', 260, 1, '/images/sneakers/jordan1silvertoe.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Volt Gold', 11.5, 0, 'Men',200, 1, '/images/sneakers/jordan1voltgold.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Cement Black', 12, 1, 'Men',250, 1, '/images/sneakers/jordan3cementblack.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Fire Red', 9, 0, 'Men',220, 1, '/images/sneakers/jordan3firered.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Mocha', 9, 1, 'Men',170, 1, '/images/sneakers/jordan3mocha.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Tinker Black Cement', 9.5, 1, 'Men',140, 1, '/images/sneakers/jordan3tinkerblackcement.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 UNC', 10, 1, 'Men',280, 1, '/images/sneakers/jordan3unc.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Black Cat', 10, 1, 'Men',320, 1, '/images/sneakers/jordan4blackcat.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Fire Red', 8.5, 0, 'Men',360, 1, '/images/sneakers/jordan4firered.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Hot Punch', 9.5, 0, 'Women', 260, 1, '/images/sneakers/jordan4hotpunch.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Bordeaux', 11, 1, 'Men',250, 1, '/images/sneakers/jordan6bordeaux.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Carmine', 10, 0, 'Men',250, 1, '/images/sneakers/jordan6carmine.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Gatorade', 11.5, 0, 'Men',250, 1, '/images/sneakers/jordan6gatorade.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Sport Blue', 11.5, 0, 'Men',250, 1, '/images/sneakers/jordan6sportblue.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Tinker', 11, 0, 'Men',200, 1, '/images/sneakers/jordan6tinker.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 11 Jubilee', 11.5, 0, 'Men',280, 1, '/images/sneakers/jordan11jubilee.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Dunk Low Blue Coast', 10.5, 0, 'Women', 340, 1, '/images/sneakers/nikedunklowbluecoast.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Dunk Low Ceramic', 10.5, 0, 'Men', 280, 1, '/images/sneakers/nikedunklowceramic.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Sacai Pine Green', 10, 1, 'Men',350, 1, '/images/sneakers/sacaipinegreen.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Yeezy', 'Yeezy 500 Blush', 11, 1, 'Men',250, 1, '/images/sneakers/yeezy500blush.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Yeezy', 'adidas Yeezy Slide Bone', 14, 1, 'Men',280, 1, '/images/sneakers/adidasyeezyslidebone.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 12 Taxi', 10.5, 0, 'Men',550, 1, '/images/sneakers/jordan12taxi.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Air Force 1 Kith', 10.5, 0, 'Men',180, 1, '/images/sneakers/airforce1kith.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Air Force 1 Skeleton', 11, 1, 'Men',180, 1, '/images/sneakers/airforce1skeleton.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Air Max 95 Pink', 11, 0, 'Men',275, 1, '/images/sneakers/airmax95pink.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['CDG', 'CDG Blazer', 7.5, 0, 'Men',255, 1, '/images/sneakers/cdgblazer.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Dunk High Varsity Black', 11, 1, 'Men',250, 1, '/images/sneakers/nikedunkhighvarsityblack.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Fearless', 10, 1, 'Men',290, 1, '/images/sneakers/jordan1fearless.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Mid Chicago', 9, 0, 'Men',170, 1, '/images/sneakers/jordan1midchicago.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Pure White', 12, 0, 'Men',300, 1, '/images/sneakers/jordan3purewhite.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Cool Grey', 9, 1, 'Men',230, 1, '/images/sneakers/jordan4coolgrey.jpg', ''],
        ['Jordan', 'Jordan 5 Fire Red', 11.5, 0, 'Men',220, 1, '/images/sneakers/jordan5firered.jpg', ''],
        ['Jordan', 'Jordan 7 Cigar', 10.5, 1, 'Men',150, 1, '/images/sneakers/jordan7cigar.jpg', ''],
        ['Jordan', 'Jordan 9 Kobe', 5.5, 0, 'Men',250, 1, '/images/sneakers/jordan9kobe.jpg', ''],
        ['Jordan', 'Jordan 9 Racer Blue', 10.5, 0, 'Men',280, 1, '/images/sneakers/jordan9racerblue.jpg', ''],
        ['Jordan', 'Jordan 11 Bred', 7, 1, 'Men',260, 1, '/images/sneakers/jordan11bred.jpg', ''],
        ['Jordan', 'Jordan 11 Low Legend Blue', 11.5, 0, 'Men',220, 1, '/images/sneakers/jordan11lowlegendblue.jpg', ''],
        ['Jordan', 'Jordan 12 Reverse Flu Game', 10.5, 1, 'Men',200, 1, '/images/sneakers/jordan12reverseflugame.jpg', ''],
        ['Nike', 'Nike KD 4 Easter', 10, 1, 'Men',250, 1, '/images/sneakers/nikekd4easter.jpg', ''],
        ['Nike', 'Nike KD 4 Galaxy', 10, 1, 'Men',350, 1, '/images/sneakers/nikekd4galaxy.jpg', ''],
        ['Nike', 'Nike Dunk High Bodega', 8.5, 0, 'Men',220, 1, '/images/sneakers/nikedunkhighbodega.jpg', ''],
        ['Nike', 'Nike Dunk High Notre', 8.5, 0, 'Men',200, 1, '/images/sneakers/nikedunkhighnotre.jpg', ''],
        ['Nike', 'Nike Dunk Low Barely Green', 6.5, 0, 'Men',150, 1, '/images/sneakers/nikedunklowbarelygreen.jpg', ''],
        ['Yeezy', 'Yeezy 350 Bred', 10, 1, 'Men',330, 1, '/images/sneakers/yeezy350bred.jpg', ''],
        ['Yeezy', 'Yeezy 350 Zyon', 12, 0, 'Men',235, 1, '/images/sneakers/yeezy350zyon.jpg', ''],
        ['Yeezy', 'Yeezy 500 Salt', 8, 0, 'Men',360, 1, '/images/sneakers/yeezy500salt.jpg', ''],


    ]; 
    let sql = 'INSERT INTO Products (brand, name, size, isUsed, category, price, quantity, image, images) VALUES ?'; 
    let query = db.query(sql, [values], (err, result) => {
        if(err) throw err; 
         console.log(result); 
         res.send('inserted'); 
    });
});


app.get('/deleteinventory', (req, res) => {
    let sql = 'DROP TABLE Products'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log('table deleted'); 
        res.send('table deleted')
    });
}); 


app.listen(5026, () => {
    console.log("server started on port 5023"); 
})