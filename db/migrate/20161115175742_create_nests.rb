class CreateNests < ActiveRecord::Migration[5.0]
  def change
    create_table :nests do |t|
      t.integer :max_capacity
      t.time :opening_hour
      t.time :closing_hour
      t.integer :price
      t.string :address
      t.string :city
      t.string :country
      t.string :zipcode
      t.boolean :wifi
      t.boolean :printer
      t.boolean :coffee
      t.boolean :tea
      t.boolean :microwave
      t.text :description
      t.text :other_equipment
      t.boolean :phoning_room

      t.timestamps
    end
  end
end
