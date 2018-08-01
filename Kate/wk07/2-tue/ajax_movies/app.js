var input = document.querySelector('input')
var button = document.querySelector('button')
var result = document.querySelector('.result')

button.addEventListener('click', function(event){
  result.innerHTML = '';
  var options = {
    url: 'http://omdbapi.com/',
    method: 'get',
    dataType: 'json',
    data: { 
      apikey: '2f6435d9',
      s: input.value  
    }
  }
  
  $.ajax(options).done(function(res){
    var yourResults = document.createElement('p');
    yourResults.classList.add('your-results');
    yourResults.textContent = "search results:";
    result.appendChild(yourResults);
    res.Search.forEach(function(movie){
      var title = movie.Title;
      var id = movie.imdbID;
      var p = document.createElement('p');
      var a = document.createElement('a');
      a.href = ("https://www.imdb.com/title/"+id);
      a.target = "_blank"
      a.textContent = title;
      p.appendChild(a);
      result.appendChild(p);
    });
  });
});
