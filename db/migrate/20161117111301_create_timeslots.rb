class CreateTimeslots < ActiveRecord::Migration[5.0]
  def change
    create_table :timeslots do |t|
      t.date :date
      t.integer :capacity
      t.references :nest, foreign_key: true

      t.timestamps
    end
  end
end
