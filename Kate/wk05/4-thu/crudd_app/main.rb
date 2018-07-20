     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'db_config' 
require_relative 'models/rider'
require_relative 'models/review'

# --> find all riders, show index page
get '/' do
  @riders = Rider.all
  erb :index
end

# --> request comes from "Someone's boarding the tram!" link
get '/riders/new' do
  erb :new
end

# --> creates new rider, and saves it to the database
post '/riders' do 
  rider = Rider.create(
    name: params[:name],
    age: params[:age],
    board_at: params[:board_at],
    alight_at: params[:alight_at],
    img_url: params[:img_url])  
  redirect '/'
end

# --> get the rider id, send it to edit erb
get '/riders/:id/edit' do
  @rider = Rider.find(params[:id])
  erb :edit
end

# --> get rider id from the params, and then sends to rider erb (details page)
get '/riders/:rider_id' do
  @rider = Rider.find(params[:rider_id])
  erb :rider
end

# --> get here from the edit page, find the rider from params, asign new values from params
put '/riders/:id' do
  rider = Rider.find(params[:id])
  rider.name = params[:name]
  rider.age = params[:age]
  rider.board_at = params[:board_at]
  rider.alight_at = params[:alight_at]
  rider.img_url = params[:img_url]
  rider.save

  redirect "riders/#{params[:id]}"
end