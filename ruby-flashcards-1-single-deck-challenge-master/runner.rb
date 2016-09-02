require_relative 'controller/controller'


Controller.new({quiz: ARGV[0], view: View}).run
