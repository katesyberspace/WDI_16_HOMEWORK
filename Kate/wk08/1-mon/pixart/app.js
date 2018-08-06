var colorForm = document.querySelector('.color-form');
var colorInput = document.querySelector('.color-input');
// var colorBtn = document.querySelector('button')
var brush = $('.brush');


var clickHandler = function(event){
  if (event.target.classList.contains('color-btn')){
    var color = colorInput.value
    $(brush).css("background-color", color)
    // debugger
  }
}


colorForm.addEventListener('click', clickHandler)