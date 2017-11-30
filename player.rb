class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 6
  end

  def is_lost?()
   return @player.lives <= 0
 end

 # def is_won?()
 #   return check_hidden_word
 # end


end
