class UsersController < ApplicationController
  def new
    @user = User.new    
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      UserMailer.signup_confirmation(@user).deliver
      redirect_to root_url, :flash => { :success => "Thank you for signing up with Estia!"}
    else
      render "new"
    end
  end
end
