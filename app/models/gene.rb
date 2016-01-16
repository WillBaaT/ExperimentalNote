class Gene < ActiveRecord::Base
	has_many :pcrs
	validates_presence_of :name
end
