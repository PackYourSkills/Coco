class AddDefaultToNests < ActiveRecord::Migration[5.0]
  def change
    change_column_default :nests, :photo, 'https://cdn.pixabay.com/photo/2015/09/02/13/08/nest-918898_960_720.jpg'
    change_column_default :nests, :opening_hour, Time.parse('09:00')
    change_column_default :nests, :closing_hour, Time.parse('18:00')
  end
end
