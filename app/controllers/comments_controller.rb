class CommentsController < ApplicationController
  before_action :set_article

  def new
    @comment = @article.comments.build
  end

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to article_path(@article), notice: "Comment added successfully."
    else
      render :new, alert: "Failed to add comment."
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
