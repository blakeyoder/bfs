class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.friendly.find(params[:id])
    @upcoming_events = Event.upcoming_events
  end

end
