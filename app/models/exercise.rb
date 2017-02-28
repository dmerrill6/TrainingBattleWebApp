class Exercise < ApplicationRecord
  has_many :exercise_steps
  validates_presence_of :name, :step_plural_name
end
