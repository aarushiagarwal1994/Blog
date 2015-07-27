class CommentsController < ApplicationController
  

def create		
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to :back
  end
def show
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

def update
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to article_path(@article)
  end

def like
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.update_attribute(:like, @comment.like + 1)
    redirect_to (:back)
  end

def dislike
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.update_attribute(:dislike, @comment.dislike + 1)
    redirect_to (:back)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end
end
