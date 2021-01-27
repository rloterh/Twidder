class OpinionsController < ApplicationController
  before_action :verify, only: [:index]

  def index
    @opinion = Opinion.new
    @opinions = Opinion.order('created_at DESC').includes(:Author).limit(5)
    @users = User.all_users(current_user.id).order('created_at DESC')
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.authorId = current_user.id

    if @opinion.save
      flash[:notice] = 'Opinion was successfully created'
      redirect_to root_path
    else
      flash[:alert] = 'Something went wrong'
      render 'index'
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def opinion_params
      params.require(:opinion).permit(:text)
    end
end
