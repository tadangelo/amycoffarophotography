class MessageMailer < ApplicationMailer

  default from: "Your Mailer <amy_coffaro04@yahoo.com>"
  default to: "Your Name <amy_coffaro04@yahoo.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end
