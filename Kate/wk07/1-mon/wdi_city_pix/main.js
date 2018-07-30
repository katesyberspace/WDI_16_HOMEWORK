var cities = ['NYC', 'SF', 'LA', 'SYD', 'ATX'];
var imageClasses = ['','nyc', 'sf', 'la','sydney', 'austin']
var cityType = document.querySelector('#city-type');
var body = document.querySelector('body');


var updateDropDown = function(){
  cities.forEach(function(city){
    var newOption = document.createElement('option');
    newOption.textContent = city;
    cityType.appendChild(newOption);
  })
}

updateDropDown();


cityType.addEventListener('change', function(){
  var cityIndex = cityType.options.selectedIndex;
  body.className = imageClasses[cityIndex];
});