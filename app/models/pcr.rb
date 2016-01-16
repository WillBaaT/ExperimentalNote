class Pcr < ActiveRecord::Base
	belongs_to :gene
	validates_presence_of :fragment_name
end
