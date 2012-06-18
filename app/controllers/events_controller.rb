class EventsController < ApplicationController
  def create
  	#render :layout => "app"
    Event.create params[:event]
    

    @food = Food.new
    @event = Event.last
  end

  def create_food
    @food = Food.new
    Food.create params[:food]
    #redirect_to events_create_path

  end

  def show
  end

  def index
		@event = Event.new  	
		#@event.time = Time.now
  end
end
