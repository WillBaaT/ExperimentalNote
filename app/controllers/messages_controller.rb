class MessagesController < ApplicationController
	def create
		@message = Message.new(message_params)
		if @message.save
			redirect_to '/'
		else
			render 'newpost'
		end
	end
	private
	def message_params
		params.require(:message).permit(:content)
	end
end
