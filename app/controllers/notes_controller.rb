class NotesController < ApplicationController
	def notesindex
	end
	def pcr
		@gene = Gene.new
		@pcr = Pcr.new
		@primer = Primer.new
	end
	def ligation
	end
	def transformation
	end
	
end

