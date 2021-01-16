class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @opinions = @user.opinions.order('created_at DESC').limit(5)
  end

  def new
    @user = User.new
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
  
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:fullname, :username)
    end
end
