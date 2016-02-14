module EventsHelper
  def event_image(event)
    if event.event_image.present?
      return event.event_image
    else
      
    end
  end
end
