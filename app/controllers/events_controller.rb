class EventsController < ApplicationController
  def create
  	#render :layout => "app"
  	@food = Food.new
  end

  def show
  end

  def index
		@event = Event.new  	
		#@event.time = Time.now
  end
end
