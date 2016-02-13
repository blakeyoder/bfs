class RemoveBackgroundImageOnBeer < ActiveRecord::Migration
  def up
    remove_column :images, :background_image
  end
end
