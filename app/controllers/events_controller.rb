class EventsController < ApplicationController
  def create
  	#render :layout => "app"
    Event.create params[:event]
    Food.create params[:food]

    @food = Food.new
    @event = Event.last

  end

  def show
  end

  def index
		@event = Event.new  	
		#@event.time = Time.now
  end
end
