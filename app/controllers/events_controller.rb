class EventsController < ApplicationController
  def create
  	#render :layout => "app"
    Event.create params[:event]
    @user = User.new
    

    @food = Food.new
    @event = Event.last

  end

  def create_food
    @food = Food.new
    Food.create params[:food]
    #redirect_to events_create_path

  end

  def save
    User.create params[:user]
    #@event = Event.find(params[:event][:user_id])
    #@event 
  end

  def show
  end

  def index
		@event = Event.new  	
		#@event.time = Time.now
  end
end
