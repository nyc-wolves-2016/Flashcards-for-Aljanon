require_relative '../flashcard_parser'

class Quiz
  attr_reader :flashcards
  attr_accessor :questions_correct, :question_count

  def initialize(args={})
    @flashcards = args.fetch(:flashcards, [])
    @question_count = @flashcards.count
    @questions_correct = 0
  end

  def load_file(filename)
    @flashcards = FlashcardParser.parse(filename)
  end

  def num_questions_correct
    @questions_correct += 1
  end

  def correct?(flashcard, user_input)
    flashcard.correct?(user_input)
  end


end
