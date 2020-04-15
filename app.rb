require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
   string = params["string"]
   @reversed = string.reverse
   erb :reversed
  end
  
get '/friends' do
  
  @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
  
  erb :friends
  
  return 200
  end
end