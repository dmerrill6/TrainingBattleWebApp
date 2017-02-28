class CreateExerciseStepUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_step_users do |t|
      t.integer :user_id
      t.integer :exercise_step_id

      t.timestamps
    end
  end
end
