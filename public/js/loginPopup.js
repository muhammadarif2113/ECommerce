// login/register popup
const button = document.querySelector('button'); 
const popup = document.querySelector('.login-popup'); 
const close = document.querySelector('.popup-close'); 


button.addEventListener('click', () => {
    popup.style.display = 'block'; 
}); 

close.addEventListener('click', () => {
    popup.style.display = 'none'; 
    window.location.href = "/"; 
}); 

// popup.addEventListener('click', () => {
//     popup.style.display = 'none';
//     window.location.href = "/"; 
// });

// login/register popup animation

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container2');

signUpButton.addEventListener('click', () => 
container.classList.add('right-panel-active')); 

signInButton.addEventListener('click', () => 
container.classList.remove('right-panel-active'));

// const name1 = document.getElementById('name'); 
// console.log(name1.value); 

const form = document.querySelector('.signup-form'); 

form.addEventListener('submit', e => {
    // e.preventDefault(); 
    const nameForm = form.name.value; 
    const emailForm = form.email.value; 

    localStorage.setItem('name', nameForm); 
    localStorage.setItem('email', emailForm); 

    // console.log(nameForm); 


    // localStorage.getItem('name'); 
    // localStorage.getItem('email'); 

    // form.name.value = localStorage.getItem('name'); 
    // form.email.value = localStorage.getItem('email'); 

    //  console.log(document.getElementById("name")); 

     form.name.value = localStorage.getItem('name'); 



    // console.log(document.querySelector('#name').textContent); 
})

