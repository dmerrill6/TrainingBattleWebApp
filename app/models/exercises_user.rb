class ExercisesUser < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  has_many :exercise_sets

  validates :user_id, uniqueness: { scope: :exercise_id }

  def exercise_reps_done
    exercise_sets.sum(:amount)
  end

end
