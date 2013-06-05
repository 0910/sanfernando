class SectionsController < ApplicationController
	def index
		@section = params[:id]
	end
	def gobierno
		@section = params[:id]
	end
	def prensa
		@section = params[:id]		
	end
end
