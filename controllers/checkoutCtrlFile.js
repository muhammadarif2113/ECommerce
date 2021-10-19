const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);
const Email = require('../utils/email'); 
const db = require('../db'); 

exports.checkoutCtrlFunction = async (req, res) => {
    try{
        console.log(req.body.products); 
        const productsFromFrontend = req.body.products; 

        function productsToBuy(){
            let products = []; 

            productsFromFrontend.forEach(singleProd => {
                products.push({
                    name: singleProd.name, 
                    description: singleProd.size,
                    images: [singleProd.image],
                    amount: singleProd.price * 100, 
                    currency: 'usd', 
                    quantity: singleProd.inCart,
                })
            })
            return products; 
        }

        console.log(productsToBuy())

        const session = await stripe.checkout.sessions.create({
            payment_method_types: ['card'], 
            success_url: `${req.protocol}://${req.get('host')}/checkout/success`,
            cancel_url: `${req.protocol}://${req.get('host')}/selling`,
            shipping_address_collection: {
                allowed_countries: ['US', 'GB']
            }, 
            line_items: productsToBuy()

        });

        res.status(200).json({
            status: "success", 
            session: session
        })
    } catch (error) {
        console.log(error);
    }
}

exports.cartSuccessFunction = (req, res) => {
    res.render('thankyouPage');
}

exports.finishOrder = async (req, res) => {
    const session = await stripe.checkout.sessions.retrieve(
        req.params.id, {
            expand: ['line_items.data.price.product']
        }
    )

    console.log("My payment was: "); 
    console.log(session); 

    if(session.payment_status === "paid"){

        const purchasedProducts = session.line_items.data.map(products => (
            {
                productName: products.price.product.name, 
                description: products.description, 
                price: products.amount_total / 100, 
                quantity: products.quantity
            }
        ))

        

        const email = session.customer_details.email 
        const name = session.shipping.name
        const city = session.shipping.address.city 
        const state = session.shipping.address.state
        const country = session.shipping.address.country
        const street = session.shipping.address.line1
        const zip = session.shipping.address.postal_code 
 
 
        let shippingQuery = `INSERT INTO Address(email, name, city, state, country, street, zip)
        VALUES("${email}","${name}", "${city}", "${state}", "${country}","${street}", "${zip}" )`;
        db.query(shippingQuery); 
        
        
        
        const id = session.id; 
        const totalAmount = session.amount_total / 100
        const shippingCustomer = session.customer

        var data = session.line_items.data; 
        var totalQuantity =0; 

        var boughtProducts = [];

        for(let i =0; i < session.line_items.data.length; i++){
             totalQuantity += data[i].quantity

    
            boughtProducts.push({
                name: session.line_items.data[i].price.product.name,
                description: session.line_items.data[i].description,
                quantity: session.line_items.data[i].quantity
            })
        }

        boughtProducts = JSON.stringify(boughtProducts).replace(/"/g, ""); 
        console.log(boughtProducts); 


        var seconds = session.line_items.data[0].price.created * 1000; 
        var today = new Date(seconds); 


        today = today.getUTCFullYear() + '-' +
            ('00' + (today.getUTCMonth()+1)).slice(-2) + '-' +
            ('00' + today.getUTCDate()).slice(-2) + ' ' + 
            ('00' + today.getUTCHours()).slice(-2) + ':' + 
            ('00' + today.getUTCMinutes()).slice(-2) + ':' + 
            ('00' + today.getUTCSeconds()).slice(-2);
        

        let orderQuery = `INSERT INTO Orders(id, email, name, products, totalQuantity, time, total, shipping)
        VALUES("${id}","${email}", "${name}", "${boughtProducts}", "${totalQuantity}","${today}","${totalAmount}", "${shippingCustomer}" )`;
        db.query(orderQuery); 


        await new Email({
            name: session.shipping.name, 
            email: session.customer_details.email
        }, purchasedProducts, session.amount_total).sendThankYou(); 

        return res.status(200).json({
            success: true
        })
    }

    res.status(200).json({
        success: false
    })
}