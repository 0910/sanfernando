class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(2)
		@news = News.last(6)
  end
end
