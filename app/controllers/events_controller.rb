class EventsController < ApplicationController
  def create
  end

  def show
  end

  def index
		@event = Event.new  	
		#@event.time = Time.now
  end
end
