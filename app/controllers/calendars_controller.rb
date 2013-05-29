class CalendarsController < InheritedResources::Base
	def index
    @calendars = Calendar.all
	end
	def show
		@calendar = Calendar.find(params[:id])
	end
end