class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(4)    
  end
end
