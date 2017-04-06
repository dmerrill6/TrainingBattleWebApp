class ExercisesGroupsController < ApplicationController
  load_and_authorize_resource
  def create
    @exercise_group = ExercisesGroup.new(exercises_group_params)
    @exercise = @exercise_group.exercise
    respond_to do |format|
      if @exercise_group.save
        format.html{ redirect_to exercises_groups_path(@exercise), notice: "Subscribed to #{@exercise.name}"}
      else
        format.html{ redirect_to exercises_path(), notice: "Could not subscribe to #{@exercise.name}"}
      end
    end
  end

  def index
    # @exercise_group = current_user.exercises_group
  end

  def show
    @exercise_group = ExercisesGroup.find(params[:exercises_group_id])
  end

  protected
  def exercises_group_params
    params.require(:exercises_group).permit(
      :group_id, :exercise_id
    )
  end
end
