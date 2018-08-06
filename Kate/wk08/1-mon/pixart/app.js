var colorForm = document.querySelector('.color-form');
var colorInput = document.querySelector('.color-input');
// var colorBtn = document.querySelector('button')
var brush = $('.brush');
var $body = $('body');
var $imdbForm = $('.imdb-form');
var $imdbInput = $('.imdb-input');
var $imdbBtn = $('.imdb-btn');


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
    $body.append(square);
  }
}
createSquares();



var changeSquareColor = function(event){
  $target = $(event.target)
  var color = colorInput.value
  $target.css("background-color", color)
}

$body.on('mouseover', '.square', changeSquareColor);


var imdbClickHandler = function(event){
  event.preventDefault();
  $('.result').html('');
  var options = {
    url: 'http://omdbapi.com/',
    method: 'get',
    dataType: 'json',
    data: { 
      apikey: '2f6435d9',
      t: $imdbInput.val(),
      type: 'movie'
    }
  }
    
  const setBackgroundImage = function(res){
    $body.css('background-image', `url("${res.Poster}")`);
    // debugger
  };
    
  
  $.ajax(options).done(setBackgroundImage);
  
}


$imdbForm.on('click', '.imdb-btn', imdbClickHandler);