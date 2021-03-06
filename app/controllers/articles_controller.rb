class ArticlesController < ApplicationController
	def new
	end

	def create
		#render plain: params[:article].inspect
		@article = Article.new(params.require(:article).permit(:title, :text))

		@article.save
		redirect_to @article
	end

	def show
		@article = Article.find(params[:id])
	end

	private
	def article_params
		params.require(:article).permit(:title, :text)
	end
	
	
end
