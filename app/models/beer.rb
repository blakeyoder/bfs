class Beer < ActiveRecord::Base
  has_many :images, :autosave => true
  accepts_nested_attributes_for :images #this is required for formtastic in active admin

  def self.related_beers(beer)
    Beer.where("style LIKE (?)", beer.style)
  end
end
