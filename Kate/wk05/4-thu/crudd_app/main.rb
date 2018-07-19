     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'db_config' 
require_relative 'models/rider'
require_relative 'models/review'


get '/' do
  @riders = Rider.all
  erb :index
end

get '/riders/:rider_id' do
  @rider = Rider.find(params[:rider_id])
  erb :rider
end



