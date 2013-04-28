class UsersController < ApplicationController
  
  before_filter :signed_in_user,
                only: [:show, :edit]
  def index
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      UserMailer.signup_confirmation(@user).deliver
      redirect_to @user, :flash => { :success => "Thank you for signing up with Estia!"}
    else
      render "new"
    end
  end
  
  def edit
  end
  
end
