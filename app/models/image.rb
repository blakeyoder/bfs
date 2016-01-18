class Image < ActiveRecord::Base
  has_attached_file :file, styles: { medium: "600x600>", thumb: "300x300>" }
  validates_attachment :file, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  belongs_to :beer

end
