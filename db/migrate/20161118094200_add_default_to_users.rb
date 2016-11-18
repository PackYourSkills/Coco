class AddDefaultToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :photo, 'http://res.cloudinary.com/pack-your-skills/image/upload/v1479311735/Coco-seul_cc1gzz.png'
  end
end
