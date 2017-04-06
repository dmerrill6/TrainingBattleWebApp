class Exercise < ApplicationRecord
  has_many :exercise_steps
  validates_presence_of :name, :step_plural_name
  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups

  def subscribed? current_group
    users.include? current_group
  end

  def exercises_user user
    ExercisesUser.where(exercise_id: id, user_id: user.id).first
  end
end
