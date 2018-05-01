class Game

  def initialize(player1, player2)
    @player1 = player1.downcase
    @player2 = player2.downcase
  end

  def play()
    if @player1 == 'rock' && @player2 == 'paper'
      return 'Paper wins'
    end

    if @player1 == 'paper' && @player2 == 'scissors'
      return 'Scissors wins'
    end

    if @player1 == 'scissors' && @player2 =='rock'
      return 'Rock wins'
    end
  end

end
