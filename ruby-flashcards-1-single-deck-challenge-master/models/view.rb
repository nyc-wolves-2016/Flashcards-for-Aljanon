module View

  #gets the answer from the user input
  def self.get_user_answer
    user_answer = gets.chomp
    user_answer
  end

  #puts the question or the answer on the screen.
  def self.display(text)
    puts "#{text}"
  end

end
