class TaskItem < ApplicationRecord
  belongs_to :task

  def completed?
    !completed_at.blank?
  end
end
