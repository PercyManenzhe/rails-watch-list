class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true
  has_many :bookmarks
end
