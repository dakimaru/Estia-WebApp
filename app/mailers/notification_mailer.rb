class NotificationMailer < ActionMailer::Base
  
  default from: "team@estiastay.com"
  default :to => "akimaru.dimitri@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Estia =>   #{message.subject}")
  end
  
end
