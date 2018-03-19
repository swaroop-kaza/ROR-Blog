class ArticlesController < ApplicationController
	def index
    @articles = Article.all
  end

	def show
    @article = Article.find(params[:id])
  end
	
	def new
		@article = Article.new
	end
	
	def edit
		@article = Article.find(params[:id])
	end
	 
	def create
		@article = Article.new(article_params)
	 
		if @article.save
		  redirect_to @article
		else
		  render 'new'
		end
	end

	def like
		@article = Article.find(params[:id])

		@article.likes+=1
		@article.save
		
		redirect_to articles_path
	end

	def resetlike
		@article = Article.find(params[:id])

		@article.likes=0
		@article.dislikes=0
		@article.save
		
		redirect_to articles_path
	end

	def dislike
		@article = Article.find(params[:id])

		@article.dislikes+=1
		@article.save
		
		redirect_to articles_path
	end

	def update
		@article = Article.find(params[:id])
	 
		if @article.update(article_params)
		  redirect_to @article
		else
		  render 'edit'
		end
	end
	 
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
	 
		redirect_to articles_path
	end

	private
		def article_params
		  params.require(:article).permit(:title, :text)
		end

end
