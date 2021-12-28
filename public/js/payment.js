//const host = 'http://localhost:5035'; 

 const host = 'http://nyckiqs.live';

const stripe = Stripe('pk_test_51Jh56VBhk9MpEC2IBNkdJuIbFx7OqggTgPvM9hWXs7svVhI8EGpC44IKnKTd2zbvGC1j34BEVIuO4O72fptb2pa800wP2A9gMF');

const checkout = document.getElementById("cart-checkout");

checkout.addEventListener('click', ()=>{
    console.log('clicked'); 
    checkout.textContent="Processing..."
    buyProducts(myProducts())
}); 

function myProducts(){
    const getProducts = JSON.parse(localStorage.getItem('productsInCart'));
    
    const products = []; 
    for (const property in getProducts){
        products.push({
            name: getProducts[property].name,
            size: getProducts[property].size,
            tag: getProducts[property].tag, 
            price: getProducts[property].price,
            inCart: getProducts[property].inCart,
            image: getProducts[property].image
        })
    }
    return products; 
}

async function buyProducts(cartProducts){
    try{

        const body = JSON.stringify({
            products: cartProducts
        })

        const response = await axios.post(`${host}/checkout`, body, {
            headers: {
                Accept: "application/json",
                "Content-Type": "application/json"
            }
        })

        console.log(response.data); 

        localStorage.setItem('sessionId', response.data.session.id);

        await stripe.redirectToCheckout({
            sessionId: response.data.session.id
        })

    } catch (error){
        console.log(error); 
    }
}
