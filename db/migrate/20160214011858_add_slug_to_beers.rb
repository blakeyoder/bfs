class AddSlugToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :slug, :string, unique: true
  end
end
