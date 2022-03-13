const nodemailer = require('nodemailer'); 
const { htmlToText } = require('html-to-text');
const pug = require('pug'); 
const path = require('path'); 
const fs = require('fs'); 
const handlebars = require('handlebars'); 

//const emailTemplateSource = fs.readFileSync(path.join(__dirname, '../views/email/htmlEmail.hbs'), 'utf8')

//const mailgunAuth = {
//	 auth: {
//                user: process.env.SENDINBLUE_USERNAME,
//                pass: process.env.SENDINBLUE_PASSWORD
//            }
//}

//const smtpTransport = nodemailer.c
module.exports = class Email {
    constructor(user, products, totalPrice){
//       constructor(user){
        this.to = user.email 
        this.firstName = user.name.split(" ")[0];
        this.products = products; 
        this.totalPrice = totalPrice; 
        this.from = `NYCKiqs support@nyckiqs.live`
    }

    newTransport() {
        return nodemailer.createTransport({
            service: 'SendinBlue', 
            auth: {
                user: process.env.SENDINBLUE_USERNAME, 
                pass: process.env.SENDINBLUE_PASSWORD
            }
        })
    }

    async send(template, subject){
        const html = pug.renderFile(path.join(__dirname, `../views/email/${template}.pug`), {

//	   const html = fs.readFileSync(path.join(__dirname, `../views/email/${template}.hbs`), {
	//   const html = fs.readFileSync(path.join(__dirname, '../views/email/htmlEmail.hbs'), {

            firstName: this.firstName, 
            products: this.products, 
            subject: subject, 
            totalPrice: this.totalPrice / 100
        })

        const emailOptions = {
            from: this.from, 
            to: this.to, 
            subject: subject, 
            html: html, 
            text: htmlToText(html)
        }

        await this.newTransport().sendMail(emailOptions); 
        console.log("Email was sent...")
    }

    async sendThankYou(){
        await this.send('thankyouEmail', 'NYCKiqs - Purchase Confirmation')
    }
}
