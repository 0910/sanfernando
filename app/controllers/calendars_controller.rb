class CalendarsController < InheritedResources::Base
	def index
    @months = [['Enero'], ['Febrero'], ['Marzo'], ['Abril'], ['Mayo'], ['Junio'], ['Julio'], ['Agosto'], ['Septiembre'], ['Octubre'], ['Noviembre'], ['Diciembre']]
    @calendars = params[:months].blank? ? Calendar.find(:all, :conditions => ["MONTH(fecha) = ? AND YEAR(fecha) =?", Date.today.month, Date.today.year]) : Calendar.all
    # @somethings = params[:category].blank? ? Something.all : Something.find_all_by_category(params[:category])
 	end
end