class Game
  def initialize(name)
    @name = name
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')  
  
  end

def start
  puts "Welcome to the game"  
  turn

end

def show_stats
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
end

  def turn
    @player1.new_question
    check_score
    @player2.new_question
    check_score
    show_stats
    puts '---------NEW-TURN---------'
    turn
  end


def check_score
  if @player1.dead
    winner(@player2)
  elsif @player2.dead
    winner(@player1)
  end
end

def winner(player)
  puts "#{player.name} wins with the score of #{player.lives}/3"
  puts '---------GAME-OVER--------'
  puts 'Good bye!'
  exit(0)
end

end 