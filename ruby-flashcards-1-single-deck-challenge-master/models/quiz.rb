require_relative '../flashcard_parser'

class Quiz
  attr_reader :flashcards
  attr_accessor :questions_correct, :question_count

  def initialize(args={})
    @flashcards = args.fetch(:flashcards, [])
    @question_count = args.fetch(:question_count, 0)
    @questions_correct = args.fetch(:questions_correct, 0)
  end

  def questions_correct
    @questions_correct += 1 if @flashcards.correct?
  end

  # def question_count
  #   @question_count += 1
  # end

end
