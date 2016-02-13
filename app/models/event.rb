class Event < ActiveRecord::Base
   has_attached_file :event_image
   validates_attachment :event_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

   def self.default
     #'../images/bfs.png'
   end

end
