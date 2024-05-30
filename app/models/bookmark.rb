class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id,
    message: "You already save this movie in that list" }
  validates :comment, length: { minimum: 6 }
end
