const express = require('express'); 
const authController = require('../controllers/auth'); 

const router = express.Router(); 

router.post('/login', authController.login); //login function is in controllers/auth.js

router.post('/signin', authController.signin); //signin function is in controllers/auth.js

router.get('/logout', authController.logout); //logout function to logout user





module.exports = router; 