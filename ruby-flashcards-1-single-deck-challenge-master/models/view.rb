module View

  #gets the answer from the user input
  def self.get_user_answer
    STDIN.gets.chomp
  end

  def self.give_user_answer
  #puts the question or the answer on the screen.
  end

  def self.display(flashcard_text)
    puts "#{flashcard_text}"
  end

  def self.display_correct
    puts "Correct!"
  end

  def self.display_incorrect
    puts "Wrong!"
  end

  def self.display_final_count(question_correct, question_count)
    puts "You got #{question_correct} out of #{question_count} correct."
  end


end
