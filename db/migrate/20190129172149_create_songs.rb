class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.string :artist, null: false
      t.string :album, null: false
      t.integer :rating, null: false
      t.timestamps
    end
  end
end
