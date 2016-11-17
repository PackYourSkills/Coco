class RenameZipCodeToNests < ActiveRecord::Migration[5.0]
  def change
    rename_column :nests, :zipcode, :zip_code
  end
end
