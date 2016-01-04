class AddBackgroundImageToImage < ActiveRecord::Migration
  def change
    add_column :images, :background_image, :boolean
  end
end
