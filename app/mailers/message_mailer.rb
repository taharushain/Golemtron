class MessageMailer < ApplicationMailer
  # use your own email address here
  default :to => "taharushain@gmail.com"

  def message_me(msg)
    @msg = msg
    @body = "Hi Taha!\nYou have got an order request from:"+ @msg.email + "\n" + @msg.content
    mail subject: @msg.subject, body: @body
  end
end