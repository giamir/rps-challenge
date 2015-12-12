require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @@player1 = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    player1
    erb :play
  end


  helpers do
    def player1
      @player1 ||= @@player1
    end
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end