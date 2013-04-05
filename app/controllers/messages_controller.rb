class MessagesController < ApplicationController
  #before_filter :authorize, only: [:create]  to let them use create action only if logged in
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      NotificationMailer.new_message(@message).deliver
      redirect_to root_url, :flash => { :success => "Message sent! Thank you for contacting us." } 
    else
      render "new"
    end
  end
end