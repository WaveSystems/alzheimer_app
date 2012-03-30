class QuestionsController < ApplicationController
  
  def question
    @question = Question.find(params[:id])
    respond_to  do |format|
      format.js {render :json => {:question => @question.question, :id => @question.id, :answer => @question.answer}}
    end
  end

end
