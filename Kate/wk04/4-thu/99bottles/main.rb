require 'pry'     
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end



get '/:num_bottles' do
  @num = params['num_bottles']
  erb :next_page
end


