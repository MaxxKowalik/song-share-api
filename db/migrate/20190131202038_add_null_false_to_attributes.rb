class AddNullFalseToAttributes < ActiveRecord::Migration[5.2]
  def change
    change_column :songs, :artist, :string, null: false
    change_column :songs, :album, :string, null: false
    change_column :songs, :name, :string, null: false
  end
end
