class Api::ExercisesController < ApplicationController
  def calculus
    @questions = Question.all
    render json: @questions
  end

  def gnosias
    @gnosias = Gnosia.all
    render_for_api :gnosias, json: @gnosias
  end

  def language
    @language = Language.all
    render_for_api :language, json: @language
  end

  def memory
    @memories = Memoria.all
    render_for_api :memory, json: @memories
  end

  def orientation
    @orientation = Orientation.all
    render_for_api :orientation, json: @orientation
  end

  def praxias
    @praxias = Praxia.all
    render_for_api :praxia, json: @praxias
  end
end
