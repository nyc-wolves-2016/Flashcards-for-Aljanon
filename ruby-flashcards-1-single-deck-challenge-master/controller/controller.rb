class Controller

  def initialize(args)
    @view = args.fetch(:view)
    @quiz = args.fetch(:quiz)
  end

  def query_question(question)
  end

  def query_answer(answer)
  end

  def user_answer(answer)
    answer
  end

  def flashcard(object_id)
    #calls the quiz attribute and uses method to pull flashcard
    #information
  end

  def correct?(user_input)
    flashcard.correct?(user_input)
  end

end
