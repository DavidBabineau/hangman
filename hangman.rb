words = %w"galaxy pool world grass danger dragon car lost ruby road toad zepplin"
attempts = 5
wrong_answer = 0
right_answer = ''

  word = words[rand(words.length) - 1]

  def get_letters random_word, guessed_letters
  letters = ''
  random_word.chars { |char|
    letters += (guessed_letters.include? char)? char : '_ '
  }

  letters
end

puts 'Your myster word is:'+ get_letters(word, '')

while true
print "You've got #{attempts - wrong_answer} chances:"

char = gets.chomp

if word.include? char

  if(right_answer.include? char)
      puts "You picked '#{char}' already - pay attention!"
      puts "Pick again: " + get_letters(word, right_answer)
    else
      right_answer = right_answer + char
      letters = get_letters(word, right_answer)
      puts "You NERD! You got one!" + letters
    end

    unless letters.include? '_ '
        puts "Damn You! You've won - I wanted to see a hanging!"
        break
      end

    else
      puts "Sorry champ, no '#{char}' today!"
      wrong_answer += 1
      if (wrong_answer == attempts)
        puts "YOU SUCK! Because you've just hung yo self!"
      break
      end
    end
  end
