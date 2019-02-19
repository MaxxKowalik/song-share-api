class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :genre_name, null: false
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
