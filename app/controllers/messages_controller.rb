class MessagesController < ApplicationController
	def create
		@message = Message.new(message_params)
		if @message.save
			redirect_to '/'
		else
			redirect_to :back
		end
	end
	private
	def message_params
		params.require(:message).permit(:content)
	end
end
