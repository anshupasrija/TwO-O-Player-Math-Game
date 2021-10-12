class Player
  attr_accessor :name ,:lives
  def initialize(name)
    @name = name
    @lives = 3
  end
 
  def take_life
  @lives -=1
  end
 
  def dead
    @lives == 0
  end
 
  def new_question
   newquestion = Questions.new
   newquestion.ask(name)
   print '> '
   @userchoice = $stdin.gets.chomp
   if newquestion.check_answer?(@userchoice.to_i)
     puts 'Yes! You are correct.'
   else
     puts 'Seriously? No!'
     take_life
   end
 end
 
 end