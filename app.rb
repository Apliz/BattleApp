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
    @name1 = $player_1.name
    @name2 = $player_2.name
    @health2 = $player_2.hit_points
    erb(:play)
  end

  get '/attack' do
    $player_2.attack()
    @player1 = $player_1.name
    @player2 = $player_2.name
    @health2 = $player_2.hit_points
    erb(:attack)
  end

end
