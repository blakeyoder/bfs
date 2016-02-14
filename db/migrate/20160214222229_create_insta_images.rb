class CreateInstaImages < ActiveRecord::Migration
  def change
    create_table :insta_images do |t|
      t.text :url

      t.timestamps null: false
    end
  end
end
