class Song < ApplicationRecord
  belongs_to :user
  has_many :genres
  validates :artist, :album, :name, :rating, :user, presence: true
end
