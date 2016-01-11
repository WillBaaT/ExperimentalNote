class PagesController < ApplicationController
	def home
		@messages = Message.all
	end
	def newpost
		@message = Message.new
	end
	
	
end
