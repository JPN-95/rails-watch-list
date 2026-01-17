class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: {scope: :list,
    message:"You already bookmarked this movie in another list"
  }
  validates :comment, length: {in: 6..200}
end
