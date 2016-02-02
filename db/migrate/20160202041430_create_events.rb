class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :event_date_time
      t.string :location
      t.text :description
      t.string :hyperlink
      t.timestamps null: false
    end
  end
end
