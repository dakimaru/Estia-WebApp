class NotificationMailer < ActionMailer::Base
  
  default :to => "support@estiastay.com"
  default :from => "support@estiastay.com"

  def new_message(message)
    @message = message
    mail(:subject => "Estia Contact:  #{message.subject}")
  end
  
end
