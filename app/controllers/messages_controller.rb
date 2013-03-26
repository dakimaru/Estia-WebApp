class MessagesController < ApplicationController
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