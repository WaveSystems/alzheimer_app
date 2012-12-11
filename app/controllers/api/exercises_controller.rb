class Api::ExercisesController < ApplicationController
  def calculus
    @questions = Question.all
    render json: @questions
  end

  def gnosias
    @gnosias = Question.all
    render json: @gnosias
  end

  def language
    @language = Question.all
    render json: @language
  end

  def memory
    @memory = Question.all
    render json: @memory
  end

  def orientation
    @orientation = Question.all
    render json: @orientation
  end

  def praxias
    @praxias = Question.all
    render json: @praxias
  end
end
