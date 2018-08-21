require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test



  def test_rock_wins
    game = Game.new('rock', 'scissors')
    assert_equal("Rock Wins", game.rps)
  end

  def test_paper_wins
    game = Game.new('rock', 'paper')
    assert_equal("Paper Wins", game.rps)
  end

  def test_scissors_wins
    game = Game.new('scissors', 'paper')
    assert_equal("Scissors Wins", game.rps)
  end

  def test_tie
    game = Game.new('rock', 'rock')
    assert_equal("Its a tie!", game.rps)
  end

end
