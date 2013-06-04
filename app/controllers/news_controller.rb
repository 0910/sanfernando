class NewsController < InheritedResources::Base
	def index
		@news = Kaminari.paginate_array(News.order("date DESC").all).page(params[:page]).per(10)


	end
	def show
		@news = News.find(params[:id])
	end
end
