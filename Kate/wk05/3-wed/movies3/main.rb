require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require 'pg'

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
  @title = params['title']
  @result_s = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&s=#{@title}&type=movie")
  if @result_s['totalResults'] == '1'
    sql = "SELECT * FROM cached_movies WHERE title = '#{@title}';" 
    @sql_result = run_sql(sql).first
    if @sql_result == nil

      @result_t = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&t=#{@title}&type=movie")
      sql_insert = "INSERT INTO cached_movies (imdbID, title, year, plot, poster, actors, rating, vote) 
            VALUES ('#{@result_t['imdbID']}', '#{@result_t['Title']}', '#{@result_t['Year'].to_i}', '#{@result_t['Plot']}', '#{@result_t  ['Poster']}', '#{@result_t['Actors']}', '#{@result_t['imdbRating']}', '#{@result_t['imdbVotes'].to_i}');"
      run_sql(sql_insert)
      erb :movies, :locals => {
        :imdbID => @result_t['imdbID'],
        :title => @result_t['Title'],
        :year => @result_t['Year'],
        :plot => @result_t['Plot'],
        :poster => @result_t['Poster'],
        :actors => @result_t['Actors'],
        :rating => @result_t['imdbRating'],
        :votes => @result_t['imdbVotes']
      }
      
    else 
      @result_t = @sql_result
      erb :movies, :locals => {
        :imdbID => @result_t['imdbid'],
        :title => @result_t['title'],
        :year => @result_t['year'],
        :plot => @result_t['plot'],
        :poster => @result_t['poster'],
        :actors => @result_t['actors'],
        :rating => @result_t['rating'],
        :votes => @result_t['votes']
      }
    end
  else
    erb :search
  end  
end



get '/movies/:title' do
  @title = params[:title]
  sql = "SELECT * FROM cached_movies WHERE title = '#{@title}';" 
  @sql_result = run_sql(sql).first
  # return @sql_result.to_s
  if @sql_result == nil
    @result_t = HTTParty.get ("http://www.omdbapi.com/?apikey=2f6435d9&t=#{@title}&type=movie")
    
    sql_insert = "INSERT INTO cached_movies (imdbID, title, year, plot, poster, actors, rating, vote) 
    VALUES ('#{@result_t['imdbID']}', '#{@result_t['Title']}', '#{@result_t['Year'].to_i}', '#{@result_t['Plot']}', '#{@result_t  ['Poster']}', '#{@result_t['Actors']}', '#{@result_t['imdbRating']}', '#{@result_t['imdbVotes'].to_i}');"
    run_sql(sql_insert)

    erb :movies, :locals => {
      :imdbID => @result_t['imdbID'],
      :title => @result_t['Title'],
      :year => @result_t['Year'],
      :plot => @result_t['Plot'],
      :poster => @result_t['Poster'],
      :actors => @result_t['Actors'],
      :rating => @result_t['imdbRating'],
      :votes => @result_t['imdbVotes']
    } 

  else
    @result_t = @sql_result
    erb :movies, :locals => {
      :imdbID => @result_t['imdbid'],
      :title => @result_t['title'],
      :year => @result_t['year'],
      :plot => @result_t['plot'],
      :poster => @result_t['poster'],
      :actors => @result_t['actors'],
      :rating => @result_t['rating'],
      :votes => @result_t['votes']
    }

  end
end

