const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY)

exports.checkoutCtrlFunction = async (req, res) => {
    try{
        console.log(req.body.products); 
        const productsFromFrontend = req.body.products; 

        function productsToBuy(){
            let products = []; 

            productsFromFrontend.forEach(singleProd => {
                products.push({
                    name: singleProd.name, 
                    images: [singleProd.image],
                    amount: singleProd.price * 100, 
                    currency: 'usd', 
                    quantity: singleProd.inCart

                })
            })
            console.log(products);
            return products; 
        }

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