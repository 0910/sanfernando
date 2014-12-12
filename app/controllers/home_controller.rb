class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(2)
		@news = News.order('created_at desc').first(6)
  end
end
