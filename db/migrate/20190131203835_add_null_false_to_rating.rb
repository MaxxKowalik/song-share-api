class AddNullFalseToRating < ActiveRecord::Migration[5.2]
  def change
    change_column :songs, :rating, :integer, null: false
  end
end
