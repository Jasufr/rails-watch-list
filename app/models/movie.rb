class Movie < ApplicationRecord
  self.table_name = "yml_movies"
  has_many :bookmarks, foreign_key: "yml_movie_id"

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
