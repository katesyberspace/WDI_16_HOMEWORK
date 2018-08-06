var colorForm = document.querySelector('.color-form');
var colorInput = document.querySelector('.color-input');
// var colorBtn = document.querySelector('button')
var brush = $('.brush');
var body = $('body');


var clickHandler = function(event){
  event.preventDefault()
  if (event.target.classList.contains('color-btn')){
    var color = colorInput.value
    $(brush).css("background-color", color)
    // debugger
  }
}

colorForm.addEventListener('click', clickHandler)

var createSquares = function(){
  for (var i = 0; i<1000; i++){
    var square = document.createElement('div');
    square.classList.add('square');
    $(body).append(square);
  }
}


createSquares();
