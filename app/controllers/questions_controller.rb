class QuestionsController < ApplicationController
  
  def question
    number = params[:id] + 1
    @question = Question.find(number)
  end

end
