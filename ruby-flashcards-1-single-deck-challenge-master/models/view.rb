module View

  #calls the question from the controller
  def self.get_question

  end

  #calls the answer from the controller
  def self.get_answer

  end

  #gets the answer from the user input
  def self.get_input_answer
    @user_answer = gets.chomp
  end

  #puts the question or the answer on the screen.
  def self.display(text)
    puts "#{text}"
  end

end
