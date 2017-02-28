class ExerciseSetsController < ApplicationController
  load_and_authorize_resource
  def create
    @exercise_set = ExerciseSet.new(exercise_set_params)
    respond_to do |format|
      if @exercise_set.save
        format.html{ redirect_to exercises_users_path(), notice: "Set registered!"}
      else
        format.html{ redirect_to exercises_users_path(), notice: "Could not register set."}
      end
    end
  end

  protected
  def exercise_set_params
    params.require(:exercise_set).permit(
      :exercises_user_id, :amount
    )
  end

end
