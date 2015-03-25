class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:username]

    if user && user.authenticate(params[:password])
      reset_session
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome back!"
    else
      redirect_to :back, notice: "Username and/or password mismatch."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
