class AddStepPluralNameToExerciseSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :step_plural_name, :string
  end
end
