class AddBeerIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :beer_id, :integer
  end
end
