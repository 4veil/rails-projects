class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]
	
	def index
	  @tag = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		@article = Tag.find(params[:id])
		@article.destroy

		redirect_to tags_path
	end
end
