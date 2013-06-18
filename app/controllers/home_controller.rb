class HomeController < ApplicationController 
  def index
		@calendars = Calendar.last(4)
		@news = News.order('created_at desc').last(8)
  end
end
