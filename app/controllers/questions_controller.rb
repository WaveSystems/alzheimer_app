class QuestionsController < ApplicationController
  respond_to :json
  def question
    @question = Question.find(params[:id])
    respond_with @question
  end

  def gnosia
    @gnosia = Gnosia.find(params[:id])
    respond_with @gnosia
  end

end
