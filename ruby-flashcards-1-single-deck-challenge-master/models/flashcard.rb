
require 'pry'

class Flashcard

attr_reader :question, :answer

  def initialize(args = {})
    @question = args.fetch(:question) {"no question"}
    @answer = args.fetch(:answer) {"no answer"}
  end

  def correct?(user_input)
    user_input == self.answer
  end

end
