const mysql = require("mysql"); 
const jwt = require('jsonwebtoken'); 
const bcrypt = require('bcryptjs'); //used for password encryption
const { promisify } = require('util'); 

const db = mysql.createConnection({
    host: process.env.DATABASE_HOST, 
    user: process.env.DATABASE_USER, 
    password: process.env.DATABASE_PASSWORD, 
    database: process.env.DATABASE
}); 

exports.signin = async (req, res) => {
    try {

        const email = req.body.email1; 
        const password = req.body.password1; 

        db.query("SELECT * FROM Users WHERE email = ?", [email], async (error, results) => {
            // if(err) throw err; 
            if(results[0]){ //if email matches
                Object.keys(results).forEach(function(key) {
                    var row = results[key]; 

                    if (bcrypt.compareSync(password, row.password)){ //check if password matches
                        console.log('matched'); 
                        const id = results[0].id; 

                        const token = jwt.sign({ id: id }, process.env.JWT_SECRET, {
                            expiresIn: process.env.JWT_EXPIRES_IN 
                        }); //creating unique token for user

                        console.log("the token is: " + token); 

                        const cookieOptions = {
                            expires: new Date(
                                Date.now() + process.env.JWT_COOKIE_EXPIRES * 24 * 60 * 60 * 1000
                                //expires current date plus the data specified in env file, converted to miliseconds
                            ), 
                            httpOnly: true
                        }
                        res.cookie('jwt', token, cookieOptions); 
                        res.status(200).redirect("/profile"); 
                    } else {
                        console.log('no match'); //if password doesnt match
                        return res.status(401).render('login.', {
                            message1: 'Incorrect Credentials'
                       });
                    } 
                }); 
            } else {
                return res.status(401).render('login', { //if email doesnt match
                    message1: 'Incorrect Credentials'
               });
            }
        }); 
    } catch (error) {
        console.log(error); 
    }
}


exports.login = (req, res) => { //when clicked sign up, this will happen: 
    //console.log(req.body);     

    const { name, email, password, passwordConfirm } = req.body; 

    db.query('SELECT email FROM Users WHERE email = ?', [email], async (error, results) => { //to avoid sql injections
        if(error){
            console.log(error);
        } 

        if (results.length > 0) { //if that email already exists
            return res.render('login', { //send the following message to the login file
                message: 'That email is already in use'
            })
        } else if(password !== passwordConfirm) { //password must match confirmed password

            return res.render('login', {
                message: 'Passwords do not match, please sign up again'
            }); 
        }

        let hashedPassword = await bcrypt.hash(password, 8); //to hash password
        console.log(hashedPassword); 

        db.query('INSERT INTO Users SET ?', {name: name, email: email, password: hashedPassword}, (error, results) =>{
            //(db column name, field name)
            //insert form data into Users table in database
            if(error){
                console.log(error); 
            } else {
                return res.render('login', {
                    message: 'User registered'
                });
            }
        }); 
    }) 
}

exports.isLoggedIn = async (req, res, next) => {
    console.log(req.cookies); //to see if we already have cookies in browser
    if(req.cookies.jwt){
        try {
            //verify token to see if it exists
            const decoded = await promisify(jwt.verify)(req.cookies.jwt, process.env.JWT_SECRET); 
            console.log(decoded); 

            //check if user exists in database
            db.query('SELECT * FROM Users WHERE id = ?', [decoded.id], (error, result) =>{
                console.log(result); 

                if(!result){
                    return next(); 
                }

                // req.user = result = result[0]; 
                req.user = result[0];
                return next(); 

            });
        } catch (error){
            console.log(error); 
            return next(); 
        }
    } else {

        next(); 
    }
}

exports.logout = async (req, res) => {
    res.cookie('jwt', 'logout', {
        expires: new Date(Date.now() + 2 *1000),
        httpOnly: true
    }); 
    //remove user cookie in 2 seconds after clicked logout

    res.status(200).redirect('/'); 
}

