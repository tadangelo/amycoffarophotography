class MessageMailer < ApplicationMailer

  default from: "Your Mailer <postmaster@sandbox48b940a3d38a4bf2afea5d04abc33cfc.mailgun.org>"
  default to: "Your Name <amy_coffaro04@yahoo.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end
