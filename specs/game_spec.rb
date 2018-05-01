require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < MiniTest::Test
  def test_player2_wins
    game = Game.new('Rock', 'Paper')
    assert_equal('Player 2 wins', game.play())
  end

  def test_player1_wins
    game = Game.new('Scissors', 'Paper')
    assert_equal('Player 1 wins', game.play())
  end

  def test_draw
    game = Game.new('Rock', 'rock')
    assert_equal("It's a draw. You both lose. ", game.play())
  end

  def test_invalid_move
    game = Game.new('banana', 'Rock')
    assert_equal("Player 1's move is invalid", game.play())

    game = Game.new('Scissors', 'Vulcan')
    assert_equal("Player 2's move is invalid", game.play())
  end
end
