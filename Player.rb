class Player
  attr_reader :lives, :name
  def initialize(name)
    @lives = 3
    @name = name
  end

  def decrease_score
    @lives -= 1
  end

end
