class Game

  def initialize(player1, player2)
    @player1 = player1.downcase
    @player2 = player2.downcase
  end

  def play()

    win_test = {
      "rock" => {
        "rock" => 0,
        "scissors" => 1,
        "paper" => -1
      },
      "paper" =>  {
        "rock" => 1,
        "scissors" => -1,
        "paper" => 0
      },
      "scissors" => {
        "rock" => -1,
        "scissors" => 0,
        "paper" => 1
      }
    }

    result = win_test[@player1][@player2]
    case result
    when -1
      return "Player 2 wins"
    when 1
      return "Player 1 wins"
    when 0
      return "It's a draw. You both lose. "
    end
  end

end
