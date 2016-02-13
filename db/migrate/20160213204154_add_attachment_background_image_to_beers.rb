class AddAttachmentBackgroundImageToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :background_image
    end
  end

  def self.down
    remove_attachment :beers, :background_image
  end
end
