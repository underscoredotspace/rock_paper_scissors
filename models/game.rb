class Game

  def initialize(player1, player2)
    @player1 = player1.downcase
    @player2 = player2.downcase
  end

  def isValid?(move)
    case move
    when 'rock', 'paper', 'scissors'
      return true
    end

    return false
  end

  def play()
    return "Player 1's move is invalid" if !self.isValid?(@player1)
    return "Player 2's move is invalid" if !self.isValid?(@player2)
    return "It's a draw. You both lose. " if @player1 == @player2

    win_test = {
      "rock" => "scissors",
      "paper" =>  "rock",
      "scissors" => "paper"
    }

    if win_test[@player1][@player2]
      return "Player 1 wins"
    end

    return "Player 2 wins"
  end
end
