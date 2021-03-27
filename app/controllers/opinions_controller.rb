class OpinionsController < ApplicationController
  before_action :verify, only: [:index]

  def new
    @opinion = current_user.opinions.build
  end

  def index
    @opinion = Opinion.new
    @opinions = Opinion.order('created_at DESC').includes(:author).limit(10)
    @users = User.all_users(current_user.id).order('created_at DESC')
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.author_id = current_user.id
    respond_to do |format|
      if @opinion.save
        flash[:notice] = 'twid created!'
        format.html { redirect_to opinions_path }
        format.json { render opinions_path, status: :created, location: @opinion }
      else
        flash[:alert] = @opinion.errors.full_messages.join('. ').to_s
        format.html { redirect_to root_path }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:text)
  end
end
