class Game 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play 
    current_player = @player1
    while (true) do
      other_player = current_player == @player1 ? @player2 : @player1
      question = Question.new
      puts "#{current_player.name}: #{question.get_question}"
      attempt = gets.chomp.to_i
      
      if question.check_answer(attempt)
        puts "#{current_player.name}: YES! Great Job!"

      else
        puts "#{current_player.name}: mmmm? No?"
        other_player.decrease_score
      end

      if other_player.lives == 0
        puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
        puts "------ GAME OVER ------"
        puts "Good Bye!"
        break
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "------ NEW TURN ------"
      current_player = other_player
    end
  end

end