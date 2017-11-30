require_relative("game")
require_relative("hiddenword")
require_relative("player")


  puts "Please enter a secret word:"
 input = gets.chomp
 hidden_word = HiddenWord.new(input)
 snowman = Game.new(Player.new("Player 1"), hidden_word)

 print %x{clear}

print "hitting snowman"
 until snowman.is_won? || snowman.is_lost?
   puts "Welcome to Snowman!"
   puts "The hidden word is: #{snowman.reveal_word}"
   puts "#{snowman.lives_remaining} lives remaining"
   puts "Guess a letter:"
   snowman.guess(gets.chomp[0])
   print %x{clear}
 end

 puts "You win! The word was #{snowman.reveal_word}" if snowman.is_won?
 puts "You suck! The word was #{input}" if snowman.is_lost?
