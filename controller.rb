require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("./models/game")
also_reload("./models/*")

get '/' do
  erb(:home)
end

get '/rps' do
  erb(:rps)
end

get '/rps/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @thegame = game.rps()
  erb(:result)
end
