require_relative '../models/quiz'
require_relative '../models/flashcard'
require_relative '../models/view'
require_relative '../flashcard_parser'

class Controller

  attr_reader :quiz, :view

  def initialize(args)
    @view = args.fetch(:view)
    @quiz = Quiz.new(flashcards: FlashcardParser.parse(args.fetch(:quiz)))
  end

  def run
    quiz.flashcards.each do |flashcard|
      view.display(flashcard.question)
      if quiz.correct?(flashcard, self.view.get_user_answer)
        view.display_correct
        quiz.num_questions_correct
      else
        view.display_incorrect
      end
    end
    view.display_final_count(quiz.questions_correct, quiz.question_count)

  end


end

# RUNNER CODE WOWOWO

# ARGV[0] == text file
# Controller.new({quiz: ARGV[0], view: View.new})
