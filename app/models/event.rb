class Event < ActiveRecord::Base
   extend FriendlyId
   friendly_id :name, use: :slugged
   has_attached_file :event_image
   validates_attachment :event_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

   def self.upcoming_events
     Event.where('event_date_time > ?', Time.now).take(3)
   end
end
