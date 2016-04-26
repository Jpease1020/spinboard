class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(:email_address, params[:user][:email_address])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      flash.now[:error] = "Invalid Login. Try Again."
      render :new
    end

  end
end
