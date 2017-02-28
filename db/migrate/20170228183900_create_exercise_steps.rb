class CreateExerciseSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_steps do |t|
      t.integer :amount
      t.integer :exercise_id

      t.timestamps
    end
  end
end
