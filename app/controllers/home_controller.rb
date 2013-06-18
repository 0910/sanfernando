class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(4)
		@news = News.order('created_at asc').last(6)
  end
end
