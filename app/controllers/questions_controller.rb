class QuestionsController < ApplicationController
  respond_to :json
  def question
    @question = Question.find(params[:id])
    respond_with @question.answer
  end

end
