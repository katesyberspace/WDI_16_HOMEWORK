require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'

# stock = StockQuote::Stock.quote("msft")

#localhost:4567/

# binding.pry

get '/' do 
  erb(:index)
end

get '/price' do
  @stockname = params['stock']
  # binding.pry
  @companyname = StockQuote::Stock.quote(@stockname).company_name 
  @stockprice = StockQuote::Stock.quote(@stockname).iex_realtime_price
  erb(:price)
  
end