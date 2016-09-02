require 'pry'
require_relative 'models/flashcard'

module FlashcardParser
  def self.parse(filename)
    questions_arr = File.readlines(filename).select { |file_row| file_row != "\n" }
    questions_arr.each_slice(2).to_a.map do |q_and_a|
      Flashcard.new(question: q_and_a[0], answer: q_and_a[1])
    end
  end

end


