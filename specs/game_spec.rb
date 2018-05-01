require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < MiniTest::Test
  def test_rock_paper
    game = Game.new('Rock', 'Paper')
    assert_equal('Paper wins', game.play())
  end

  def test_paper_scissors
    game = Game.new('Paper', 'Scissors')
    assert_equal('Scissors wins', game.play())
  end

  def test_scissors_rock
    game = Game.new('Scissors', 'Rock')
    assert_equal('Rock wins', game.play())
  end
end
