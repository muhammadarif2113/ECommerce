const modal = document.querySelector('.modal');
const modalContent = document.querySelector('.modal__content');
const close = document.querySelector('.modal__close');
const modalImg = document.querySelector('.modal__img');
const productList = document.querySelectorAll('.product__list');
const title = document.querySelector('.detail__title');
const cost = document.querySelector('.detail__price');





const productCost = ['£35', '£245', '£195', '£295', '£345', '£455'];

productList.forEach((list, index) => {
  const view = list.querySelector('.product__viewBtn');
  const productImg = list.querySelector('.product__img').getAttribute('src');
  const name = list.querySelector('.detail__title1').innerHTML; 
  const price = list.querySelector('.detail__price1').innerHTML; 
  console.log(name); 

  view.addEventListener('click', () => {
    modal.classList.add('modal--bg');
    modalContent.classList.add('modal__content--show');
    modalImg.setAttribute('src', productImg);
    title.textContent = name; 
    cost.textContent = price; 



    // console.log(title.innerText); 
    // title.setAttribute(title.innerText, title1); 

    // title.innerText = `product title ${index + 1}`; 
    // cost.innerText = productCost[index];
  });
});

close.addEventListener('click', () => {
  modal.classList.remove('modal--bg');
  modalContent.classList.remove('modal__content--show');
});

modal.addEventListener('click', () => {
  modal.classList.remove('modal--bg');
  modalContent.classList.remove('modal__content--show');
});


// $(function() {
//   $('.product__viewBtn').on('click', function(){
//     $.ajax({
//       url: '/store', 
//       contentType: 'application/json', 
//       success: function(response){
//         console.log(response); 

//       }
//     }) 
//   })
// })