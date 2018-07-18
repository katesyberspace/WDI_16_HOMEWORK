require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

def run_sql(sql)
  conn = PG.connect(dbname: 'movies')
  result = conn.exec(sql)
  conn.close
  return result
end


get '/' do
  erb :index
end

get '/search' do
  @movie_name = params['movie_name']
  @result_s = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&s=#{@movie_name}&type=movie")
  binding.pry
  if @result_s['totalResults'] == '1'
    @result_t = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&t=#{@movie_name}&type=movie")
    erb :movie
  else
    erb :search
  end  
end


get '/movies/:title' do
  @title = params[:title]
  @result_t = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&t=#{@title}")
  binding.pry
  erb :movie
end


# '@result_s['totalResults'] => 1