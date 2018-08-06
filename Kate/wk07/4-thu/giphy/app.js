var gifWrapper = $('.gif-wrapper')
var searchForm = $('.search-form')
var searchInput = $('.search-input')

// 1FjzKpIwMaDsjUpnkhLD5OIUG7ZvjmW8
var offset = 11;

var scrollHandler = function(){
  const options = {
    url: 'http://api.giphy.com/v1/gifs/search',
    method: 'get',
    dataType: 'json',
    data: { 
      api_key: '1FjzKpIwMaDsjUpnkhLD5OIUG7ZvjmW8',
      q: $(searchInput).val(),
      limit: 10,
      rating: 'g',
      offset: offset
    }
  }
  const showSearchResults = function(res){
    res.data.forEach(gif => {
      let p = $('<p>')
      let d = $('<div>');
      let img = document.createElement('img');
      img.src = gif.images.fixed_height_small.url
      $(d).append(img)
      $(p).append(d)
      gifWrapper.append(p);
    });
  }
  offset = offset+10
  $.ajax(options).done(showSearchResults)
}

var submitHandler = function(event){
  event.preventDefault();
  $(gifWrapper).html('')
  offset = 0
  const options = {
    url: 'http://api.giphy.com/v1/gifs/search',
    method: 'get',
    dataType: 'json',
    data: { 
      api_key: '1FjzKpIwMaDsjUpnkhLD5OIUG7ZvjmW8',
      q: $(searchInput).val(),
      limit: 10,
      rating: 'g'
    }
  }
  const showSearchResults = function(res){
    res.data.forEach(gif => {
      let p = $('<p>');
      let d = $('<div>');
      let img = document.createElement('img');
      img.src = gif.images.fixed_height_small.url;
      $(d).append(img);
      $(p).append(d);
      gifWrapper.append(p);
    });

    offset = offset+11

    $(window).scroll(function () {
      if ($(window).scrollTop() >= $(document).height() - $(window).height() - 10) {
        scrollHandler();
      }
    });
  }
  $.ajax(options).done(showSearchResults)
}


$(searchForm).submit(submitHandler)








// // var result = $.get("http://api.giphy.com/v1/gifs/search?q=cats&api_key=1FjzKpIwMaDsjUpnkhLD5OIUG7ZvjmW8&limit=none");
// result.done(function(res) {
  // console.log(res.data[0].images.fixed_height.url)
  // res.data.forEach(gif => {
    // var d = $('<div>');
    // var i = document.createElement('img')
    // i.src = gif.images.fixed_height.url
    // $(d).append(i)
    // $(gifWrapper).append(i)
     
  // });
// 
// });