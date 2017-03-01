class ExercisesController < ApplicationController
  load_and_authorize_resource
  before_action :set_exercise, only: [:show]

  def index
    @exercises = Exercise.all
  end

  def show
  end

  protected

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

end
