class NewsController < InheritedResources::Base
	def index
		@news = News.all
	end
	def show
		@news = News.find(params[:id])
	end
end
