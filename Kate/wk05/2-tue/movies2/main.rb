require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'



get '/' do
  erb :index
end

get '/search' do
  @movie_name = params['movie_name']
  @result_s = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&s=#{@movie_name}&type=movie")
  binding.pry
  erb(:search)  
end


get '/movie/:title' do
  @title = params[:title]
  @result_t = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&t=#{@title}")
  binding.pry
  erb :movie
end


# '@result_s['totalResults'] => 1