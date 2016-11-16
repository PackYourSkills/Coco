class AddAllElementsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job, :string
    add_column :users, :phone, :string
    add_column :users, :skype, :string
    add_column :users, :sexe, :string
    add_column :users, :quote, :string
    add_column :users, :dream_coworker, :string
    add_column :users, :song, :string
    add_column :users, :cv, :string
    add_column :users, :birthdate, :date
    add_column :users, :story, :text
    add_column :users, :host, :boolean
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
    add_column :users, :country, :string
  end
end
