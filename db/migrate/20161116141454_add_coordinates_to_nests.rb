class AddCoordinatesToNests < ActiveRecord::Migration[5.0]
  def change
    add_column :nests, :latitude, :float
    add_column :nests, :longitude, :float
  end
end
