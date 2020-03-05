require 'sinatra/base'
require './lib/player'



class Battle < Sinatra::Base
  
  enable :sessions

  get '/home' do
    erb(:index)
  end
  
  post '/names' do
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb(:attack)
  end

end
