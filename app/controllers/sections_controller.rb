class SectionsController < ApplicationController
	def index
		@section = params[:id]
	end
end
