class CommentsController < ApplicationController
  def new
    @opinion = Opinion.find(params[:opinion_id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.opinion_id = params[:opinion_id]
    @comment.commentor = current_user
    if @comment.save
      redirect_to opinions_path, notice: 'You replied to a twid'
    else
      redirect_to opinions_path, alert: @comment.errors.full_messages.join('. ').to_s
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
