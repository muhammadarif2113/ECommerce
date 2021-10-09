let carts = document.querySelectorAll('.add-cart'); //quickview

const addtoCart = document.querySelector(".detail__bagBtn"); 
const productList = document.querySelectorAll('.image');
const modal = document.querySelector('.modal');
const modalContent = document.querySelector('.modal__content');
const modalImg = document.querySelector('.modal__img');
const title = document.querySelector('.detail__title');
const cost = document.querySelector('.detail__price');
const size = document.querySelector('.detail__size'); 
const close = document.querySelector('.modal__close');
const category = document.querySelector('.detail__category'); 
const condition = document.querySelector('.detail__condition'); 

const productImg = document.querySelector('.product_img').getAttribute('src');


const modalRight = document.querySelector(".modal__right"); 

const sideBar = document.querySelector(".sidebar"); 

var sidebarProducts = document.querySelector(".sidebar-sneakers ul"); //cart-content

const toggleButton1 = document.querySelector(".navbar-toggler"); 



// async function getProducts(){
//     const response = await axios.get('http://localhost:5022/products')
//     console.log(response.data); 

// }
// getProducts(); 

function show(){
    // const toggleButton = document.querySelector(".navbar-toggler"); 
    const temp = document.querySelector(".sidebar").classList.toggle('active'); 
    if(temp){
        toggleButton1.style.visibility = "hidden"; 
    } else {
        toggleButton1.style.visibility = "visible";
    }

}


productList.forEach((list, index) => {
    const view = list.querySelector('.add-cart');
    const productImg = list.querySelector('.product_img').getAttribute('src');
    const name = list.querySelector('.prod-name').innerHTML; 
    const price = list.querySelector('.prod-price').innerHTML; 
    const size1 = list.querySelector('.prod-size').innerHTML; 
    const category1 = list.querySelector('.prod-category').innerHTML; 
    const condition1 = list.querySelector('.prod-condition').innerHTML; 


    view.addEventListener('click', () => {
        modal.classList.add('modal--bg');
        modalContent.classList.add('modal__content--show');
        modalImg.setAttribute('src', productImg);
        title.textContent = name; 
        cost.textContent = price;
        size.textContent = size1; 
        category.textContent = category1; 
        condition.textContent = condition1; 

    }); 
}); 

close.addEventListener('click', () => {
    modal.classList.remove('modal--bg');
    modalContent.classList.remove('modal__content--show');

});
  
modal.addEventListener('click', () => {
    modal.classList.remove('modal--bg');
    modalContent.classList.remove('modal__content--show');

    toggleButton1.style.visibility = "visible"; 


    var sidebar = document.querySelector(".sidebar")

    if(sidebar.classList.toggle('active')){
        show(); 
    }
});


function productFormatter(){ //to store our products as object when in cart


    let price1 = cost.textContent.replace('$', ''); 
    price1 = parseInt(price1); 

    let tag = title.textContent.toLowerCase(); 
    tag = tag.replace(/ /g, ''); 


    const products = 
        {
            name: title.textContent,
            tag: tag, 
            price: price1,  
            inCart: 0, 
            image: productImg
    
        }
    

    return products; 
}; 

addtoCart.addEventListener('click', () => { //this updates cart icon with amount by calling cartNumbers for everytime add to cart is clicked
    
    // console.log("added to cart"); 

    // modal.classList.remove('modal--bg'); //to get rid of shadow
    modalContent.classList.remove('modal__content--show');
    

    let products = productFormatter(); 

    cartNumbers(products);    
    show(); 
    totalCost(products); 
    loadSubtotal(); 
    addtoSlider(); 


}); 
 function addtoSlider(){
    const sidebarProducts = document.querySelector(".sidebar-sneakers"); //cart-content
    const textSide = document.querySelector(".sidebar-sneakers-info"); 

    // console.log(textSide); 

    let cartItems = localStorage.getItem("productsInCart"); 
    cartItems = JSON.parse(cartItems);

    // if (cartItems){

    // if(modalImg.getAttribute('src') != ""){
    // sidebarProducts.innerHTML = ''; 
    // Object.values(cartItems).map(item => { 
    if(cartItems){
        sidebarProducts.innerHTML =''; 
        Object.values(cartItems).map(item => { //modalImg.getAttribute('src')
            sidebarProducts.innerHTML += 
            `
            <div class="singleProd">
                <div class= "sidebar-prods">
                    <img class="sidebar-products"src= /images/sneakers/${item.tag}.jpg width="100" height="90"<img> 
                </div>

                <div class="sidebar-prods-info">
                    <div class="sidebar-prod-name"> ${item.name} </div> 
                    <b>$${item.price * item.inCart}.00</b>
                    <div class="sidebar-quantity">
                        <div class="buttons-div">
                            <button class="minus-quantity-button"><i class="fas fa-minus"></i></button> 
                            <h2 class="root">${item.inCart}</h2> 
                            <button class="plus-quantity-button"><i class="fas fa-plus"></i></button>
                        </div>  
                        <div class="trash-div">
                            <i class="fas fa-trash-alt"></i> 
                        </div> 
                    </div> 
                    <hr id=hrBar>
                </div>  
                
            </div>
            `
        }); 
        totalProducts(); 
        deleteButtons(); 
        manageQuantity(); 
    }
    //  const plus = document.querySelector(".plus-quantity-button");
    //  const minus = document.querySelector(".minus-quantity-button");
    //  var root = document.querySelector(".root"); 
    // root.innerHTML = parseInt(root);




    //  console.log(root); 
     
    // plus.addEventListener('click', () =>{
    //     root = root + 1; 
    //  }); 

    // minus.addEventListener('click', () =>{
    //     root = root - 1; 
    // }); 



    localStorage.setItem('sidebarProducts', sidebarProducts.innerHTML); 

}

function totalProducts(){
    let productNumbers = localStorage.getItem('cartNumbers'); 
    let quantity = document.querySelector('.subtotal-quantity'); 

    quantity.textContent = "(" + productNumbers + " Items): "; 

}

function deleteButtons(){
    let productName = document.querySelectorAll('.sidebar-prod-name'); 
    let deleteButtons = document.querySelectorAll(".fa-trash-alt"); 
    let productNumbers = localStorage.getItem('cartNumbers'); 
    let cartItems = localStorage.getItem('productsInCart'); 
    cartItems = JSON.parse(cartItems); 
    let cartCost = localStorage.getItem('totalCost'); 
    // console.log(cartItems); 

    for(let i =0; i < deleteButtons.length; i++){
        deleteButtons[i].addEventListener('click', () =>{
            var productName1 = productName[i].innerHTML.toLowerCase().replace(/ /g, ''); //tag
            // console.log(productName1); 
            // console.log(cartItems[productName].name + " " + cartItems[productName].inCart); 

            localStorage.setItem('cartNumbers', productNumbers - cartItems[productName1].inCart);
            localStorage.setItem('totalCost', cartCost - (cartItems[productName1].price * cartItems[productName1].inCart));
            delete cartItems[productName1]; 
            localStorage.setItem('productsInCart', JSON.stringify(cartItems)); 

            addtoSlider(); 
            onLoadCartNumbers(); 
            loadSubtotal(); 
        }); 
    }
    
}

function manageQuantity(){
    let decreaseButtons = document.querySelectorAll('.minus-quantity-button'); 
    let increaseButtons = document.querySelectorAll('.plus-quantity-button'); 
    let cartItems = localStorage.getItem('productsInCart'); 
    let currentQuantity =0; 
    let currentProduct =''; 

    cartItems = JSON.parse(cartItems); 

    for(let i =0; i < decreaseButtons.length; i++){
        decreaseButtons[i].addEventListener('click', () => {
            currentQuantity = document.querySelector('.root'); 
            console.log(currentQuantity.textContent);  
            currentProduct = decreaseButtons[i].parentElement.parentElement.parentElement.querySelector(".sidebar-prod-name").textContent.toLowerCase(); 
            currentProduct = currentProduct.replace(/ /g, '');
            console.log(currentProduct); 
            // cartItems[currentProduct].inCart -= 1; 
            if(cartItems[currentProduct].inCart == 1){
                cartItems[currentProduct].inCart = 1;  
            } else {
                cartItems[currentProduct].inCart -= 1; 
                cartNumbers(cartItems[currentProduct], "decrease");
                totalCost(cartItems[currentProduct], "decrease"); 

            }
            localStorage.setItem('productsInCart', JSON.stringify(cartItems)); 
            addtoSlider(); 
        })
    }

    for(let i =0; i < increaseButtons.length; i++){
        increaseButtons[i].addEventListener('click', () => {
            currentQuantity = document.querySelector('.root'); 
            currentProduct = increaseButtons[i].parentElement.parentElement.parentElement.querySelector(".sidebar-prod-name").textContent.toLowerCase(); 
            currentProduct = currentProduct.replace(/ /g, '');
            console.log(currentProduct); 
             
            cartItems[currentProduct].inCart += 1; 
            cartNumbers(cartItems[currentProduct]);
            totalCost(cartItems[currentProduct]); 
            localStorage.setItem('productsInCart', JSON.stringify(cartItems)); 
            addtoSlider(); 
        })
    }
}

function loadSubtotal(){
    var sub = document.querySelector(".subtotal-amount"); 
    var totalCost1 = localStorage.getItem('totalCost'); 

    totalCost1 = parseInt(totalCost1); //convert totalamount from localstorage to int
    
    // sub.textContent = parseInt(sub); //convert html totalamount to int
    
    sub.textContent = "$" + totalCost1 + ".00"; 

    
}

window.onload = function(){
    var sub = document.querySelector(".subtotal-amount"); 
    var sidebarProducts = document.querySelector(".sidebar-sneakers"); //cart-content

    if(isNaN(sub.textContent)){
        sub.textContent = 0; 
    } 
    var e = localStorage.getItem('sidebarProducts'); 

    if(e != null){ //if there are items in localstorage
        // console.log(e); 
        // console.log(sidebarProducts); 
        sidebarProducts.innerHTML += e; //add it to sidebar, so items are there after refresh
    }
    loadSubtotal();
    deleteButtons(); 

    
}


// for (let i=0; i < carts.length; i++){
//     carts[i].addEventListener('click', () =>{
//         cartNumbers(products[i]); 
//     })
// }
function onLoadCartNumbers(){
    let productNumbers = localStorage.getItem('cartNumbers'); 

    if(productNumbers){
        document.querySelector('.cart-number').textContent = productNumbers; 
    }
}

//update cart numbers 
function cartNumbers(product, action){
    // console.log("the product clicked is", product); 

    let productNumbers = localStorage.getItem('cartNumbers'); //to see how many items in cart
    productNumbers = parseInt(productNumbers); 
    // console.log(productNumbers); 

    let cartItems = localStorage.getItem('productsInCart'); 
    cartItems = JSON.parse(cartItems); 

    if(action == "decrease"){
        localStorage.setItem('cartNumbers', productNumbers - 1); 
        document.querySelector('.cart-number').textContent = productNumbers - 1; 
    } else if(productNumbers){
        localStorage.setItem("cartNumbers", productNumbers + 1); 
        document.querySelector('.cart-number').textContent = productNumbers + 1; 
    } else {
        localStorage.setItem('cartNumbers', 1); 
        document.querySelector('.cart-number').textContent = 1; 


    }

    // if(productNumbers ){ //if there are items in cart/localstorage
    //     localStorage.setItem('cartNumbers', productNumbers + 1); //add 
    //     document.querySelector('.cart-number').textContent = productNumbers + 1; 

    // } else {
    //     localStorage.setItem('cartNumbers', 1); //if there r no cart numbers, set localstorage to 1
    //     document.querySelector('.cart-number').textContent = 1; 
    // }
    setItems(product); 

}


function setItems(product){


    let cartItems = localStorage.getItem('productsInCart'); 
    cartItems = JSON.parse(cartItems); 

    // console.log((cartItems[0])); 

    if(cartItems != null){ //when click on the same item more than once, add 1 to inCart/ if this is not the first time of click the item
        if(cartItems[product.tag] == undefined){
            cartItems = {
                ...cartItems, //update localstorage to what is in before AND the new product clicked
                [product.tag]: product
            }
        }
        cartItems[product.tag].inCart += 1; 
    } else {
        product.inCart = 1; //if it is the first time clicking the item
        cartItems = { //define the object by its tag name
            [product.tag]: product
        }
    }


    localStorage.setItem("productsInCart", JSON.stringify(cartItems)); 

    return cartItems; 

}

function totalCost(product, action){
    let cartCost = localStorage.getItem("totalCost"); 
    // console.log("My cartCost is", cartCost); 

    let subtotal = document.querySelector('.subtotal-amount').textContent; 
    // subtotal = parseInt(subtotal); 
    // console.log(typeof(subtotal))
    // subtotal += cartCost; 
    if(action=="decrease"){
        cartCost = parseInt(cartCost); 
        localStorage.setItem('totalCost', cartCost - product.price)
    } else if (cartCost != null){
        cartCost = parseInt(cartCost); 
        localStorage.setItem("totalCost", cartCost + product.price); //if there is a cartCost, add it with the product.price
    }else {
        localStorage.setItem("totalCost", product.price); //if there is no cartCost, set the product's price
    }
    loadSubtotal(); 

    // subtotal = cartCost;
}



onLoadCartNumbers(); //so cart count remains after page is refreshed
loadSubtotal(); 
totalProducts(); 
// displayCart(); 




