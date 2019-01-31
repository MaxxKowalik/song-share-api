class Song < ApplicationRecord
  belongs_to :user
  validates :artist, :album, :name, :rating, :user, presence: true
end
