class Game

  attr_reader :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def correct_guess(letter)
    # if @hidden_word is an instance of the HiddenWord class, then .include? won't work

    return @hidden_word.hidden_word.include?(letter)
  end



    def reveal_word()
    @hidden_word.display(@guessed_letters)
  end

  def lives_remaining()
   return @player.lives
 end

  def guess(letter)
    @guessed_letters << letter unless @guessed_letters.include?(letter)

    if correct_guess(letter)
      return true
    else
      @player.lives -= 1
      return false
    end
  end

  def game_end()
    if @player.lives == 0
      return false
    else
      return true
    end
  end

  def check_hidden_word
    # p @hidden_word.display(@guessed_letters)
     p @hidden_word
    return @hidden_word.hidden_word == @hidden_word.display(@guessed_letters)

  end

  def is_lost?()
   return @player.lives <= 0
 end

 def is_won?()
   return check_hidden_word
 end
end
