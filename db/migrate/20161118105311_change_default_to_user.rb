class ChangeDefaultToUser < ActiveRecord::Migration[5.0]
  def change
    change_column_default :nests, :photo, 'http://res.cloudinary.com/pack-your-skills/image/upload/v1479466113/avatar-coco_b2fb49.png'
  end
end
