class CreateExercisesGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises_groups do |t|
      t.integer :group_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
