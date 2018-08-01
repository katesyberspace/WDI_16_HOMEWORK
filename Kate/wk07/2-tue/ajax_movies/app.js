var handleSubmit = function(event){
  event.preventDefault();
  $('.result').html('');
  var options = {
    url: 'http://omdbapi.com/',
    method: 'get',
    dataType: 'json',
    data: { 
      apikey: '2f6435d9',
      s: $('input').val(),
      type: 'movie'
    }
  }
  
  const showSearchResults = function(res){
    res.Search.forEach(function(movie){
      var title = movie.Title;
      var id = movie.imdbID;
      var poster = movie.Poster;
      var movieDiv = document.createElement('div');
      movieDiv.className = "movie";
      var imageDiv = document.createElement('div');
      imageDiv.className = "img-wrapper";
      var moviePoster = document.createElement('img');
      moviePoster.className = "poster";
      moviePoster.src = poster;
      $(imageDiv).append(moviePoster);
      var p = document.createElement('p');
      var a = document.createElement('a');
      a.href = ("https://www.imdb.com/title/"+id);
      a.target = "_blank"
      a.textContent = title;
      $(p).append(a);
      $(movieDiv).append(imageDiv,p);
      $('.result').append(movieDiv);
    });
  }

  $.ajax(options).done(showSearchResults);
}

$('.search-form').submit(handleSubmit);
