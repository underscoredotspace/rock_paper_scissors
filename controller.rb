require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

get '/' do
  erb(:home)
end

get '/rules' do
  erb(:rules)
end

get '/:player1/:player2' do |player1, player2|
  game = Game.new(player1,player2)
  @outcome = game.play()
  erb(:result)
end

get '*' do
  erb(:error)
end
