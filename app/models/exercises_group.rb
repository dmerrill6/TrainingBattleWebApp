class ExercisesGroup < ApplicationRecord
  belongs_to :group
  belongs_to :exercise
  has_many :exercise_sets
end
