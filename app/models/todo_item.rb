class TodoItem < ApplicationRecord
  scope :unfinished, -> { where(done_at: nil) }
  scope :finished, -> { where("done_at IS NOT NULL") }

  validates_presence_of :title
end
