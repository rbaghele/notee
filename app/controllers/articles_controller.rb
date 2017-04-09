class ArticlesController < ApplicationController
	before_action :set_user
	before_action :set_article, only: [:edit, :update]

	def index
		@articles = @user.articles
	end

	def create
		article = @user.articles.build(article_params)
		
		if article.save
			redirect_to edit_article_path(article)
		else
			redirect_to articles_path
		end
	end

	def edit
	end

	def update
		if @article.update_attributes(article_params)
			redirect_to articles_path
		else
			render 'edit'
		end
	end

	# PRIVATE METHODS
	private
	
	def article_params
		params.require(:article).permit(:title, :address, :category_id, :tags, :content, :cover_image)
	end

	def set_article
		@article = Article.find(params[:id])
	end
end
