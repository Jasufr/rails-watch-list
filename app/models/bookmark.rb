class Bookmark < ApplicationRecord
  self.table_name = "yml_bookmarks"
  belongs_to :movie, foreign_key: "yml_movie_id"
  belongs_to :list, foreign_key: "yml_list_id"

  validates :yml_movie_id, :yml_list_id, presence: true
  validates :yml_movie_id, uniqueness: { scope: :yml_list_id }
  validates :comment, length: { minimum: 6, maximum: 21 }, if: -> { comment.present? }
end
