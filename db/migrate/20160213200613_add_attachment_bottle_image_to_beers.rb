class AddAttachmentBottleImageToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :bottle_image
    end
  end

  def self.down
    remove_attachment :beers, :bottle_image
  end
end
