class Game

  def initialize
    @player_1 = Player.new(1)
    @player_2 = Player.new(2)
    @questioner = @player_1.num
    @current_player = @player_2
    @question = Question.new
    @game_end = false
  end

  def play
    while !@game_end
      puts "Player #{@questioner}: #{@question.new_question}"
      ans = gets.chomp
      if @question.ans_question(ans)
        puts "Player #{@questioner}: YES! You are correct."
      else
        puts "Player #{@questioner}: Seriously? No!"
        @current_player.lose_a_life
      end
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
      puts "----- NEW TURN -----"
      @questioner = @questioner == @player_1.num ? @player_2.num : @player_1.num
      @current_player = @current_player.num == @player_1.num ? @player_2 : @player_1
      @game_end = @player_1.lives == 0 || @player_2.lives == 0
    end
    winner = @player_1.lives == 0 ? @player_2 : @player_1
    puts "Player #{winner.num} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end
