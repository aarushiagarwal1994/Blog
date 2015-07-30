class ArticlesController < ApplicationController

before_action :authenticate_user!, :except => [:show, :index]
  
  def index	
    #@articles = Article.all
	  @articles = Article.paginate( :page => params[:page], :per_page => 5).order('id DESC') 
		@user = current_user	     
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
		@user = current_user
    @article = @user.articles.new
  end
 
  def edit	
		@user = current_user 
    @article = @user.articles.find(params[:id])
  end
 
  def create	
		 @user = current_user
		 @article = @user.articles.new(article_params) 
    if @article.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
 
  def update
		 @user = current_user
		 @article = @user.articles.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
		@user = current_user
		@article = @user.articles.find(params[:id])
    @article.destroy 
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text, :image, :category_ids=>[])
    end
end
