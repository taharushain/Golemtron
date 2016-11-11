class MessagesController < ApplicationController
	def new
	end

	def create
		@message = Message.new(message_params)

		if @message.valid?
			MessageMailer.message_me(@message).deliver_now
			redirect_to packages_path, notice: "Thankyou for your message."
		else
			redirect_to packages_path
		end
	end

	private 

	def message_params
		params.require(:message).permit(:name, :email, :subject, :content, :type)
	end
end
