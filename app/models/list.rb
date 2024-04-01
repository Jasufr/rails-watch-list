class List < ApplicationRecord
  self.table_name = "yml_lists"
  has_many :bookmarks, foreign_key: "yml_list_id", dependent: :destroy
  has_many :movies, foreign_key: "yml_list_id", through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
