class NotificationsMailer < ActionMailer::Base
  default :from => "emadobao@gmail.com"
  default :to => "emadobao@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Mensaje de contacto del sitio San Fernando")
  end

end
