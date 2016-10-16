class MessageMailer < ApplicationMailer
  # use your own email address here
  default :to => "taharushain@gmail.com"

  def message_me(msg)
  	@msg = msg

  	if @msg.type == "request"
  		@body = "Hi Taha!\nYou have got an order request from: "+@msg.name+"("+@msg.email + ")\n" + @msg.content
  		@subject = "Golemtron - " + @msg.subject + " Order Request"
  		mail subject: @subject, body: @body
  	else
  		@body = "Hi Taha!\nYou have got an contact form message from: "+@msg.name+"("+@msg.email + ")\n\n" + @msg.content
  		mail subject: @msg.subject, body: @body 
  	end

  end
end