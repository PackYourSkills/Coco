class AddPhotoToNest < ActiveRecord::Migration[5.0]
  def change
    add_column :nests, :photo, :string
  end
end
