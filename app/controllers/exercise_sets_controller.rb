class ExerciseSetsController < ApplicationController
  load_and_authorize_resource
  def create
    @exercise_set = ExerciseSet.new(exercise_set_params)
    respond_to do |format|
      if @exercise_set.save
        format.html{ redirect_to exercises_users_path(), notice: "#{@exercise_set.amount} reps registered!"}
      else
        format.html{ redirect_to exercises_users_path(), notice: "Could not register reps."}
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
