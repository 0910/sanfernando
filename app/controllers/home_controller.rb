class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(2)
		@news = News.order('date desc').first(6)
  end
end
