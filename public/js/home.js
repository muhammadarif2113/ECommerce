var nav = document.querySelector('nav'); 
const toggleButton = document.querySelector(".navbar-toggler"); 
const toggleButtonClose = document.querySelector(".navbar-toggler collapsed"); 

const navBar = document.querySelector(".navbar");
const shopping = document.querySelector(".shopping"); 
const cartNumber = document.querySelector(".cart-number");
const person = document.querySelector(".person-icon"); 


const check1 = document.querySelector("#defaultCheck1"); 
const check2 = document.querySelector("#defaultCheck2"); 

var first = document.querySelector("#first-form-email")
var second = document.querySelector("#second-form-number"); 

var sub = document.querySelector("#subscribe-button"); 

check1.addEventListener('click', function(){
    document.querySelector("#first-form-email").classList.toggle('active'); 
    if(!second.classList.contains('active')){
        sub.classList.toggle('active');
    }
}); 

check2.addEventListener('change', function(){
    document.querySelector("#second-form-number").classList.toggle('active'); 
    if(!first.classList.contains('active')){
        sub.classList.toggle('active');
    }
}); 


window.addEventListener('scroll', function(){ //change color of nav when scrolling
    if(this.window.pageYOffset > 100){
        nav.classList.add('bg-dark', 'shadow'); 
    } else {
        nav.classList.remove('bg-dark', 'shadow'); 
    }
}); 

toggleButton.addEventListener('click', function(){
    if(window.matchMedia("(min-width: 553px)").matches){
        console.log('toggggle');
        navBar.style.padding += "0px 0px 30px 0px"; 

        shopping.style.margin = "30px 0px 0px 0px";
        cartNumber.style.margin = "30px 0px 0px 0px"; 
        person.style.margin = "30px 0px 0px 0px"; 
    }
    if(toggleButton.classList.contains("collapsed")){
        shopping.style.margin = null;
        cartNumber.style.margin = null;
        person.style.margin = null;
    }
    if(toggleButton.classList.contains("navbar-toggler") && (window.matchMedia("(max-width: 553px)").matches)){
        shopping.style.margin = "30px 0px 0px 0px";
        cartNumber.style.margin = "30px 0px 0px 0px"; 
        person.style.margin = "30px 0px 0px 0px";


        if(toggleButton.classList.contains("collapsed")){
            shopping.style.margin = null;
            cartNumber.style.margin = null; 
            person.style.margin = null;
        }

    }
})

