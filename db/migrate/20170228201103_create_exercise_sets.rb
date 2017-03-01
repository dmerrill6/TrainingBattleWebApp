class CreateExerciseSets < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_sets do |t|
      t.integer :exercises_user_id
      t.integer :amount

      t.timestamps
    end
  end
end
