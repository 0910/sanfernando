class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(2)
		@news = News.order('created_at desc').last(6)
  end
end
