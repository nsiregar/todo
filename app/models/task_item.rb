class TaskItem < ApplicationRecord
  validates :content, presence: true
  belongs_to :task

  def completed?
    !completed_at.blank?
  end
end
