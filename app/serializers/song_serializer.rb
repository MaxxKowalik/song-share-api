class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :album, :rating, :user_id
end
