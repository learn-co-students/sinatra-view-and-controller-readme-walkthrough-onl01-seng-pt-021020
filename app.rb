require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
    #renders the reverse.erb page
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
    
    #receives the params hash from the form, does nothing with it, and renders the reversed.erb page
  end

  get '/friends' do
    # renders the friends.erb page
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    
    erb :friends

  end
end