class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_many :task_items
end
