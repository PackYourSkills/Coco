class ChangeDefaultToNests < ActiveRecord::Migration[5.0]
  def change
    change_column_default :nests, :photo, 'http://res.cloudinary.com/pack-your-skills/image/upload/v1479464093/nest-918898_960_720_xmlpk8.jpg'
  end
end
