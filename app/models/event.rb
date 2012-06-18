class Event < ActiveRecord::Base
	attr_accessible :name, :location, :date, :time
end
