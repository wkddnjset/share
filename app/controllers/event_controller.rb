class EventController < ApplicationController
  def index

  end

  def show
    event_id = params[:id]
    @event = Event.find(event_id)
  end

  def create

  end
end
