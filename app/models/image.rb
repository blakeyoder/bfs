class Image < ActiveRecord::Base
  has_attached_file :file, styles: { medium: "600x600>", thumb: "300x300>" }
  validates_attachment :file, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_uniqueness_of :background_image, if: :background_image
  belongs_to :beer

end
