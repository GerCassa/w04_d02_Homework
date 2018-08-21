class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def rps()
    if @player1 == 'rock' && @player2 == 'scissors'
      return "Rock Wins"
     elsif @player1 == 'rock' && @player2 == 'paper'
      return "Paper Wins"
    end
    if @player1 == 'paper' && @player2 == 'rock'
      return "Paper Wins"
     elsif @player1 == 'paper' && @player2 == 'scissors'
      return "Scissors Wins"
    end
    if @player1 == 'scissors' && @player2 == 'rock'
      return "Rock Wins"
     elsif @player1 == 'scissors' && @player2 == 'paper'
      return "Scissors Wins"
    end
    if @player1 == @player2
      return "Its a tie!"
    end
  end



end
