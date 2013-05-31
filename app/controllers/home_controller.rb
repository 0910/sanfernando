class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(4)
		@news = News.last(8)
  end
end
