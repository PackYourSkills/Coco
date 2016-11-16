class AddUserReferenceToNest < ActiveRecord::Migration[5.0]
  def change
    add_reference :nests, :user, foreign_key: true
  end
end
