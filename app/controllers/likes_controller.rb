class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(opinion_id: params[:opinion_id])
    respond_to do |format|
      if @like.save
        format.html { redirect_to opinions_path, notice: 'You liked a twid' }
        format.json { render opinions_path, status: :created, location: @opinions }
      else
        format.html { redirect_to root_path, alert: 'You cannot like this twid' }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, opinion_id: params[:opinion_id])
    respond_to do |format|
      if like
        like.destroy
        format.html { redirect_to opinions_path, notice: 'You disliked a twid' }
        format.json { head :no_content }
      else
        format.html { redirect_to opinions_path, alert: 'You cannot dislike twid that you did not like before' }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end
end
