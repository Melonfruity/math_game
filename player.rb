class Player
  attr_accessor :lives
  attr_reader :num

  def initialize(player_num)
    @num = player_num
    @lives = 3
  end

  def lose_a_life
    @lives -= 1
  end
end
