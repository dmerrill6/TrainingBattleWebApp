class ExercisesUsersController < ApplicationController
  load_and_authorize_resource
  def create
    @exercise_user = ExercisesUser.new(exercises_user_params)
    @exercise = @exercise_user.exercise
    respond_to do |format|
      if @exercise_user.save
        format.html{ redirect_to exercises_users_path(@exercise), notice: "Subscribed to #{@exercise.name}"}
      else
        format.html{ redirect_to exercises_path(), notice: "Could not subscribe to #{@exercise.name}"}
      end
    end
  end

  def index
    @exercises_users = current_user.exercises_users
  end

  def show
    @exercises_user = ExercisesUser.find(params[:exercises_user_id])
  end

  protected
  def exercises_user_params
    params.require(:exercises_user).permit(
      :user_id, :exercise_id
    )
  end
end
