class AddSortOrderToBeers < ActiveRecord::Migration
  def up
    add_column :beers, :sort_order, :integer
  end
end
