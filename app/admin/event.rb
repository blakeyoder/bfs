ActiveAdmin.register Event do
    index do
      column :name
      column :event_date_time
      column :location
      actions
    end
    permit_params :name, :event_date_time, :location, :description, :hyperlink, :event_image
    form :html => {:multipart => true} do |e|
      e.inputs 'Event Details' do
        e.input :name, :required => true
        e.input :event_date_time, :required => true
        e.input :location, :required => true
        e.input :description, :required => true
        e.input :hyperlink, :label => "External link to event"
        e.input :event_image, :as => :file, :hint => "Shows up as background image on events page"
      end
      e.submit
    end
  end
