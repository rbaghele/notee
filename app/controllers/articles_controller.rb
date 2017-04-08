class ArticlesController < ApplicationController
	before_action :set_user

	def index
		@articles = @user.articles
	end
end
