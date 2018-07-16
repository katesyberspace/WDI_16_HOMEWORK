require 'sinatra'
require 'httparty'
require 'pry'


get '/' do
  erb :index
end

get '/movie' do
  @movie_name = params['movie_name']
  @result = HTTParty.get("http://omdbapi.com/?t=#{@movie_name}&apikey=2f6435d9")
  # @name = @result['Title']
  # @year = @result['Year']
  # @plot = @result['Plot']
  # @poster = @result['Poster']
  # @actors = @result['Actors']
  # @rating = @result["imdbRating"]
  # @votes = @result['imdbVotes']
  # binding.pry
  erb(:movie)  
end






