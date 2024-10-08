class Task < ApplicationRecord
  validates :title, presence: true
  validates :deadline, presence: true, comparison: { greater_than_or_equal_to: DateTime.now }
  def urgent?
    deadline <= 24.hours.from_now
  end
  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
end
