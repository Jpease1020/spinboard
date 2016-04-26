class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    if !current_user
      flash[:notice] = "Please login"
      redirect_to root_path
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'user successfully created'
      redirect_to dashboard_path
    else
      flash[:alert] = user.errors.full_messages.first
      redirect_to action: 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end
