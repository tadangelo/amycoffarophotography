class MessageMailer < ApplicationMailer

  default from: "Your Mailer <#{@message.email}>"
  default to: "Your Name <amy_coffaro04@yahoo.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end
