class Beer < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :images, :autosave => true
  accepts_nested_attributes_for :images #this is required for formtastic in active admin
  has_attached_file :bottle_image, :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  has_attached_file :background_image, :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment :bottle_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_attachment :background_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
