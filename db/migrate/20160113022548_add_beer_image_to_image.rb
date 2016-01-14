class AddBeerImageToImage < ActiveRecord::Migration
  def change
    add_column :images, :beer_image, :boolean
  end
end
