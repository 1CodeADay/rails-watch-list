class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6, message: 'must be at least 6 characters long' }
  validates :movie, presence: true
  validates :list, presence: true
end
