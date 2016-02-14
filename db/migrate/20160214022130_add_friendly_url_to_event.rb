class AddFriendlyUrlToEvent < ActiveRecord::Migration
  def change
    add_column :events, :friendly_link, :string
  end
end
