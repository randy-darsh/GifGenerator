class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "Successfully logged in!"
      session[:user_id] = user.id
      redirect_to user_path(current_user)
    else
      flash[:notice] = "Login failed"
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    flash[:notice] = "Logout successful!"
    redirect_to root_path
  end
end