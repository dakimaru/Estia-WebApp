class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:remember_token] = user.remember_token
      else
        cookies[:remember_token] = user.remember_token
      end
      redirect_to user, :flash => { :success => "Welcome back" + " " + user.first_name + "!"}
    else
      flash.now[:danger] = "Email or password is invalid!"
      render "new"
    end
  end
  
  def destroy
    sign_out
    redirect_to root_url, :flash => { :success => "Logged out successfully!"}
  end
end
