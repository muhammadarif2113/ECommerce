const express = require("express"); //import express
const path = require('path'); 
const mysql = require("mysql"); 
const app = express(); //to start server with app.js 
const dotenv = require('dotenv'); 
const cookieParser = require('cookie-parser'); 
const hbs = require('hbs'); 
const favicon = require('serve-favicon'); 

// const exphbs = require('express-handlebars'); 

// const db = require('./db'); 

dotenv.config({ path: './.env'});


const db = mysql.createConnection({
    host: process.env.DATABASE_HOST, 
    user: process.env.DATABASE_USER, 
    password: process.env.DATABASE_PASSWORD, 
    database: process.env.DATABASE
}); 

const publicDirectory = path.join(__dirname, './public') //setting CSS and JS 

app.use(express.static(publicDirectory)); 

app.use(favicon(path.join(__dirname, './public/images/favicon.ico')));


app.use(express.urlencoded({ extended: false })); //Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.json()); //Parse JSON bodies (as sent by API clients)
app.use(cookieParser()); //to set up cookies to use in browser

app.set('view engine', 'hbs'); //setting handlebars as viewing format

// hbs.registerHelper('equal', function(arg1){
//     if(arg1 == 20){
//         return;
//     }
// }); 


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
// app.use('/products', require('./routes/products')); 
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

app.get('/createorders', (req, res) => {
    let sql = 'CREATE TABLE IF NOT EXISTS Orders (id VARCHAR(255) CHARACTER SET utf8,  email VARCHAR(100), name VARCHAR(100), products VARCHAR(255), totalQuantity INT, time DATETIME, total INT,  shipping VARCHAR(255) )'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log(result); 
        res.send('users table created....'); 
    }); 
}); 

app.get('/createaddress', (req, res) => {
    let sql = 'CREATE TABLE IF NOT EXISTS Address (shipping VARCHAR(255), email VARCHAR(100), name VARCHAR(100), city VARCHAR(100), state CHAR(2), country VARCHAR(25), street VARCHAR(255), zip INT)'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log(result); 
        res.send('users table created....'); 
    }); 
}); 



app.get('/insertproducts', (req, res) => {
    let values = [ 
        ['Balenciaga', 'Balenciaga Triple White', 44, 1, 'Men', 600, 1, '/images/sneaker/balenciagatriplewhite.jpg', '/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'],
        ['Balenciaga', 'Balenciaga White Red Blue', 44, 1, 'Men', 550, 1, '/images/sneaker/balenciagawhiteredblue.jpg', '/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'],
        ['Jordan', 'Jordan 1 Turbo Green', 11, 1, 'Men',320, 1, 'images/sneaker/jordan1turbogreen.jpg',  '/images/balenciaga-triplewhite.jpg, images/jordan1-turbogreen.jpg'],
        ['Off-White', 'Off-White Converse', 11,0, 'Men',480, 1, '/images/sneaker/off-whiteconverse.jpg', '/images/offwhite-converse.jpg, /images/off-whiteconverse.jpg'], 
        ['Yeezy', 'adidas Yeezy Slide Core', 11, 0, 'Men',200, 1, '/images/sneaker/adidasyeezyslidecore.jpg', '/images/core-slide.jpg, /images/core-slide.jpg'], 
        ['Yeezy', 'adidas Yeezy Slide Pure', 11, 0, 'Men',210, 1, '/images/sneaker/adidasyeezyslidepure.jpg', '/images/core-slide.jpg, /images/core-slide.jpg'], 
        ['Yeezy', 'adidas Yeezy Slide Resin', 11, 0, 'Men',180, 1, '/images/sneaker/adidasyeezyslideresin.jpg', '/images/core-slide.jpg, /images/core-slide.jpg'], 
        ['Nike', 'Nike Tiffany Dunk High', 11, 0, 'Men',510, 1, '/images/sneaker/niketiffanydunkhigh.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Adidas', 'Adidas South Park', 11, 0, 'Men',250, 1, '/images/sneaker/adidassouthpark.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Balenciaga', 'Balenciaga Track Blue', 11, 0, 'Women', 500, 1, '/images/sneaker/balenciagatrackblue.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Balenciaga', 'Balenciaga Arena High White', 11, 1, 'Men',240, 1, '/images/sneaker/balenciagaarenahighwhite.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Bape', 'Bapesta Blue Patch', 11, 0, 'Men',360, 1, '/images/sneaker/bapestabluepatch.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Bape', 'Bapesta Camo Pink', 11, 0, 'Men',340, 1, '/images/sneaker/bapestacamopink.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Bape', 'Bapesta Camo Purple', 11, 0, 'Men',340, 1, '/images/sneaker/bapestacamopurple.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Christian Louboutin', 'Christian Louboutin Louis Spikes', 44, 1, 'Men',400, 1, '/images/sneaker/christianlouboutinlouisspikes.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Court Purple', 9.5, 1, 'Men',260, 1, '/images/sneaker/jordan1courtpurple.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Gold Toe', 11, 1, 'Men',300, 1, '/images/sneaker/jordan1goldtoe.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Metallic Gold', 9, 0, 'Men',200, 1, '/images/sneaker/jordan1metallicgold.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Silver Toe', 10.5, 0, 'Women', 260, 1, '/images/sneaker/jordan1silvertoe.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Volt Gold', 11.5, 0, 'Men',200, 1, '/images/sneaker/jordan1voltgold.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Cement Black', 12, 1, 'Men',250, 1, '/images/sneaker/jordan3cementblack.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Fire Red', 9, 0, 'Men',220, 1, '/images/sneaker/jordan3firered.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Mocha', 9, 1, 'Men',170, 1, '/images/sneaker/jordan3mocha.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Tinker Black Cement', 9.5, 1, 'Men',140, 1, '/images/sneaker/jordan3tinkerblackcement.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 UNC', 10, 1, 'Men',280, 1, '/images/sneaker/jordan3unc.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Black Cat', 10, 1, 'Men',320, 1, '/images/sneaker/jordan4blackcat.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Fire Red 2021', 8.5, 0, 'Men',360, 1, '/images/sneaker/jordan4firered2021.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Hot Punch', 9.5, 0, 'Women', 260, 1, '/images/sneaker/jordan4hotpunch.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Bordeaux', 11, 1, 'Men',250, 1, '/images/sneaker/jordan6bordeaux.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Carmine', 10, 0, 'Men',250, 1, '/images/sneaker/jordan6carmine.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Gatorade', 11.5, 0, 'Men',250, 1, '/images/sneaker/jordan6gatorade.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Sport Blue', 11.5, 0, 'Men',250, 1, '/images/sneaker/jordan6sportblue.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 6 Tinker', 11, 0, 'Men',200, 1, '/images/sneaker/jordan6tinker.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 11 Jubilee', 11.5, 0, 'Men',280, 1, '/images/sneaker/jordan11jubilee.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Dunk Low Blue Coast', 10.5, 0, 'Women', 340, 1, '/images/sneaker/nikedunklowbluecoast.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Dunk Low Ceramic', 10.5, 0, 'Men', 280, 1, '/images/sneaker/nikedunklowceramic.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Sacai Pine Green', 10, 1, 'Men',350, 1, '/images/sneaker/sacaipinegreen.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Yeezy', 'adidas Yeezy 500 Blush', 11, 1, 'Men',250, 1, '/images/sneaker/adidasyeezy500blush.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Yeezy', 'adidas Yeezy Slide Bone', 14, 1, 'Men',280, 1, '/images/sneaker/adidasyeezyslidebone.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 12 Taxi', 10.5, 0, 'Men',550, 1, '/images/sneaker/jordan12taxi.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Air Force 1 Kith', 10.5, 0, 'Men',180, 1, '/images/sneaker/nikeairforce1kith.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Air Force 1 Skeleton', 11, 1, 'Men',180, 1, '/images/sneaker/nikeairforce1skeleton.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Air Max 95 Pink', 11, 0, 'Men',275, 1, '/images/sneaker/nikeairmax95pink.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['CDG', 'CDG Blazer', 7.5, 0, 'Men',255, 1, '/images/sneaker/cdgblazer.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Nike', 'Nike Dunk High Varsity Black', 11, 1, 'Men',250, 1, '/images/sneaker/nikedunkhighvarsityblack.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Fearless', 10, 1, 'Men',290, 1, '/images/sneaker/jordan1fearless.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 1 Mid Chicago', 9, 0, 'Men',170, 1, '/images/sneaker/jordan1midchicago.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 3 Pure White', 12, 0, 'Men',300, 1, '/images/sneaker/jordan3purewhite.jpg', '/images/DSC_1014.jpg, images/DSC_1014.jpg'],
        ['Jordan', 'Jordan 4 Cool Grey', 9, 1, 'Men',230, 1, '/images/sneaker/jordan4coolgrey.jpg', ''],
        ['Jordan', 'Jordan 5 Fire Red', 11.5, 0, 'Men',220, 1, '/images/sneaker/jordan5firered.jpg', ''],
        ['Jordan', 'Jordan 7 Cigar', 10.5, 1, 'Men',150, 1, '/images/sneaker/jordan7cigar.jpg', ''],
        ['Jordan', 'Jordan 9 Kobe', 5.5, 0, 'Men',250, 1, '/images/sneaker/jordan9kobe.jpg', ''],
        ['Jordan', 'Jordan 9 Racer Blue', 10.5, 0, 'Men',280, 1, '/images/sneaker/jordan9racerblue.jpg', ''],
        ['Jordan', 'Jordan 11 Bred', 7, 1, 'Men',260, 1, '/images/sneaker/jordan11bred.jpg', ''],
        ['Jordan', 'Jordan 11 Low Legend Blue', 11.5, 0, 'Men',220, 1, '/images/sneaker/jordan11lowlegendblue.jpg', ''],
        ['Nike', 'Nike KD 4 Easter', 10, 1, 'Men',250, 1, '/images/sneaker/nikekd4easter.jpg', ''],
        ['Nike', 'Nike KD 4 Galaxy', 10, 1, 'Men',350, 1, '/images/sneaker/nikekd4galaxy.jpg', ''],
        ['Nike', 'Nike Dunk High Bodega', 8.5, 0, 'Men',220, 1, '/images/sneaker/nikedunkhighbodega.jpg', ''],
        ['Nike', 'Nike Dunk High Notre', 8.5, 0, 'Men',200, 1, '/images/sneaker/nikedunkhighnotre.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Bred', 10, 1, 'Men',330, 1, '/images/sneaker/adidasyeezy350bred.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Zyon', 12, 0, 'Men',235, 1, '/images/sneaker/adidasyeezy350zyon.jpg', ''],
        ['Yeezy', 'adidas Yeezy 500 Salt', 8, 0, 'Men',360, 1, '/images/sneaker/adidasyeezy500salt.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Citrin', 9, 1, 'Men',150, 1, '/images/sneaker/adidasyeezy350citrin.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Cream', 12, 0, 'Men',310, 1, '/images/sneaker/adidasyeezy350cream.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Mono Ice', 4.5, 0, 'Men',280, 1, '/images/sneaker/adidasyeezy350monoice.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Pirate Black', 10, 1, 'Men',600, 1, '/images/sneaker/adidasyeezy350pirateblack.jpg', ''],
        ['Yeezy', 'adidas Yeezy 350 Sand Taupe', 13, 0, 'Men',240, 1, '/images/sneaker/adidasyeezy350sandtaupe.jpg', ''],
        ['Yeezy', 'adidas Yeezy 500 Enflame', 6, 0, 'Men',260, 1, '/images/sneaker/adidasyeezy500enflame.jpg', ''],
        ['Yeezy', 'adidas Yeezy 700 Analog', 11, 1, 'Men',280, 1, '/images/sneaker/adidasyeezy700analog.jpg', ''],
        ['Yeezy', 'adidas Yeezy 700 V3 Alvah', 10, 1, 'Men',260, 1, '/images/sneaker/adidasyeezy700v3alvah.jpg', ''],
        ['Yeezy', 'adidas Yeezy 700 V3 Arzareth', 10, 0, 'Men',320, 1, '/images/sneaker/adidasyeezy700v3arzareth.jpg', ''],
        ['Yeezy', 'adidas Yeezy 700 V3 Kyanite', 7, 0, 'Men',260, 1, '/images/sneaker/adidasyeezy700v3kyanite.jpg', ''],
        ['Yeezy', 'adidas Yeezy 700 V3 Safflower', 7.5, 0, 'Men',280, 1, '/images/sneaker/adidasyeezy700v3safflower.jpg', ''],
        ['Yeezy', 'adidas Yeezy QNTM Frozen Blue', 10, 0, 'Men',280, 1, '/images/sneaker/adidasyeezyqntmfrozenblue.jpg', ''],
        ['Nike', 'Nike Air Max 97 Metallic Gold ', 7, 0, 'Women',280, 1, '/images/sneaker/nikeairmax97metallicgold.jpg', ''],
        ['Balenciaga', 'Balenciaga Arena High Grey', 9, 1, 'Men',220, 1, '/images/sneaker/balenciagaarenahighgrey.jpg', ''],
        ['CDG', 'CDG VANS', 8, 0, 'Men',180, 1, '/images/sneaker/cdgvans.jpg', ''],
        ['Converse', 'Converse FEAR OF GOD Essentials', 10, 0, 'Men',220, 1, '/images/sneaker/conversefearofgodessentials.jpg', ''],
        ['Jordan', 'Jordan 1 AMAC Custom', 12, 0, 'Men', 320, 1, '/images/sneaker/jordan1amaccustom.jpg', ''],
        ['Jordan', 'Jordan 1 Court Purple OG', 11, 1, 'Men', 350, 1, '/images/sneaker/jordan1courtpurpleog.jpg', ''],
        ['Jordan', 'Jordan 1 Japan Neutral Grey', 11, 0, 'Men', 350, 1, '/images/sneaker/jordan1japanneutralgrey.jpg', ''],
        ['Jordan', 'Jordan 1 Patina', 12, 0, 'Men', 200, 1, '/images/sneaker/jordan1patina.jpg', ''],
        ['Jordan', 'Jordan 1 Pollen', 12, 0, 'Men', 210, 1, '/images/sneaker/jordan1pollen.jpg', ''],
        ['Jordan', 'Jordan 1 Royal 2017', 11, 1, 'Men', 290, 1, '/images/sneaker/jordan1royal2017.jpg', ''],
        ['Jordan', 'Jordan 3 White Cement 2011', 12, 1, 'Men', 220, 1, '/images/sneaker/jordan3whitecement2011.jpg', ''],
        ['Jordan', 'Jordan 4 Neon', 10.5, 1, 'Men', 210, 1, '/images/sneaker/jordan4neon.jpg', ''],
        ['Jordan', 'Jordan 4 Tour Yellow OG 2006', 12, 1, 'Men', 210, 1, '/images/sneaker/jordan4touryellowog2006.jpg', ''],
        ['Jordan', 'Jordan 5 Grape', 8, 1, 'Men', 160, 1, '/images/sneaker/jordan5grape.jpg', ''],
        ['Jordan', 'Jordan 5 Raging Bull', 11.5, 0, 'Men', 240, 1, '/images/sneaker/jordan5ragingbull.jpg', ''],
        ['Jordan', 'Jordan 5 Red Suede', 11, 0, 'Men', 240, 1, '/images/sneaker/jordan5redsuede.jpg', ''],
        ['Jordan', 'Jordan 6 Infared 2019', 11, 0, 'Men', 240, 1, '/images/sneaker/jordan6infared2019.jpg', ''],
        ['Jordan', 'Jordan 6 Spizike', 9, 0, 'Men', 240, 1, '/images/sneaker/jordan6spizike.jpg', ''],
        ['Jordan', 'Jordan 6 Washed Denim', 9, 1, 'Men', 150, 1, '/images/sneaker/jordan6washeddenim.jpg', ''],
        ['Jordan', 'Jordan 8 Chrome', 10, 1, 'Men', 180, 1, '/images/sneaker/jordan8chrome.jpg', ''],
        ['Jordan', 'Jordan 8 Cool Grey', 9.5, 1, 'Men', 210, 1, '/images/sneaker/jordan8coolgrey.jpg', ''],
        ['Jordan', 'Jordan 8 Tinker Air Raid', 9, 1, 'Men', 160, 1, '/images/sneaker/jordan8tinkerairraid.jpg', ''],
        ['Jordan', 'Jordan 9 University Blue', 8, 0, 'Women', 240, 1, '/images/sneaker/jordan9universityblue.jpg', ''],
        ['Jordan', 'Jordan 10 Bulls Over Broadway', 10, 0, 'Men', 150, 1, '/images/sneaker/jordan10bullsoverbroadway.jpg', ''],
        ['Jordan', 'Jordan 11 Concord 2018', 10, 0, 'Men', 390, 1, '/images/sneaker/jordan11concord2018.jpg', ''],
        ['Jordan', 'Jordan 11 Cool Grey', 9, 0, 'Men', 220, 1, '/images/sneaker/jordan11coolgrey.jpg', ''],
        ['Jordan', 'Jordan 11 Gamma', 10, 1, 'Men', 230, 1, '/images/sneaker/jordan11gamma.jpg', ''],
        ['Jordan', 'Jordan 11 Heiress', 5.5, 0, 'Women', 280, 1, '/images/sneaker/jordan11heiress.jpg', ''],
        ['Jordan', 'Jordan 11 Space Jam 2000', 10, 0, 'Men', 300, 1, '/images/sneaker/jordan11spacejam2000.jpg', ''],
        ['Jordan', 'Jordan 11 Space Jam 2009', 12, 1, 'Men', 220, 1, '/images/sneaker/jordan11spacejam2009.jpg', ''],
        ['Jordan', 'Jordan 11 Win Like 96', 11, 0, 'Men', 270, 1, '/images/sneaker/jordan11winlike96.jpg', ''],
        ['Jordan', 'Jordan 12 French Blue', 10, 1, 'Men', 170, 1, '/images/sneaker/jordan12frenchblue.jpg', ''],
        ['Jordan', 'Jordan 12 Grey University Blue', 11, 1, 'Men', 190, 1, '/images/sneaker/jordan12greyuniversityblue.jpg', ''],
        ['Jordan', 'Jordan 12 Gym Red', 10, 1, 'Men', 240, 1, '/images/sneaker/jordan12gymred.jpg', ''],
        ['Jordan', 'Jordan 12 Reverse Flu Game', 10, 0, 'Men', 200, 1, '/images/sneaker/jordan12reverseflugame.jpg', ''],
        ['Jordan', 'Jordan 12 University Blue', 6, 0, 'Women', 290, 1, '/images/sneaker/jordan12universityblue.jpg', ''],
        ['Jordan', 'Jordan 1 Pine Green', 13, 1, 'Men', 240, 1, '/images/sneaker/jordan1pinegreen.jpg', ''],
        ['Nike', 'Nike Dunk Low Barely Green', 6, 0, 'Women', 180, 1, '/images/sneaker/nikedunklowbarelygreen.jpg', ''],
        ['Nike', 'Nike Dunk Low Cobalt', 10, 0, 'Men', 180, 1, '/images/sneaker/nikedunklowcobalt.jpg', ''],
        ['Nike', 'Nike Dunk Low Undefeated 5 On It', 9.5, 0, 'Men', 190, 1, '/images/sneaker/nikedunklowundefeated5onit.jpg', ''],
        ['Jordan', 'Jordan 35 Luka Doncic', 11, 0, 'Men', 190, 1, '/images/sneaker/jordan35lukadoncic.jpg', ''],
        ['Jordan', 'Jordan 35 Smoke Grey Fear', 11, 0, 'Men', 270, 1, '/images/sneaker/jordan35smokegreyfear.jpg', ''],
        ['Jordan', 'Jordan 14 Gym Red', 10.5, 1, 'Men', 200, 1, '/images/sneaker/jordan14gymred.jpg', ''],
        ['Jordan', 'Jordan 13 Bred', 10.5, 1, 'Men', 200, 1, '/images/sneaker/jordan13bred.jpg', ''],
        ['Nike', 'Nike Air Force 1 Mid Supreme NBA ', 11, 0, 'Men', 250, 1, '/images/sneaker/nikeairforce1midsupremenba.jpg', ''],
        ['Jordan', 'Jordan 13 Altitude', 9, 1, 'Men', 200, 1, '/images/sneaker/jordan13altitude.jpg', ''],
        ['Nike', 'Nike Air Max 90 Denham', 9, 0, 'Men', 170, 1, '/images/sneaker/nikeairmax90denham.jpg', ''],
        ['Nike', 'Nike Air Max 90 Bacon', 8, 0, 'Men', 150, 1, '/images/sneaker/nikeairmax90bacon.jpg', ''],
        ['Nike', 'Nike Air Max 94 CB', 8, 0, 'Men', 150, 1, '/images/sneaker/nikeairmax94cb.jpg', ''],
        ['Nike', 'Nike Dunk High Purple Varsity', 7, 0, 'Women', 150, 1, '/images/sneaker/nikedunkhighpurplevarsity.jpg', ''],
        ['Nike', 'Nike Dunk High Varsity Maize', 9, 0, 'Men', 170, 1, '/images/sneaker/nikedunkhighvarsitymaize.jpg', ''],
        ['Nike', 'Nike SB Dunk Low Supreme Jewel', 11.5, 1, 'Men', 240, 1, '/images/sneaker/nikesbdunklowsupremejewel.jpg', ''],
        ['Nike', 'Nike Flyknit Racer Multicolor', 11, 0, 'Men', 120, 1, '/images/sneaker/nikeflyknitracermulticolor.jpg', ''],
        ['Nike', 'Nike Off-White Waffle Racer', 11.5, 1, 'Women', 190, 1, '/images/sneaker/nikeoff-whitewaffleracer.jpg', '']

    ]; 
    let sql = 'INSERT INTO Products (brand, name, size, isUsed, category, price, quantity, image, images) VALUES ?'; 
    let query = db.query(sql, [values], (err, result) => {
        if(err) throw err; 
         console.log(result); 
         res.send('inserted'); 
    });
});


app.get('/deleteinventory', (req, res) => {
    let sql = 'DROP table Address'; 
    db.query(sql, (err, result) => {
        if(err) throw err; 
        console.log('table deleted'); 
        res.send('table deleted')
    });
}); 


app.listen(80, () => {
    console.log("server started on port 5023"); 
})
