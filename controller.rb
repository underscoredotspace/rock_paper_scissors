require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

get '/:player1/:player2' do |player1, player2|
  game = Game.new(player1,player2)
  return game.play()
end
