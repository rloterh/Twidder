class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @opinion = Opinion.new
    @opinions = @user.opinions.order('created_at DESC').includes([:author]).limit(5)
    @followers = User.user_followers(params[:id], current_user.id)
  end

  def new
    session[:user_id] = nil if logged_in?
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit; end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Account was successfully created. Please Login'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :username, :photo, :cover_img)
  end
end
