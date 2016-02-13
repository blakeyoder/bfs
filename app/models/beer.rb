class Beer < ActiveRecord::Base
  has_many :images, :autosave => true
  accepts_nested_attributes_for :images #this is required for formtastic in active admin
  has_attached_file :bottle_image
  validates_attachment :bottle_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
