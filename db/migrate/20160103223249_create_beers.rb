class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :abv
      t.string :ibu
      t.string :color
      t.text :description

      t.timestamps null: false
    end
  end
end
